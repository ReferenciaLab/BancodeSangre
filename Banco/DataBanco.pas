unit DataBanco;

interface

uses
  SysUtils, Classes, DB, ADODB, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TDMB = class(TDataModule)
    qrBancoInventario: TADOQuery;
    qrBancoInventarioProductoID: TWideStringField;
    qrBancoInventarioProductoDes: TWideStringField;
    qrBancoInventarioCantidad: TBCDField;
    qrBancoInventarioPrecio: TBCDField;
    qrBancoInventarioPrecioDolares: TBCDField;
    qrBancoInventarioDias: TIntegerField;
    qrBancoInventarioPermiteCambioPrecio: TBooleanField;
    qrBancoInventarioCodigoAxapta: TStringField;
    qrBancoInventarioCosto: TBCDField;
    qrBancoInventarioExterior: TBooleanField;
    qrBancoInventarioFacturarCabecera: TBooleanField;
    qrBancoInventarioTipo: TBooleanField;
    qrDonacionesAprobadas: TADOQuery;
    qrPruebasBanco: TADOQuery;
    qrDonaciones: TADOQuery;
    qrEsDonante: TADOQuery;
    qrReservar: TADOQuery;
    qrReservarReceptorId: TStringField;
    dsReservar: TDataSource;
    qrReservarReservadoHasta: TDateTimeField;
    qrReservarCruce: TBooleanField;
    qrReservarCrucePacienteId: TStringField;
    qrEsServicio: TADOQuery;
    qrEsServicioServicio: TBooleanField;
    qrEntradaPacienteDetalle: TADOQuery;
    qrReservarReservado: TBooleanField;
    qrProductosBanco: TADOQuery;
    qrASHemograma: TADOQuery;
    qrEntradaPaciente: TADOQuery;
    qrSQLEncabezado: TADOQuery;
    qrSQLDetalle: TADOQuery;
    qrASHemogramaL48MUE: TBCDField;
    qrASHemogramaL48PRU: TIntegerField;
    qrASHemogramaL48HGN: TStringField;
    qrASHemogramaL48HTT: TStringField;
    qrASHemogramaL48GLB: TStringField;
    qrASHemogramaL48PLA: TStringField;
    qrASHemogramaL48USU: TStringField;
    qrASHemogramaL48FEC: TIntegerField;
    qrASHemogramaL48HOR: TIntegerField;
    qrDonacion: TADOQuery;
    qrDonacionDonacionID: TStringField;
    qrDonacionFecha: TDateTimeField;
    qrDonacionPacienteID: TStringField;
    qrDonacionNotaEntrevista: TMemoField;
    qrDonacionDonacionStatus: TWideStringField;
    qrDonacionDonacionTipo: TStringField;
    qrDonacionComentario: TMemoField;
    qrDonacionCantidadRecogida: TBCDField;
    qrDonacionTemperatura: TBCDField;
    qrDonacionPeso: TBCDField;
    qrDonacionPulsoMinimo: TBCDField;
    qrDonacionPulsoEstado: TStringField;
    qrDonacionTensionArteriar: TStringField;
    qrDonacionHoraInicio: TDateTimeField;
    qrDonacionHoraFin: TDateTimeField;
    qrDonacionDirigidoNombre: TStringField;
    qrDonacionHospital: TStringField;
    qrDonacionFechaTranfusion: TDateTimeField;
    qrDonacionMedico: TStringField;
    qrDonacionTelefono: TStringField;
    qrDonacionTelefono2: TStringField;
    qrDonacionDireccionMedico: TMemoField;
    qrDonacionPagina: TSmallintField;
    qrDonacionTipoFundaID: TWideStringField;
    qrDonacionHemoglobina: TStringField;
    qrDonacionHematocito: TStringField;
    qrDonacionGlobulosBlancos: TStringField;
    qrDonacionPlaquetas: TStringField;
    qrDonacionNotasCuestionario: TMemoField;
    qrDonacionProductoID: TWideStringField;
    qrDonacionReservado: TBooleanField;
    qrDonacionDisponible: TBooleanField;
    qrDonacionDirigidoPacienteId: TStringField;
    qrDoctor: TADOQuery;
    qrReservarDoctorId: TStringField;
    qrDonacionDoctorId: TStringField;
    qrDonacionUserIdCuestionario: TStringField;
    qrDonacionUserIdMuestra: TStringField;
    qrHemograma: TADOQuery;
    qrHemogramaDonacionID: TStringField;
    qrHemogramaMuestraNo: TStringField;
    qrHemogramaHemoglobina: TStringField;
    qrHemogramaHematocito: TStringField;
    qrHemogramaGlobulosBlancos: TStringField;
    qrHemogramaPlaquetas: TStringField;
    qrHemogramaMuestraNoAS: TStringField;
    plDonacion: TppDBPipeline;
    dsDomaciones: TDataSource;
    dsDatosEtiqutaGrance: TDataSource;
    qFind: TADOQuery;
    qrDonantes: TADOQuery;
    dsDonantes: TDataSource;
    qrReservacionesVencidas: TADOQuery;
    qrReservacionesVencidasCodigoId: TStringField;
    qrReservacionesVencidasDonacionId: TStringField;
    qrReservacionesVencidasProductoID: TWideStringField;
    qrReservacionesVencidasProductoDes: TWideStringField;
    qrReservacionesVencidasCantidad: TBCDField;
    qrReservacionesVencidasFecha: TDateTimeField;
    qrReservacionesVencidasHora: TStringField;
    qrReservacionesVencidasReservado: TBooleanField;
    qrReservacionesVencidasReservadoHasta: TDateTimeField;
    qrReservacionesVencidasDias: TIntegerField;
    qrReservacionesVencidasVence: TDateTimeField;
    qrReservacionesVencidasCruce: TBooleanField;
    qrReservacionesVencidasReceptorId: TStringField;
    qrReservacionesVencidasDoctorId: TStringField;
    qrProductosVencidos: TADOQuery;
    qrDatosProducto: TADOQuery;
    qrDatosProductoCodigoId: TStringField;
    qrDatosProductoReceptorId: TStringField;
    qrDatosProductoDoctorId: TStringField;
    qrDatosProductoReservado: TBooleanField;
    qrDatosProductoReservadoHasta: TDateTimeField;
    qrDatosProductoCruce: TBooleanField;
    qrDatosProductoCrucePacienteId: TStringField;
    qrDatosProductoDisponible: TBooleanField;
    qrProductosVencidosCodigoId: TStringField;
    qrProductosVencidosDonacionId: TStringField;
    qrProductosVencidosProductoID: TWideStringField;
    qrProductosVencidosProductoDes: TWideStringField;
    qrProductosVencidosCantidad: TBCDField;
    qrProductosVencidosFecha: TDateTimeField;
    qrProductosVencidosHora: TStringField;
    qrProductosVencidosReservado: TBooleanField;
    qrProductosVencidosReservadoHasta: TDateTimeField;
    qrProductosVencidosDias: TIntegerField;
    qrProductosVencidosVence: TDateTimeField;
    qrProductosVencidosCruce: TBooleanField;
    qrProductosVencidosReceptorId: TStringField;
    qrProductosVencidosDoctorId: TStringField;
    ADOQuery1: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    IntegerField1: TIntegerField;
    BooleanField1: TBooleanField;
    StringField1: TStringField;
    BCDField4: TBCDField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    qrDonacionesAprobadasDonacionID: TStringField;
    qrDonacionesAprobadasFecha: TDateTimeField;
    qrDonacionesAprobadasPacienteID: TStringField;
    qrDonacionesAprobadasIdentificacion: TStringField;
    qrDonacionesAprobadasNombre: TStringField;
    qrDonacionesAprobadasDireccion: TStringField;
    qrDonacionesAprobadasTelefono: TStringField;
    qrDonacionesAprobadasemail: TStringField;
    qrDonacionesAprobadasFechaNacimiento: TDateTimeField;
    qrDonacionesAprobadasSexo: TIntegerField;
    qrDonacionesAprobadasCiudadID: TStringField;
    qrDonacionesAprobadasNotaEntrevista: TMemoField;
    qrDonacionesAprobadasDonacionStatus: TWideStringField;
    qrDonacionesAprobadasMuestraNo: TStringField;
    qrDonacionesAprobadasDirigidoPacienteId: TStringField;
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
    qrClientes: TADOQuery;
    qrClientesNOMBRE: TStringField;
    qrDoctorDOCTORID: TStringField;
    qrDoctorNOMBRE: TStringField;
    qrDoctorCONTACTO: TStringField;
    qrDoctorTELEFONO: TStringField;
    qrDoctorFAX: TStringField;
    qrDoctorCODIGOAXAPTA: TStringField;
    qrDoctorEMAIL: TStringField;
    qrDoctorCELULAR: TStringField;
    qrDoctorDIRECCION: TMemoField;
    qrDoctorCIUDADID: TStringField;
    qrDoctorRESULTADODOCTOR: TIntegerField;
    qrDoctorESPECIALIDADID: TStringField;
    qrDoctorPUBLICARINTERNET: TIntegerField;
    qrDoctorCODIGORESULTADO: TStringField;
    qrDoctorUSUARIOINTERNET: TStringField;
    qrDoctorCLAVEINTERNET: TStringField;
    qrDoctorCOMISION: TBCDField;
    qrDoctorDIRECCIONCONSULTA2: TMemoField;
    qrDoctorDIRECCIONCONSULTA1: TMemoField;
    qrDoctorESPECIALIDAD: TStringField;
    qrDoctorCODIGOWEB: TStringField;
    qrDoctorDATAAREAID: TStringField;
    qrDoctorRECID: TIntegerField;
    qrDoctormsrepl_tran_version: TGuidField;
    qrDonacionesDonacionID: TStringField;
    qrDonacionesMuestraNo: TStringField;
    qrDonacionesMuestraNoAS: TStringField;
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
    qrDonacionesNotasCuestionario: TMemoField;
    qrDonacionesProductoID: TWideStringField;
    qrDonacionesReservado: TBooleanField;
    qrDonacionesDisponible: TBooleanField;
    qrDonacionesDoctorId: TStringField;
    qrDonacionesUserIdCuestionario: TStringField;
    qrDonacionesUserIdMuestra: TStringField;
    qrDonacionesIdentificacion: TStringField;
    qrDonacionesNombre: TStringField;
    qrDonacionesDireccion: TStringField;
    qrDonacionesTelefono_1: TStringField;
    qrDonacionesemail: TStringField;
    qrDonacionesFechaNacimiento: TDateTimeField;
    qrDonacionesSexo: TIntegerField;
    qrDonacionesCiudadID: TStringField;
    qrDonacionesNotaEntrevista_1: TMemoField;
    qrDonacionesDonacionStatus_1: TWideStringField;
    qrDonantesPacienteID: TStringField;
    qrDonantesNombre: TStringField;
    qrDonantesTelefono: TStringField;
    qrDonantesTelefono2: TStringField;
    qrDonantesDireccion: TStringField;
    qrDonantesCiudadID: TStringField;
    qrDonantesTipoDonante: TWideStringField;
    qrDonantesEstado: TWideStringField;
    qrDonantesRechaso: TWideStringField;
    qrDonantesDonanteActivo: TSmallintField;
    qrDonantesTipoSangre: TWideStringField;
    qrDonantesRH: TWideStringField;
    qrDonantesUltimaDonacionId: TStringField;
    qrDonantesFechaUltimaDon: TDateTimeField;
    qrEntradaPacienteCons: TADOQuery;
    qrEntradaPacienteConsENTRADAID: TStringField;
    qrEntradaPacienteConsFECHA: TDateTimeField;
    qrEntradaPacienteConsHORAENTRADA: TStringField;
    qrEntradaPacienteConsPACIENTEID: TStringField;
    qrEntradaPacienteConsCLIENTEID: TStringField;
    qrEntradaPacienteConsDOCTORID: TStringField;
    qrEntradaPacienteConsPOLIZAID: TStringField;
    qrEntradaPacienteConsENCLINICA: TIntegerField;
    qrEntradaPacienteConsRECORDCLINICA: TStringField;
    qrEntradaPacienteConsNUMEROHABITACION: TStringField;
    qrEntradaPacienteConsFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteConsFECHADEALTA: TDateTimeField;
    qrEntradaPacienteConsRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteConsRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteConsFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteConsHORAPROMETIDA: TStringField;
    qrEntradaPacienteConsFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteConsNOTA: TStringField;
    qrEntradaPacienteConsPROYECTOID: TStringField;
    qrEntradaPacienteConsRECORDID: TIntegerField;
    qrEntradaPacienteConsBRUTO: TBCDField;
    qrEntradaPacienteConsDESCUENTO: TBCDField;
    qrEntradaPacienteConsSUBTOTAL: TBCDField;
    qrEntradaPacienteConsNETO: TBCDField;
    qrEntradaPacienteConsNOMBREPACIENTE: TStringField;
    qrEntradaPacienteConsDIRECCION: TStringField;
    qrEntradaPacienteConsTELEFONOS: TStringField;
    qrEntradaPacienteConsTELEFONO2: TStringField;
    qrEntradaPacienteConsEMAIL: TStringField;
    qrEntradaPacienteConsCLIENTENOMBRE: TStringField;
    qrEntradaPacienteConsSUCURSALID: TStringField;
    qrEntradaPacienteConsUSERID: TStringField;
    qrEntradaPacienteConsCOBROID: TStringField;
    qrEntradaPacienteConsTOTALPAGADO: TBCDField;
    qrEntradaPacienteConsPRIORIDAD: TIntegerField;
    qrEntradaPacienteConsFAX: TStringField;
    qrEntradaPacienteConsTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteConsCOBERTURAPORC: TBCDField;
    qrEntradaPacienteConsCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteConsCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteConsDESCUENTOPORC: TBCDField;
    qrEntradaPacienteConsDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteConsDESCUENTOBONO: TBCDField;
    qrEntradaPacienteConsORIGEN: TStringField;
    qrEntradaPacienteConsAPROBACIONNO: TStringField;
    qrEntradaPacienteConsAPROBACIONPOR: TStringField;
    qrEntradaPacienteConsCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteConsCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteConsFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteConsMUESTRANO: TStringField;
    qrEntradaPacienteConsMONEDAID: TStringField;
    qrEntradaPacienteConsCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteConsEDADPACIENTE: TIntegerField;
    qrEntradaPacienteConsSEXO: TIntegerField;
    qrEntradaPacienteConsNOMBREDOCTOR: TStringField;
    qrEntradaPacienteConsPUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteConsCARNET: TStringField;
    qrEntradaPacienteConsPUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteConsCUADREGLOBAL: TStringField;
    qrEntradaPacienteConsCUADREUSUARIO: TStringField;
    qrEntradaPacienteConsDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteConsGASTOSVARIOS: TBCDField;
    qrEntradaPacienteConsNOAS400: TIntegerField;
    qrEntradaPacienteConsNOAXAPTA: TIntegerField;
    qrEntradaPacienteConsNOFACTURA: TIntegerField;
    qrEntradaPacienteConsFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteConsHOLD: TIntegerField;
    qrEntradaPacienteConsREPMUESTRA: TIntegerField;
    qrEntradaPacienteConsENTRADAIDANT: TStringField;
    qrEntradaPacienteConsTIPOENTRADA: TStringField;
    qrEntradaPacienteConsFORMADEPAGO: TStringField;
    qrEntradaPacienteConsDESCUENTOCARD: TStringField;
    qrEntradaPacienteConsDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteConsACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteConsCLIENTEPADRE: TStringField;
    qrEntradaPacienteConsDESCUENTOPLANID: TStringField;
    qrEntradaPacienteConsFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteConsHORAREGISTRO: TStringField;
    qrEntradaPacienteConsTASA: TBCDField;
    qrEntradaPacienteConsESTATUS: TIntegerField;
    qrEntradaPacienteConsTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteConsCLASECREDITO: TStringField;
    qrEntradaPacienteConsCARNETNUMERO: TStringField;
    qrEntradaPacienteConsCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacienteConsPACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteConsCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteConsDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteConsDATAAREAID: TStringField;
    qrEntradaPacienteConsRECID: TIntegerField;
    qrPruebasBancoPRUEBAID: TStringField;
    qrPruebasBancoALIAS: TStringField;
    qrPruebasBancoDESCRIPCION: TStringField;
    qrPruebasBancoESTATUS: TIntegerField;
    qrPruebasBancoGRUPOPRUEBAID: TStringField;
    qrPruebasBancoDEPARTAMENTO: TStringField;
    qrPruebasBancoPRECIO: TBCDField;
    qrPruebasBancoPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasBancoCODIGOAXAPTA: TStringField;
    qrPruebasBancoPRECIODOLARES: TBCDField;
    qrPruebasBancoCOSTO: TBCDField;
    qrPruebasBancoEXTERIOR: TIntegerField;
    qrPruebasBancoFACTURARCABECERA: TIntegerField;
    qrPruebasBancoPRUEBAS: TIntegerField;
    qrPruebasBancoTIPO: TStringField;
    qrPruebasBancoORINA: TIntegerField;
    qrPruebasBancoSANGRE: TIntegerField;
    qrPruebasBancoCONDPACIENTE: TStringField;
    qrPruebasBancoCONDMUESTRA: TStringField;
    qrPruebasBancoCODDIAPROC: TStringField;
    qrPruebasBancoDIASRESULTADO: TIntegerField;
    qrPruebasBancoUNIDAD: TStringField;
    qrPruebasBancoABREVIACION: TStringField;
    qrPruebasBancoTIPOMUESTRA: TIntegerField;
    qrPruebasBancoMEDIO: TIntegerField;
    qrPruebasBancoCOLOR: TIntegerField;
    qrPruebasBancoDEPID: TStringField;
    qrPruebasBancoTIPOAS400: TStringField;
    qrPruebasBancoCODIGOIDAS400: TStringField;
    qrPruebasBancoMEDIOAS400: TStringField;
    qrPruebasBancoNOPROCESAR: TIntegerField;
    qrPruebasBancoCOMENTARIONOPROCESAR: TStringField;
    qrPruebasBancoDATAAREAID: TStringField;
    qrPruebasBancoRECID: TIntegerField;
    qrPruebasBancomsrepl_tran_version: TGuidField;
    ASConnection: TADOConnection;
    qrSQLEncabezadoMuestra: TStringField;
    qrSQLEncabezadoNOMBRE: TStringField;
    qrSQLEncabezadoHora: TStringField;
    qrSQLEncabezadoDIRECCION: TStringField;
    qrSQLEncabezadoEdad: TIntegerField;
    qrSQLEncabezadoFechaNacimiento: TDateTimeField;
    qrSQLEncabezadoTelefono: TStringField;
    qrSQLEncabezadoCategoria: TStringField;
    qrSQLEncabezadoFechaEntrada: TDateTimeField;
    qrSQLEncabezadoUSERID: TStringField;
    qrSQLEncabezadoSEXO: TIntegerField;
    qrSQLEncabezadoCedula: TStringField;
    qrSQLEncabezadoSUCURSALID: TStringField;
    qrSQLEncabezadoDoctorId: TStringField;
    qrSQLEncabezadoDoctor: TStringField;
    qrSQLEncabezadoCliente: TStringField;
    qrSQLEncabezadoFacturado: TIntegerField;
    qrSQLEncabezadoPagado: TIntegerField;
    qrSQLEncabezadoResto: TIntegerField;
    qrSQLEncabezadoTipResPaciente: TIntegerField;
    qrSQLEncabezadoInternet: TIntegerField;
    qrSQLEncabezadoTipResDoctor: TIntegerField;
    qrSQLEncabezadoInternetDoctor: TIntegerField;
    qrSQLEncabezadoTipResCliente: TIntegerField;
    qrSQLEncabezadoInternetCliente: TIntegerField;
    qrSQLEncabezadoComentario: TStringField;
    qrSQLDetalleMuestra: TStringField;
    qrSQLDetallePruebaID: TStringField;
    qrSQLDetalleDESCRIPCION: TStringField;
    qrSQLDetalleStatus: TStringField;
    qrSQLDetalleDepartamento: TStringField;
    qrSQLDetalleFechaEntrada: TDateTimeField;
    qrSQLDetalleHora: TStringField;
    qrSQLDetalleUSERID: TStringField;
    qrSQLDetalleComentario: TStringField;
    qrSQLDetallePeticion2: TIntegerField;
    qrSQLDetalleMuestraAnterior: TIntegerField;
    qrProductosBancoProductoID: TWideStringField;
    qrProductosBancoProductoDes: TWideStringField;
    qrProductosBancoPrecio: TBCDField;
    qrProductosBancoPrecioDolares: TBCDField;
    qrProductosBancoDias: TIntegerField;
    qrProductosBancoPermiteCambioPrecio: TBooleanField;
    qrProductosBancoCodigoAxapta: TStringField;
    qrProductosBancoCosto: TBCDField;
    qrProductosBancoExterior: TBooleanField;
    qrProductosBancoFacturarCabecera: TBooleanField;
    qrProductosBancoTipo: TBooleanField;
    qrProductosBancoNecesitaCruce: TBooleanField;
    qrProductosBancoServicio: TBooleanField;
    qrProductosBancoInicial: TBooleanField;
    qrExistePrueba: TADOQuery;
    qrHemogramaUsuarioAS: TStringField;
    qrEntradaVentaDetalle: TADOQuery;
    qrEntradaVentaDetallePRUEBAID: TStringField;
    qrEntradaVentaDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaVentaDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaVentaDetalleDESCRIPCION: TStringField;
    qrEntradaVentaDetalleCODIGOCUPID: TStringField;
    qrEntradaVentaDetalleMUESTRAANT: TStringField;
    qrEntradaVentaDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaVentaDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaVentaDetalleREFRECID: TIntegerField;
    qrEntradaVentaDetalleSECUENCIA: TIntegerField;
    qrEntradaVentaDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaVentaDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaVentaDetalleUNIDADMUESTRA: TStringField;
    qrEntradaVentaDetalleSECUENCIAACT: TIntegerField;
    qrEntradaVentaDetallePRECIO: TBCDField;
    qrEntradaVentaDetalleDESCUENTO: TBCDField;
    qrEntradaVentaDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaVentaDetalleTOTALLINEA: TBCDField;
    qrEntradaVentaDetalleCOMENTARIO: TStringField;
    qrEntradaVentaDetalleTIPOPRUEBA: TStringField;
    qrEntradaVentaDetalleTIPOAS400: TStringField;
    qrEntradaVentaDetalleCODIGOAS400: TStringField;
    qrEntradaVentaDetalleMEDIOAS400: TStringField;
    qrEntradaVentaDetalleDESCPCT: TBCDField;
    qrEntradaVentaDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaVentaDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaVentaDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaVentaDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaVentaDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaVentaDetalleFACTURAR: TIntegerField;
    qrEntradaVentaDetalleSELECCIONAR: TIntegerField;
    qrEntradaVentaDetalleMUESTRANO: TStringField;
    qrEntradaVentaDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaVentaDetalleURGENTE: TIntegerField;
    qrEntradaVentaDetalleREPMUESTRA: TIntegerField;
    qrEntradaVentaDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaVentaDetalleHORAENTREGA: TStringField;
    qrEntradaVentaDetalleESTATUS: TStringField;
    qrEntradaVentaDetalleDATAAREAID: TStringField;
    qrEntradaVentaDetalleRECID: TIntegerField;
    qrEntradaVentaDetalleResultado: TStringField;
    qrConsultaProducto: TADOQuery;
    qrConsultaProductoCodigoId: TStringField;
    qrConsultaProductoDonacionId: TStringField;
    qrConsultaProductoProductoID: TWideStringField;
    qrConsultaProductoCantidad: TBCDField;
    qrConsultaProductoFecha: TDateTimeField;
    qrConsultaProductoHora: TStringField;
    qrConsultaProductoProcesoID: TWideStringField;
    qrConsultaProductoReservado: TBooleanField;
    qrConsultaProductoReservadoHasta: TDateTimeField;
    qrConsultaProductoDias: TIntegerField;
    qrConsultaProductoVence: TDateTimeField;
    qrConsultaProductoCruce: TBooleanField;
    qrConsultaProductoCrucePacienteId: TStringField;
    qrConsultaProductoDisponible: TBooleanField;
    qrConsultaProductoReceptorId: TStringField;
    qrConsultaProductoDoctorId: TStringField;
    qrConsultaProductoProductoDes: TWideStringField;
    qrConsultaProductoPrecio: TBCDField;
    qrConsultaProductoTipoSangre: TWideStringField;
    qrConsultaProductoRH: TWideStringField;
    qrConsultaProductoPacienteID: TStringField;
    qrDonacionMuestraNo: TStringField;
    qrDonacionMuestraNoAS: TStringField;
    qrDonacionUsuarioAS: TStringField;
    qrDonacionUserIdHemograma: TStringField;
    qrEntradaVentaDetalleCODIGOID: TStringField;
    qrEntradaVenta: TADOQuery;
    qrEntradaVentaENTRADAID: TStringField;
    qrEntradaVentaFECHA: TDateTimeField;
    qrEntradaVentaHORAENTRADA: TStringField;
    qrEntradaVentaPACIENTEID: TStringField;
    qrEntradaVentaCLIENTEID: TStringField;
    qrEntradaVentaDOCTORID: TStringField;
    qrEntradaVentaPOLIZAID: TStringField;
    qrEntradaVentaENCLINICA: TIntegerField;
    qrEntradaVentaRECORDCLINICA: TStringField;
    qrEntradaVentaNUMEROHABITACION: TStringField;
    qrEntradaVentaFECHAENTRADA: TDateTimeField;
    qrEntradaVentaFECHADEALTA: TDateTimeField;
    qrEntradaVentaRESULTADOPACIENTE: TIntegerField;
    qrEntradaVentaRESULTADODOCTOR: TIntegerField;
    qrEntradaVentaFECHAPROMETIDA: TDateTimeField;
    qrEntradaVentaHORAPROMETIDA: TStringField;
    qrEntradaVentaFLEBOTOMISTAID: TStringField;
    qrEntradaVentaNOTA: TStringField;
    qrEntradaVentaPROYECTOID: TStringField;
    qrEntradaVentaRECORDID: TIntegerField;
    qrEntradaVentaBRUTO: TBCDField;
    qrEntradaVentaDESCUENTO: TBCDField;
    qrEntradaVentaSUBTOTAL: TBCDField;
    qrEntradaVentaNETO: TBCDField;
    qrEntradaVentaNOMBREPACIENTE: TStringField;
    qrEntradaVentaDIRECCION: TStringField;
    qrEntradaVentaTELEFONOS: TStringField;
    qrEntradaVentaTELEFONO2: TStringField;
    qrEntradaVentaEMAIL: TStringField;
    qrEntradaVentaCLIENTENOMBRE: TStringField;
    qrEntradaVentaSUCURSALID: TStringField;
    qrEntradaVentaUSERID: TStringField;
    qrEntradaVentaCOBROID: TStringField;
    qrEntradaVentaTOTALPAGADO: TBCDField;
    qrEntradaVentaPRIORIDAD: TIntegerField;
    qrEntradaVentaFAX: TStringField;
    qrEntradaVentaTIPODOCUMENTO: TIntegerField;
    qrEntradaVentaCOBERTURAPORC: TBCDField;
    qrEntradaVentaCOBERTURASEGURO: TBCDField;
    qrEntradaVentaCOBERTURAVALOR: TBCDField;
    qrEntradaVentaDESCUENTOPORC: TBCDField;
    qrEntradaVentaDESCUENTOVALOR: TBCDField;
    qrEntradaVentaDESCUENTOBONO: TBCDField;
    qrEntradaVentaORIGEN: TStringField;
    qrEntradaVentaAPROBACIONNO: TStringField;
    qrEntradaVentaAPROBACIONPOR: TStringField;
    qrEntradaVentaCOBERTURARECHAZADA: TIntegerField;
    qrEntradaVentaCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaVentaFECHAASEGURADORA: TDateTimeField;
    qrEntradaVentaMUESTRANO: TStringField;
    qrEntradaVentaMONEDAID: TStringField;
    qrEntradaVentaCOBERTURAEXPPORC: TIntegerField;
    qrEntradaVentaEDADPACIENTE: TIntegerField;
    qrEntradaVentaSEXO: TIntegerField;
    qrEntradaVentaNOMBREDOCTOR: TStringField;
    qrEntradaVentaPUBLICARINTERNET: TIntegerField;
    qrEntradaVentaCARNET: TStringField;
    qrEntradaVentaPUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaVentaCUADREGLOBAL: TStringField;
    qrEntradaVentaCUADREUSUARIO: TStringField;
    qrEntradaVentaDESCAUTORIZADOPOR: TStringField;
    qrEntradaVentaGASTOSVARIOS: TBCDField;
    qrEntradaVentaNOAS400: TIntegerField;
    qrEntradaVentaNOAXAPTA: TIntegerField;
    qrEntradaVentaNOFACTURA: TIntegerField;
    qrEntradaVentaFACTEXTERIOR: TIntegerField;
    qrEntradaVentaHOLD: TIntegerField;
    qrEntradaVentaREPMUESTRA: TIntegerField;
    qrEntradaVentaENTRADAIDANT: TStringField;
    qrEntradaVentaTIPOENTRADA: TStringField;
    qrEntradaVentaFORMADEPAGO: TStringField;
    qrEntradaVentaDESCUENTOCARD: TStringField;
    qrEntradaVentaDESCUENTOTEXTO: TStringField;
    qrEntradaVentaACUERDOPROPIO: TIntegerField;
    qrEntradaVentaCLIENTEPADRE: TStringField;
    qrEntradaVentaDESCUENTOPLANID: TStringField;
    qrEntradaVentaFECHAREGISTRO: TDateTimeField;
    qrEntradaVentaHORAREGISTRO: TStringField;
    qrEntradaVentaTASA: TBCDField;
    qrEntradaVentaESTATUS: TIntegerField;
    qrEntradaVentaTIPOCLIENTEAS400: TIntegerField;
    qrEntradaVentaCLASECREDITO: TStringField;
    qrEntradaVentaCARNETNUMERO: TStringField;
    qrEntradaVentaCLIENTEPADREAXAPTA: TStringField;
    qrEntradaVentaPACIENTEIDAXAPTA: TStringField;
    qrEntradaVentaCLIENTEIDAXAPTA: TStringField;
    qrEntradaVentaDOCTORIDAXAPTA: TStringField;
    qrEntradaVentaDATAAREAID: TStringField;
    qrEntradaVentaRECID: TIntegerField;
    qrEntradaVentaTotalPendiente: TBCDField;
    qrEntradaVentaSTATUS: TStringField;
    qrDonacionesAprobadasMuestraNoAS: TStringField;
    qrSQLDetallePRECIO: TBCDField;
    qrNCF: TADOQuery;
    qrNCFTipo: TStringField;
    qrNCFConsecutivo: TIntegerField;
    qrNCFInicial: TIntegerField;
    qrNCFFinal: TIntegerField;
    qrNCFDiario: TBooleanField;
    qrNCFFijo: TStringField;
    qrDonacionesNoAsCorto: TStringField;
    qrDonacionesUsuarioAS: TStringField;
    qrDonacionesUserIdHemograma: TStringField;
    qrNCFDescripcion: TStringField;
    qrDonacionesAprobadasProductoID: TWideStringField;
    qrDonacionesAprobadasDias: TIntegerField;
    qrDonacionesAprobadasTipoFundaId: TWideStringField;
    qrDespacho: TADOQuery;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField2: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateTimeField4: TDateTimeField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    IntegerField5: TIntegerField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    BCDField9: TBCDField;
    IntegerField6: TIntegerField;
    StringField23: TStringField;
    IntegerField7: TIntegerField;
    BCDField10: TBCDField;
    BCDField11: TBCDField;
    BCDField12: TBCDField;
    BCDField13: TBCDField;
    BCDField14: TBCDField;
    BCDField15: TBCDField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    DateTimeField5: TDateTimeField;
    StringField27: TStringField;
    StringField28: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField29: TStringField;
    IntegerField13: TIntegerField;
    StringField30: TStringField;
    IntegerField14: TIntegerField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    BCDField16: TBCDField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    IntegerField21: TIntegerField;
    StringField39: TStringField;
    StringField40: TStringField;
    DateTimeField6: TDateTimeField;
    StringField41: TStringField;
    BCDField17: TBCDField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    IntegerField24: TIntegerField;
    qrDespachoTotalPendiente: TBCDField;
    qrDespachoSTATUS: TStringField;
    qrDespachoNCF: TStringField;
    dsDonante: TDataSource;
    qrDonante: TADOQuery;
    qrDonantePacienteID: TStringField;
    qrDonanteTipoDonante: TWideStringField;
    qrDonanteEstado: TWideStringField;
    qrDonanteRechaso: TWideStringField;
    qrDonanteRechasoNota: TWideStringField;
    qrDonanteDonanteActivo: TSmallintField;
    qrDonanteTipoSangre: TWideStringField;
    qrDonanteRH: TWideStringField;
    qrDonanteDu: TWideStringField;
    qrDonanteUltimaDonacionId: TStringField;
    qrDonanteFechaUltimaDon: TDateTimeField;
    qrCuadres: TADOQuery;
    qrCuadresCorteId: TStringField;
    qrCuadresFecha: TDateTimeField;
    qrCuadresHora: TStringField;
    qrCuadresUsuario: TStringField;
    qrCuadresSucursalId: TStringField;
    qrCuadresValor: TBCDField;
    qrInventario: TADOQuery;
    qrInventarioCodigoId: TStringField;
    qrInventarioProductoID: TWideStringField;
    qrInventarioDonacionId: TStringField;
    qrInventarioCantidad: TBCDField;
    qrInventarioFecha: TDateTimeField;
    qrInventarioHora: TStringField;
    qrInventarioReservado: TBooleanField;
    qrInventarioVence: TDateTimeField;
    qrInventarioDisponible: TBooleanField;
    qrInventarioPrecio: TBCDField;
    qrInventarioProductoDes: TWideStringField;
    qrInventarioTipoSangre: TWideStringField;
    qrInventarioRH: TWideStringField;
    qrEntradaPacienteEsCruce: TBooleanField;
    qrListaDonaciones: TADOQuery;
    dsListaDonaciones: TDataSource;
    tbDonante: TADOTable;
    tbDonantePacienteID: TStringField;
    tbDonanteTipoDonante: TWideStringField;
    tbDonanteEstado: TWideStringField;
    tbDonanteRechaso: TWideStringField;
    tbDonanteDonanteActivo: TSmallintField;
    tbDonanteTipoSangre: TWideStringField;
    tbDonanteRH: TWideStringField;
    tbDonanteDu: TWideStringField;
    tbDonanteUltimaDonacionId: TStringField;
    tbDonanteFechaUltimaDon: TDateTimeField;
    qrCausasRechaso: TADOQuery;
    dsCausasRechaso: TDataSource;
    qrProductosIniciales: TADOQuery;
    dsProductosIniciales: TDataSource;
    qrDonacionCausaRechazoId: TIntegerField;
    qrListaDonacionesDonacionID: TStringField;
    qrListaDonacionesMuestraNo: TStringField;
    qrListaDonacionesMuestraNoAS: TStringField;
    qrListaDonacionesNoAsCorto: TStringField;
    qrListaDonacionesFecha: TDateTimeField;
    qrListaDonacionesPacienteID: TStringField;
    qrListaDonacionesNotaEntrevista: TMemoField;
    qrListaDonacionesDonacionStatus: TWideStringField;
    qrListaDonacionesDonacionTipo: TStringField;
    qrListaDonacionesComentario: TMemoField;
    qrListaDonacionesCantidadRecogida: TBCDField;
    qrListaDonacionesTemperatura: TBCDField;
    qrListaDonacionesPeso: TBCDField;
    qrListaDonacionesPulsoMinimo: TBCDField;
    qrListaDonacionesPulsoEstado: TStringField;
    qrListaDonacionesTensionArteriar: TStringField;
    qrListaDonacionesHoraInicio: TDateTimeField;
    qrListaDonacionesHoraFin: TDateTimeField;
    qrListaDonacionesDirigidoPacienteId: TStringField;
    qrListaDonacionesDirigidoNombre: TStringField;
    qrListaDonacionesHospital: TStringField;
    qrListaDonacionesFechaTranfusion: TDateTimeField;
    qrListaDonacionesMedico: TStringField;
    qrListaDonacionesTelefono: TStringField;
    qrListaDonacionesTelefono2: TStringField;
    qrListaDonacionesDireccionMedico: TMemoField;
    qrListaDonacionesPagina: TSmallintField;
    qrListaDonacionesTipoFundaID: TWideStringField;
    qrListaDonacionesHemoglobina: TStringField;
    qrListaDonacionesHematocito: TStringField;
    qrListaDonacionesGlobulosBlancos: TStringField;
    qrListaDonacionesPlaquetas: TStringField;
    qrListaDonacionesUsuarioAS: TStringField;
    qrListaDonacionesNotasCuestionario: TMemoField;
    qrListaDonacionesProductoID: TWideStringField;
    qrListaDonacionesReservado: TBooleanField;
    qrListaDonacionesDisponible: TBooleanField;
    qrListaDonacionesDoctorId: TStringField;
    qrListaDonacionesUserIdCuestionario: TStringField;
    qrListaDonacionesUserIdMuestra: TStringField;
    qrListaDonacionesUserIdHemograma: TStringField;
    qrListaDonacionesCausaRechazoId: TIntegerField;
    qrEntrada: TADOQuery;
    qrEntradaENTRADAID: TStringField;
    qrEntradaRECID: TIntegerField;
    qrListaDonacionesNOMBREPACIENTE: TStringField;
    qrListaDonacionesRECID: TIntegerField;
    qrEmpresas: TADOQuery;
    qrEmpresasEmpresaId: TAutoIncField;
    qrEmpresasCodigo: TStringField;
    qrEmpresasNombre: TStringField;
    qrEmpresasRNC: TStringField;
    qrEmpresasTelefono: TStringField;
    qrEmpresasTelefono1: TStringField;
    qrEmpresasFAX: TStringField;
    qrEmpresasNCFTipo: TStringField;
    qrBuscarEmpresa: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    qrASHemogramaL48DIS: TStringField;
    qrCausasRechasoId: TIntegerField;
    qrCausasRechasoOrden: TIntegerField;
    qrCausasRechasoCausa: TStringField;
    qrCategorias: TADOQuery;
    qrPrecios: TADOQuery;
    qrPreciosProductoId: TWideStringField;
    qrPreciosTIPOCLIENTE: TStringField;
    qrPreciosPrecio: TBCDField;
    qrClientesTIPOCLIENTE: TStringField;
    qrCategoriasTIPOCLIENTE: TStringField;
    qrCategoriasDESCRIPCION: TStringField;
    qrCategoriasDATAAREAID: TStringField;
    qrCategoriasRECID: TIntegerField;
    qrCategoriasmsrepl_tran_version: TGuidField;
    dsCategorias: TDataSource;
    dsTipoBolsa: TDataSource;
    qrTipoBolsa: TADOQuery;
    qrTipoBolsaTipoFundaDes: TWideStringField;
    qrTipoBolsaDias: TIntegerField;
    qrListaDonacionesCausaRechazo: TStringField;
    qrDonacionTensionArteriar2: TStringField;
    qrDonacionDoctorIdAutoriza: TStringField;
    qrDonacionObservacionAutoriza: TMemoField;
    qrDonacionesDoctorIdAutoriza: TStringField;
    qrDonacionesObservacionAutoriza: TMemoField;
    qrDonacionesAprobadasMuestraNoLargo: TStringField;
    qrDonacionUserIdRechaza: TStringField;
    qrDonacionFechaRechaza: TDateTimeField;
    qrDonacionesUserIdRechaza: TStringField;
    qrDonacionesFechaRechaza: TDateTimeField;
    qrDonacionesRechazoNota: TStringField;
    qrDonacionRechazoNota: TStringField;
    tbDonanteRechasoNota: TMemoField;
    qrDonantesRechasoNota: TMemoField;
    qrSQLEncabezadocruce: TADOQuery;
    qrSQLEncabezadocruceMuestra: TStringField;
    qrSQLEncabezadocruceNOMBRE: TStringField;
    qrSQLEncabezadocruceHora: TStringField;
    qrSQLEncabezadocruceDIRECCION: TStringField;
    qrSQLEncabezadocruceEdad: TIntegerField;
    qrSQLEncabezadocruceFechaNacimiento: TDateTimeField;
    qrSQLEncabezadocruceTelefono: TStringField;
    qrSQLEncabezadocruceCategoria: TStringField;
    qrSQLEncabezadocruceFechaEntrada: TDateTimeField;
    qrSQLEncabezadocruceUSERID: TStringField;
    qrSQLEncabezadocruceSEXO: TIntegerField;
    qrSQLEncabezadocruceCedula: TStringField;
    qrSQLEncabezadocruceSUCURSALID: TStringField;
    qrSQLEncabezadocruceDoctorId: TStringField;
    qrSQLEncabezadocruceDoctor: TStringField;
    qrSQLEncabezadocruceCliente: TStringField;
    qrSQLEncabezadocruceFacturado: TIntegerField;
    qrSQLEncabezadocrucePagado: TIntegerField;
    qrSQLEncabezadocruceResto: TIntegerField;
    qrSQLEncabezadocruceTipResPaciente: TIntegerField;
    qrSQLEncabezadocruceInternet: TIntegerField;
    qrSQLEncabezadocruceTipResDoctor: TIntegerField;
    qrSQLEncabezadocruceInternetDoctor: TIntegerField;
    qrSQLEncabezadocruceTipResCliente: TIntegerField;
    qrSQLEncabezadocruceInternetCliente: TIntegerField;
    qrSQLEncabezadocruceComentario: TStringField;
    qrSQLDetalleCruce: TADOQuery;
    qrSQLDetalleCruceMuestra: TStringField;
    qrSQLDetalleCrucePruebaID: TStringField;
    qrSQLDetalleCruceDESCRIPCION: TStringField;
    qrSQLDetalleCruceStatus: TStringField;
    qrSQLDetalleCruceDepartamento: TStringField;
    qrSQLDetalleCruceFechaEntrada: TDateTimeField;
    qrSQLDetalleCruceHora: TStringField;
    qrSQLDetalleCruceUSERID: TStringField;
    qrSQLDetalleCruceComentario: TStringField;
    qrSQLDetalleCrucePeticion2: TIntegerField;
    qrSQLDetalleCruceMuestraAnterior: TIntegerField;
    qrSQLDetalleCrucePRECIO: TBCDField;
    Qutilitario: TADOQuery;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    BCDField18: TBCDField;
    BCDField19: TBCDField;
    BCDField20: TBCDField;
    IntegerField25: TIntegerField;
    BooleanField5: TBooleanField;
    StringField56: TStringField;
    BCDField21: TBCDField;
    BooleanField6: TBooleanField;
    BooleanField7: TBooleanField;
    BooleanField8: TBooleanField;
    qrDonacionLugar_colecta: TStringField;
    qrTipoBolsaTipoFundaID: TWideStringField;
    qrDonacionUSUARIOMOD: TStringField;
    qrDonacionFECHAMODIFICACION: TDateTimeField;
    qrDonacionISTBDonacion: TStringField;
    qrDonacionesISTBDonacion: TStringField;
    qrDonacionesAprobadasISTBDonacion: TStringField;
    qrClientesGRUPOCLIENTE: TStringField;
    qrDonacionesSUCURSALID: TStringField;
    qrDonacionSUCURSALID: TStringField;
    qrSQLEncabezadocruceTIPOCLIENTE: TStringField;
    qrSQLEncabezadoTIPOCLIENTE: TStringField;
    procedure qrDonacionesNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
    _Desde, _Hasta: TDateTime;
    _Fecha: Boolean;
    _TipoNCF: String;
    RetornarDoctor: String;
    RetornarPaciente: String;
    RetornarDonacion: Int64;
    RetornarFactura: String;
    Retornarprueba: String;
    RetornarProducto: String;
    RetornarEmpresa: String;
    RetornarEntrada: Integer;
    RetornarEntradaId: String;
    PruebaActual: Int64;
    sqlString : String;
    EntradaCruceId: String;
    NombrePaciente: String;
    NombreDoctor: String;
    Enviar_Cruce : Boolean;
    Productoid : String;

    procedure SalidaInventario(Producto: String; Codigo: String; Nota: String = '');
    function EsDonante(PacienteId: String): Boolean;
    function EsServicio(Codigo: String): Boolean;
    function PasarVenta(RecId: Integer; Nota: String = ''): String;

    procedure MandarPruebaAS400(MuestraNo: String);
    procedure ActualizarHemograma(MuestraNo: String);

    function BuscarDoctor: String;
    function BuscarPaciente: String;
    function BuscarPrueba: String;
    function BuscarProducto: String;

    function NuevaDonacion(PacienteId: String): String;
    function GetNextSecDoc(tipodoc : string) : String;

    procedure PrintLabel(CodigoId: String);

    function BuscarDonacion: Int64;
    function BuscarFactura: String;
    Procedure AddHistorico(CodigoId: String; OperacionId: String; Nota: String);
    procedure LiberarReservacion(CodigoId: String; Nota: String);

    procedure EntradaInventario(CodigoId: String;
                                ReceptorId: String;
                                DoctorId: String;
                                ReservadoHasta: String;
                                Nota: String);

    procedure Reservar(CodigoId: String;
                        ReceptorId: String;
                        DoctorId: String;
                        ReservadoHasta: String;
                        Cruce: Boolean;
                        Nota: String);
                        
    procedure Cruzar(CodigoId: String;
                        ReceptorId: String;
                        DoctorId: String;
                        ReservadoHasta: String;
                        Cruce: Boolean;
                        Nota: String);

    procedure DesecharProducto(CodigoId: String; Nota: String);
    function AreaId: String;

    procedure BorrarDonacion(DonacionId: String);

    function ExistePrueba(MuestraNo: String; PruebaID: String): Boolean ;
    procedure ActivarPruebas(MuestraNo: String);
    procedure ActivarPruebahbc(MuestraNo: String);
    procedure RechazarPruebas(MuestraNo: String);
    function fecha(var Desde: TDateTime; var Hasta: TDateTime): Boolean;
    function GetNCF(Tipo: String = ''): String;
    procedure BajaInventario(Codigo: String; Nota: String = '');
    procedure Venta(Producto: String; Codigo: String; Nota: String = '');
    function EntradaPagada: integer;
    function EntradaPendiente: Integer;
    Function BuscarEntrada: String;
    function NuevoCruce(PacienteId: string): String;
    function AbrirCruce(EntradaId: String): String;
    procedure RechasarDonante(PacienteId: String; Rechaso: String; Nota: String);
    function RecordId(EntradaId: String): Integer;

    function BuscarEmpresa: String;
    function NuevaEmpresa: String;

    function GetIdEmpresa: String;

    function GetPrecio(ProductoId: string; TipoCliente: String = 'PRI'): Currency;
    function getTipoCliente(ClienteId: String): String;
    function Setprecio(ProductoId: string; TipoCliente: String; valor: Variant): boolean;

  end;

