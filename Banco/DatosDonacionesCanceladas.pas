unit DatosDonacionesCanceladas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxDBEdit, cxDBLookupComboBox,
  cxImageComboBox, cxMemo, cxSpinEdit, cxCheckBox, cxCurrencyEdit, cxCalendar,
  ppDB, ppComm, ppRelatv, ppDBPipe, DBClient, DBActns;

type
  TfrmDonacionesCanceladas = class(TfrmDatosModule)
    qrDonaciones: TADOQuery;
    pmAcuerdoComercial: TPopupMenu;
    Precios1: TMenuItem;
    Descuentos1: TMenuItem;
    ActionList1: TActionList;
    qrEntradaPaciente: TADOQuery;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPaciente: TDataSource;
    dsEntradaPacienteDetalle: TDataSource;
    ppEntradaPaciente: TppDBPipeline;
    ppEntradaPacienteDetalle: TppDBPipeline;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    Paciente: TADOTable;
    PacientePacienteID: TStringField;
    PacientePacientePrincipalID: TStringField;
    PacienteTipoIdentificacion: TIntegerField;
    PacienteIdentificacion: TStringField;
    PacienteNombre: TStringField;
    PacienteDireccion: TMemoField;
    PacienteTelefono: TStringField;
    PacienteTelefono2: TStringField;
    PacienteFax: TStringField;
    PacienteeMail: TStringField;
    PacientePreferenciaResultado: TIntegerField;
    PacienteSeguroID: TStringField;
    PacientePolizaSeguro: TStringField;
    PacienteFechaNacimiento: TDateTimeField;
    PacienteSexo: TIntegerField;
    PacienteCodigoAxapta: TStringField;
    PacienteCiudadId: TStringField;
    PacientePublicarInternet: TBooleanField;
    dxLayoutControl2Group1: TdxLayoutGroup;
    tvDatosDonacionID: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosPacienteID: TcxGridDBColumn;
    tvDatosNotaEntrevista: TcxGridDBColumn;
    ClientDataSet1: TClientDataSet;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group6: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl2Item6: TdxLayoutItem;
    qrResultados: TADOQuery;
    dsResultados: TDataSource;
    qrResultadosMuestraNo: TStringField;
    qrResultadosPruebaId: TStringField;
    qrResultadosResultado: TStringField;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    qrResultadosDescripcion: TStringField;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1MuestraNo: TcxGridDBColumn;
    cxGridDBTableView1PruebaId: TcxGridDBColumn;
    cxGridDBTableView1Resultado: TcxGridDBColumn;
    cxGridDBTableView1Descripcion: TcxGridDBColumn;
    dxLayoutControl2Item8: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl2Group7: TdxLayoutGroup;
    dxLayoutControl2Item9: TdxLayoutItem;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    cxButton1: TcxButton;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutControl2Item11: TdxLayoutItem;
    dxLayoutControl2Group8: TdxLayoutGroup;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Group9: TdxLayoutGroup;
    cxDBComboBox2: TcxDBComboBox;
    dxLayoutControl2Item13: TdxLayoutItem;
    qrDonante: TADOQuery;
    qrDonantePacienteID: TStringField;
    qrDonanteTipoDonante: TWideStringField;
    qrDonanteEstado: TWideStringField;
    qrDonanteRechaso: TWideStringField;
    qrDonanteRechasoNota: TWideStringField;
    qrDonanteDonanteActivo: TSmallintField;
    dsDonante: TDataSource;
    qrDonanteTipoSangre: TWideStringField;
    qrDonanteRH: TWideStringField;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
    qrEntradaPacienteTELEFONOS: TStringField;
    qrEntradaPacienteTELEFONO2: TStringField;
    qrEntradaPacienteEMAIL: TStringField;
    qrEntradaPacienteCLIENTENOMBRE: TStringField;
    qrEntradaPacienteSUCURSALID: TStringField;
    qrEntradaPacienteUSERID: TStringField;
    qrEntradaPacienteCOBROID: TStringField;
    qrEntradaPacienteTOTALPAGADO: TBCDField;
    qrEntradaPacientePRIORIDAD: TIntegerField;
    qrEntradaPacienteFAX: TStringField;
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteCOBERTURAPORC: TBCDField;
    qrEntradaPacienteCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOPORC: TBCDField;
    qrEntradaPacienteDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOBONO: TBCDField;
    qrEntradaPacienteORIGEN: TStringField;
    qrEntradaPacienteAPROBACIONNO: TStringField;
    qrEntradaPacienteAPROBACIONPOR: TStringField;
    qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteMUESTRANO: TStringField;
    qrEntradaPacienteMONEDAID: TStringField;
    qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteEDADPACIENTE: TIntegerField;
    qrEntradaPacienteSEXO: TIntegerField;
    qrEntradaPacienteNOMBREDOCTOR: TStringField;
    qrEntradaPacientePUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteCARNET: TStringField;
    qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteCUADREGLOBAL: TStringField;
    qrEntradaPacienteCUADREUSUARIO: TStringField;
    qrEntradaPacienteDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteGASTOSVARIOS: TBCDField;
    qrEntradaPacienteNOAS400: TIntegerField;
    qrEntradaPacienteNOAXAPTA: TIntegerField;
    qrEntradaPacienteNOFACTURA: TIntegerField;
    qrEntradaPacienteFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteHOLD: TIntegerField;
    qrEntradaPacienteREPMUESTRA: TIntegerField;
    qrEntradaPacienteENTRADAIDANT: TStringField;
    qrEntradaPacienteTIPOENTRADA: TStringField;
    qrEntradaPacienteFORMADEPAGO: TStringField;
    qrEntradaPacienteDESCUENTOCARD: TStringField;
    qrEntradaPacienteDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteCLIENTEPADRE: TStringField;
    qrEntradaPacienteDESCUENTOPLANID: TStringField;
    qrEntradaPacienteFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteHORAREGISTRO: TStringField;
    qrEntradaPacienteTASA: TBCDField;
    qrEntradaPacienteESTATUS: TIntegerField;
    qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteCLASECREDITO: TStringField;
    qrEntradaPacienteCARNETNUMERO: TStringField;
    qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacientePACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteDATAAREAID: TStringField;
    qrEntradaPacienteRECID: TIntegerField;
    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    qrEntradaPacienteDetalleCODIGOCUPID: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaPacienteDetalleREFRECID: TIntegerField;
    qrEntradaPacienteDetalleSECUENCIA: TIntegerField;
    qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    qrEntradaPacienteDetalleTIPOAS400: TStringField;
    qrEntradaPacienteDetalleCODIGOAS400: TStringField;
    qrEntradaPacienteDetalleMEDIOAS400: TStringField;
    qrEntradaPacienteDetalleDESCPCT: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteDetalleRECID: TIntegerField;
    qrEntradaPacienteDetalleResultado: TStringField;
    tvDatosNombrePaciente: TcxGridDBColumn;
    cxCheckBox1: TcxCheckBox;
    tvDatosNoAsCorto: TcxGridDBColumn;
    qrDonacionesDonacionID: TStringField;
    qrDonacionesMuestraNo: TStringField;
    qrDonacionesMuestraNoAS: TStringField;
    qrDonacionesNoAsCorto: TStringField;
    qrDonacionesFecha: TDateTimeField;
    qrDonacionesPacienteID: TStringField;
    qrDonacionesNotaEntrevista: TMemoField;
    qrDonacionesDonacionStatus: TWideStringField;
    qrDonacionesDonacionTipo: TStringField;
    qrDonacionesComentario: TMemoField;
    qrDonacionesCantidadRecogida: TBCDField;
    qrDonacionesTemperatura: TBCDField;
    qrDonacionesPeso: TBCDField;
    qrDonacionesPulsoMinimo: TBCDField;
    qrDonacionesPulsoEstado: TStringField;
    qrDonacionesTensionArteriar: TStringField;
    qrDonacionesHoraInicio: TDateTimeField;
    qrDonacionesHoraFin: TDateTimeField;
    qrDonacionesDirigidoPacienteId: TStringField;
    qrDonacionesDirigidoNombre: TStringField;
    qrDonacionesHospital: TStringField;
    qrDonacionesFechaTranfusion: TDateTimeField;
    qrDonacionesMedico: TStringField;
    qrDonacionesTelefono: TStringField;
    qrDonacionesTelefono2: TStringField;
    qrDonacionesDireccionMedico: TMemoField;
    qrDonacionesPagina: TSmallintField;
    qrDonacionesTipoFundaID: TWideStringField;
    qrDonacionesHemoglobina: TStringField;
    qrDonacionesHematocito: TStringField;
    qrDonacionesGlobulosBlancos: TStringField;
    qrDonacionesPlaquetas: TStringField;
    qrDonacionesUsuarioAS: TStringField;
    qrDonacionesNotasCuestionario: TMemoField;
    qrDonacionesProductoID: TWideStringField;
    qrDonacionesReservado: TBooleanField;
    qrDonacionesDisponible: TBooleanField;
    qrDonacionesDoctorId: TStringField;
    qrDonacionesUserIdCuestionario: TStringField;
    qrDonacionesUserIdMuestra: TStringField;
    qrDonacionesUserIdHemograma: TStringField;
    qrDonacionesCausaRechazoId: TIntegerField;
    qrDonacionesENTRADAID: TStringField;
    qrDonacionesFECHA_1: TDateTimeField;
    qrDonacionesHORAENTRADA: TStringField;
    qrDonacionesPACIENTEID_1: TStringField;
    qrDonacionesCLIENTEID: TStringField;
    qrDonacionesDOCTORID_1: TStringField;
    qrDonacionesPOLIZAID: TStringField;
    qrDonacionesENCLINICA: TIntegerField;
    qrDonacionesRECORDCLINICA: TStringField;
    qrDonacionesNUMEROHABITACION: TStringField;
    qrDonacionesFECHAENTRADA: TDateTimeField;
    qrDonacionesFECHADEALTA: TDateTimeField;
    qrDonacionesRESULTADOPACIENTE: TIntegerField;
    qrDonacionesRESULTADODOCTOR: TIntegerField;
    qrDonacionesFECHAPROMETIDA: TDateTimeField;
    qrDonacionesHORAPROMETIDA: TStringField;
    qrDonacionesFLEBOTOMISTAID: TStringField;
    qrDonacionesNOTA: TStringField;
    qrDonacionesPROYECTOID: TStringField;
    qrDonacionesRECORDID: TIntegerField;
    qrDonacionesBRUTO: TBCDField;
    qrDonacionesDESCUENTO: TBCDField;
    qrDonacionesSUBTOTAL: TBCDField;
    qrDonacionesNETO: TBCDField;
    qrDonacionesNOMBREPACIENTE: TStringField;
    qrDonacionesDIRECCION: TStringField;
    qrDonacionesTELEFONOS: TStringField;
    qrDonacionesTELEFONO2_1: TStringField;
    qrDonacionesEMAIL: TStringField;
    qrDonacionesCLIENTENOMBRE: TStringField;
    qrDonacionesSUCURSALID: TStringField;
    qrDonacionesUSERID: TStringField;
    qrDonacionesCOBROID: TStringField;
    qrDonacionesTOTALPAGADO: TBCDField;
    qrDonacionesPRIORIDAD: TIntegerField;
    qrDonacionesFAX: TStringField;
    qrDonacionesTIPODOCUMENTO: TIntegerField;
    qrDonacionesCOBERTURAPORC: TBCDField;
    qrDonacionesCOBERTURASEGURO: TBCDField;
    qrDonacionesCOBERTURAVALOR: TBCDField;
    qrDonacionesDESCUENTOPORC: TBCDField;
    qrDonacionesDESCUENTOVALOR: TBCDField;
    qrDonacionesDESCUENTOBONO: TBCDField;
    qrDonacionesORIGEN: TStringField;
    qrDonacionesAPROBACIONNO: TStringField;
    qrDonacionesAPROBACIONPOR: TStringField;
    qrDonacionesCOBERTURARECHAZADA: TIntegerField;
    qrDonacionesCOBERTURACONFIRMADA: TIntegerField;
    qrDonacionesFECHAASEGURADORA: TDateTimeField;
    qrDonacionesMUESTRANO_1: TStringField;
    qrDonacionesMONEDAID: TStringField;
    qrDonacionesCOBERTURAEXPPORC: TIntegerField;
    qrDonacionesEDADPACIENTE: TIntegerField;
    qrDonacionesSEXO: TIntegerField;
    qrDonacionesNOMBREDOCTOR: TStringField;
    qrDonacionesPUBLICARINTERNET: TIntegerField;
    qrDonacionesCARNET: TStringField;
    qrDonacionesPUBLICARINTERNETDOCTOR: TIntegerField;
    qrDonacionesCUADREGLOBAL: TStringField;
    qrDonacionesCUADREUSUARIO: TStringField;
    qrDonacionesDESCAUTORIZADOPOR: TStringField;
    qrDonacionesGASTOSVARIOS: TBCDField;
    qrDonacionesNOAS400: TIntegerField;
    qrDonacionesNOAXAPTA: TIntegerField;
    qrDonacionesNOFACTURA: TIntegerField;
    qrDonacionesFACTEXTERIOR: TIntegerField;
    qrDonacionesHOLD: TIntegerField;
    qrDonacionesREPMUESTRA: TIntegerField;
    qrDonacionesENTRADAIDANT: TStringField;
    qrDonacionesTIPOENTRADA: TStringField;
    qrDonacionesFORMADEPAGO: TStringField;
    qrDonacionesDESCUENTOCARD: TStringField;
    qrDonacionesDESCUENTOTEXTO: TStringField;
    qrDonacionesACUERDOPROPIO: TIntegerField;
    qrDonacionesCLIENTEPADRE: TStringField;
    qrDonacionesDESCUENTOPLANID: TStringField;
    qrDonacionesFECHAREGISTRO: TDateTimeField;
    qrDonacionesHORAREGISTRO: TStringField;
    qrDonacionesTASA: TBCDField;
    qrDonacionesESTATUS: TIntegerField;
    qrDonacionesTIPOCLIENTEAS400: TIntegerField;
    qrDonacionesCLASECREDITO: TStringField;
    qrDonacionesCARNETNUMERO: TStringField;
    qrDonacionesCLIENTEPADREAXAPTA: TStringField;
    qrDonacionesPACIENTEIDAXAPTA: TStringField;
    qrDonacionesCLIENTEIDAXAPTA: TStringField;
    qrDonacionesDOCTORIDAXAPTA: TStringField;
    qrDonacionesDATAAREAID: TStringField;
    qrDonacionesRECID: TIntegerField;
    qrDonacionesTotalPendiente: TBCDField;
    qrDonacionesMuestraNoAS_1: TStringField;
    qrDonacionesNoAsCorto_1: TStringField;
    qrDonacionesEsCruce: TBooleanField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBTextEdit9PropertiesChange(Sender: TObject);
    procedure BtTarjetaClick(Sender: TObject);
    procedure BtParametroClick(Sender: TObject);
    procedure BtBalanceClick(Sender: TObject);
    procedure BtTransaccionesClick(Sender: TObject);
    procedure qrDonacionesNewRecord(DataSet: TDataSet);
    procedure qrDonacionesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;

    //function CanAdd: Boolean;
  public
    { Public declarations }
  end;

