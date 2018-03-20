unit DataDonaciones;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmDonaciones = class(TDataModule)
    Datos: TDataSource;
    qrDatos: TADOQuery;
    qrDatosDonacionID: TStringField;
    qrDatosMuestraNo: TStringField;
    qrDatosMuestraNoAS: TStringField;
    qrDatosNoAsCorto: TStringField;
    qrDatosFecha: TDateTimeField;
    qrDatosPacienteID: TStringField;
    qrDatosDonacionStatus: TWideStringField;
    qrDatosDisponible: TBooleanField;
  private
    { Private declarations }
    function fillbyCodigo(Codigo: String): integer;
  public
    { Public declarations }
    function getValue(Codigo: String; Campo: String): Variant;
    function setFiltro(Filtro: String): Integer;

  end;

var
  dmDonaciones: TdmDonaciones;

implementation

{$R *.dfm}

function tdmDonaciones.setFiltro;
begin

  qrDatos.Close;
  qrDatos.SQL.Clear;
  qrDatos.SQL.Add(' Select * from BSDonacion ');

  if (trim(Filtro) <> '') then
    begin
      qrDatos.SQL.Add(' Where ');
      qrDatos.SQL.Add(Filtro);
    end;

  qrDatos.Open;

  result:= qrDatos.RecordCount;

end;


function tdmDonaciones.fillbyCodigo;
begin

  qrDatos.Close;
  qrDatos.SQL.Clear;
  qrDatos.SQL.Add(' Select * from BSDonacion ');
  qrDatos.SQL.Add(' Where DonacionId = ''' + Codigo + '''');
  qrDatos.Open;

  result:= qrDatos.RecordCount;

end;

function tdmDonaciones.getValue;
begin

  if (FillbyCodigo(Codigo) > 0) then
    begin
      Result:= qrDatos.FieldByName(Campo).Value;
    end;

end;

end.
