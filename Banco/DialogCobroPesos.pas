unit DialogCobroPesos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, ActnList, cxCheckBox;

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
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    Actualizar: TAction;
    PrintRecibo: TcxCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    procedure btcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btaceptarClick(Sender: TObject);
    procedure ActualizarExecute(Sender: TObject);
    procedure cgDatosFocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function SumaTotal: Currency;
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

function TfrmDialogCobroPesos.SumaTotal;
begin

  Result:= dmcobros.SumaTotal;

end;

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


procedure TfrmDialogCobroPesos.FormShow(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmDialogCobroPesos.ActualizarExecute(Sender: TObject);
begin

  EdCobrado.Value := 0;

end;

procedure TfrmDialogCobroPesos.btaceptarClick(Sender: TObject);
begin
  If (SumaTotal < dmCobros._Pendiente) Then
    if DM.Mensaje('El Total Cobrado Es Menor Que El Total Pendiente,'+#13+
                  'Desea aplicar este cobro como un ABONO ? ', mb_yesno) = id_no then Exit;
  ModalResult := mrOk;
end;

procedure TfrmDialogCobroPesos.btcancelarClick(Sender: TObject);
begin
  dmCobros._Cobrado := 0;
  ModalResult := mrCancel;  
end;

procedure TfrmDialogCobroPesos.buscar;
var
  vSumaTotal:Currency;
begin


  EdCobrado.TabStop := False;
  EdDevuelta.TabStop := False;
  EdPendiente.TabStop := False;
  EdCobrado.Properties.ReadOnly := True;
  EdDevuelta.Properties.ReadOnly := True;
  EdPendiente.Properties.ReadOnly := True;
  EdDevuelta.Value := 0;

  EdPendiente.Value := dmCobros._Pendiente;
  vSumaTotal := SumaTotal;
  if vSumaTotal > dmCobros._Pendiente then
    EdCobrado.Value   := dmCobros._Pendiente
  else
    EdCobrado.Value   := vSumaTotal;
  if vSumaTotal > dmCobros._Pendiente then
    EdDevuelta.Value  := vSumaTotal - dmCobros._Pendiente;

  dmCobros._Cobrado:= EdCobrado.Value; //EdCobrado.Value - EdDevuelta.Value;

  EdCobrado.Refresh;
  EdDevuelta.Refresh;
  EdPendiente.Refresh;

end;

procedure TfrmDialogCobroPesos.Run;
var
  Cobro: String;
begin

  buscar;
  showmodal;
  If ModalResult = mrOk then
  begin
    Cobro:= dmCobros.GrabarCobro;
    if printRecibo.Checked then
      dmCobros.ImprimirRecibo(Cobro);
  end;
end;

end.


