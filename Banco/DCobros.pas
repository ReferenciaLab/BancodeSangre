unit DCobros;

interface

uses
  SysUtils, Classes, DB, dxmdaset, ADODB, RpDefine, RpRave, RpCon, RpConDS;

type
  TdmCobros = class(TDataModule)
    mdPago: TdxMemData;
    mdPagoFormaDePago: TStringField;
    mdPagoOrden: TSmallintField;
    mdPagoPagado: TCurrencyField;
    mdPagoFormaPagoID: TStringField;
    mdPagorefrecid: TLargeintField;
    mdPagoMoneda: TStringField;
    dsPago: TDataSource;
    qrCobro: TADOQuery;
    qrCobroCobroID: TStringField;
    qrCobroTurnoID: TStringField;
    qrCobroEntradaID: TStringField;
    qrCobroSucursalID: TStringField;
    qrCobroFecha: TDateTimeField;
    qrCobroHora: TStringField;
    qrCobroPacienteID: TStringField;
    qrCobroPacientePrincipalID: TStringField;
    qrCobroUsuarioID: TStringField;
    qrCobroTotalCobrado: TBCDField;
    qrCobrorefRecid: TLargeintField;
    qrCobroTotalFactura: TBCDField;
    qrCobroTotalPagado: TBCDField;
    qrCobroPendienteFactura: TBCDField;
    qrCobroPendienteCobro: TBCDField;
    qrCobroReciboNo: TStringField;
    qrCobroClienteID: TStringField;
    qrCobroAplicado: TBooleanField;
    qrCobroSecuencia: TLargeintField;
    qrCobroMonedaID: TStringField;
    qrCobroTipoDoc: TStringField;
    qrCobroCuadreGlobal: TStringField;
    qrCobroCuadreUsuario: TStringField;
    qrCobroConcepto: TStringField;
    qrCobroDetalle: TADOQuery;
    qrCobroDetalleCobroID: TStringField;
    qrCobroDetalleFormaDePagoID: TStringField;
    qrCobroDetalleMonto: TBCDField;
    qrCobroDetalleOrden: TIntegerField;
    qrCobroDetallerecid: TLargeintField;
    qrCobroDetalleRefRecid: TLargeintField;
    qrCobroDetalleMonedaID: TStringField;
    qrCobroDetalleMontoMST: TBCDField;
    tbFormaPago: TADOTable;
    dsCobroDetalle: TDataSource;
    tbFormaPagoFormaDePagoID: TStringField;
    tbFormaPagoOrden: TIntegerField;
    tbFormaPagoDescripcion: TStringField;
    tbFormaPagoMoneda: TStringField;
    qrTotal: TADOQuery;
    qrTotalMonto: TBCDField;
    cmdInsertarFormasCobros: TADOCommand;
    qrCuadreGlobal: TADOQuery;
    qrCuadreUsuario: TADOQuery;
    qrCuadreUsuarioNumero: TIntegerField;
    qrCuadreGlobalNumero: TIntegerField;
    qrTemporalCorte: TADOQuery;
    qrTemporalCorteUltimo: TIntegerField;
    qrSumaCorte: TADOQuery;
    qrSumaCorteTotal: TBCDField;
    qrCorteEfectivo: TADOQuery;
    qrCorteOtros: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    BCDField1: TBCDField;
    qrCorteEfectivoId: TIntegerField;
    qrCorteEfectivoCorteId: TStringField;
    qrCorteEfectivoForma: TStringField;
    qrCorteEfectivoTipo: TStringField;
    qrCorteEfectivoDenominacion: TBCDField;
    qrCorteEfectivoCantidad: TIntegerField;
    qrCorteEfectivoTotal: TBCDField;
    rvCorte: TRvProject;
    qrListaCorteEfectivo: TADOQuery;
    rvListaCorteEfectivo: TRvDataSetConnection;
    qrListaOperaciones: TADOQuery;
    rvListaOperaciones: TRvDataSetConnection;
    qrListaOperacionesTipo: TStringField;
    qrListaOperacionesFormaDePagoId: TStringField;
    qrListaOperacionesValor: TBCDField;
    qrCobrosUsuarios: TADOQuery;
    rvCobrosUsuarios: TRvDataSetConnection;
    qrDetalle: TADOQuery;
    rvDetalle: TRvDataSetConnection;
    qrDetallePRUEBAID: TStringField;
    qrDetalleDESCRIPCION: TStringField;
    qrDetalleCantidad: TIntegerField;
    qrDetalleTotal: TBCDField;
    qrListaCorteEfectivoCorteId: TStringField;
    qrListaCorteEfectivoFecha: TDateTimeField;
    qrListaCorteEfectivoHora: TStringField;
    qrListaCorteEfectivoUsuario: TStringField;
    qrListaCorteEfectivoPago: TStringField;
    qrListaCorteEfectivoSucursalId: TStringField;
    qrListaCorteEfectivoVenta: TBCDField;
    qrListaCorteEfectivoCaja: TBCDField;
    qrListaCorteEfectivoDiferencia: TBCDField;
    qrCobrosUsuariosUsuario: TStringField;
    qrCobrosUsuariosTotal: TBCDField;
    qrCobrosUsuariosCheque: TBCDField;
    qrCobrosUsuariosEfectivo: TBCDField;
    qrCobrosUsuariosTarjeta: TBCDField;
    qrCobrosUsuariosOtros: TBCDField;
    qrDescuento: TADOQuery;
    rvDescuento: TRvDataSetConnection;
    qrDescuentoDescuento: TBCDField;
    qrDescuentoNeto: TBCDField;
    qrDescuentoPagado: TBCDField;
    qrDescuentopendiente: TBCDField;
    qrDescuentoTotal: TBCDField;
    procedure qrCorteEfectivoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    _CobroId: String;
    _RecId: Integer;

    procedure CrearCobro(RecId: Integer; Moneda: String = 'RD');
  public
    { Public declarations }
    _Pendiente: Currency;
    _Cobrado: Currency;
    
    function ExisteCobro(RecId: Integer) : Boolean;
    function TipoCobro(RecId: Integer): String;
    procedure LimpiarCobro;
    function TotalCobrado(RecId: String): Currency;
    function Cobrar(RecId: Integer; Pendiente: Currency; Moneda: String = 'RD'): Currency;
    function CancelarCobroFactura(RecId: Integer): Boolean;
    function SumaTotal: currency;
    function ImprimirRecibos(RecId: Integer): boolean;
    function GrabarCobro: String;
    function ImprimirRecibo(CobroId: String): boolean;

    function RegistrosCuadreGlobal: Integer;
    function RegistrosCuadreUsuario(Usuario: String) : Integer;

    function getUltimoTemporalCobro: Integer;
    function getTotalCorte(CorteId: String) : Currency;

    procedure AddFormasCobro(IdCorte: Integer);
    procedure OpenCorte(IdCorte: Integer);
    procedure UpdateCorte(Id: Integer; CorteId: String);

    procedure PrintCorte(CorteId: String);

  end;

