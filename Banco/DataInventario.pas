unit DataInventario;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMI = class(TDataModule)
    Inventario: TADOTable;
    InventarioCodigoId: TStringField;
    InventarioDonacionId: TStringField;
    InventarioProductoID: TWideStringField;
    InventarioCantidad: TBCDField;
    InventarioFecha: TDateTimeField;
    InventarioHora: TStringField;
    InventarioProcesoID: TWideStringField;
    InventarioReservado: TBooleanField;
    InventarioReservadoHasta: TDateTimeField;
    InventarioDias: TIntegerField;
    InventarioVence: TDateTimeField;
    InventarioCruce: TBooleanField;
    InventarioCrucePacienteId: TStringField;
    InventarioDisponible: TBooleanField;
    InventarioReceptorId: TStringField;
    InventarioDoctorId: TStringField;
    InventarioPrecio1: TBCDField;
    InventarioCosto1: TBCDField;
    InventarioStatus: TWideStringField;
    InventarioCaja: TBooleanField;
    Consulta: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function Ir(Codigo: String): boolean;
    function Filtrar(Campo: String; Valor: String = '%'): Integer;
    function FiltrarTipo(Tipo: String = '%'): Integer;
    function CrearCrioprecipitado(Codigo: String): boolean;
    function CrearPlaquetas(Codigo: String): boolean;
    function Precio(Producto: String; TipoCliente: String = 'PRI'): Currency;
    procedure RestaurarInventario(Producto: String);
  end;

var
  DMI: TDMI;

implementation

uses DataDonaciones, Main, Dialogs , DataModule;

{$R *.dfm}

procedure tdmi.RestaurarInventario(Producto: string);
begin

  DM.DataBase.Execute(
    ' insert into BSInventario (CodigoId, DonacionId, ProductoID, Cantidad, Fecha, Hora, ProcesoID, Reservado, ReservadoHasta, Dias, Cruce, CrucePacienteId, Disponible, ReceptorId, DoctorId, Precio1, Costo1, Status, Caja) ' +
    ' select CodigoId, DonacionId, ProductoID, Cantidad, Fecha, Hora, ProcesoID, Reservado, ReservadoHasta, Dias, Cruce, CrucePacienteId, Disponible, ReceptorId, DoctorId, Precio1, Costo1, Status, Caja ' +
    ' from BSInventarioBackup where CodigoId = '''+ Producto + '''' +
    ' and not exists ( select * from BSInventario where CodigoId = '''+ Producto + ''' )'
  );
  DM.DataBase.Execute('Delete From BSInventarioBackup Where CodigoId = '''+ Producto + '''' );

end;

function tdmi.Precio;
begin

  Consulta.SQL.Clear;
  Consulta.SQL.Add(' SELECT   Precio, ProductoId, TIPOCLIENTE  FROM  BSPrecio ');
  Consulta.SQL.Add(' WHERE    (ProductoId = ''' + Producto + ''' )' );
  Consulta.SQL.Add(' AND      (TIPOCLIENTE = ''' + TipoCliente + ''' )' );
  Consulta.Open;

  if not Consulta.Eof then
    Result:= Consulta.FieldByName('Precio').AsCurrency
  else
    Result:= 0;

end;

function tdmi.CrearPlaquetas;
var
  Muestra: String;
begin

  Inventario.Close;
  Inventario.Open;

  if not Ir(Codigo) then
    begin
      exit;
    end;

  Muestra:= dmDonaciones.getValue(InventarioDonacionId.Value, 'MuestraNo');

  if MessageDlg('Desea convertir a ' + Muestra + '-' + 'CP',  mtConfirmation, [mbYes,mbNo], 0) = 7 then
    exit;

  Inventario.Edit;
  InventarioCodigoId.Value:= Muestra + '-' + 'CP';
  InventarioProductoId.Value:= 'CP';
  Inventario.Post;

  Inventario.Close;

end;


function tdmi.CrearCrioprecipitado;
var
  Muestra: String;
begin

  Inventario.Close;
  Inventario.Open;

  if not Ir(Codigo) then
    begin
      exit;
    end;

  Muestra:= dmDonaciones.getValue(InventarioDonacionId.Value, 'MuestraNo');

  if MessageDlg('Desea convertir a ' + Muestra + '-' + 'CRI',  mtConfirmation, [mbYes,mbNo], 0) = 7 then
    exit;

  Inventario.Edit;
  InventarioCodigoId.Value:= Muestra + '-' + 'CRI';
  InventarioProductoId.Value:= 'CRI';
  Inventario.Post;

  Inventario.Close;

end;

function tdmi.Ir;
begin

  if (InventarioCodigoId.Value = Codigo) then
    begin
      Result:= true;
      exit;
    end;

  Result:= Inventario.Locate('CodigoId', Codigo, []);

end;

function tdmi.Filtrar;
begin

  if (Valor = '%') then
    Inventario.Filtered:= false
  else
    begin
      Inventario.Filtered:= false;
      Inventario.Filter:= Campo + ' ''' + trim(Valor) + '''' ;
      Inventario.Filtered:= true;
    end;

  Result:= Inventario.RecordCount;

end;

function tdmi.FiltrarTipo;
begin
  Result:= Filtrar('ProductoId', Tipo);
end;

end.
