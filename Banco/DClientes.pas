unit DClientes;

interface

uses
  SysUtils, Classes, DB, ADODB, DBActns, ActnList;

type
  TdmClientes = class(TDataModule)
    Tabla: TADOTable;
    Datos: TDataSource;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Abrir;
    function IrA(Cliente: String): Boolean;
    Procedure Actualizar;
  end;

var
  dmClientes: TdmClientes;

implementation

{$R *.dfm}

Procedure TdmClientes.Abrir;
begin

  Tabla.Close;
  Tabla.Open;

end;

function TdmClientes.IrA(Cliente: String): Boolean;
begin

  Tabla.Close;
  Tabla.Open;
  Result:= Tabla.Locate('ClienteId', Cliente, []);

end;

Procedure TdmClientes.Actualizar;
begin

  Tabla.Refresh;

end;

end.