var
  dmCobros: TdmCobros;

implementation

uses DataModule, Main, DataBanco, ppTypes;

{$R *.dfm}

procedure tdmCobros.PrintCorte;
begin

  qrListaCorteEfectivo.Close;
  qrListaCorteEfectivo.Parameters[0].Value:= CorteId;
  qrListaCorteEfectivo.Open;

  qrListaOperaciones.Close;
  qrListaOperaciones.Parameters[0].Value:= CorteId;
  qrListaOperaciones.Open;

  qrCobrosUsuarios.Close;
  qrCobrosUsuarios.Parameters[0].Value:= CorteId;
  qrCobrosUsuarios.Open;

  qrDetalle.Close;
  qrDetalle.Parameters[0].Value:= CorteId;
  qrDetalle.Open;

  qrDescuento.Close;
  qrDescuento.Parameters[0].Value:= CorteId;
  qrDescuento.Open;

  if (qrListaCorteEfectivoUsuario.Value = 'GLOBAL') then
    begin
      //Impresion del corte Formato Rave
      rvCorte.ExecuteReport('Global');

    end
  else
    begin
      //Impresion del corte Formato Rave
      rvCorte.ExecuteReport('Corte');
    end;

  qrDescuento.Close;
  qrListaOperaciones.Close;
  qrListaCorteEfectivo.Close;
  qrCobrosUsuarios.Close;
  qrDetalle.Close;