var
  DMB: TDMB;
    Const
      _AreaId = 'bds';

implementation
uses DataModule, Main, StrUtils, Windows, UInterfaseAS, Fechas, DCliente;

{$R *.dfm}

function TDMB.getTipoCliente;
begin

  qrClientes.Close;
  qrClientes.Parameters[0].Value:= ClienteId;
  qrClientes.Open;

  result:= qrClientesTIPOCLIENTE.Value;

  qrClientes.Close;

end;

function TDMB.GetPrecio;
begin

  qrPrecios.Close;
  qrPrecios.Parameters.ParamByName('ProductoId').Value:= ProductoId;
  qrPrecios.Parameters.ParamByName('TipoCliente').Value:= TipoCliente;
  qrPrecios.Open;

  result:= qrPreciosPrecio.AsCurrency;

  qrPrecios.Close;

end;

function TDMB.SetPrecio;
begin

  try

    qrPrecios.Close;
    qrPrecios.Parameters.ParamByName('ProductoId').Value:= ProductoId;
    qrPrecios.Parameters.ParamByName('TipoCliente').Value:= TipoCliente;
    qrPrecios.Open;

    if qrPrecios.Eof then
      begin
        qrPrecios.Insert;
        qrPreciosProductoid.Value:= ProductoId;
        qrPreciosTipoCliente.Value:= TipoCliente;
      end
    else
      qrPrecios.Edit;

    qrPreciosPrecio.Value:= valor;
    qrPrecios.Post;

    qrPrecios.Close;

    result:= true;

  except

    result:= false;
    
  end;


