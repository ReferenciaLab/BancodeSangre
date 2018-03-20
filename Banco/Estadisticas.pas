unit Estadisticas;

interface

uses
  SysUtils, Classes, RpRave, RpDefine, RpCon, RpConDS, DB, ADODB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppCtrls, jpeg, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppChrt, ppChrtDP, ppVar;

type
  TdmEstadisticas = class(TDataModule)
    qrGeneral: TADOQuery;
    rsGeneral: TRvDataSetConnection;
    rvEstadistica: TRvProject;
    ppGeneral: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppImage1: TppImage;
    ppLabel28: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppParameterList1: TppParameterList;
    plGeneral: TppDBPipeline;
    dsGeneral: TDataSource;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppDPTeeChart1: TppDPTeeChart;
    qrPorTipos: TADOQuery;
    qrPorTiposEstado: TWideStringField;
    qrPorTiposA: TIntegerField;
    qrPorTiposA2: TIntegerField;
    qrPorTiposB: TIntegerField;
    qrPorTiposB2: TIntegerField;
    qrPorTiposAB: TIntegerField;
    qrPorTiposAB2: TIntegerField;
    qrPorTiposO: TIntegerField;
    qrPorTiposO2: TIntegerField;
    dsPorTipos: TDataSource;
    ppPorTipos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppImage2: TppImage;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameterList2: TppParameterList;
    plPorTipos: TppDBPipeline;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppDBText13: TppDBText;
    ppLabel17: TppLabel;
    ppDBText14: TppDBText;
    ppLabel18: TppLabel;
    ppDBText15: TppDBText;
    ppLabel19: TppLabel;
    ppDBText16: TppDBText;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    ppLabel21: TppLabel;
    ppDBText18: TppDBText;
    ppLabel22: TppLabel;
    ppDBText19: TppDBText;
    ppLabel23: TppLabel;
    ppDBText20: TppDBText;
    ppDBText10: TppDBText;
    qrGeneralTotalDonantes: TIntegerField;
    qrGeneralAprobados: TIntegerField;
    qrGeneralRechazados: TIntegerField;
    qrGeneralEnProceso: TIntegerField;
    qrGeneralPorcientoAprobados: TBCDField;
    qrGeneralPorcientoRechazados: TBCDField;
    qrGeneralPorcientoProceso: TBCDField;
    qrGeneralDesde: TDateTimeField;
    qrGeneralHasta: TDateTimeField;
    qrPorTiposDesde: TDateTimeField;
    qrPorTiposHasta: TDateTimeField;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    qrCancelaciones: TADOQuery;
    dsCancelaciones: TDataSource;
    ppCancelaciones: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppImage3: TppImage;
    ppLabel25: TppLabel;
    ppLabel36: TppLabel;
    ppDBText21: TppDBText;
    ppLabel37: TppLabel;
    ppDBText22: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppParameterList3: TppParameterList;
    plCancelaciones: TppDBPipeline;
    ppLabel24: TppLabel;
    ppDBText23: TppDBText;
    ppLabel26: TppLabel;
    ppDBText24: TppDBText;
    ppLabel27: TppLabel;
    ppDBText25: TppDBText;
    ppLabel29: TppLabel;
    ppDBText26: TppDBText;
    ppLabel30: TppLabel;
    ppDBText27: TppDBText;
    ppLabel31: TppLabel;
    ppDBText28: TppDBText;
    qrCancelacionesDonacion: TStringField;
    qrCancelacionesMuestra: TStringField;
    qrCancelacionesFecha: TDateTimeField;
    qrCancelacionesPaciente: TStringField;
    qrCancelacionesNombre: TStringField;
    qrCancelacionesABO: TWideStringField;
    qrCancelacionesRH: TWideStringField;
    qrCancelacionesDu: TWideStringField;
    qrCancelacionesCausa: TIntegerField;
    qrCancelacionesRechazo: TStringField;
    qrCancelacionesEstado: TWideStringField;
    ppLabel32: TppLabel;
    ppDBText29: TppDBText;
    qrCancelacionesDesde: TDateTimeField;
    qrCancelacionesHasta: TDateTimeField;
    qrCancelacionesTotalDonantes: TIntegerField;
    qrCancelacionesAprobados: TIntegerField;
    qrCancelacionesRechazados: TIntegerField;
    qrCancelacionesEnProceso: TIntegerField;
    ppLabel33: TppLabel;
    ppDBText30: TppDBText;
    ppLabel34: TppLabel;
    ppDBText31: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText32: TppDBText;
    ppLabel35: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    qrDonaciones: TADOQuery;
    dsDonaciones: TDataSource;
    ppDonaciones: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppImage4: TppImage;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDBText33: TppDBText;
    ppLabel43: TppLabel;
    ppDBText34: TppDBText;
    ppLabel50: TppLabel;
    ppDBText35: TppDBText;
    ppLabel51: TppLabel;
    ppDBText36: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppLabel53: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppParameterList4: TppParameterList;
    plDonaciones: TppDBPipeline;
    qrCancelacionesProducto: TWideStringField;
    ppLabel57: TppLabel;
    ppDBText45: TppDBText;
    qrEstados: TADOQuery;
    StringField6: TStringField;
    StringField7: TStringField;
    DateTimeField4: TDateTimeField;
    StringField8: TStringField;
    StringField9: TStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField6: TIntegerField;
    StringField10: TStringField;
    WideStringField8: TWideStringField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    dsEstados: TDataSource;
    ppEstados: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppImage5: TppImage;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText46: TppDBText;
    ppLabel60: TppLabel;
    ppDBText47: TppDBText;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText48: TppDBText;
    ppLabel68: TppLabel;
    ppDBText49: TppDBText;
    ppLabel69: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel70: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppDetailBand5: TppDetailBand;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText56: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText57: TppDBText;
    ppLabel73: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppParameterList5: TppParameterList;
    plEstados: TppDBPipeline;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    qrDonacionesDesde: TDateTimeField;
    qrDonacionesHasta: TDateTimeField;
    qrDonacionesTotalDonantes: TIntegerField;
    qrDonacionesAprobados: TIntegerField;
    qrDonacionesRechazados: TIntegerField;
    qrDonacionesEnProceso: TIntegerField;
    qrDonacionesTipo: TWideStringField;
    qrDonacionesEstado: TWideStringField;
    qrDonacionesTotal: TIntegerField;
    qrDonacionesAferesis: TIntegerField;
    qrDonacionesSangreTotal: TIntegerField;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel44: TppLabel;
    ppDBText37: TppDBText;
    ppLabel45: TppLabel;
    ppDBText38: TppDBText;
    ppLabel46: TppLabel;
    ppDBText39: TppDBText;
    ppLabel47: TppLabel;
    ppDBText40: TppDBText;
    ppLabel48: TppLabel;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel49: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure general;
    Procedure Aprobados;
    Procedure Donaciones;
    procedure Rechazos;
    procedure porTipos;
  end;