end;

procedure TdmCobros.qrCorteEfectivoBeforePost(DataSet: TDataSet);
begin
  qrCorteEfectivoTotal.Value:=  qrCorteEfectivoCantidad.AsCurrency * qrCorteEfectivoDenominacion.AsCurrency;
end;

procedure tdmCobros.UpdateCorte(Id: Integer; CorteId: string);
begin

  DM.DataBase.Execute(
    ' UPDATE PTCortecajaDet1 ' +
    ' SET CorteId = ''' + trim(CorteId) + '''' +
    ' WHERE Id = ' + IntToStr(Id)
  );

end;

procedure tdmCobros.OpenCorte(IdCorte: Integer);
begin

  qrCorteEfectivo.Close;
  qrCorteEfectivo.Parameters[0].Value:= IdCorte;
  qrCorteEfectivo.Open;

  qrCorteOtros.Close;
  qrCorteOtros.Parameters[0].Value:= IdCorte;
  qrCorteOtros.Open;

end;

function tdmCobros.getTotalCorte;
begin

  qrSumaCorte.Close;
  qrSumaCorte.Open;
    Result:= qrSumaCorteTotal.Value;
  qrSumaCorte.Close;

end;

function tdmCobros.getUltimoTemporalCobro;
begin

  qrTemporalCorte.Close;
  qrTemporalCorte.Open;
    Result:= qrTemporalCorteUltimo.AsInteger;
  qrTemporalCorte.Close;

end;

procedure tdmCobros.AddFormasCobro;
begin

  cmdInsertarFormasCobros.Parameters.ParamByName('Id').Value:= IdCorte;
  cmdInsertarFormasCobros.Execute;

end;

function tdmCobros.RegistrosCuadreGlobal: Integer;
begin

  qrCuadreGlobal.Close;
  qrCuadreGlobal.Open;

    Result:= qrCuadreGlobalNumero.Value;

  qrCuadreGlobal.Close;
  
end;

function tdmCobros.RegistrosCuadreUsuario(Usuario: String) : Integer;
begin

  qrCuadreusuario.Close;
  qrCuadreusuario.Parameters[0].Value:= Usuario;
  qrCuadreusuario.Open;

    Result:= qrCuadreusuarioNumero.Value;

  qrCuadreusuario.Close;

end;

function tdmCobros.ImprimirRecibo;
begin

   DM.qrCobro.Close;
   DM.qrCobro.Parameters[0].Value := CobroID;
   DM.qrCobro.Open;

   if DM.qrCobro.Eof then
    begin
      Result:= false;
      exit;
    end;


   DM.qrEntradaPacienteDetalle.Close;
   DM.qrEntradaPacienteDetalle.Parameters[0].Value := DM.qrCobroRecid.Value;
   DM.qrEntradaPacienteDetalle.Open;

   if DM.qrEntradaPacienteDetalle.Eof then
    begin
      Result:= false;
      exit;
    end;


   DM.qrCobroDetalle.Close;
   DM.qrCobroDetalle.Parameters[0].Value := CobroID;
   DM.qrCobroDetalle.Open;
   if DM.qrCobroDetalle.Eof then
    begin
      Result:= false;
      exit;
    end;

   if DM.qrCobroCoberturaSeguro.value > 0 then
   begin
    DM.ppImpReciboConSeguro.DeviceType := dtScreen;
    DM.ppImpReciboConSeguro.Print;
   end
   else
   begin
    DM.ppImpReciboSinSeguro.DeviceType := dtScreen;
    DM.ppImpReciboSinSeguro.Print;
   end;

end;

function tdmcobros.ImprimirRecibos;
var
  strRecId: String;
begin

  if (RecId = 0) then
    begin
      Result:= false;
      Exit;
    end;

  strRecId:= IntToStr(RecId);
  frmMain.LanzaConsulta(-7994, strRecId);
  Result:= true;

end;

function tdmCobros.GrabarCobro;
begin

  //Obtener la proxima secuencia para el consecutivo de cobros
  DM.qrParametro.Close;
  DM.qrParametro.Open;
  _CobroId := DM.qrParametroSecuencia.AsString;
  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  //Insertar el encabezado del Cobro
  qrCobro.Close;
  qrCobro.Open;

  qrCobro.Insert;
    qrCobroCobroID.Value:= _CobroId;
    qrCobroSucursalID.Value:= DM.CurSucursal;
    qrCobroFecha.Value:= DM.SystemDate;
    qrCobroHora.Value:= TimeToStr(Time);
    qrCobroUsuarioId.Value:= DM.CurUser;
    qrCobroTotalCobrado.Value:= _Cobrado;
    qrCobroRefRecId.Value:= _RecId;

    qrCobroReciboNo.Value:= DMB.GetNextSecDoc('RI');
    qrCobroTipoDoc.Value:= 'RI';

  qrCobro.Post;

  //Insertar el Detalle del Pago en la forma
  qrCobroDetalle.Close;
  qrCobroDetalle.Open;
  mdPago.First;
  while not mdPago.eof do
    begin
//      if qrCobroDetalleMonto.Value > 0 then
//        begin
          qrCobroDetalle.Insert;
          qrCobroDetalleCobroId.Value      := _CobroId;
          qrCobroDetalleFormaDePagoId.Value:= mdPagoFormaPagoId.Value;
          qrCobroDetalleMonto.Value        := mdPagoPagado.Value;
          qrCobroDetalleOrden.Value        := mdPagoOrden.Value;
          qrCobroDetallerefRecId.Value     := _RecId;
          qrCobroDetalleMonedaId.Value     := mdPagoMoneda.Value;
          qrCobroDetalleMontoMST.Value     := mdPagoPagado.Value;
          qrCobroDetalle.Post;
//        end;
        mdPago.Next;
    end;
    Result:= _CobroId;

end;

function TdmCobros.SumaTotal;
var
  Total: Currency;
begin

  mdPago.First;
  total := 0;
  While Not mdPago.Eof do
    Begin
      total := total + mdPagoPagado.Value;
      mdPago.Next;
   End;

  {If (total > _Pendiente) Then
    Begin
     DM.Info('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.');
     //Raise exception.CreateFmt('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.', []);
    end;}

    Result:= Total;

    mdPago.First;

end;


function tdmCobros.Cobrar;
begin

  _Pendiente:= Pendiente;
  _RecId:= RecId;

  //if Not ExisteCobro(RecId) then
  CrearCobro(RecId, Moneda);

  frmMain.LanzaVentana(-8010);

  Result:= _Cobrado;

end;

function TdmCobros.TotalCobrado;
begin

  qrTotal.Close;
  qrTotal.Parameters[0].Value:= RecId;
  qrTotal.Open;

    Result:= qrTotalMonto.AsCurrency;

  qrTotal.Close;

end;

function tdmCobros.CancelarCobroFactura;
var
  strRecId: String;
begin

  if (RecId = 0) then exit;

  strRecId:= IntToStr(RecId);

  DM.DataBase.Execute('Delete from PTCobro Where RefRecId = ''' + strRecId + '''' );
  DM.DataBase.Execute('DELETE FROM PTCobroDetalle WHERE RefRecId = ''' + strRecId + '''');

end;

procedure TdmCobros.CrearCobro;
begin

  LimpiarCobro;

  tbFormaPago.Close;
  tbFormaPago.Open;

  tbFormaPago.Filtered:= false;
  tbFormaPago.Filter:= ' Moneda = ''' + Moneda + ''' ';
  tbFormaPago.Filtered:= True;


  while not tbFormaPago.Eof do
    begin

       mdPago.Insert;
         mdPagoFormaPagoID.Value := tbFormaPagoFormaDePagoId.AsString;
         mdPagoFormaDePago.Value := tbFormaPagoDescripcion.AsString;
         mdPagoPagado.Value := 0;
         mdPagoOrden.Value := tbFormaPagoOrden.AsInteger;
         mdPagorefrecid.Value := RecId;
         mdPagoMoneda.Value := tbFormaPagoMoneda.AsString;
       mdPago.Post;

       tbFormaPago.Next;

       mdPago.First;

    end;

  tbFormaPago.Close;


end;

procedure TdmCobros.LimpiarCobro;
begin

  //Limpiar Detalle de Pago
  mdPago.Close;
  mdPago.Open;
  mdPago.First;

  while not mdPago.Eof do
    begin
      mdPago.Delete;
      mdPago.Next;
    end;

  mdPago.First;

end;

function TdmCobros.TipoCobro;
begin

  qrCobro.Close;
  qrCobro.Parameters[0].Value:= RecId;
  qrCobro.Open;

    Result:= qrCobroTipoDoc.AsString;

  qrCobro.Close;

end;

function TdmCobros.ExisteCobro;
begin

  qrTotal.Close;
  qrTotal.Parameters[0].Value:= RecId;
  qrTotal.Open;

    Result:= (qrTotalMonto.AsCurrency > 0);

  qrTotal.Close;

end;

end.

{
ESTE SCRIPT DE SQL ESTABA EN EL QUERY qrListaCorteEfectivo Y FUE
CAMBIADO POR QUE NO SE AJUSTABA A LO REQUERIDO

SELECT
  BSFormasPagos.OrdenImpresion,
  PTCorteCajaDet1.CorteId,
  PTCorteCajaCab.Fecha,
  PTCorteCajaCab.Hora,
  PTCorteCajaCab.Usuario,
  ISNULL(PTCorteCajaDet.FormaDePagoId, PTCorteCajaDet1.Forma) AS Pago,
  PTCorteCajaCab.SucursalId,
  ISNULL(SUM(PTCorteCajaDet.Valor), 0) AS Venta,
  ISNULL(SUM(PTCorteCajaDet1.Total), 0) AS Caja,
  ISNULL(isnull(SUM(PTCorteCajaDet1.Total),0) - isnull(SUM(PTCorteCajaDet.Valor),0), 0) AS Diferencia
FROM
  PTCorteCajaCab LEFT JOIN
  PTCorteCajaDet ON PTCorteCajaCab.CorteId = PTCorteCajaDet.CorteID 
	right JOIN
  ( SELECT     CorteId, Forma, SUM(Total) AS Total
      FROM         dbo.PTCorteCajaDet1
      GROUP BY CorteId, Forma ) PTCorteCajaDet1 ON PTCorteCajaDet1.CorteId = PTCorteCajaDet.CorteID
  AND PTCorteCajaDet1.Forma = PTCorteCajaDet.FormaDePagoId
  join dbo.BSFormasPagos on BSFormasPagos.forma = PTCorteCajaDet1.forma
WHERE
  PTCorteCajaDet1.CorteId = :CorteId
GROUP BY
  BSFormasPagos.OrdenImpresion,
  PTCorteCajaDet1.CorteId,
  PTCorteCajaCab.Fecha,
  PTCorteCajaCab.Hora,
  PTCorteCajaCab.Usuario,
  ISNULL(PTCorteCajaDet.FormaDePagoId, PTCorteCajaDet1.Forma),
  PTCorteCajaCab.SucursalId
order by BSFormasPagos.OrdenImpresion


}