end;

function TDMB.BuscarEmpresa: String;
begin

  RetornarEmpresa:= '';

  qrEmpresas.close;
  qrEmpresas.Open;

  qrEmpresas.Insert;

  frmMain.LanzaVentana(-8030);

  Result:= RetornarEmpresa;

end;

function TDMB.NuevaEmpresa: String;
begin

  RetornarEmpresa:= '';

  qrEmpresas.close;
  qrEmpresas.Open;

  qrEmpresas.Insert;

  frmMain.LanzaVentana(-8029);

  {if (trim(RetornarEmpresa) <> '') then
    begin
      qrEmpresas.Close;
      qrEmpresas.Open;
    end;}

  Result:= RetornarEmpresa;

end;

function TDMB.GetIdEmpresa: String;
begin

end;

function TDMB.RecordId;
begin
  qrEntrada.Close;
  qrEntrada.Parameters[0].Value:= EntradaId;
  qrEntrada.Open;

  Result:= qrEntradaRecId.Value;

  qrEntrada.Close;

end;

function TDMB.AbrirCruce;
begin

  EntradaCruceId:= EntradaId;
  frmMain.LanzaVentana(6019);

end;


function TDMB.NuevoCruce(PacienteId: string): String;
var
  EntradaId: String;
  MuestraNo: String;
  recid: Integer;
