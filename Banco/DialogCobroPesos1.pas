unit DialogCobroPesos1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit;

type
  TfrmDialogCobroPesos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    cgDatos: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsDatos: TDataSource;
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPagado: TcxGridDBColumn;
    dbDatosMoneda: TcxGridDBColumn;
    LcPendiente: TdxLayoutGroup;
    EdPendiente: TcxCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    LcDevuelta: TdxLayoutGroup;
    EdCobrado: TcxCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    EdDevuelta: TcxCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure cgDatosFocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
    procedure buscar;
  end;

var
  frmDialogCobroPesos: TfrmDialogCobroPesos;
  AdentroGrid : Boolean;

implementation

uses ActionsDM, DataModule, PuntoVenta, Main, DCobros;

{$R *.dfm}

procedure TfrmDialogCobroPesos.cgDatosEnter(Sender: TObject);
begin
 buscar;
 AdentroGrid := True;
end;

procedure TfrmDialogCobroPesos.cgDatosExit(Sender: TObject);
begin
 buscar;
 AdentroGrid := False;
end;

procedure TfrmDialogCobroPesos.cgDatosFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
 buscar;
end;

procedure TfrmDialogCobroPesos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmDialogCobroPesos.buscar;
begin

  //frmMain.frmTmp.buscar_valores;

  EdCobrado.TabStop := False;
  EdDevuelta.TabStop := False;
  EdPendiente.TabStop := False;
  EdCobrado.Properties.ReadOnly := True;
  EdDevuelta.Properties.ReadOnly := True;
  EdPendiente.Properties.ReadOnly := True;

  {EdPendiente.Value := frmMain.frmTmp.pendiente;
  EdCobrado.Value := frmMain.frmTmp.sumatotal + frmMain.frmTmp.efectivo;
  EdDevuelta.Value := frmMain.frmTmp.devuelta;}

  EdPendiente.Value := dmCobros._Pendiente;
  EdCobrado.Value := 0;
  EdDevuelta.Value :=0;

  If (EdDevuelta.Value < 0) Then
   EdDevuelta.Value := 0;

  EdCobrado.Refresh;
  EdDevuelta.Refresh;
  EdPendiente.Refresh;
end;

procedure TfrmDialogCobroPesos.Run;
begin

  buscar;
  showmodal;

  If ModalResult = mrOk then
    begin
      If DM.Mensaje('Desea Generar el Recibo Para Este Ingreso?',mb_yesno) = id_yes Then
        Begin
          If frmMain.frmTmp.buscar_valores then
            begin
              frmMain.frmTmp.correccion;
//              frmMain.frmTmp.btgrabarClick(nil);
            end;
        End
      Else
        frmMain.frmTmp.CancelarCobro;
    end
  else
    frmMain.frmTmp.CancelarCobro;
end;

end.


