unit ReporteDonaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, ppDB, ppDBPipe, DB, ADODB, ppParameter,
  ppBands, ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGraphics, cxDBEdit;

type
  TfrmReporteDonaciones = class(TfrmDialogModule)
    ppReporte: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel5: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppParameterList1: TppParameterList;
    dsDatos: TDataSource;
    qrDatos: TADOQuery;
    plDatos: TppDBPipeline;
    cxDateEdit1: TcxDateEdit;
    lcDialogItem1: TdxLayoutItem;
    cxDateEdit2: TcxDateEdit;
    lcDialogItem2: TdxLayoutItem;
    lcDialogGroup3: TdxLayoutGroup;
    lcDialogGroup4: TdxLayoutGroup;
    lcDialogGroup5: TdxLayoutGroup;
    cxComboBox1: TcxComboBox;
    lcDialogItem3: TdxLayoutItem;
    cxComboBox2: TcxComboBox;
    lcDialogItem4: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    lcDialogItem5: TdxLayoutItem;
    qrDatosDonacionID: TStringField;
    qrDatosMuestraNo: TStringField;
    qrDatosMuestraNoAS: TStringField;
    qrDatosFecha: TDateTimeField;
    qrDatosPacienteID: TStringField;
    qrDatosNotaEntrevista: TMemoField;
    qrDatosDonacionStatus: TWideStringField;
    qrDatosDonacionTipo: TStringField;
    qrDatosComentario: TMemoField;
    qrDatosCantidadRecogida: TBCDField;
    qrDatosTemperatura: TBCDField;
    qrDatosPeso: TBCDField;
    qrDatosPulsoMinimo: TBCDField;
    qrDatosPulsoEstado: TStringField;
    qrDatosTensionArteriar: TStringField;
    qrDatosHoraInicio: TDateTimeField;
    qrDatosHoraFin: TDateTimeField;
    qrDatosDirigidoPacienteId: TStringField;
    qrDatosDirigidoNombre: TStringField;
    qrDatosHospital: TStringField;
    qrDatosFechaTranfusion: TDateTimeField;
    qrDatosMedico: TStringField;
    qrDatosTelefono: TStringField;
    qrDatosTelefono2: TStringField;
    qrDatosDireccionMedico: TMemoField;
    qrDatosPagina: TSmallintField;
    qrDatosTipoFundaID: TWideStringField;
    qrDatosHemoglobina: TStringField;
    qrDatosHematocito: TStringField;
    qrDatosGlobulosBlancos: TStringField;
    qrDatosPlaquetas: TStringField;
    qrDatosNotasCuestionario: TMemoField;
    qrDatosProductoID: TWideStringField;
    qrDatosReservado: TBooleanField;
    qrDatosDisponible: TBooleanField;
    qrDatosDoctorId: TStringField;
    qrDatosUserIdCuestionario: TStringField;
    qrDatosUserIdMuestra: TStringField;
    qrDatosIDENTIFICACION: TStringField;
    qrDatosNOMBRE: TStringField;
    qrDatosDIRECCION: TStringField;
    qrDatosExpr1: TStringField;
    qrDatosEMAIL: TStringField;
    qrDatosFECHANACIMIENTO: TDateTimeField;
    qrDatosSEXO: TIntegerField;
    qrDatosCIUDADID: TStringField;
    qrDatosExpr2: TMemoField;
    qrDatosExpr3: TWideStringField;
    qrDatosTipoSangre: TWideStringField;
    qrDatosRH: TWideStringField;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmReporteDonaciones: TfrmReporteDonaciones;

implementation

{$R *.dfm}

procedure TfrmReporteDonaciones.FormCreate(Sender: TObject);
begin
  inherited;

  cxDateEdit2.Date:= Date();
  cxDateEdit1.Date:= Date() - 15;

  cxComboBox1.ItemIndex:= 0;
  cxComboBox2.ItemIndex:= 0;

end;

procedure TfrmReporteDonaciones.Run;
var
  Sangre: String;
  RH: String;
begin

  showmodal;

  if (cxComboBox1.Text = 'TODOS') then
    Sangre:= '%'
  else
    Sangre:= cxComboBox1.Text;

  if (cxComboBox2.Text = 'TODOS') then
    RH:= '%'
  else
    RH:= cxComboBox1.Text;

  qrDatos.Close;
  qrDatos.Parameters.ParamByName('Desde').Value:= cxDateEdit1.Text;
  qrDatos.Parameters.ParamByName('Hasta').Value:= cxDateEdit2.Text;
  qrDatos.Parameters.ParamByName('TS').Value:= Sangre;
  qrDatos.Parameters.ParamByName('RH').Value:= RH;
  qrDatos.Open;

  if (modalResult = mrok) then
    if not qrDatos.Eof then
      begin
        ppReporte.DeviceType := '559155748'; //dtScreen;
        ppReporte.Print;
      end;

  qrDatos.Close;



end;


end.
