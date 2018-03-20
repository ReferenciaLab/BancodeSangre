unit DataFactura;

interface

uses
  SysUtils, Classes, DB, ADODB, ppCtrls, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ActnList,

  myChkBox, ppVar, ppTypes;

type
  TdmFactura = class(TDataModule)
    qrEntradaPaciente: TADOQuery;
    dsEntradaPaciente: TDataSource;
    dsEntradaPacienteDetalle: TDataSource;
    qrEntradaPacienteDetalle: TADOQuery;
    qrProducto: TADOQuery;
    dsProducto: TDataSource;
    qrProductoProductoID: TWideStringField;
    qrProductoProductoDes: TWideStringField;
    qrProductoPrecio: TBCDField;
    qrProductoPrecioDolares: TBCDField;
    qrProductoDias: TIntegerField;
    qrProductoPermiteCambioPrecio: TBooleanField;
    qrProductoCodigoAxapta: TStringField;
    qrProductoCosto: TBCDField;
    qrProductoExterior: TBooleanField;
    qrProductoFacturarCabecera: TBooleanField;
    qrProductoTipo: TBooleanField;
    qrProductoNecesitaCruce: TBooleanField;
    qrProductoServicio: TBooleanField;
    qrProductoInicial: TBooleanField;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteNOTA: TStringField;
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
    qrEntradaPacienteDetalleCodigoId: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
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
    qrEntradaPacienteTotalPendiente: TBCDField;
    qrEntradaPacienteSTATUS: TStringField;
    qrPrecio: TADOQuery;
    dsPrecio: TDataSource;
    qrPrecioRECID: TIntegerField;
    qrPrecioPRECIO: TBCDField;
    qrPrecioTOTALLINEA: TBCDField;
    qrInventario: TADOQuery;
    qrInventarioCodigoId: TStringField;
    qrInventarioCaja: TBooleanField;
    qrAnticipo: TADOQuery;
    qrAnticipoId: TLargeintField;
    qrAnticipoPacienteId: TStringField;
    qrAnticipoProductoId: TStringField;
    qrAnticipoMonto: TBCDField;
    qrFactura: TADOQuery;
    qrFacturaENTRADAID: TStringField;
    qrFacturaBRUTO: TBCDField;
    qrFacturaDESCUENTO: TBCDField;
    qrFacturaSUBTOTAL: TBCDField;
    qrFacturaNETO: TBCDField;
    qrFacturaNCF: TStringField;
    qrNota: TADOQuery;
    qrFacturaPACIENTEID: TStringField;
    qrFacturaCLIENTEID: TStringField;
    qrFacturaNOMBREPACIENTE: TStringField;
    qrFacturaCLIENTENOMBRE: TStringField;
    qrNotaENTRADAID: TStringField;
    qrNotaOrigenId: TStringField;
    qrNotaFECHA: TDateTimeField;
    qrNotaHORAENTRADA: TStringField;
    qrNotaPACIENTEID: TStringField;
    qrNotaCLIENTEID: TStringField;
    qrNotaDOCTORID: TStringField;
    qrNotaFECHAPROMETIDA: TDateTimeField;
    qrNotaNOTA: TStringField;
    qrNotaRECORDID: TIntegerField;
    qrNotaBRUTO: TBCDField;
    qrNotaDESCUENTO: TBCDField;
    qrNotaSUBTOTAL: TBCDField;
    qrNotaNETO: TBCDField;
    qrNotaNOMBREPACIENTE: TStringField;
    qrNotaCLIENTENOMBRE: TStringField;
    qrNotaSUCURSALID: TStringField;
    qrNotaUSERID: TStringField;
    qrNotaCOBROID: TStringField;
    qrNotaTOTALPAGADO: TBCDField;
    qrNotaFAX: TStringField;
    qrNotaTIPODOCUMENTO: TIntegerField;
    qrNotaCOBERTURAPORC: TBCDField;
    qrNotaCOBERTURASEGURO: TBCDField;
    qrNotaCOBERTURAVALOR: TBCDField;
    qrNotaDESCUENTOPORC: TBCDField;
    qrNotaDESCUENTOVALOR: TBCDField;
    qrNotaDESCUENTOBONO: TBCDField;
    qrNotaORIGEN: TStringField;
    qrNotaAPROBACIONNO: TStringField;
    qrNotaAPROBACIONPOR: TStringField;
    qrNotaCOBERTURARECHAZADA: TIntegerField;
    qrNotaCOBERTURACONFIRMADA: TIntegerField;
    qrNotaFECHAASEGURADORA: TDateTimeField;
    qrNotaMUESTRANO: TStringField;
    qrNotaMONEDAID: TStringField;
    qrNotaCOBERTURAEXPPORC: TIntegerField;
    qrNotaEDADPACIENTE: TIntegerField;
    qrNotaSEXO: TIntegerField;
    qrNotaNOMBREDOCTOR: TStringField;
    qrNotaPUBLICARINTERNET: TIntegerField;
    qrNotaCARNET: TStringField;
    qrNotaPUBLICARINTERNETDOCTOR: TIntegerField;
    qrNotaCUADREGLOBAL: TStringField;
    qrNotaCUADREUSUARIO: TStringField;
    qrNotaDESCAUTORIZADOPOR: TStringField;
    qrNotaGASTOSVARIOS: TBCDField;
    qrNotaNOAS400: TIntegerField;
    qrNotaNOAXAPTA: TIntegerField;
    qrNotaNOFACTURA: TIntegerField;
    qrNotaFACTEXTERIOR: TIntegerField;
    qrNotaHOLD: TIntegerField;
    qrNotaREPMUESTRA: TIntegerField;
    qrNotaENTRADAIDANT: TStringField;
    qrNotaTIPOENTRADA: TStringField;
    qrNotaFORMADEPAGO: TStringField;
    qrNotaDESCUENTOCARD: TStringField;
    qrNotaDESCUENTOTEXTO: TStringField;
    qrNotaACUERDOPROPIO: TIntegerField;
    qrNotaCLIENTEPADRE: TStringField;
    qrNotaDESCUENTOPLANID: TStringField;
    qrNotaFECHAREGISTRO: TDateTimeField;
    qrNotaHORAREGISTRO: TStringField;
    qrNotaTASA: TBCDField;
    qrNotaESTATUS: TIntegerField;
    qrNotaTIPOCLIENTEAS400: TIntegerField;
    qrNotaCLASECREDITO: TStringField;
    qrNotaCARNETNUMERO: TStringField;
    qrNotaCLIENTEPADREAXAPTA: TStringField;
    qrNotaPACIENTEIDAXAPTA: TStringField;
    qrNotaCLIENTEIDAXAPTA: TStringField;
    qrNotaDOCTORIDAXAPTA: TStringField;
    qrNotaDATAAREAID: TStringField;
    qrNotaRECID: TIntegerField;
    qrNotaTotalPendiente: TBCDField;
    qrNotaSTATUS: TStringField;
    qrNotaNCF: TStringField;
    qrNotaNCFOrigen: TStringField;
    qrNotaRECORDCLINICA: TStringField;
    qrNotaNUMEROHABITACION: TStringField;
    qrNotaPOLIZAID: TStringField;
    qrNotaENCLINICA: TIntegerField;
    qrNotaFECHAENTRADA: TDateTimeField;
    qrNotaFECHADEALTA: TDateTimeField;
    qrNotaRESULTADOPACIENTE: TIntegerField;
    qrNotaRESULTADODOCTOR: TIntegerField;
    qrNotaHORAPROMETIDA: TStringField;
    qrNotaFLEBOTOMISTAID: TStringField;
    qrNotaPROYECTOID: TStringField;
    qrNotaDIRECCION: TStringField;
    qrNotaTELEFONOS: TStringField;
    qrNotaTELEFONO2: TStringField;
    qrNotaEMAIL: TStringField;
    qrNotaPRIORIDAD: TIntegerField;
    qrFacturaFECHA: TDateTimeField;
    qrFacturaTotalPendiente: TBCDField;
    qrFacturaTOTALPAGADO: TBCDField;
    qrCobros: TADOQuery;
    qrCobrosCobroID: TStringField;
    qrCobrosFecha: TDateTimeField;
    qrCobrosFormaDePagoID: TStringField;
    qrCobrosMonto: TBCDField;
    qrCobrosMonedaID: TStringField;
    qrCobrosUsuarioID: TStringField;
    qrCobrosrefRecid: TLargeintField;
    qrFacturaRECID: TIntegerField;
    qrDetalleCobro: TADOQuery;
    qrDetalleCobroCobroID: TStringField;
    qrDetalleCobroFormaDePagoID: TStringField;
    qrDetalleCobroMonto: TBCDField;
    qrDetalleCobroOrden: TIntegerField;
    qrDetalleCobrorecid: TLargeintField;
    qrDetalleCobroRefRecid: TLargeintField;
    qrDetalleCobroMonedaID: TStringField;
    qrDetalleCobroMontoMST: TBCDField;
    qrTotal: TADOQuery;
    qrTotalRECID: TIntegerField;
    qrTotalPRECIO: TBCDField;
    qrTotalTOTALLINEA: TBCDField;
    dsCobro: TDataSource;
    qrPendientesCobros: TADOQuery;
    qrPendientesCobrosENTRADAID: TStringField;
    qrPendientesCobrosFECHA: TDateTimeField;
    qrPendientesCobrosRECID: TIntegerField;
    qrPendientesCobrosPACIENTEID: TStringField;
    qrPendientesCobrosNOMBREPACIENTE: TStringField;
    qrPendientesCobrosCLIENTEID: TStringField;
    qrPendientesCobrosCLIENTENOMBRE: TStringField;
    qrPendientesCobrosBRUTO: TBCDField;
    qrPendientesCobrosDESCUENTO: TBCDField;
    qrPendientesCobrosSUBTOTAL: TBCDField;
    qrPendientesCobrosNETO: TBCDField;
    qrPendientesCobrosTOTALPAGADO: TBCDField;
    qrPendientesCobrosTotalPendiente: TBCDField;
    ppEntradaPaciente: TppDBPipeline;
    ppEntradaPacienteppField1: TppField;
    ppEntradaPacienteppField2: TppField;
    ppEntradaPacienteppField3: TppField;
    ppEntradaPacienteppField4: TppField;
    ppEntradaPacienteppField5: TppField;
    ppEntradaPacienteppField6: TppField;
    ppEntradaPacienteppField7: TppField;
    ppEntradaPacienteppField8: TppField;
    ppEntradaPacienteppField9: TppField;
    ppEntradaPacienteppField10: TppField;
    ppEntradaPacienteppField11: TppField;
    ppEntradaPacienteppField12: TppField;
    ppEntradaPacienteppField13: TppField;
    ppEntradaPacienteppField14: TppField;
    ppEntradaPacienteppField15: TppField;
    ppEntradaPacienteppField16: TppField;
    ppEntradaPacienteppField17: TppField;
    ppEntradaPacienteppField18: TppField;
    ppEntradaPacienteppField19: TppField;
    ppEntradaPacienteppField20: TppField;
    ppEntradaPacienteppField21: TppField;
    ppEntradaPacienteppField22: TppField;
    ppEntradaPacienteppField23: TppField;
    ppEntradaPacienteppField24: TppField;
    ppEntradaPacienteppField25: TppField;
    ppEntradaPacienteppField26: TppField;
    ppEntradaPacienteppField27: TppField;
    ppEntradaPacienteppField28: TppField;
    ppEntradaPacienteppField29: TppField;
    ppEntradaPacienteppField30: TppField;
    ppEntradaPacienteppField31: TppField;
    ppEntradaPacienteppField32: TppField;
    ppEntradaPacienteppField33: TppField;
    ppEntradaPacienteppField34: TppField;
    ppEntradaPacienteppField35: TppField;
    ppEntradaPacienteppField36: TppField;
    ppEntradaPacienteppField37: TppField;
    ppEntradaPacienteppField38: TppField;
    ppEntradaPacienteppField39: TppField;
    ppEntradaPacienteppField40: TppField;
    ppEntradaPacienteppField41: TppField;
    ppEntradaPacienteppField42: TppField;
    ppEntradaPacienteppField43: TppField;
    ppEntradaPacienteppField44: TppField;
    ppEntradaPacienteppField45: TppField;
    ppEntradaPacienteppField46: TppField;
    ppEntradaPacienteppField47: TppField;
    ppEntradaPacienteppField48: TppField;
    ppEntradaPacienteppField49: TppField;
    ppEntradaPacienteppField50: TppField;
    ppEntradaPacienteppField51: TppField;
    ppEntradaPacienteppField52: TppField;
    ppEntradaPacienteppField53: TppField;
    ppEntradaPacienteppField54: TppField;
    ppEntradaPacienteppField55: TppField;
    ppEntradaPacienteppField56: TppField;
    ppEntradaPacienteppField57: TppField;
    ppEntradaPacienteppField58: TppField;
    ppEntradaPacienteppField59: TppField;
    ppEntradaPacienteppField60: TppField;
    ppEntradaPacienteppField61: TppField;
    ppEntradaPacienteppField62: TppField;
    ppEntradaPacienteppField63: TppField;
    ppEntradaPacienteppField64: TppField;
    ppEntradaPacienteppField65: TppField;
    ppEntradaPacienteppField66: TppField;
    ppEntradaPacienteppField67: TppField;
    ppEntradaPacienteppField68: TppField;
    ppEntradaPacienteppField69: TppField;
    ppEntradaPacienteppField70: TppField;
    ppEntradaPacienteppField71: TppField;
    ppEntradaPacienteppField72: TppField;
    ppEntradaPacienteppField73: TppField;
    ppEntradaPacienteppField74: TppField;
    ppEntradaPacienteppField75: TppField;
    ppEntradaPacienteppField76: TppField;
    ppEntradaPacienteppField77: TppField;
    ppEntradaPacienteppField78: TppField;
    ppEntradaPacienteppField79: TppField;
    ppEntradaPacienteppField80: TppField;
    ppEntradaPacienteppField81: TppField;
    ppEntradaPacienteppField82: TppField;
    ppEntradaPacienteppField83: TppField;
    ppEntradaPacienteppField84: TppField;
    ppEntradaPacienteppField85: TppField;
    ppEntradaPacienteppField86: TppField;
    ppEntradaPacienteppField87: TppField;
    ppEntradaPacienteppField88: TppField;
    ppEntradaPacienteppField89: TppField;
    ppEntradaPacienteppField90: TppField;
    ppEntradaPacienteppField91: TppField;
    ppEntradaPacienteppField92: TppField;
    ppEntradaPacienteDetalle: TppDBPipeline;
    ppEntradaPacienteDetalleppField1: TppField;
    ppEntradaPacienteDetalleppField2: TppField;
    ppEntradaPacienteDetalleppField3: TppField;
    ppEntradaPacienteDetalleppField4: TppField;
    ppEntradaPacienteDetalleppField5: TppField;
    ppEntradaPacienteDetalleppField6: TppField;
    ppEntradaPacienteDetalleppField7: TppField;
    ppEntradaPacienteDetalleppField8: TppField;
    ppEntradaPacienteDetalleppField9: TppField;
    ppEntradaPacienteDetalleppField10: TppField;
    ppEntradaPacienteDetalleppField11: TppField;
    ppEntradaPacienteDetalleppField12: TppField;
    ppEntradaPacienteDetalleppField13: TppField;
    ppEntradaPacienteDetalleppField14: TppField;
    ppEntradaPacienteDetalleppField15: TppField;
    ppEntradaPacienteDetalleppField16: TppField;
    ppEntradaPacienteDetalleppField17: TppField;
    ppEntradaPacienteDetalleppField18: TppField;
    ppEntradaPacienteDetalleppField19: TppField;
    ppEntradaPacienteDetalleppField20: TppField;
    ppEntradaPacienteDetalleppField21: TppField;
    ppEntradaPacienteDetalleppField22: TppField;
    ppEntradaPacienteDetalleppField23: TppField;
    ppEntradaPacienteDetalleppField24: TppField;
    ppEntradaPacienteDetalleppField25: TppField;
    ppEntradaPacienteDetalleppField26: TppField;
    ppEntradaPacienteDetalleppField27: TppField;
    ppEntradaPacienteDetalleppField28: TppField;
    ppEntradaPacienteDetalleppField29: TppField;
    ppEntradaPacienteDetalleppField30: TppField;
    ppEntradaPacienteDetalleppField31: TppField;
    ppEntradaPacienteDetalleppField32: TppField;
    ppEntradaPacienteDetalleppField33: TppField;
    ppEntradaPacienteDetalleppField34: TppField;
    ppEntradaPacienteDetalleppField35: TppField;
    ppEntradaPacienteDetalleppField36: TppField;
    ppEntradaPacienteDetalleppField37: TppField;
    ppEntradaPacienteDetalleppField38: TppField;
    ppEntradaPacienteDetalleppField39: TppField;
    ppEntradaPacienteDetalleppField40: TppField;
    ppEntradaPacienteDetalleppField41: TppField;
    ppEntradaPacienteDetalleppField42: TppField;
    ppImpFactPacienteConSeguro: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppLabel47: TppLabel;
    ppDBText55: TppDBText;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppDBText63: TppDBText;
    ppLabel55: TppLabel;
    ppDBText66: TppDBText;
    ppShape4: TppShape;
    ppLabel57: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppDBText69: TppDBText;
    ppLabel65: TppLabel;
    ppDBText72: TppDBText;
    ppLabel68: TppLabel;
    ppDBText73: TppDBText;
    ppLabel97: TppLabel;
    ppDBText108: TppDBText;
    ppLabel103: TppLabel;
    ppDBText113: TppDBText;
    ppLabel104: TppLabel;
    ppDBText114: TppDBText;
    LbCobertura: TppLabel;
    ppDetailBandConSeguro: TppDetailBand;
    ppDBText74: TppDBText;
    ppSummaryFactPacienteConSeguro: TppSummaryBand;
    ppLabel69: TppLabel;
    ppDBText76: TppDBText;
    ppLabel70: TppLabel;
    ppDBText77: TppDBText;
    ppLabel71: TppLabel;
    ppDBText78: TppDBText;
    ppShape8: TppShape;
    ppMemoFactConSeg: TppMemo;
    ppImpFactPacienteSinSeguro: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDBText75: TppDBText;
    ppDBText79: TppDBText;
    ppLabel62: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDBText81: TppDBText;
    ppLabel75: TppLabel;
    ppDBText84: TppDBText;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBText85: TppDBText;
    ppLabel78: TppLabel;
    ppDBText86: TppDBText;
    ppLabel79: TppLabel;
    ppDBText87: TppDBText;
    ppLabel98: TppLabel;
    ppDBText109: TppDBText;
    ppLabel108: TppLabel;
    ppDBText89: TppDBText;
    ppLabel85: TppLabel;
    ppDBText95: TppDBText;
    ppLabel87: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBandSinSeguro: TppDetailBand;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppSummaryFactPacienteSinSeguro: TppSummaryBand;
    LbPagadoTit: TppLabel;
    LbBrutoTit: TppLabel;
    ppShape9: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    alEdit: TActionList;
    Cobrar: TAction;
    Descuento: TAction;
    Mostrar: TAction;
    Imprimir: TAction;
    qrEntradaPacienteOrigenId: TStringField;
    qrEntradaPacienteNCF: TStringField;
    qrEntradaPacienteNCFOrigen: TStringField;
    qrPendientesCobrosNCF: TStringField;
    qrPendientesCobrosNCFOrigen: TStringField;
    qrInventarioDonacionId: TStringField;
    qrPendientesCobrosFORMADEPAGO: TStringField;
    qrPendientesCobrosINV_CODIGO: TIntegerField;
  private
    { Private declarations }
    recid: Integer;

  public
    { Public declarations }
    InvCodigo : Integer;

    procedure AddCaja(CodigoId: String);
    procedure SacarCaja(CodigoId: String);
    function AddAVenta(PacienteId: String; DoctorId: String; Fecha: string): Boolean;
    function AddADetVenta(ProductoId: String; CodigoId: String): Boolean;
    function AddADetAntVenta(ProductoId: String; CodigoId: String): Boolean;
    function SendCaja(PacienteId: String; ProductoId: String): Boolean;
    procedure CloseVenta(PacienteId: String);
    procedure ActInterface;
    procedure ActTotales;

    procedure AddNotaCredito(Factura: String; Monto: Currency);

    function CancelarFactura(Factura: String): Boolean;
    function CancelarCobroFactura(Factura: String): Integer;
    function AbrirFactura(Factura: String): Integer;

    procedure ImprimirFactura(Factura: String);

    function  AplicarCobro(Factura: String): boolean;
    function  AplicarNotaCredito(Factura: String): boolean;
    procedure AplicarDescuento(Factura: String; Descuento: Currency);
    procedure DialogoDescuento;

    procedure ListarPendientes;
    procedure TodoslosCobros;


  end;

