unit DialogConsultaPruebasCombos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit;

type
  TfrmDialogConsultaPruebasCombos = class(TfrmDialogConsulta)
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
  frmDialogConsultaPruebasCombos: TfrmDialogConsultaPruebasCombos;
  adentrogrid : Boolean;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDialogConsultaPruebasCombos.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
//  frmMain.frmCombo.qrPruebas.Insert;

  frmMain.frmCombo.qrPruebasPruebaID.Value := DM.qrPruebasPruebaID.Value;
  frmMain.frmCombo.qrPruebasAlias.Value := DM.qrPruebasAlias.Value;
  frmMain.frmCombo.qrPruebasDescripcion.Value := DM.qrPruebasDescripcion.Value;
  frmMain.frmCombo.qrPruebasEstatus.Value := DM.qrPruebasEstatus.Value;
  frmMain.frmCombo.qrPruebasGrupoPruebaID.Value := DM.qrPruebasGrupoPruebaID.Value;
  frmMain.frmCombo.qrPruebasDepartamento.Value := DM.qrPruebasDepartamento.Value;
  frmMain.frmCombo.qrPruebasPrecio.Value := DM.qrPruebasPrecio.Value;
  //frmMain.frmCombo.qrPruebasPermiteCambioPrecio.Value := DM.qrPruebasPermiteCambioPrecio.Value;
  frmMain.frmCombo.qrPruebasCodigoAxapta.Value := DM.qrPruebasCodigoAxapta.Value;
  frmMain.frmCombo.qrPruebasPrecioDolares.Value := DM.qrPruebasPrecioDolares.Value;
  frmMain.frmCombo.qrPruebasCosto.Value := DM.qrPruebasCosto.Value;
  //frmMain.frmCombo.qrPruebasExterior.Value := DM.qrPruebasExterior.Value;

//  frmMain.frmCombo.qrPruebas.Post;
 end;
end;

procedure TfrmDialogConsultaPruebasCombos.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'Select * From PTPrueba ';

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

procedure TfrmDialogConsultaPruebasCombos.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPruebasCombos.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPruebasCombos.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCombos.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrPruebas.Close;
  DM.qrPruebas.Open;

  edbuscarpor.ItemIndex := 1;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCombos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaPruebasCombos.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

end.
