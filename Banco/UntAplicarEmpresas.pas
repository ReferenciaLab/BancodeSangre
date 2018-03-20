unit UntAplicarEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, QuerySearchDlgADO, DB, ADODB;

type
  TFrmAplicarEMpresa = class(TForm)
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label1: TLabel;
    cxButton1: TcxButton;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Search: TQrySearchDlgADO;
    Qinserta: TADOQuery;
    Qactualiza: TADOQuery;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Disponible : Integer;
    EntradaId : String;
    Empresaid : integer;
    Procedure ActualizarDisponible(Codigo : integer);

  end;

var
  FrmAplicarEMpresa: TFrmAplicarEMpresa;

implementation

uses DataModule, DataFactura, PuntoVenta, DCobros, ListaCaja;

{$R *.dfm}

procedure TFrmAplicarEMpresa.ActualizarDisponible(Codigo: integer);
begin
  With dm.Qutilitario do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('UPDATE  BSINVENTARIO_EMPRESAS SET INV_DISPONIBLE = INV_DISPONIBLE -1 ');
       Sql.Add('where INV_CODIGO ='+#39+ IntToStr(Codigo) +#39);
       ExecSQL;
     End;
end;

procedure TFrmAplicarEMpresa.cxButton1Click(Sender: TObject);
begin

  Search.Title := 'Empresas';
  Search.ResultField := 'INV_CODIGO';
  Search.query.clear;
  Search.query.add('select INV_CODIGO,INV_EMPRESA from BSINVENTARIO_EMPRESAS');
  Search.query.add('where inv_disponible > 0 ');
  //Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Codigo');
  Search.AliasFields.Add('Nombre');
  if search.execute then
  begin
    cxTextEdit1.Text :=  Search.ValueField;
    With dm.Qutilitario do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('select INV_CODIGO,INV_EMPRESA, INV_CANTIDAD, INV_DISPONIBLE');
       Sql.Add('from BSINVENTARIO_EMPRESAS');
       Sql.Add('where INV_CODIGO ='+#39+ cxTextEdit1.Text +#39);
       Open;

       if dm.Qutilitario.RecordCount > 0 then
         begin
             cxTextEdit2.Text := Fieldbyname('INV_EMPRESA').Value;
             cxTextEdit3.Text := Fieldbyname('INV_CANTIDAD').Value;
             cxTextEdit4.Text := Fieldbyname('INV_DISPONIBLE').Value;
             Disponible := Fieldbyname('INV_DISPONIBLE').Value;
         end;

     end;
  end;

end;

procedure TFrmAplicarEMpresa.cxButton2Click(Sender: TObject);
var
 donacion : string;
begin
 Try
if Disponible > 0  then
 begin
     dmFactura.qrInventario.Close;
     dmFactura.qrInventario.Parameters.ParamByName('CodigoId').Value :=  dmFactura.qrEntradaPacienteDetalleCodigoId.Value;
     dmFactura.qrInventario.Open;
     if dmFactura.qrInventario.RecordCount > 0 then
      donacion :=   dmFactura.qrInventario.FieldByName('Donacionid').Value
      else
      donacion := 'ND';

   with Qinserta Do
    begin
       Close;
       Parameters.ParamByName('INV_CODIGO').Value :=  cxTextEdit1.Text;
       Parameters.ParamByName('DONACIONID').Value :=  donacion;
       Parameters.ParamByName('PRODUCTOID').Value :=  dmFactura.qrEntradaPacienteDetalleCodigoId.Value;
       Parameters.ParamByName('PACIENTEID').Value :=  dmFactura.qrEntradaPacientePACIENTEID.Value;
       ExecSQL;

       dmFactura.AplicarNotaCredito(cxTextEdit5.Text);
    end;
    //ActualizarDisponible(StrToInt(cxTextEdit1.Text));
    ShowMessage('Proceso Realizado con Exito');
    Close;
 end
 else
 begin
   ShowMessage('Cantidad Disponible insuficiente');
 end;
 Except
   ShowMessage('El proceso no pudo ser completado correctamente');
   Abort;
 end;
end;

procedure TFrmAplicarEMpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmAplicarEMpresa.FormCreate(Sender: TObject);
begin
Disponible := 0;
With dm.Qutilitario do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('select INV_CODIGO,INV_EMPRESA, INV_CANTIDAD, INV_DISPONIBLE');
       Sql.Add('from BSINVENTARIO_EMPRESAS');
       Sql.Add('where INV_CODIGO ='+#39+ IntToStr(dmFactura.InvCodigo) +#39);
       Open;

       if dm.Qutilitario.RecordCount > 0 then
         begin
             cxTextEdit1.Text := Fieldbyname('INV_CODIGO').Value;
             cxTextEdit2.Text := Fieldbyname('INV_EMPRESA').Value;
             cxTextEdit3.Text := Fieldbyname('INV_CANTIDAD').Value;
             cxTextEdit4.Text := Fieldbyname('INV_DISPONIBLE').Value;
             Disponible := Fieldbyname('INV_DISPONIBLE').Value;
         end;

     end;
end;

end.