var
  frmDonacionesCanceladas: TfrmDonacionesCanceladas;

implementation

uses DataModule, Main;

{$R *.dfm}
{
function TfrmDonaciones.CanAdd: Boolean;
begin
  Result := False;
end;
 }
procedure TfrmDonacionesCanceladas.BtTarjetaClick(Sender: TObject);
begin
  inherited;
//   frmMain.LanzaConsulta(-8005, qrClientesClienteId.Value);
end;

procedure TfrmDonacionesCanceladas.BtTransaccionesClick(Sender: TObject);
begin
  inherited;
//  frmMain.LanzaVentana(-7999);
  //qrDonacionesDonacionStatus.Value:= BtTransacciones.Caption;
end;

procedure TfrmDonacionesCanceladas.cxButton2Click(Sender: TObject);
begin
  inherited;

  if cxCheckBox1.Checked then
  begin

    DM.DataBase.Execute(' UPDATE BSDonacion Set DonacionStatus = ''Pendiente'' ' +
                        ' WHERE  DonacionId = ''' + qrDonacionesDonacionID.AsString + ''' ');

  end;

  cxCheckBox1.Checked:= False;

  qrDonaciones.Close;
  qrDonaciones.Open;

end;

procedure TfrmDonacionesCanceladas.cxDBTextEdit9PropertiesChange(Sender: TObject);
begin
  inherited;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDonacionesPacienteID.Value;
  qrDonante.Open;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := qrDonacionesDonacionID.AsString;;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := qrEntradaPacienteMuestraNo.Value;
  qrEntradaPacienteDetalle.Open;

  qrResultados.Close;
  qrResultados.Parameters.ParamByName('MuestraNo').Value:= qrEntradaPacienteMuestraNo.Value;
  qrResultados.Open;

end;

procedure TfrmDonacionesCanceladas.BtBalanceClick(Sender: TObject);
begin
  inherited;
//  frmMain.LanzaConsulta(-7988,qrClientesClienteId.Value);
end;

procedure TfrmDonacionesCanceladas.BtParametroClick(Sender: TObject);
begin
  inherited;
//  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
//    frmMain.LanzaVentana(-8006)
end;

procedure TfrmDonacionesCanceladas.DoPost;
begin
 inherited;
end;

procedure TfrmDonacionesCanceladas.DoInsert;
begin

end;

procedure TfrmDonacionesCanceladas.DoDelete;
begin

end;

procedure TfrmDonacionesCanceladas.FormCreate(Sender: TObject);
begin
  inherited;

  qrDonaciones.Close;
  qrDonaciones.Open;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDonacionesPacienteID.Value;
  qrDonante.Open;

end;

procedure TfrmDonacionesCanceladas.qrDonacionesBeforePost(DataSet: TDataSet);
begin
  inherited;
   AutoKeyField := 'DonancionID';
{  If (qrClientes.State = dsInsert) Or
     (qrClientes.State = dsEdit) Then
    If (qrClientesClienteID.IsNull) Or
       (qrClientesClienteID.Value = '')Then
      AutoKeyField := 'ClienteID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrClientes.State = dsInsert) and (DM.qrParametroAutoNumerarClientes.Value) then
  begin
   qrClientesClienteID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
                                formatfloat('000000',DM.qrParametroSecuenciaCliente.asfloat);
   DM.qrParametro.edit;
   DM.qrParametroSecuenciaCliente.Value := DM.qrParametroSecuenciaCliente.Value + 1;
   DM.qrParametro.Post;
  end;}
end;

procedure TfrmDonacionesCanceladas.qrDonacionesNewRecord(DataSet: TDataSet);
begin
  inherited;
{  qrClientesPruebasPorDia.Value := 0;
  qrClientesCoberturaPorc.value := 0;
  qrClientesEnvioResultado.value := 0;
  qrClientesSexo.Value := 0;

  qrClientesGrupoCliente.Value := '02';
  qrClientesTipoCliente.Value := 'PRI';
  qrClientesMonedaID.Value :=  DM.qrParametroMonedaID.Value;
  qrClientesQuienPaga.Value := 'EMP';
  qrClientesEntregarResultados.Value := 'EMP';
  qrClientesPublicarInternet.Value := false;
  qrClientesCobrarDiferencia.Value := True;
  qrClientesAutoconfirmar.value := False;
  qrClientesActivarDescuentos.Value := True;
  qrClientesSiempreInternet.Value := True;
  qrClientesSiempreImprimir.Value := True;
  qrClientesEnviarFax.Value := False;
  qrClientesIncluirPrecioTicket.Value := True;
  qrClientesImprimirAliasNombre.Value := False;
  qrClientesImprimirAliasPrueba.Value := False;
  qrClientesImprimirAliasResultados.Value := False;

  DM.qrParametro.close;
  DM.qrParametro.open;

  qrClientesClienteID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
                               formatfloat('000000', DM.qrParametroSecuenciaCliente.asfloat);
}
end;

end.