begin

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  recid := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  qrClientes.Close;
  qrClientes.Parameters.ParamByName('PacienteId').Value:= PacienteId;
  qrClientes.Open;

  //Crear entrada de paciente
  qrEntradapaciente.Close;
  qrEntradaPaciente.Open;

  qrEntradaPaciente.Insert;
  qrEntradaPacienteDATAAREAID.Value := _AreaId;
  qrEntradaPacienteRecid.Value := recid;
  qrEntradaPacienteNOMBREPACIENTE.Value:= qrClientesNOMBRE.Value;
  qrEntradaPacientePacienteID.Value:= PacienteId;
  qrEntradaPacienteClienteID.Value:= PacienteId;
  qrEntradaPacienteCoberturaConfirmada.Value := 0;
  qrEntradaPacienteSucursalId.Value := DM.CurSucursal;
  qrEntradaPacienteBruto.Value := 0;
  qrEntradaPacienteDescuento.Value := 0;
  qrEntradaPacienteSubTotal.Value := 0;
  qrEntradaPacienteCoberturaSeguro.Value := 0;
  qrEntradaPacienteNeto.Value := 0;
  qrEntradaPacienteTotalPagado.Value := 0;
  //qrEntradaPacienteTotalPendiente.Value := 0;
  qrEntradaPacientePrioridad.Value := 0;
  qrEntradaPacienteResultadoPaciente.Value := 0;
  qrEntradaPacienteResultadoDoctor.Value := 3;
  qrEntradaPacienteTipoDocumento.Value := 0;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteOrigen.Value := '';
  qrEntradaPacienteCoberturaPorc.Value := 0;
  qrEntradaPacienteCoberturaValor.Value := 0;
  MuestraNo:= GetNextSecDoc('MT');
  qrEntradaPacienteMuestraNo.Value := MuestraNo;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
  qrEntradaPacienteCoberturaExpPorc.Value := 0;
  qrEntradaPacientePublicarInternet.Value := 0;
  qrEntradaPacientePublicarInternetDoctor.Value := 0;
  qrEntradaPacienteHold.Value := 0;
  qrEntradaPacienteNoAS400.Value := 0;
  qrEntradaPacienteNoAxapta.Value := 0;
  qrEntradaPacienteNoFactura.Value := 0;
  qrEntradaPacienteRepMuestra.Value := 0;
  qrEntradaPacienteFactExterior.Value := 0;

  //EntradaId:= GetNextSecDoc('CR');
  EntradaId:= GetNextSecDoc('DON');
  qrEntradaPacienteEntradaID.Value := EntradaId;
  NuevoCruce:= EntradaId;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteHoraEntrada.Value := leftStr(TimeToStr(Time), 5);
  qrEntradaPacienteHold.Value := 0;
  qrEntradaPacienteCLIENTENOMBRE.Value:= 'BANCO DE SANGRE';
  qrEntradaPacienteEsCruce.Value:= True;

  qrEntradaPaciente.Post;

