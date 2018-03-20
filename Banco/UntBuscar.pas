unit UntBuscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, Grids, DBGrids, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, DB, ADODB;

type
  TFrmbuscar = class(TForm)
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    DataSource1: TDataSource;
    Qbuscar: TADOQuery;
    QbuscarCODIGO: TAutoIncField;
    QbuscarNOMBRE: TStringField;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmbuscar: TFrmbuscar;

implementation

uses DataModule, DatosClientes;

{$R *.dfm}

procedure TFrmbuscar.cxButton1Click(Sender: TObject);
begin
 With Qbuscar Do
  Begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT CODIGO, NOMBRE FROM BSCLINICAS');
     if cxTextEdit1.Text <> '' then
        Sql.Add('WHERE NOMBRE LIKE' +#39 +'%'+cxTextEdit1.Text+'%'+#39);
     Sql.Add('order by NOMBRE');
     Open;
  end;
end;

procedure TFrmbuscar.cxTextEdit1PropertiesChange(Sender: TObject);
begin
With Qbuscar Do
  Begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT CODIGO, NOMBRE FROM BSCLINICAS');
     if cxTextEdit1.Text <> '' then
        Sql.Add('WHERE NOMBRE LIKE' +#39 +'%'+cxTextEdit1.Text+'%'+#39);
     Sql.Add('order by NOMBRE');
     Open;

  end;
end;

procedure TFrmbuscar.DBGrid1DblClick(Sender: TObject);
begin
if qbuscar.recordcount > 0 then
 begin
   DM.CodigoClinica := QbuscarCODIGO.Value;
   DM.NombreClinica := QbuscarNOMBRE.Value;
   close;
 end;
end;

end.