var
  dmFactura: TdmFactura;

implementation
uses DataModule, DataBanco, StrUtils, Main, DCobros;
{$R *.dfm}

procedure tdmFactura.ListarPendientes;
begin

  qrpendientesCobros.Close;
  qrpendientesCobros.SQL.Clear;
  qrpendientesCobros.SQL.Add(' Select *  from BSVEnta ');
  qrpendientesCobros.SQL.Add(' Where ( TotalPendiente <> 0 ) ');
  qrPendientesCobros.Open;

end;

procedure tdmFactura.TodoslosCobros;
begin

  qrpendientesCobros.Close;
  qrpendientesCobros.SQL.Clear;
  qrpendientesCobros.SQL.Add(' Select *  from BSVEnta ');
  qrpendientesCobros.SQL.Add(' Where ( TotalPendiente <> 0 ) ');
  qrPendientesCobros.Open;

end;

procedure tdmFactura.DialogoDescuento;
begin
  frmMain.LanzaVentana(-8033);
end;

procedure tdmFactura.AplicarDescuento;
var
  EntradaId: String;
  rid: String;
begin

  //Insertar Nueva Operacion Descuento a factura


  if (Descuento > 0) then
    begin
      DM.DataBase.Execute(
        ' Update  BSVEnta ' +
        '   SET   Descuento = ' + CurrToStr(Descuento) +
        '   Where EntradaId = ''' + Factura + '''' );
      DM.DataBase.Execute(
        ' Update  BSVEnta ' +
        '   SET   Neto = Bruto - Descuento, ' +
        '   TotalPendiente = ( Bruto - Descuento ) - TotalPagado ' +
        '   Where EntradaId = ''' + Factura + '''' );

    end;
   // Datos para crear la operacion descuento
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  rid := DM.qrParametroSecuencia.AsString;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;
  EntradaId:= DMB.GetNextSecDoc('NCF');

   {dm.Error(
    ' INSERT INTO BSVENTA ( ENTRADAID,      OrigenId,  FECHA,        RECID,   PACIENTEID, NOMBREPACIENTE, CLIENTEID, CLIENTENOMBRE, HORAENTRADA,     DESCUENTO,                       USERID) ' +
    ' SELECT          ''' + EntradaId+ ''', ENTRADAID, GETDATE(),' + rid +',  PACIENTEID, NOMBREPACIENTE, CLIENTEID, CLIENTENOMBRE, HORAENTRADA, ' + CurrToStr(Descuento) +  ', ''' + DM.CurUser + '''' +
    ' FROM BSVENTA Where EntradaId = ''' + Factura + ''''
   );}

  dm.DataBase.Execute(
    ' INSERT INTO BSVENTA ( ENTRADAID,      OrigenId,  FECHA,        RECID,   PACIENTEID, NOMBREPACIENTE, CLIENTEID, CLIENTENOMBRE, HORAENTRADA,     DESCUENTO,                    TOTALPAGADO,                     USERID) ' +
    ' SELECT          ''' + EntradaId+ ''', ENTRADAID, GETDATE(),' + rid +',  PACIENTEID, NOMBREPACIENTE, CLIENTEID, CLIENTENOMBRE, HORAENTRADA, ' + CurrToStr(Descuento) + ', ' + CurrToStr(0) + ', ''' + DM.CurUser + '''' +
    ' FROM BSVENTA Where EntradaId = ''' + Factura + ''''                                                                                                                          //CurrToStr(-Descuento)
  );

end;

function TdmFactura.AplicarNotaCredito(Factura: String): boolean;
Var
  Cobro: Currency;
begin
  if AbrirFactura(Factura) = 0 then exit;

  Cobro:= dmCobros.CobrarNC(qrFacturaRecId.Value, qrFacturaTotalPendiente.Value);

  if (Cobro > 0) then
  begin
    DM.DataBase.Execute(
        ' Update  BSVEnta ' +
        '   SET   TotalPagado = TotalPagado + ' + CurrToStr(Cobro) +
        '   Where EntradaId = ''' + Factura + '''' );
    DM.DataBase.Execute(
        ' Update  BSVEnta ' +
        '   SET   TotalPendiente = Neto - TotalPagado ' +
        '   Where EntradaId = ''' + Factura + '''' );

    DMB.PasarVenta(qrFacturaRecId.Value, 'Aplicacion Nota de Credito');
  end;
end;

function tdmFactura.AplicarCobro;
Var
  Cobro: Currency;
begin

  if AbrirFactura(Factura) = 0 then exit;

  Cobro:= dmCobros.Cobrar(qrFacturaRecId.Value, qrFacturaTotalPendiente.Value);

  if (Cobro > 0) then
  begin
    DM.DataBase.Execute(
        ' Update  BSVEnta ' +
        '   SET   TotalPagado = TotalPagado + ' + CurrToStr(Cobro) +
        '   Where EntradaId = ''' + Factura + '''' );
    DM.DataBase.Execute(
        ' Update  BSVEnta ' +
        '   SET   TotalPendiente = Neto - TotalPagado ' +
        '   Where EntradaId = ''' + Factura + '''' );

    DMB.PasarVenta(qrFacturaRecId.Value, 'Aplicacion del pago');
  end;
//  DMB.PasarVenta(qrFacturaRecId.Value, 'Aplicacion del pago');
end;

procedure TdmFactura.ImprimirFactura;
begin

  if AbrirFactura(Factura) = 0 then exit;

  if qrEntradaPacienteEntradaID.Value <> '' then
    begin
    if qrEntradaPacienteCoberturaSeguro.Value <> 0 then
      begin
        ppImpFactPacienteConSeguro.DeviceType := dtScreen;
        ppImpFactPacienteConSeguro.Print;
      end
    else
      begin
        ppImpFactPacienteSinSeguro.DeviceType := dtScreen;
        ppImpFactPacienteSinSeguro.Print;
      end
    end;


end;

function TdmFactura.CancelarCobroFactura;
begin

  qrFactura.Close;
  qrFactura.Parameters.ParamByName('EntradaId').Value:= Factura;
  qrFactura.Open;

    dmCobros.CancelarCobroFactura(qrFacturaRecId.AsInteger);

  qrFactura.Close;

  DM.DataBase.Execute('Update BSVEnta SET TotalPagado = 0, TotalPendiente = Neto Where EntradaId = ''' + Factura + '''' );

end;

function TdmFactura.AbrirFactura;
begin

  qrFactura.Close;
  qrFactura.Parameters.ParamByName('EntradaId').Value:= Factura;
  qrFactura.Open;

   if (qrFactura.Eof) then
    begin
      //Aqui se pone un mensaje de error al eliminar cobros
      Result:= 0;
      Exit;
    end;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.Parameters.ParamByName('EntradaId').Value:= Factura;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.Parameters.ParamByName('RecId').Value:=
    qrEntradaPacienterecId.Value;
  qrEntradaPacienteDetalle.Open;

  qrTotal.Close;
  qrTotal.Parameters.ParamByName('RecId').Value:= qrFacturaRecId.Value;
  qrTotal.Open;

  qrCobros.Close;
  qrCobros.Parameters[0].Value:= qrFacturaRecId.Value;
  qrCobros.Close;

  Result:= qrFacturaRecId.Value;

end;

function TdmFactura.CancelarFactura;
var
  RecId: Integer;
  strRecId: String;
begin

  //Obtener condigo para borrar el Cobro
  RecId:= AbrirFactura(Factura);

  if (RecId = 0) then Exit;

  strRecId:= IntToStr(RecId);

  dmCobros.CancelarCobroFactura(RecId);

  DM.DataBase.Execute('Delete from BSVenta Where RecId = ''' + strRecId + '''' );
  DM.DataBase.Execute('DELETE FROM BSVentaDetalle WHERE RefRecId = ''' + strRecId + '''');


end;

procedure TdmFactura.AddNotaCredito;
var
  EntradaId: String;
begin

  qrFactura.Close;
  qrFactura.Parameters[0].Value:= Factura;
  qrFactura.open;

  if qrFactura.Eof then
    begin
      //No existe la factura para la nota
      qrFactura.Close;
      Exit;
    end;

  qrNota.Close;
  qrNota.Open;

  qrNota.Insert;

    recid := DM.qrParametroSecuencia.Value;

    qrNotaDATAAREAID.Value := _AreaId;
    qrNotaRecid.Value := recid;
    qrNotaNOMBREPACIENTE.Value:= qrFacturaNombrePaciente.Value;
    qrNotaPacienteID.Value:= qrFacturaPACIENTEID.Value;
    qrNotaClienteID.Value:= qrFacturaCLIENTEID.Value;
    qrNotaSucursalId.Value := DM.CurSucursal;
    qrNotaNeto.Value := Monto;
    qrNotaTotalPagado.Value := 0;
    qrNotaTipoDocumento.Value := 0;
    qrNotaFecha.Value := DM.SystemDate;
    qrNotaUserId.Value := DM.CurUser;
    qrNotaMonedaID.Value := DM.qrParametroMonedaID.Value;
    qrNotaNoFactura.Value := 0;

    EntradaId:= DMB.GetNextSecDoc('NC');
    qrNotaENTRADAID.Value := EntradaId;
    qrNotaUserId.Value := DM.CurUser;
    qrNotaFecha.Value := DM.SystemDate;
    qrNotaNCFOrigen.Value:= qrFacturaNCF.Value;
    qrNotaOrigenId.Value:= qrFacturaEntradaId.Value;

  qrNota.Post;

  qrNota.Close;

  qrCobros.Close;
  qrCobros.Parameters[0].Value:= qrFacturaRecId.Value;
  qrCobros.Open;

  //Actualizar en la factura original los totales de cobrado y Pendiente
  //En caso que la factura sea menos que el cobro

  qrFactura.Edit;
  if (qrFacturaNeto.Value <= qrCobrosMonto.Value)  then
    begin
      qrFacturaTotalPagado.Value:= qrCobrosMonto.Value;
      qrFacturaTotalPendiente.Value:= qrFacturaNeto.Value - qrCobrosMonto.Value;
    end
  else
    begin
      qrFacturaTotalPagado.Value:= qrFacturaNeto.Value;
      qrFacturaTotalPendiente.Value:= 0;
    end;

  qrFactura.Post;

  qrCobros.Close;

  qrFactura.Close;

end;

procedure TdmFactura.AddCaja(CodigoId: string);
begin

  qrInventario.Close;
  qrInventario.Parameters[0].Value:= CodigoId;
  qrInventario.Open;

  qrInventario.Edit;
  qrInventarioCaja.Value:= True;
  qrInventario.Post;

  qrInventario.Close;

end;

procedure TdmFactura.SacarCaja(CodigoId: string);
begin

  qrInventario.Close;
  qrInventario.Parameters[0].Value:= CodigoId;
  qrInventario.Open;

  if qrInventario.Eof then
    exit;

  qrInventario.Edit;
  qrInventarioCaja.Value:= False;
  qrInventario.Post;

  qrInventario.Close;

end;

procedure TdmFactura.ActTotales;
Var
 qfind : TADOQuery;
begin
 //ActDetalle;
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio), SUM(DescuentoLineaAplicado), SUM(CoberturaAplicada) '+
                   ' FROM BSVENTADETALLE WHERE refRecid = '+ inttostr(recid);
 qfind.Open;
 //Redondeo de los Valores del Punto de Venta.
 qrEntradaPacienteBruto.Value := Int(qfind.Fields[0].AsFloat);
 qrEntradaPacienteDescuento.Value := Int(qfind.Fields[1].AsFloat + qrEntradaPacienteDescuentoBono.Value);
 qrEntradaPacienteSubTotal.Value := Int(qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value);
 qrEntradaPacienteCoberturaSeguro.Value := Int(qfind.Fields[2].AsFloat);

 If ( qrEntradaPacienteTipoDocumento.Value = 3 ) Or
    ( qrEntradaPacienteFactExterior.Value = 1 ) Then
   qrEntradaPacienteGastosVarios.Value := Round(DM.TotalGastosVariosUsa(qrEntradaPacienteRecid.Value))
 Else
   qrEntradaPacienteGastosVarios.Value := Int(DM.TotalGastosVarios(qrEntradaPacienteRecid.Value));

 qrEntradaPacienteNeto.Value := Int(qrEntradaPacienteSubTotal.Value -
                                    qrEntradaPacienteCoberturaSeguro.Value +
                                    qrEntradaPacienteGastosVarios.Value);
end;


procedure TdmFactura.ActInterface;
begin
 //Act_Hold;
 //Val_Descuento;
 ActTotales;

 DM.qrParametro.close;
 DM.qrParametro.open;
 qrEntradapacienteFechaEntrada.Required := False;
 qrEntradaPacienteDoctorID.Required := False;
 qrEntradaPacientePolizaID.Required := False;

 qrEntradaPacienteSexo.Required := False;
 qrEntradaPacienteEdadPaciente.Required := False;

 if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
 begin
  qrEntradaPacientePolizaID.DisplayLabel := 'Afiliado No.:';
  qrEntradaPacienteDoctorID.Required := False;
  qrEntradaPacientePolizaID.Required := False;
 end
 else
  if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCli.Value then
  begin
   qrEntradaPacientePolizaID.DisplayLabel := 'Record';
   qrEntradapacienteFechaEntrada.Required := True;
  end
  else
   if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value then
   begin
    qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
   end
   else
    if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value then
    begin
     qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
    end
    else
     if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value then
     begin
       //CxDbPaciente.Enabled := True;
       //lcGeneralGroup9.Enabled := True;
       //lcGeneralItem6.Enabled := True;
       qrEntradaPacientePolizaID.Required := True;
       qrEntradaPacienteNombrePaciente.Required := True;
       //lcGeneralItem15.Caption := 'Referencia';
       qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
       qrEntradaPacienteSexo.Required := False;
       qrEntradaPacienteEdadPaciente.Required := False;
     end
     else
      begin
       //lcGeneralItem15.Caption := 'Referencia';
       qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
      end;
end;


procedure TdmFactura.CloseVenta(PacienteId: String);
begin

  //Crear entrada de paciente
  qrEntradapaciente.Close;
  qrEntradaPaciente.Parameters.ParamByName('PacienteId').Value:= PacienteId;
  qrEntradaPaciente.Parameters.ParamByName('Status').Value:= 'Pendiente';
  qrEntradaPaciente.Open;

  if not qrEntradaPaciente.Eof then
    begin

      qrEntradaPaciente.Edit;
        qrEntradaPacienteStatus.Value:= 'Caja';
      qrEntradaPaciente.Post;

    end;


end;

function TdmFactura.SendCaja(PacienteId: String; ProductoId: String): Boolean;
begin

  ///Envio a caja
  qrEntradapaciente.Close;
  qrEntradaPaciente.Parameters.ParamByName('PacienteId').Value:= PacienteId;
  qrEntradaPaciente.Parameters.ParamByName('Status').Value:= 'Pendiente';
  qrEntradaPaciente.Open;

  while not qrEntradaPaciente.Eof do
    begin
      qrEntradaPacienteStatus.Value:= 'Caja';
      qrEntradaPaciente.Next;
    end;

end;


function TdmFactura.AddAVenta(PacienteId: String; DoctorId: String; Fecha: String): Boolean;
var
  EntradaId: String;
  MuestraNo: String;
begin

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  recid := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  DMB.qrClientes.Close;
  DMB.qrClientes.Parameters.ParamByName('PacienteId').Value:= PacienteId;
  DMB.qrClientes.Open;

  //Crear entrada de paciente
  qrEntradapaciente.Close;
  qrEntradaPaciente.Parameters.ParamByName('PacienteId').Value:= PacienteId;
  //qrEntradaPaciente.Parameters.ParamByName('Status').Value:= 'Pendiente';
  qrEntradaPaciente.Open;

  if qrEntradaPaciente.Eof then
    begin
      qrEntradaPaciente.Insert;

        qrEntradaPacienteDATAAREAID.Value := _AreaId;
        qrEntradaPacienteRecid.Value := recid;
        qrEntradaPacienteNOMBREPACIENTE.Value:= DMB.qrClientesNOMBRE.Value;
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
        qrEntradaPacienteOrigen.Value := '03';
        qrEntradaPacienteCoberturaPorc.Value := 0;
        qrEntradaPacienteCoberturaValor.Value := 0;
        //MuestraNo:= DMB.GetNextSecDoc('MT');
        //qrEntradaPacienteMuestraNo.Value := MuestraNo;
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

        EntradaId:= DMB.GetNextSecDoc('FAC');
        qrEntradaPacienteEntradaID.Value := EntradaId;
        qrEntradaPacienteUserId.Value := DM.CurUser;
        qrEntradaPacienteFecha.Value := DM.SystemDate;
        qrEntradaPacienteHoraEntrada.Value := leftStr(TimeToStr(Time), 5);
        qrEntradaPacienteHold.Value := 0;
        qrEntradaPacienteStatus.Value:= 'Pendiente';
        qrEntradaPacienteFECHAPROMETIDA.AsString:= Fecha;

      qrEntradaPaciente.Post;

    end;

end;

function TdmFactura.AddADetVenta(ProductoId: String; CodigoId: String ): Boolean;
var
  EntradaId: String;
  MuestraNo: String;
begin

  qrProducto.Close;
  qrProducto.Parameters[0].Value:= ProductoId;
  qrproducto.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qrEntradaPacienteDetalle.Parameters.ParamByName('PruebaId').Value:= ProductoId;
  qrEntradaPacienteDetalle.Open;

  if qrEntradaPacienteDetalle.Eof then
    begin
      qrEntradaPacienteDetalle.Insert;
        qrEntradaPacienteDetallePRUEBAID.Value:= ProductoId;
        qrEntradaPacienteDetalleCodigoId.Value:= CodigoId;
        qrEntradaPacienteDetalleDESCRIPCION.Value:= qrProductoProductoDes.Value;
        qrEntradaPacienteDetalleRECID.Value:= qrEntradaPacienteRECID.Value;
        //qrEntradaPacienteDetallePRECIO.Value:= qrProductoPrecio.Value;
        //Adicionar el tipo de cliente
        qrEntradaPacienteDetallePRECIO.Value:=
          DMB.GetPrecio(ProductoId,
            DMB.getTipoCliente(qrEntradaPacientePacienteId.Value));
        qrEntradaPacienteDetalleTOTALLINEA.Value:= qrProductoPrecio.Value;
        qrEntradaPacienteDetalleDATAAREAID.Value:= qrEntradaPacienteDATAAREAID.Value;
      qrEntradaPacienteDetalle.Post;

    end;

  qrPrecio.Close;
  qrPrecio.Parameters[0].Value:= qrEntradaPacienteRECID.Value;
  qrPrecio.Open;

  qrEntradaPaciente.Edit;
    qrEntradaPacienteBruto.Value:= qrPrecioPrecio.Value;
    qrEntradaPacienteNeto.Value:= qrPrecioPrecio.Value;
    qrEntradaPacienteTotalPendiente.Value:= qrPrecioPrecio.Value;

  qrEntradaPaciente.Post;

end;

function TdmFactura.AddADetAntVenta;
var
  EntradaId: String;
  MuestraNo: String;
begin

  qrProducto.Close;
  qrProducto.Parameters[0].Value:= ProductoId;
  qrproducto.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qrEntradaPacienteDetalle.Parameters.ParamByName('PruebaId').Value:= ProductoId;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.Insert;
    qrEntradaPacienteDetallePRUEBAID.Value:= ProductoId;
    qrEntradaPacienteDetalleCodigoId.Value:= CodigoId;
    qrEntradaPacienteDetalleDESCRIPCION.Value:= qrProductoProductoDes.Value;
    qrEntradaPacienteDetalleRECID.Value:= qrEntradaPacienteRECID.Value;
    qrEntradaPacienteDetallePRECIO.Value:= qrProductoPrecio.Value;
    qrEntradaPacienteDetalleTOTALLINEA.Value:= qrProductoPrecio.Value;
    qrEntradaPacienteDetalleDATAAREAID.Value:= qrEntradaPacienteDATAAREAID.Value;
  qrEntradaPacienteDetalle.Post;

  qrPrecio.Close;
  qrPrecio.Parameters[0].Value:= qrEntradaPacienteRECID.Value;
  qrPrecio.Open;

  qrEntradaPaciente.Edit;
    qrEntradaPacienteBruto.Value:= qrPrecioPrecio.Value;
    qrEntradaPacienteNeto.Value:= qrPrecioPrecio.Value;
    qrEntradaPacienteTotalPendiente.Value:= qrPrecioPrecio.Value;

  qrEntradaPaciente.Post;

end;
end.
