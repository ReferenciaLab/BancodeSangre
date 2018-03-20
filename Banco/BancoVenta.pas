unit BancoVenta;

interface

uses
  SysUtils, Classes, DB, ADODB, ActnList;

type
  TBV = class(TDataModule)
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
    alEdit: TActionList;
    Cobrar: TAction;
    Descuento: TAction;
    Mostrar: TAction;
    Imprimir: TAction;
  private
    { Private declarations }
    recid: Integer;

  public
    { Public declarations }
    procedure AddCaja(CodigoId: String);
    procedure SacarCaja(CodigoId: String);
    function AddAVenta(PacienteId: String; DoctorId: String; Fecha: string): Boolean;
    function AddADetVenta(ProductoId: String; CodigoId: String; Cantidad: Integer = 1): Boolean;
    function AddADetAntVenta(ProductoId: String; CodigoId: String): Boolean;
    function SendCaja(PacienteId: String; ProductoId: String): Boolean;
    function BuscarPrecio(ProductoId: String; TipoCliente : String; GrupoCliente : String) : Double;
    procedure CloseVenta(PacienteId: String);
    procedure ActInterface;
    procedure ActTotales;

    procedure AddNotaCredito(Factura: String; Monto: Currency);

  end;

var
  BV: TBV;

implementation
uses DataModule, DataBanco, StrUtils, Main, DCobros;
{$R *.dfm}


procedure TBV.AddNotaCredito;
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

function TBV.BuscarPrecio(ProductoId, TipoCliente,
  GrupoCliente: String): Double;
begin
 With dm.Qutilitario do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select PRODUCTOID, TIPOCLIENTE, GRUPOCLIENTE, PRECIO from  PTPRECIOSCATEGORIAS');
    Sql.Add('Where PRODUCTOID   =' + #39+ ProductoId  + #39);
    Sql.Add('And   TIPOCLIENTE  =' + #39+ TipoCliente + #39);
    Sql.Add('And   GRUPOCLIENTE =' + #39+ GrupoCliente + #39);
    Open;

    if recordcount > 0  then
      Result := Fieldbyname('PRECIO').Value
      else
      Result := 0;

  end;
end;

procedure TBV.AddCaja(CodigoId: string);
begin

  qrInventario.Close;
  qrInventario.Parameters[0].Value:= CodigoId;
  qrInventario.Open;

  qrInventario.Edit;
  qrInventarioCaja.Value:= True;
  qrInventario.Post;

  qrInventario.Close;

end;

procedure TBV.SacarCaja(CodigoId: string);
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

procedure TBV.ActTotales;
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


procedure TBV.ActInterface;
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


procedure TBV.CloseVenta(PacienteId: String);
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

function TBV.SendCaja(PacienteId: String; ProductoId: String): Boolean;
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


function TBV.AddAVenta(PacienteId: String; DoctorId: String; Fecha: String): Boolean;
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

  {if qrEntradaPaciente.Eof then
    begin }
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

    //end;

end;

function TBV.AddADetVenta;
var
  EntradaId: String;
  MuestraNo: String;
  Precio: Currency;
  TipoCliente : string;
  GrupoCliente : string;

begin

  qrProducto.Close;
  qrProducto.Parameters[0].Value:= ProductoId;
  qrproducto.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.Open;

  dmb.qrClientes.Close;
  dmb.qrClientes.Parameters[0].Value:= qrEntradaPacientePacienteId.Value;
  dmb.qrClientes.Open;

  TipoCliente:= dmb.qrClientesTIPOCLIENTE.Value;
  GrupoCliente:= dmb.qrClientesGRUPOCLIENTE.Value;

  if qrEntradaPacienteDetalle.Eof then
    begin
      qrEntradaPacienteDetalle.Insert;
        qrEntradaPacienteDetallePRUEBAID.Value:= ProductoId;
        qrEntradaPacienteDetalleCodigoId.Value:= CodigoId;
        qrEntradaPacienteDetalleDESCRIPCION.Value:= qrProductoProductoDes.Value;
        qrEntradaPacienteDetalleRECID.Value:= qrEntradaPacienteRECID.Value;
       // Precio:= DMB.GetPrecio(ProductoId,DMB.getTipoCliente(qrEntradaPacientePacienteId.Value));
          Precio:= BuscarPrecio(ProductoId, TipoCliente, GrupoCliente);
        if (Precio < 0.01) then DM.Error(' Producto con precio en Cero. ');
        qrEntradaPacienteDetallePRECIO.Value:= Precio;
        qrEntradaPacienteDetalleTOTALLINEA.Value:= Precio * Cantidad;
        qrEntradaPacienteDetalleDATAAREAID.Value:= qrEntradaPacienteDATAAREAID.Value;
      qrEntradaPacienteDetalle.Post;

    end;

  qrPrecio.Close;
  qrPrecio.Parameters[0].Value:= qrEntradaPacienteRECID.Value;
  qrPrecio.Open;

  qrEntradaPaciente.Edit;
  
    qrEntradaPacienteBruto.Value:= qrPrecioTotalLinea.Value;
    qrEntradaPacienteNeto.Value:= qrPrecioTotalLinea.Value;
    qrEntradaPacienteTotalPendiente.Value:= qrPrecioTotalLinea.Value;

  qrEntradaPaciente.Post;

end;

function TBV.AddADetAntVenta;
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
    qrEntradaPacienteDetallePRECIO.Value:=
      DMB.GetPrecio(ProductoId,
        DMB.getTipoCliente(qrEntradaPacientePacienteId.Value));
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
