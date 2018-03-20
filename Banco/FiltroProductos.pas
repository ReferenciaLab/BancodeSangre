unit FiltroProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, ppDB, ppDBPipe, DB, ADODB, ppParameter,
  ppBands, ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGraphics, cxDBEdit;

type
  TfrmFiltroProductos = class(TfrmDialogModule)
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
    ADOQuery1: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    MemoField1: TMemoField;
    WideStringField1: TWideStringField;
    StringField5: TStringField;
    MemoField2: TMemoField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    DateTimeField4: TDateTimeField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    MemoField3: TMemoField;
    SmallintField1: TSmallintField;
    WideStringField2: TWideStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    MemoField4: TMemoField;
    WideStringField3: TWideStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    DateTimeField5: TDateTimeField;
    IntegerField1: TIntegerField;
    StringField26: TStringField;
    MemoField5: TMemoField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmFiltroProductos: TfrmFiltroProductos;

implementation

{$R *.dfm}

procedure TfrmFiltroProductos.FormCreate(Sender: TObject);
begin
  inherited;

  cxComboBox1.ItemIndex:= 0;
  cxComboBox2.ItemIndex:= 0;

end;

procedure TfrmFiltroProductos.Run;
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
