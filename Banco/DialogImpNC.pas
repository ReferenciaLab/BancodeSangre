unit DialogImpNC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, ADODB,pptypes;

type
  TfrmDialogImpNC = class(TForm)
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
    qrCobros: TADOQuery;
    qrCobrosCobroID: TStringField;
    qrCobrosTurnoID: TStringField;
    qrCobrosEntradaID: TStringField;
    qrCobrosSucursalID: TStringField;
    mon: TDateTimeField;
    qrCobrosHora: TStringField;
    qrCobrosPacienteID: TStringField;
    qrCobrosPacientePrincipalID: TStringField;
    qrCobrosUsuarioID: TStringField;
    qrCobrosTotalCobrado: TBCDField;
    qrCobrosrefRecid: TLargeintField;
    qrCobrosTotalFactura: TBCDField;
    qrCobrosTotalPagado: TBCDField;
    qrCobrosPendienteFactura: TBCDField;
    qrCobrosPendienteCobro: TBCDField;
    qrCobrosReciboNo: TStringField;
    qrCobrosClienteID: TStringField;
    qrCobrosAplicado: TBooleanField;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosHora: TcxGridDBColumn;
    dbDatosUsuarioID: TcxGridDBColumn;
    dbDatosTotalCobrado: TcxGridDBColumn;
    dbDatosTotalFactura: TcxGridDBColumn;
    dbDatosTotalPagado: TcxGridDBColumn;
    dbDatosPendienteFactura: TcxGridDBColumn;
    dbDatosPendienteCobro: TcxGridDBColumn;
    dbDatosReciboNo: TcxGridDBColumn;
    qrCobrosSecuencia: TLargeintField;
    qrCobrosMonedaID: TStringField;
    dbDatosColumn1: TcxGridDBColumn;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run(recid : integer);
  end;

var
  frmDialogImpNC: TfrmDialogImpNC;
  AdentroGrid : Boolean;

implementation
 uses ActionsDM,DataModule,PuntoVenta,Main;
{$R *.dfm}

procedure TfrmDialogImpNC.cgDatosEnter(Sender: TObject);
begin
 AdentroGrid := True;
end;

procedure TfrmDialogImpNC.cgDatosExit(Sender: TObject);
begin
 AdentroGrid := False;
end;

procedure TfrmDialogImpNC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogImpNC.Run(recid : integer);

begin
 qrCobros.close;
 qrCobros.parameters[0].value := recid;
 qrCobros.open;
 showmodal;
 if ModalResult = mrOk then
 begin
  if qrCobros.RecordCount > 0 then
  begin
   DM.qrCobro.Close;
   DM.qrCobro.Parameters[0].Value := qrCobrosCobroID.Value;
   DM.qrCobro.Open;

   DM.qrEntradaPacienteDetalle.Close;
   DM.qrEntradaPacienteDetalle.Parameters[0].Value := DM.qrCobroRecid.Value;
   DM.qrEntradaPacienteDetalle.Open;

   if DM.qrCobroCoberturaSeguro.value > 0 then
   begin
    DM.ppImpNCConSeguro.DeviceType := dtScreen;
    DM.ppImpNCConSeguro.Print;
   end
   else
   begin
    DM.ppImpNCSinSeguro.DeviceType := dtScreen;
    DM.ppImpNCSinSeguro.Print;
   end;
  end;
 end;


end;

end.
