unit DialogGastoExterior;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit;

type
  TfrmDialogGastoExterior = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    EdValor: TcxCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogGastoExterior: TfrmDialogGastoExterior;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta;

{$R *.dfm}


procedure TfrmDialogGastoExterior.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDialogGastoExterior.Run;
begin
  showmodal;
end;


procedure TfrmDialogGastoExterior.cxButton1Click(Sender: TObject);
begin
 if (EdValor.Value > 0) then
   Begin
     DM.qrParametro.close;
     DM.qrParametro.open;

     frmMain.frmTmp.qrEntradaPacienteDetallePrecio.Value := DM.ValorMoneda(EdValor.Value, DM.qrparametroMonedaID.Value, DM.qrParametroMonedaDolares.Value, DM.SystemDate);
//                                                                           frmMain.frmTmp.qrEntradaPacienteFecha.Value);
   end;
end;


end.
