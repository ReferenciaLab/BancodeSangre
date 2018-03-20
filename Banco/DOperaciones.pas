unit DOperaciones;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmOperaciones = class(TDataModule)
    qrEntradaPaciente: TADOQuery;
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
    qrEntradaPacienteTotalPendiente: TBCDField;
    qrEntradaPacienteSTATUS: TStringField;
    qrEntradaPacienteNCF: TStringField;
    dsEntradaPaciente: TDataSource;
    tbEntradaPacienteDetalle: TADOTable;
    tbEntradaPacienteDetallePRUEBAID: TStringField;
    tbEntradaPacienteDetalleCODIGOID: TStringField;
    tbEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    tbEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    tbEntradaPacienteDetalleDESCRIPCION: TStringField;
    tbEntradaPacienteDetalleCODIGOCUPID: TStringField;
    tbEntradaPacienteDetalleMUESTRAANT: TStringField;
    tbEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    tbEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    tbEntradaPacienteDetalleREFRECID: TIntegerField;
    tbEntradaPacienteDetalleSECUENCIA: TIntegerField;
    tbEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    tbEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    tbEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    tbEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    tbEntradaPacienteDetallePRECIO: TBCDField;
    tbEntradaPacienteDetalleDESCUENTO: TBCDField;
    tbEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    tbEntradaPacienteDetalleTOTALLINEA: TBCDField;
    tbEntradaPacienteDetalleCOMENTARIO: TStringField;
    tbEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    tbEntradaPacienteDetalleTIPOAS400: TStringField;
    tbEntradaPacienteDetalleCODIGOAS400: TStringField;
    tbEntradaPacienteDetalleMEDIOAS400: TStringField;
    tbEntradaPacienteDetalleDESCPCT: TBCDField;
    tbEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    tbEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    tbEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    tbEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    tbEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    tbEntradaPacienteDetalleFACTURAR: TIntegerField;
    tbEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    tbEntradaPacienteDetalleMUESTRANO: TStringField;
    tbEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    tbEntradaPacienteDetalleURGENTE: TIntegerField;
    tbEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    tbEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    tbEntradaPacienteDetalleHORAENTREGA: TStringField;
    tbEntradaPacienteDetalleESTATUS: TStringField;
    tbEntradaPacienteDetalleDATAAREAID: TStringField;
    tbEntradaPacienteDetalleRECID: TIntegerField;
    tbEntradaPacienteDetalleResultado: TStringField;
    tbEntradaPacienteDetalleId: TLargeintField;
    dsEntradaPacienteDetalle: TDataSource;
    qrTotal: TADOQuery;
    qrTotalRECID: TIntegerField;
    qrTotalPRECIO: TBCDField;
    qrTotalTOTALLINEA: TBCDField;
    dsTotal: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function abrir(OperacionId: String): boolean;
    function CancelarFanctura(OperacionId: String);
    function CancelarCobrosFacturas(OperacionId);
    
  end;

var
  dmOperaciones: TdmOperaciones;

implementation

uses DataBanco;

{$R *.dfm}

function TdmOperaciones.abrir;
begin

  qrEntradaPaciente.Close;
  qrEntradaPaciente.Parameters.ParamByName('EntradaId').Value:= DMB.BuscarFactura;
  qrEntradaPaciente.Open;

  qrTotal.close;
  qrTotal.Parameters[0].Value:= qrEntradaPacienteRECID.Value;
  qrTotal.Open;

  tbEntradaPacienteDetalle.Close;
  tbEntradaPacienteDetalle.Open;
end;

end.