end;


procedure TDMB.RechasarDonante(PacienteId: String; Rechaso: String; Nota: String);
begin

  qrDonante.close;
  qrDonante.Parameters[0].Value:= PacienteId;
  qrDonante.Open;

  if qrDonante.Eof then exit;


    qrDonante.edit;

      qrDonanteRechaso.Value:= Rechaso;
      qrDonanteRechasoNota.Value:= Nota;

    qrDonante.Post;

  qrDonante.close;

end;

function TDMB.BuscarEntrada;
begin

  sqlString := ' SELECT * ' +
               ' FROM BSVenta  ';
  sqlString := sqlString + ' WHERE (1 = 1) ';

  frmMain.LanzaVentana(-7995);

  Result:= RetornarEntradaId;

end;

function TDMB.EntradaPagada: integer;
begin

  sqlString := ' SELECT * ' +
               ' FROM BSVenta  ';
  sqlString := sqlString + ' WHERE (TOTALPAGADO >= NETO) ';

  frmMain.LanzaVentana(-7995);

  EntradaPagada:= RetornarEntrada;
end;

function TDMB.EntradaPendiente: Integer;
begin

  sqlString := ' SELECT * ' +
               ' FROM BSVenta  ';
  sqlString := sqlString + ' WHERE (TOTALPAGADO < NETO) ';

  frmMain.LanzaVentana(-7995);

  EntradaPendiente:= RetornarEntrada;

