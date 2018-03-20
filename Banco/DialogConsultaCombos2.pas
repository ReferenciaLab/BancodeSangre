unit DialogConsultaCombos2;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit;

type
  TfrmDialogConsultaCombos2 = class(TfrmDialogConsulta)
    dbDatosPruebaID: TcxGridDBColumn;
    dbDatosDescripcion: TcxGridDBColumn;
    qrPruebas: TADOQuery;
    qrPruebasPruebaID: TStringField;
    qrPruebasAlias: TStringField;
    qrPruebasDescripcion: TStringField;
    qrPruebasEstatus: TIntegerField;
    qrPruebasGrupoPruebaID: TStringField;
    qrPruebasDepartamento: TStringField;
    qrPruebasPrecio: TBCDField;
    qrPruebasPermiteCambioPrecio: TBooleanField;
    qrPruebasCodigoAxapta: TStringField;
    qrPruebasPrecioDolares: TBCDField;
    qrPruebasCosto: TBCDField;
    qrPruebasExterior: TBooleanField;
    qrPruebasFacturarCabecera: TBooleanField;
    qrPruebasPruebas: TIntegerField;
    qrPruebasTipo: TStringField;
    qrPruebasPlanId: TStringField;
    qrPruebasCodigoId: TStringField;
    qrPruebasPruebaID_1: TStringField;
    qrPruebasClienteID: TStringField;
    qrPruebasDescripcion_1: TStringField;
    qrPruebasNombreCliente: TStringField;
    qrPruebasEstatus_1: TBooleanField;
    qrPruebasLinea: TIntegerField;
    dbDatosPlanId: TcxGridDBColumn;
    dbDatosCodigoId: TcxGridDBColumn;
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
  frmDialogConsultaCombos2: TfrmDialogConsultaCombos2;
  adentrogrid : Boolean;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDialogConsultaCombos2.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
  begin
   If (qrPruebasTipo.Value <> 'C') Then
    Raise exception.CreateFmt('Esta Prueba NO Es Un Combo.', [])
   Else
    Begin
     frmMain.frmPlanCliente.qrClientesComboId.Value := qrPruebasPruebaID.Value;
    End;
  end;
end;

procedure TfrmDialogConsultaCombos2.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaCombos2.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaCombos2.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaCombos2.FormCreate(Sender: TObject);
begin
  inherited;
  qrPruebas.Close;
  qrPruebas.Open;

  edbuscarpor.ItemIndex := 1;
  BuscarData;
end;

procedure TfrmDialogConsultaCombos2.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaCombos2.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;


procedure TfrmDialogConsultaCombos2.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'SELECT * FROM PTPrueba, PTPlanesCombos WHERE PTPrueba.Tipo LIKE ' + #39 + '%C%' + #39;
 sqlString := sqlString + ' AND PTPlanesCombos.PruebaId = PTPrueba.PruebaId '+
              ' AND PTPlanesCombos.PlanId LIKE '+#39+ '%' + frmMain.frmPlanCliente.PlanId +'%'+#39;

 qrPruebas.Close;
 qrPruebas.SQL.Text := sqlString;
 qrPruebas.Open;
end;


end.