var
  dmEstadisticas: TdmEstadisticas;

implementation
uses
  DateUtils, DataBanco;
{$R *.dfm}

procedure TdmEstadisticas.porTipos;
var

  Desde, Hasta: TDateTime;
begin

  if not DMB.fecha(Desde, Hasta)  then Exit;


  qrPorTipos.Close;
    qrPorTipos.Parameters.ParamByName('Desde').Value:= Desde;
    qrPorTipos.Parameters.ParamByName('Hasta').Value:= Hasta;
  qrPorTipos.Open;

  //rvEstadistica.ExecuteReport('General');
  ppPorTipos.DeviceType := '14839500'; //dtScreen;
  ppPorTipos.Print;

end;

procedure TdmEstadisticas.general;
var

  Desde, Hasta: TDateTime;

begin

  if not DMB.fecha(Desde, Hasta)  then Exit;

  qrGeneral.Close;
    qrGeneral.Parameters.ParamByName('Desde').Value:= Desde;
    qrGeneral.Parameters.ParamByName('Hasta').Value:= Hasta;
  qrGeneral.Open;

  //rvEstadistica.ExecuteReport('General');
  ppGeneral.DeviceType := '14839500'; //dtScreen;
  ppGeneral.Print;

end;

procedure TdmEstadisticas.Aprobados;
begin

end;

procedure TdmEstadisticas.Donaciones;
var

  Desde, Hasta: TDateTime;
begin

  if not DMB.fecha(Desde, Hasta)  then Exit;

  qrDonaciones.Close;
    qrDonaciones.Parameters.ParamByName('Desde').Value:= Desde;
    qrDonaciones.Parameters.ParamByName('Hasta').Value:= Hasta;
  qrDonaciones.Open;

  //rvEstadistica.ExecuteReport('General');
  ppDonaciones.DeviceType := '14839500'; //dtScreen;
  ppDonaciones.Print;

end;

procedure TdmEstadisticas.Rechazos;
var

  Desde, Hasta: TDateTime;
begin

  if not DMB.fecha(Desde, Hasta)  then Exit;

  qrCancelaciones.Close;
    qrCancelaciones.Parameters.ParamByName('Desde').Value:= Desde;
    qrCancelaciones.Parameters.ParamByName('Hasta').Value:= Hasta;
  qrCancelaciones.Open;

  //rvEstadistica.ExecuteReport('General');
  ppCancelaciones.DeviceType := '14839500'; //dtScreen;
  ppCancelaciones.Print;

end;

end.
