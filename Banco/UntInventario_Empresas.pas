unit UntInventario_Empresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, ADODB, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxNavigator, cxDBNavigator;

type
  TFrmInventario_Empresas = class(Tform)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Qinv_empresas: TADOQuery;
    Qinv_empresasINV_CODIGO: TAutoIncField;
    Qinv_empresasINV_EMPRESA: TStringField;
    Qinv_empresasINV_FECHA_COLECTA: TDateTimeField;
    Qinv_empresasINV_CANTIDAD: TIntegerField;
    Qinv_empresasINV_DISPONIBLE: TIntegerField;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    procedure Qinv_empresasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventario_Empresas: TFrmInventario_Empresas;

implementation

uses DataModule;

{$R *.dfm}

procedure TFrmInventario_Empresas.FormCreate(Sender: TObject);
begin
Qinv_empresas.Open;
end;

procedure TFrmInventario_Empresas.Qinv_empresasBeforePost(DataSet: TDataSet);
begin
if Qinv_empresas.State in[dsinsert] then
  begin
     Qinv_empresasINV_DISPONIBLE.Value := Qinv_empresasINV_CANTIDAD.Value;
  end;
end;

end.
