unit DialogNC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit;

type
  TfrmDialogNC = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsDatos: TDataSource;
    dxLayoutControl1Group1: TdxLayoutGroup;
    edvalor: TcxCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogNC: TfrmDialogNC;


implementation
 uses ActionsDM,DataModule,PuntoVenta,Main;
{$R *.dfm}

procedure TfrmDialogNC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogNC.FormShow(Sender: TObject);
begin
 edvalor.Value := 0.00;
end;

procedure TfrmDialogNC.Run;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  if edvalor.Value > frmMain.frmTmp.qrEntradaPacienteTotalPendiente.Value then
  begin
   DM.Info('El total a aplicar es mayor que el total pendiente de la factura. Por favor verificar.');
   exit;
  end
  else
   if edvalor.Value <= 0 then
   begin
    DM.Info('El total a aplicar tiene que ser mayor de Cero. Por favor verificar.');
    exit;
   end
   else
   begin
    frmMain.frmTmp.valorNC := edvalor.Value;
    frmMain.frmTmp.btgrabarClick(nil);
   end;

 end
 else
  frmMain.frmTmp.CancelarCobro;
end;

end.