end;

procedure TDMB.Venta(Producto: String; Codigo: String; Nota: String = '');
begin

  AddHistorico(Codigo, 'VT', Nota);

    DM.DataBase.Execute(
    // Salva de producto al sacarlo de inventario para garantizar restaurarlo si se reversa operacion
    ' insert into BSInventarioBackup (CodigoId, DonacionId, ProductoID, Cantidad, Fecha, Hora, ProcesoID, Reservado, ReservadoHasta, Dias, Cruce, CrucePacienteId, Disponible, ReceptorId, DoctorId, Precio1, Costo1, Status, Caja) ' +
    ' select CodigoId, DonacionId, ProductoID, Cantidad, Fecha, Hora, ProcesoID, Reservado, ReservadoHasta, Dias, Cruce, CrucePacienteId, Disponible, ReceptorId, DoctorId, Precio1, Costo1, Status, Caja ' +
    ' from BSInventario where CodigoId = '''+ Codigo + '''' +
    ' and not exists ( select * from BSInventarioBackup where CodigoId = '''+ Codigo + ''' )'
  );
  DM.DataBase.Execute('Delete From BSInventario Where CodigoId = ''' + Codigo + '''' );

end;


procedure TDMB.BajaInventario(Codigo: String; Nota: String = '');
begin

  AddHistorico(Codigo, 'DC', Nota);

  DM.DataBase.Execute('Delete From BSInventario Where CodigoId = '
    + #39 + Codigo + #39 );

end;


function TDMB.GetNCF(Tipo: String = ''): String;
begin

  if (trim(Tipo) = '') then
    begin
      frmMain.LanzaVentana(-6504);
      Tipo:= _TipoNCF;
    end;

  qrNCF.Close;
  qrNCF.Parameters.ParamByName('Tipo').Value:= Tipo;
  qrNCF.Open;

  if not qrNCF.Eof then
    begin

      if (qrNCFConsecutivo.Value <= qrNCFFinal.Value) then
        begin
          GetNCF:= qrNCFFijo.value + RightStr('00000000' + trim(qrNCFConsecutivo.asstring), 8);

          if qrNCFDiario.Value then exit;

          qrNCF.Edit;
          qrNCFConsecutivo.Value:= qrNCFConsecutivo.Value + 1;
          qrNCF.Post;

        end;
    end;

end;

function TDMB.fecha(var Desde: TDateTime; var Hasta: TDateTime): Boolean;
begin

  //frmDialogFechas.run;
  frmMain.LanzaVentana(-6503);
  Desde:= DMB._Desde;
  Hasta:= DMB._Hasta;
  fecha:= DMB._Fecha;

end;

procedure TDMB.EntradaInventario(CodigoId: String;
                                 ReceptorId: String;
                                 DoctorId: String;
                                 ReservadoHasta: String;
                                 Nota: String
                                 );
begin

//  AddHistorico(CodigoId, 'LR', Nota);

  qrDatosProducto.Close;
  qrDatosProducto.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qrDatosProducto.Open;

  if not qrDatosProducto.eof then exit;

  qrDatosProducto.Insert;
    qrDatosProductoCodigoId.Value:= CodigoId;
    qrDatosProductoReceptorId.Value:= ReceptorId;
    qrDatosProductoDoctorId.Value:= DoctorId;

    qrDatosProductoReservadoHasta.AsString:= ReservadoHasta;

    qrDatosProductoReservado.Value:= true;
    qrDatosProductoDisponible.Value:= False;
  qrDatosProducto.Post;


end;

procedure TDMB.RechazarPruebas(MuestraNo: String);
begin

  // Poner Detalles

  qrSqlDetalle.Close;
  qrSQLDetalle.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSQLDetalle.Open;

  while not qrSQLDetalle.Eof do
    begin

      InterfaseAS.SetStatusPrueba(
        qrSQLDetalleMuestra.AsString,
        qrSQLDetallePruebaID.AsString,
        'R'
      );

      qrSQLDetalle.Next;
    end;

    qrSQLDetalle.Close;

end;

procedure TDMB.ActivarPruebahbc(MuestraNo: String);
begin
 // Poner Detalles

  qrSqlDetalle.Close;
  qrSQLDetalle.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSQLDetalle.Open;

  while not qrSQLDetalle.Eof do
    begin
      if (qrSQLDetallePruebaID.value = '516') or (qrSQLDetallePruebaID.value = '7') then
       begin
         InterfaseAS.SetStatusPrueba(
           qrSQLDetalleMuestra.AsString,
           qrSQLDetallePruebaID.AsString,
           ' '
           );
       end;

      qrSQLDetalle.Next;
    end;

    qrSQLDetalle.Close;

end;

procedure TDMB.ActivarPruebas(MuestraNo: String);
begin

  // Poner Detalles

  qrSqlDetalle.Close;
  qrSQLDetalle.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSQLDetalle.Open;

  while not qrSQLDetalle.Eof do
    begin

      InterfaseAS.SetStatusPrueba(
        qrSQLDetalleMuestra.AsString,
        qrSQLDetallePruebaID.AsString,
        ' '
      );

      qrSQLDetalle.Next;
    end;

    qrSQLDetalle.Close;

end;

function TDMB.ExistePrueba(MuestraNo: String; PruebaID: String): Boolean ;
begin

      qrExistePrueba.Close;
      qrExistePrueba.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
      qrExistePrueba.Parameters.ParamByName('PruebaId').Value:= PruebaId;
      qrExistePrueba.Open;

      ExistePrueba:= not qrExistePrueba.Eof;

      qrExistePrueba.Close;

end;

procedure TDMB.BorrarDonacion(DonacionId: String);
begin

  if DM.Mensaje('Desea borrar la donacion en proceso?',mb_yesno) = id_no then
    exit;

  //Borrar donbacion en proceso
  DM.DataBase.Execute('Delete BSDonacion Where DonacionId = '
    + #39 + DonacionID + #39  );
  DM.DataBase.Execute('Delete PTEntradaPaciente Where EntradaId = '
            + #39 + DonacionID + #39  );

end;

function TDMB.BuscarProducto: String;
begin

  frmMain.LanzaVentana(-6001);
  BuscarProducto:= RetornarProducto;

end;

function TDMB.BuscarPrueba: String;
begin

  frmMain.LanzaVentana(-6000);
  BuscarPrueba:= RetornarPrueba;

end;

function TDMB.AreaId;
begin
  Areaid:= _AreaId;
end;

Procedure TDMB.Cruzar(CodigoId: String;
                        ReceptorId: String;
                        DoctorId: String;
                        ReservadoHasta: String;
                        Cruce: Boolean;
                        Nota: String);
begin


    qrReservar.Close;
    qrReservar.Parameters[0].Value:= CodigoId;
    qrReservar.Open;

    qrReservar.Edit;

      qrReservarDoctorId.Value:= DoctorId;
      qrReservarReceptorId.Value:= ReceptorId;
      qrReservarCruce.Value:= Cruce;

    qrReservar.Post;
    qrReservar.Close;

    AddHistorico(CodigoId, 'CR', Nota);

end;

Procedure TDMB.reservar(CodigoId: String;
                        ReceptorId: String;
                        DoctorId: String;
                        ReservadoHasta: String;
                        Cruce: Boolean;
                        Nota: String);
begin


    qrReservar.Close;
    qrReservar.Parameters[0].Value:= CodigoId;
    qrReservar.Open;

    qrReservar.Edit;

      qrReservarDoctorId.Value:= DoctorId;
      qrReservarReceptorId.Value:= ReceptorId;
      qrReservarCruce.Value:= Cruce;
      qrReservarReservado.Value:= True;
      qrReservarReservadoHasta.AsString:= ReservadoHasta;

    qrReservar.Post;
    qrReservar.Close;

    AddHistorico(CodigoId, 'RS', Nota);

end;

procedure TDMB.DataModuleCreate(Sender: TObject);
begin
  ASConnection.Open;
  EntradaCruceId:= '';

  qrCausasRechaso.Close;
  qrCausasRechaso.Open;

  qrProductosIniciales.Close;
  qrProductosIniciales.Open;

  qrCategorias.Close;
  qrCategorias.Open;

  qrTipoBolsa.Close;
  qrTipoBolsa.Open;

end;

Procedure TDMB.DesecharProducto(CodigoId: String; Nota: String);
begin

  AddHistorico(CodigoId, 'DC', Nota);

  DM.DataBase.Execute('Delete From Inventario Where CodigoId = '
    + #39 + CodigoId + #39 );

end;

Procedure TDMB.LiberarReservacion(CodigoId: String; Nota: String);
begin

  AddHistorico(CodigoId, 'LR', Nota);

  qrDatosProducto.Close;
  qrDatosProducto.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qrDatosProducto.Open;

    qrDatosProducto.Edit;

      qrDatosProductoReceptorId.Value:= '';
      qrDatosProductoDoctorId.Value:= '';
      qrDatosProductoReservado.Value:= False;
      qrDatosProductoReservadoHasta.AsString:= '';
      qrDatosProductoCruce.Value:= False;
      qrDatosProductoCrucePacienteId.Value:= '';
      qrDatosProductoDisponible.Value:= True;

    qrDatosProducto.Post;

  qrDatosProducto.Close;

end;

Procedure TDMB.AddHistorico(CodigoId: String; OperacionId: String; Nota: String);
begin

  qrDatosProducto.Close;
  qrDatosProducto.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qrDatosProducto.Open;

  DM.DataBase.Execute('Insert into BSHistProductos ( CodigoId, Fecha, OperacionId, Userid, Nota, ReceptorId, DoctorId) values ('
    + #39 + CodigoId + #39 + ', getdate(), '
    //+ #39 + DateToStr(DM.SystemDate) + #39 + ', '
    + #39 + OperacionId + #39 + ', '
    + #39 + DM.CurUser + #39 + ', '
    + #39 + Nota + #39 + ', '
    + #39 + qrDatosProductoReceptorId.Value + #39 + ', '
    + #39 + qrDatosProductoDoctorId.Value + #39 + ')');

  qrDatosProducto.Close;

end;

function TDMB.BuscarDonacion: Int64;
begin

  frmMain.LanzaVentana(-6501);
  BuscarDonacion:= RetornarDonacion;

end;

function TDMB.BuscarFactura: String;
begin

  frmMain.LanzaVentana(-6505);
  BuscarFactura:= RetornarFactura;

end;


procedure TDMB.PrintLabel(CodigoId: String);
var
 texto  : TextFile;
 cadena : String;

Const
 LetraSec : array[1..27] of string = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N',
                                      '�','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
  qfind.Close;
  qFind.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qfind.Open;

 While Not qfind.Eof Do
 begin
  cadena := 'c:\Barcode';
  assignfile(texto, cadena);
  rewrite(texto);

  writeln(texto,'N');
  writeln(texto,'N');
  writeln(texto,'q1200');
  writeln(texto,'Q609,30');
  writeln(texto,'S2');
  writeln(texto,'D8');
  writeln(texto,'ZB');
  writeln(texto,'B235,15,0,3,2,6,98,N,"' + Qfind.FieldByName('DonacionId').AsString+'"');
  {writeln(texto,'A220,110,0,3,1,1,N,"' + Qfind.FieldByName('MuestraNo').AsString + '-' +
                                     FormatFloat('000', Qfind.FieldByName('Sucursal').AsFloat) +
                                     Qfind.FieldByName('Sucursal').AsString+'"');}
  //writeln(texto,'A415,110,0,1,1,1,N,"' + Qfind.FieldByName('DeptId').AsString+'"');
  //writeln(texto,'A230,130,0,2,1,1,N,"' + Qfind.FieldByName('Nombre').AsString+'"');
  //writeln(texto,'B500,130,0,3,2,3,50,N,"' + LetraSec[Qfind.FieldByName('Secuencia').AsInteger]+'"');
  //writeln(texto,'A590,0,1,1,1,1,N,"' + DM.CurUser+'*"');
  //writeln(texto,'A230,150,0,1,1,1,N,"' + Qfind.FieldByName('Descripcion').AsString+'"');
  writeln(texto,'P1');
  system.closefile(texto);

  cadena := 'c:\barcode.bat';
  assignfile(texto, cadena);
  rewrite(texto);
  writeln(texto,'PRINT /d:lpt1 c:\barcode ');
  system.closefile(texto);
  winexec('print /d:lpt1 c:\barcode ',SW_SHOWNORMAL);
  //CreateProcess(NULL, "print /d:lpt1 c:\barcode ");
  qfind.Next;

 end;
end;


procedure TDMB.qrDonacionesNewRecord(DataSet: TDataSet);
begin
  qrDonacionesSUCURSALID.Value := dm.qrSucursal.FieldByName('SUCURSALID').Value;
end;

function TDMB.GetNextSecDoc(tipodoc : string) : String;
var
 qsecdoc : TADOQuery;
 sec : string;
begin
 qsecdoc := DM.NewQuery;

 qsecdoc.close;
 qsecdoc.SQL.Text := 'Select * from PTSecuenciaDoc Where TipoDoc = '+#39+tipodoc+#39+' and SucursalId = '+#39+DM.CurSucursal+#39;
 qsecdoc.Open;

 if (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
   result := qsecdoc.FieldByName('TipoDoc').asstring + DM.CurSucursal +
             formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 else
 begin
   //result := DM.CurSucursal + formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);
   sec := '0' + IntToStr(DM.BuscarSecuenciaSucursal(DM.CurSucursal));
   result := sec + formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);
 end;
 qsecdoc.close;
 qsecdoc.SQL.Clear;
 qsecdoc.SQL.Text := 'Update PTSecuenciaDoc set Secuencia = Secuencia + 1 Where TipoDoc = '+#39+tipodoc+#39+' and SucursalId = '+#39+DM.CurSucursal+#39;
 qsecdoc.ExecSQL;
end;


function TDMB.NuevaDonacion(PacienteId: string): String;
var
  EntradaId: String;
  MuestraNo: String;
  recid: Integer;
begin

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  recid := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  qrClientes.Close;
  qrClientes.Parameters.ParamByName('PacienteId').Value:= PacienteId;
  qrClientes.Open;

  //Crear entrada de paciente
  qrEntradapaciente.Close;
  qrEntradaPaciente.Open;

  qrEntradaPaciente.Insert;
  qrEntradaPacienteDATAAREAID.Value := _AreaId;
  qrEntradaPacienteRecid.Value := recid;
  qrEntradaPacienteNOMBREPACIENTE.Value:= qrClientesNOMBRE.Value;
  qrEntradaPacientePacienteID.Value:= PacienteId;
  qrEntradaPacienteClienteID.Value:= '945'; //PacienteId;
  qrEntradaPacienteCoberturaConfirmada.Value := 0;
  qrEntradaPacienteSucursalId.Value := DM.CurSucursal;
  qrEntradaPacienteBruto.Value := 0;
  qrEntradaPacienteDescuento.Value := 0;
  qrEntradaPacienteSubTotal.Value := 0;
  qrEntradaPacienteCoberturaSeguro.Value := 0;
  qrEntradaPacienteNeto.Value := 0;
  qrEntradaPacienteTotalPagado.Value := 0;
  //qrEntradaPacienteTotalPendiente.Value := 0;
  qrEntradaPacientePrioridad.Value := 0;
  qrEntradaPacienteResultadoPaciente.Value := 0;
  qrEntradaPacienteResultadoDoctor.Value := 3;
  qrEntradaPacienteTipoDocumento.Value := 0;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteOrigen.Value := '';
  qrEntradaPacienteCoberturaPorc.Value := 0;
  qrEntradaPacienteCoberturaValor.Value := 0;
  MuestraNo:= GetNextSecDoc('MT');
  qrEntradaPacienteMuestraNo.Value := MuestraNo;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
  qrEntradaPacienteCoberturaExpPorc.Value := 0;
  qrEntradaPacientePublicarInternet.Value := 0;
  qrEntradaPacientePublicarInternetDoctor.Value := 0;
  qrEntradaPacienteHold.Value := 0;
  qrEntradaPacienteNoAS400.Value := 0;
  qrEntradaPacienteNoAxapta.Value := 0;
  qrEntradaPacienteNoFactura.Value := 0;
  qrEntradaPacienteRepMuestra.Value := 0;
  qrEntradaPacienteFactExterior.Value := 0;

  EntradaId:= GetNextSecDoc('DON');

  qrEntradaPacienteEntradaID.Value := EntradaId;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteHoraEntrada.Value := leftStr(TimeToStr(Time), 5);
  qrEntradaPacienteHold.Value := 0;
  qrEntradaPacienteCLIENTENOMBRE.Value:= 'BANCO DE SANGRE';
  // Insertar nueva donacion

  qrDonacion.Close;
  qrDonacion.Parameters[0].Value:= EntradaId;
  qrDonacion.Open;

  if (qrDonacion.Eof) then
    begin
      qrDonacion.Insert;
      qrDonacionDonacionID.Value:= EntradaID;
      qrDonacionMuestraNo.Value:= MuestraNo;
      qrDonacionFecha.Value:= DM.SystemDate;
      qrDonacionPacienteId.Value:= PacienteID;
      qrDonacionSUCURSALID.Value :=  DM.CurSucursal;
      qrDonacion.Post;
    end;

  //Insertar nuevo donante
  if not DMB.EsDonante(PacienteId) then
    begin
      DM.DataBase.Execute('Insert into BSDonante (PacienteId) values ('
      + #39 + PacienteID + #39 + ') ');
    end;

  qrEntradaPaciente.Post;

  //Crear ISTB Check Char
  DM.DataBase.Execute(
    ' EXEC sp_UpdateISTBCheckChar ''' +  EntradaID + ''' '
  );

end;

function TDMB.BuscarPaciente: String;
begin
  frmMain.LanzaVentana(-6003);
  BuscarPaciente:= RetornarPaciente;
end;

function TDMB.BuscarDoctor: String;
begin
  frmMain.LanzaVentana(-6500);
  BuscarDoctor:= RetornarDoctor;
end;

procedure TDMB.ActualizarHemograma(MuestraNo: String);
begin

  qrASHemograma.Close;
  qrASHemograma.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrASHemograma.Open;

  qrHemograma.Close;
  qrHemograma.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrHemograma.Open;

  qrHemograma.Edit;

    qrHemogramaHemoglobina.AsString:= qrASHemogramaL48HGN.Value;
    qrHemogramaHematocito.AsString:= qrASHemogramaL48HTT.Value;
    qrHemogramaGlobulosBlancos.AsString:= qrASHemogramaL48GLB.Value;
    qrHemogramaPlaquetas.AsString:= qrASHemogramaL48PLA.Value;
    qrHemogramaUsuarioAS.Value:= qrASHemogramaL48USU.Value;

  qrHemograma.Post;

  qrHemograma.Close;

  qrASHemograma.Close;

end;

procedure TDMB.MandarPruebaAS400(MuestraNo: string);
var
  i: Integer;
  n, n1, nombre : string;
begin
  // Poner Encabezado

if Enviar_Cruce = True then
   begin
     qrSqlEncabezadocruce.Close;
     qrSQLEncabezadocruce.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
     qrSQLEncabezadocruce.Open;

    // if qrSQLEncabezadocruceTIPOCLIENTE.Value = 'EMP' then
      // nombre:= 'PACIENTE GENERICO'
      // ELSE
       nombre:= qrSQLEncabezadocruceNombre.AsString;


    InterfaseAS.SetEncabezado(

    qrSQLEncabezadocruceMuestra.AsString,
    nombre,
    qrSQLEncabezadocruceHora.AsString,
    qrSQLEncabezadocruceDireccion.AsString,
    qrSQLEncabezadocruceEdad.AsInteger,
    qrSQLEncabezadocruceFechaNacimiento.AsString,
    qrSQLEncabezadocruceTelefono.AsString,
    qrSQLEncabezadocruceCategoria.AsString,
    qrSQLEncabezadocruceFechaEntrada.AsString,
    qrSQLEncabezadocruceUserID.AsString,
    qrSQLEncabezadocruceSexo.AsString,
    qrSQLEncabezadocruceCedula.AsString,
    DM.BuscarSecuenciaSucursal(DM.CurSucursal), //Sucursal
    qrSQLEncabezadocruceDoctorId.AsString,
    qrSQLEncabezadocruceDoctor.AsString,
    qrSQLEncabezadocruceCliente.AsString,
    qrSQLEncabezadocruceFacturado.AsCurrency,
    qrSQLEncabezadocrucePagado.AsCurrency,
    qrSQLEncabezadocruceResto.AsCurrency,
    qrSQLEncabezadocruceTipResPaciente.AsInteger,
    qrSQLEncabezadocruceInternet.AsInteger,
    qrSQLEncabezadocruceTipResDoctor.AsInteger,
    qrSQLEncabezadocruceInternetDoctor.AsInteger,
    qrSQLEncabezadocruceTipResCliente.AsInteger,
    qrSQLEncabezadocruceInternetCliente.AsInteger,
    qrSQLEncabezadocruceComentario.AsString,
    1, //PacienteClinica: Integer;
    0 //NumeroRelacionInternet: Integer;
       //ReferenciaExterna: string = ''
  );

  qrSQLEncabezadocruce.Close;

   end
   else
begin
  qrSqlEncabezado.Close;
  qrSQLEncabezado.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSQLEncabezado.Open;

   if qrSQLEncabezadoTIPOCLIENTE.Value = 'EMP' then
       nombre:= 'PACIENTE GENERICO'
       ELSE
       nombre:= qrSQLEncabezadoNombre.AsString;

  InterfaseAS.SetEncabezado(

    qrSQLEncabezadoMuestra.AsString,
    nombre,
    qrSQLEncabezadoHora.AsString,
    qrSQLEncabezadoDireccion.AsString,
    qrSQLEncabezadoEdad.AsInteger,
    qrSQLEncabezadoFechaNacimiento.AsString,
    qrSQLEncabezadoTelefono.AsString,
    qrSQLEncabezadoCategoria.AsString,
    qrSQLEncabezadoFechaEntrada.AsString,
    qrSQLEncabezadoUserID.AsString,
    qrSQLEncabezadoSexo.AsString,
    qrSQLEncabezadoCedula.AsString,
    DM.BuscarSecuenciaSucursal(DM.CurSucursal), //Sucursal
    qrSQLEncabezadoDoctorId.AsString,
    qrSQLEncabezadoDoctor.AsString,
    qrSQLEncabezadoCliente.AsString,
    qrSQLEncabezadoFacturado.AsCurrency,
    qrSQLEncabezadoPagado.AsCurrency,
    qrSQLEncabezadoResto.AsCurrency,
    qrSQLEncabezadoTipResPaciente.AsInteger,
    qrSQLEncabezadoInternet.AsInteger,
    qrSQLEncabezadoTipResDoctor.AsInteger,
    qrSQLEncabezadoInternetDoctor.AsInteger,
    qrSQLEncabezadoTipResCliente.AsInteger,
    qrSQLEncabezadoInternetCliente.AsInteger,
    qrSQLEncabezadoComentario.AsString,
    1, //PacienteClinica: Integer;
    0 //NumeroRelacionInternet: Integer;
       //ReferenciaExterna: string = ''
  );

  qrSQLEncabezado.Close;
end;

////////////////////////////////////////////////////////////////////////////////

  // Poner Detalles
 if Enviar_Cruce = True then
 begin
  qrSqlDetallecruce.Close;
  qrSqlDetallecruce.Parameters.ParamByName('MuestraNo').Value:= copy(MuestraNo,3,9);
  qrSqlDetallecruce.Open;

  while not qrSqlDetallecruce.Eof do
    begin

      InterfaseAS.SetDetalle(
        qrSqlDetallecruceMuestra.AsString,
        qrSqlDetallecrucePruebaID.AsString,
        qrSqlDetallecruceDescripcion.AsString,
        'N',
        qrSqlDetallecruceDepartamento.AsInteger, //Depto: Integer;
        qrSqlDetallecruceFechaEntrada.AsString,
        qrSqlDetallecruceHora.AsString,
        qrSqlDetallecruceUserID.AsString,
        qrSqlDetallecruceComentario.AsString,
        qrSqlDetallecrucePeticion2.AsInteger,
        qrSqlDetallecruceMuestraAnterior.AsInteger,
        '',  //TipoMuestra: String
        qrSqlDetallecrucePRECIO.AsCurrency // Valor
      );

      if (qrSqlDetallecrucePruebaId.AsInteger = 231) then
        InterfaseAS.SetStatusPrueba(
          qrSqlDetallecruceMuestra.AsString,
          qrSqlDetallecrucePruebaID.AsString,
          ' '
        );

      qrSqlDetallecruce.Next;
    end;

  qrSqlDetallecruce.Close;
 end
 Else
 begin

  qrSqlDetalle.Close;
  qrSQLDetalle.Parameters.ParamByName('MuestraNo').Value:= copy(MuestraNo,3,9);
  qrSQLDetalle.Open;

  while not qrSQLDetalle.Eof do
    begin

      InterfaseAS.SetDetalle(
        qrSQLDetalleMuestra.AsString,
        qrSQLDetallePruebaID.AsString,
        qrSQLDetalleDescripcion.AsString,
        'N',
        qrSQLDetalleDepartamento.AsInteger, //Depto: Integer;
        qrSQLDetalleFechaEntrada.AsString,
        qrSQLDetalleHora.AsString,
        qrSQLDetalleUserID.AsString,
        qrSQLDetalleComentario.AsString,
        qrSQLDetallePeticion2.AsInteger,
        qrSQLDetalleMuestraAnterior.AsInteger,
        '',  //TipoMuestra: String
        qrSQLDetallePRECIO.AsCurrency // Valor
      );

      if (qrSqlDetallePruebaId.AsInteger = 231) then
        InterfaseAS.SetStatusPrueba(
          qrSQLDetalleMuestra.AsString,
          qrSQLDetallePruebaID.AsString,
          ' '
        );

      qrSQLDetalle.Next;
    end;

  qrSQLDetalle.Close;
 end;

end;

function TDMB.EsServicio(Codigo: string): Boolean;
begin

  qrEsServicio.Close;
  qrEsServicio.Parameters.ParamByName('CodigoId').Value:= Codigo;
  qrEsServicio.Open;

  EsServicio:= qrEsServicioServicio.Value;

end;

procedure TDMB.SalidaInventario(Producto: String; Codigo: String; Nota: String = '');
begin

  if EsServicio(Producto) then Exit;
  AddHistorico(Codigo, 'SI', Nota);

  // Salva productos antes de sacar de inventario
  DM.DataBase.Execute('insert into BSInventarioBackup select * from BSInventario where CodigoId = '''+ Codigo + '''' );
  // Salida de inventario del producto
  DM.DataBase.Execute('Delete From BSInventario Where CodigoId = '''+ Codigo + '''' );

end;

function TDMB.PasarVenta(RecId: Integer; Nota: String = ''): string;
begin

  qrEntradaVentaDetalle.Close;
  qrEntradaVentaDetalle.parameters[0].Value := RecId;
  qrEntradaVentaDetalle.Open;

  qrEntradaVenta.Close;
  qrEntradaVenta.parameters[0].Value := RecId;
  qrEntradaVenta.Open;


  while not qrEntradaVentaDetalle.Eof do
    begin
      //Facturar para Cruce
      if (qrEntradaVentaDetallePRUEBAID.Value = 'CR') then
        begin
            DMB.Cruzar(qrEntradaVentaDetalleCODIGOID.Value,
                   qrEntradaVentaPacienteId.Value,
                   qrEntradaVentaDOCTORID.Value,
                   qrEntradaVentaFECHAPROMETIDA.AsString,
                   True,
                   Nota );
        end
      else
      if (qrEntradaVentaDetallePRUEBAID.Value = 'RS') then //Facturar para Reserva
        begin
            DMB.Reservar(qrEntradaVentaDetalleCODIGOID.Value,
                   qrEntradaVentaPacienteId.Value,
                   qrEntradaVentaDOCTORID.Value,
                   qrEntradaVentaFECHAPROMETIDA.AsString,
                   False,
                   Nota );
        end
      else
        Venta(qrEntradaVentaDetallePruebaID.Value, qrEntradaVentaDetalleCodigoID.Value, Nota);

      qrEntradaVentaDetalle.Next;

    end;

  qrEntradaVentaDetalle.Close;

  qrEntradaVenta.Edit;
  qrEntradaVentaStatus.Value:= 'Vendido';
  qrEntradaVenta.Post;
  qrEntradaVenta.Close;

end;

function TDMB.EsDonante(PacienteId: string): Boolean;
begin

  qrEsDonante.Close;
  qrEsDonante.Parameters.ParamByName('PacienteID').Value:= PacienteID;
  qrEsDonante.Open;

  EsDonante:= not qrEsDonante.Eof;

end;

end.
