unit DialogConsultaPruebas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit;

type
  TfrmDialogConsultaPruebas = class(TfrmDialogConsulta)
    dbDatosPruebaID: TcxGridDBColumn;
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPrecio: TcxGridDBColumn;
    dbDatosColumn1: TcxGridDBColumn;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaPruebas: TfrmDialogConsultaPruebas;
  adentrogrid : Boolean;

implementation

uses DataModule,Main;

{$R *.dfm}

procedure TfrmDialogConsultaPruebas.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  frmMain.frmTmp.qrEntradaPacienteDetalle.Insert;

  frmMain.frmTmp.qrEntradaPacienteDetallePruebaID.Value := DM.qrPruebasPruebaID.Value;

 {
  frmMain.frmTmp.qrEntradaPacienteDetalleRefRecid.Value := frmMain.frmTmp.recid;
  frmMain.frmTmp.qrEntradaPacienteDetallePrecio.Value := DM.PrecioPrueba(DM.qrPruebasPruebaID.Value,
                                                                         frmMain.frmTmp.qrEntradaPacienteClienteID.Value,
                                                                         frmMain.frmTmp.qrEntradaPacienteMonedaID.Value) * frmMain.frmTmp.factor;
  frmMain.frmTmp.qrEntradaPacienteDetalleDescripcion.Value := DM.qrPruebasDescripcion.Value;
  frmMain.frmTmp.qrEntradaPacienteDetalleDescuento.Value := 0;
  frmMain.frmTmp.qrEntradaPacienteDetalleDescPct.Value := 0;
  frmMain.frmTmp.qrEntradaPacienteDetalleSecuencia.Value := frmMain.frmTmp.MaxSecuenciaLinea;
  frmMain.frmTmp.qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(frmMain.frmTmp.qrEntradaPacienteClienteID.Value,
                                                                                     frmMain.frmTmp.qrEntradaPacientePacienteID.Value,
                                                                                     frmMain.frmTmp.curCoberturaAplicada,
                                                                                     frmMain.frmTmp.qrEntradaPacienteRecid.value);
  if frmMain.frmTmp.qrEntradaPacienteDetalleCoberturaAplica.Value then
     frmMain.frmTmp.curCoberturaAplicada := frmMain.frmTmp.curCoberturaAplicada + 1;

  frmMain.frmTmp.qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.CoberturaPrueba(DM.qrPruebasPruebaID.Value,
                                                                                       frmMain.frmTmp.qrEntradaPacienteClienteID.Value,
                                                                                       frmMain.frmTmp.qrEntradaPacienteMonedaID.Value) * frmMain.frmTmp.factor;
  if frmMain.frmTmp.qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
     frmMain.frmTmp.qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(DM.qrPruebasPruebaID.Value,
                                                                                             frmMain.frmTmp.qrEntradaPacienteClienteID.Value,
                                                                                             frmMain.frmTmp.qrEntradaPacienteMonedaID.Value)
  else
     frmMain.frmTmp.qrEntradaPacienteDetalleCoberturaExpPorc.Value := false;

  frmMain.frmTmp.qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
  frmMain.frmTmp.qrEntradaPacienteDetalleMuestraNo.Value := frmMain.frmTmp.qrEntradaPacienteMuestraNo.Value;
  }

  frmMain.frmTmp.qrEntradaPacienteDetalle.Post;

 end;
end;

procedure TfrmDialogConsultaPruebas.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'Select * from PTPrueba ';

 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' Where PruebaID Like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' Where Descripcion Like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;

 end;

 DM.qrPruebas.Close;
 DM.qrPruebas.SQL.Text := sqlString;
 DM.qrPruebas.Open;

end;

procedure TfrmDialogConsultaPruebas.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPruebas.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPruebas.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebas.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrPruebas.Close;
  DM.qrPruebas.Open;

  edbuscarpor.ItemIndex := 1;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (AdentroGrid) then
  begin
   Close;
   ModalResult := mrOk;
  end;

  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 27) then
  begin
   Close;
  end;

end;

procedure TfrmDialogConsultaPruebas.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

end.
