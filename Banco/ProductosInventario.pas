unit ProductosInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, ppDB, ppDBPipe, DB, ADODB, ppParameter,
  ppBands, ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TfrmProductosInventario = class(TfrmDialogModule)
    ppReporte: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel5: TppLabel;
    ppLabel25: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel29: TppLabel;
    ppLabel35: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBMemo2: TppDBMemo;
    ppFooterBand2: TppFooterBand;
    ppParameterList1: TppParameterList;
    dsDatos: TDataSource;
    qrDatos: TADOQuery;
    plDatos: TppDBPipeline;
    cxDateEdit1: TcxDateEdit;
    lcDialogItem1: TdxLayoutItem;
    cxDateEdit2: TcxDateEdit;
    lcDialogItem2: TdxLayoutItem;
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
    qrDatosDIRECCION: TMemoField;
    qrDatosExpr1: TStringField;
    qrDatosEMAIL: TStringField;
    qrDatosFECHANACIMIENTO: TDateTimeField;
    qrDatosSEXO: TIntegerField;
    qrDatosCIUDADID: TStringField;
    qrDatosExpr2: TMemoField;
    qrDatosExpr3: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmProductosInventario: TfrmProductosInventario;

implementation

{$R *.dfm}

procedure TfrmProductosInventario.Run;
begin

  showmodal;

  qrDatos.Close;
  qrDatos.Parameters.ParamByName('Desde').Value:= cxDateEdit1.Date;
  qrDatos.Parameters.ParamByName('Hasta').Value:= cxDateEdit2.Date;
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
