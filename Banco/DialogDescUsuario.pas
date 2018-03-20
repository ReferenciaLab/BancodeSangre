unit DialogDescUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, db;

type
  TfrmDialogDescUsuario = class(TfrmDialogModule)
    eddescuento: TcxCurrencyEdit;
    lcDialogItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogDescUsuario: TfrmDialogDescUsuario;

implementation

uses Main, DataModule;

{$R *.dfm}

procedure TfrmDialogDescUsuario.Run;
begin
  eddescuento.Value := DM.DescuentoUsuario(Dm.CurUser);
  showmodal;
  if ModalResult = mrOk then
  begin
   if (frmMain.frmTmp.qrEntradaPaciente.State <> dsedit) and
      (frmMain.frmTmp.qrEntradaPaciente.State <> dsinsert) then
      frmMain.frmTmp.qrEntradaPaciente.Edit;

   frmMain.frmTmp.qrEntradaPacienteDescuentoPorc.Value := eddescuento.Value;
   frmMain.frmTmp.qrEntradaPacienteDescAutorizadoPor.Value := DM.CurUser;
   frmMain.frmTmp.qrEntradaPacienteDescuentoValor.Value := 0;
   frmMain.frmTmp.ActTotales;
   frmMain.frmTmp.VerificarPagoDiferencia;
  end;

end;

end.
