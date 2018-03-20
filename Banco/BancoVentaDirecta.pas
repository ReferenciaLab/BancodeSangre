unit BancoVentaDirecta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, dxLayoutControl, cxGrid,
  ADODB, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxPC, cxDBEdit, cxCheckBox,
  cxLabel, cxMemo, cxSpinEdit, cxTimeEdit, cxGroupBox, cxBlobEdit, ppComm,
  ppRelatv, ppDB, ppDBPipe, DBCtrls, DBActns, cxDBLookupComboBox;

type
  TfrmBancoVentaDirecta = class(TfrmCustomModule)
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dsDatos: TDataSource;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dsPaciente: TDataSource;
    dsDonacion: TDataSource;
    dsDonante: TDataSource;
    qrPaciente: TADOQuery;
    qrDonacion: TADOQuery;
    qrDonante: TADOQuery;
    qrDonantePacienteID: TStringField;
    qrDonanteTipoDonante: TWideStringField;
    qrDonanteEstado: TWideStringField;
    qrDonanteRechaso: TWideStringField;
    qrDonanteRechasoNota: TWideStringField;
    qrEntradaPaciente: TADOQuery;
    qrEntradaPacienteDetalle: TADOQuery;
    qrEntradaPacienteDetallePruebaID: TStringField;
    qrEntradaPacienteDetalleComboPruebaID: TStringField;
    qrEntradaPacienteDetallePrecio: TBCDField;
    qrEntradaPacienteDetalleDescuento: TBCDField;
    qrEntradaPacienteDetalleDescuentoExtra: TBCDField;
    qrEntradaPacienteDetalleCodigoAutorizacion: TStringField;
    qrEntradaPacienteDetalleTotalLinea: TBCDField;
    qrEntradaPacienteDetalleRefRecid: TLargeintField;
    qrEntradaPacienteDetalleSecuencia: TLargeintField;
    qrEntradaPacienteDetalleDescripcion: TStringField;
    qrEntradaPacienteDetalleDescPct: TBCDField;
    qrEntradaPacienteDetalleCoberturaAplica: TBooleanField;
    qrEntradaPacienteDetalleCoberturaEspecial: TBCDField;
    qrEntradaPacienteDetalleCoberturaEspecialPorc: TBCDField;
    qrEntradaPacienteDetalleCoberturaAplicada: TBCDField;
    qrEntradaPacienteDetalleDescuentoLineaAplicado: TBCDField;
    qrEntradaPacienteDetalleMuestraNo: TStringField;
    qrEntradaPacienteDetalleComentario: TMemoField;
    qrEntradaPacienteDetalleCoberturaExpPorc: TBooleanField;
    qrEntradaPacienteDetalleRepMuestra: TBooleanField;
    qrEntradaPacienteDetalleMuestraAnt: TStringField;
    dsEntradaPacienteDetalle: TDataSource;
    dsEntradaPaciente: TDataSource;
    ppEntradaPaciente: TppDBPipeline;
    ppEntradaPacienteDetalle: TppDBPipeline;
    qrPacienteClienteID: TStringField;
    qrPacienteNombre: TStringField;
    qrPacienteContacto: TStringField;
    qrPacienteTelefono: TStringField;
    qrPacienteFax: TStringField;
    qrPacienteGrupoCliente: TStringField;
    qrPacienteIncluirPrecioTicket: TBooleanField;
    qrPacienteAutoConfirmar: TBooleanField;
    qrPacienteEmpleadoID: TStringField;
    qrPacienteCodigoAxapta: TStringField;
    qrPacienteemail: TStringField;
    qrPacientedireccionweb: TStringField;
    qrPacienteTelefono2: TStringField;
    qrPacienteMonedaID: TStringField;
    qrPacienteIdentificacion: TStringField;
    qrPacienteOrigen: TIntegerField;
    qrPacienteDireccion: TMemoField;
    qrPacienteCiudadID: TStringField;
    qrPacientePruebasPorDia: TSmallintField;
    qrPacienteCoberturaPorc: TBCDField;
    qrPacientePrincipal: TStringField;
    qrPacienteEnvioResultado: TIntegerField;
    qrPacientePublicarInternet: TBooleanField;
    qrPacienteSexo: TIntegerField;
    qrPacienteFechaNacimiento: TDateTimeField;
    qrPacienteSeguro: TStringField;
    qrPacientePoliza: TStringField;
    qrPacienteCobrarDiferencia: TBooleanField;
    qrPacienteEnviarFax: TBooleanField;
    qrPacienteActivarDescuentos: TBooleanField;
    qrPacienteUsarAliasNombre: TBooleanField;
    qrPacienteUsarAliasPrueba: TBooleanField;
    qrPacienteSiempreInternet: TBooleanField;
    qrPacienteImprimirAliasNombre: TBooleanField;
    qrPacienteImprimirAliasPrueba: TBooleanField;
    qrPacienteImprimirSoloTotales: TBooleanField;
    qrPacienteImprimirAliasResultados: TBooleanField;
    qrPacienteAlias: TStringField;
    qrPacienteQuienPaga: TStringField;
    qrPacienteTipoCliente: TStringField;
    qrPacienteEntregarResultados: TStringField;
    qrPacienteTextoReferencia: TStringField;
    qrPacienteSiempreImprimir: TBooleanField;
    qrPacienteTipoSangre: TStringField;
    qrPacientePacienteCiaId: TStringField;
    qrDonanteDonanteActivo: TSmallintField;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetDelete2: TDataSetDelete;
    qrDetalles: TADOQuery;
    dsDetalles: TDataSource;
    ActDetalles: TAction;
    qrDonacionDonacionID: TStringField;
    qrDonacionFecha: TDateTimeField;
    qrDonacionPacienteID: TStringField;
    qrDonacionNotaEntrevista: TMemoField;
    qrDonacionDonacionStatus: TWideStringField;
    qrDonacionDonacionEstado: TStringField;
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
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    Item3: TdxLayoutItem;
    cgDatos: TcxGrid;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    Group2: TdxLayoutGroup;
    Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    Item7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    Item8: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    cxButton2: TcxButton;
    Item9: TdxLayoutItem;
    qrReceptor: TADOQuery;
    dsReceptor: TDataSource;
    qrReceptorNombre: TStringField;
    cxDBTextEdit7: TcxDBTextEdit;
    Item13: TdxLayoutItem;
    cxButton3: TcxButton;
    Item15: TdxLayoutItem;
    ActFindReceptor: TAction;
    ActFindDoctor: TAction;
    Group8: TdxLayoutGroup;
    Item16: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    Group6: TdxLayoutGroup;
    Group7: TdxLayoutGroup;
    qrDoctor: TADOQuery;
    dsDoctor: TDataSource;
    qrDoctorDoctorID: TStringField;
    qrDoctorNombre: TStringField;
    qrDonanteRH: TWideStringField;
    qrDonanteTipoSangre: TWideStringField;
    cxMemo1: TcxMemo;
    Item20: TdxLayoutItem;
    ActLiberarReservacion: TAction;
    Group9: TdxLayoutGroup;
    Group10: TdxLayoutGroup;
    Group3: TdxLayoutGroup;
    Group5: TdxLayoutGroup;
    Group11: TdxLayoutGroup;
    Group13: TdxLayoutGroup;
    cxButton5: TcxButton;
    Item22: TdxLayoutItem;
    ActReservar: TAction;
    ActDespachar: TAction;
    ActLiberar: TAction;
    ActBaja: TAction;
    Item25: TdxLayoutItem;
    cxButton7: TcxButton;
    ActCaja: TAction;
    Item18: TdxLayoutItem;
    cxProductos: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton8: TcxButton;
    Item23: TdxLayoutItem;
    ActCancelar: TAction;
    qrEntradaPacienteRECID: TAutoIncField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteSUCURSALID: TStringField;
    qrEntradaPacienteUSERID: TStringField;
    qrEntradaPacienteESTATUS: TIntegerField;
    qrEntradaPacienteDATAAREAID: TStringField;
    tbEntradaPacienteDetalle: TADOTable;
    ActCurzar: TAction;
    cxGridDBTableView1CodigoId: TcxGridDBColumn;
    cxGridDBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGridDBTableView1COMENTARIO: TcxGridDBColumn;
    DataSetDelete3: TDataSetDelete;
    tbEntradaPacienteDetalleCondec: TAutoIncField;
    tbEntradaPacienteDetalleRECID: TIntegerField;
    tbEntradaPacienteDetalleProductoId: TStringField;
    tbEntradaPacienteDetalleCodigoId: TStringField;
    tbEntradaPacienteDetalleDESCRIPCION: TStringField;
    tbEntradaPacienteDetallePRECIO: TBCDField;
    tbEntradaPacienteDetalleCOMENTARIO: TStringField;
    tbEntradaPacienteDetalleESTATUS: TStringField;
    tbEntradaPacienteDetalleResultado: TStringField;
    tbEntradaPacienteDetalleReservadoHasta: TDateTimeField;
    qrEntradaPacienteStatus: TWideStringField;
    qrProducto: TADOQuery;
    dsProducto: TDataSource;
    qrProductoProductoID: TWideStringField;
    qrProductoProductoDes: TWideStringField;
    qrDetallesProductoID: TWideStringField;
    qrDetallesProductoDes: TWideStringField;
    qrDetallesPrecio: TBCDField;
    qrDetallesPrecioDolares: TBCDField;
    qrDetallesDias: TIntegerField;
    qrDetallesPermiteCambioPrecio: TBooleanField;
    qrDetallesCodigoAxapta: TStringField;
    qrDetallesCosto: TBCDField;
    qrDetallesExterior: TBooleanField;
    qrDetallesFacturarCabecera: TBooleanField;
    qrDetallesTipo: TBooleanField;
    qrDetallesNecesitaCruce: TBooleanField;
    qrDetallesServicio: TBooleanField;
    qrDetallesInicial: TBooleanField;
    qrDetallesAnticipo: TBooleanField;
    dbDatosProductoID: TcxGridDBColumn;
    dbDatosProductoDes: TcxGridDBColumn;
    dbDatosPrecio: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActDespacharExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActCajaExecute(Sender: TObject);
    procedure ActReservarExecute(Sender: TObject);
    procedure ActLiberarReservacionExecute(Sender: TObject);
    procedure qrDetallesProductoIDChange(Sender: TField);
    procedure cxDBTextEdit7PropertiesChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBTextEdit5PropertiesChange(Sender: TObject);
    procedure ActDetallesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    Procedure NuevaEntrada;
    procedure Add(ProductoId: string);
    Procedure LiberarCaja;
  public
    { Public declarations }
  end;

var
  frmBancoVentaDirecta: TfrmBancoVentaDirecta;

implementation
uses
  Main, DataModule, DataBanco, DialogoTipoDonacion, DialogoEntrevista,
  BancoVenta, BancoReportes;
{$R *.dfm}

procedure TfrmBancoVentaDirecta.LiberarCaja;
begin

  tbEntradaPacienteDetalle.First;

  while not tbEntradaPacienteDetalle.Eof do
    begin
      BV.SacarCaja(tbEntradaPacienteDetalleCodigoId.Value);
      tbEntradaPacienteDetalle.Next;
    end;
    
end;

procedure TfrmBancoVentaDirecta.Add(ProductoId: string);
begin

  qrProducto.Close;
  qrProducto.Parameters[0].Value:= ProductoId;
  qrProducto.Open;

  tbEntradaPacienteDetalle.Insert;
    tbEntradaPacienteDetalleProductoId.Value:= ProductoId;
    tbEntradaPacienteDetalleDescripcion.Value:= qrProductoProductoDes.Value;
    //tbEntradaPacienteDetalleCodigoId.Value:= CodigoId;
  tbEntradaPacienteDetalle.Post;
end;

procedure TfrmBancoVentaDirecta.NuevaEntrada;
begin

  qrEntradaPaciente.Insert;
  qrEntradaPacienteDATAAREAID.Value:= '050';
  qrEntradaPaciente.Post;
  qrEntradaPaciente.Edit;

  tbEntradaPacienteDetalle.Close;
  tbEntradaPacienteDetalle.Open;

end;

procedure TfrmBancoVentaDirecta.ActCajaExecute(Sender: TObject);
begin
  inherited;
  //Envio a caja
  if (qrEntradaPaciente.State in [dsInsert, dsEdit]) then
    qrEntradaPaciente.Post;

  if (trim(cxDBTextEdit5.Text) = '') then
    begin
      DM.Warning('Seleccione un paicente.');
      Exit;
    end;

  if tbEntradapacienteDetalle.Eof then
    begin
      DM.Warning('Seleccione productos enviar a caja.');
      Exit;
    end;

  tbEntradaPacienteDetalle.First;

  BV.AddAVenta(
   qrEntradaPacientePacienteId.Value,
    qrEntradaPacienteDOCTORID.Value,
    qrEntradaPacienteFECHAPROMETIDA.AsString);


  while not tbEntradaPacienteDetalle.Eof do
    begin

      BV.AddADetAntVenta(
          tbEntradaPacienteDetalleProductoId.Value,
          tbEntradaPacienteDetalleCodigoId.Value
      );

      tbEntradaPacienteDetalle.Next;

    end;

  NuevaEntrada;

end;

procedure TfrmBancoVentaDirecta.ActCancelarExecute(Sender: TObject);
begin
  inherited;

  //Eliminar actual de envio preparado

end;

procedure TfrmBancoVentaDirecta.ActDespacharExecute(Sender: TObject);
begin
  inherited;

  Add(qrDetallesProductoId.Value);

end;

procedure TfrmBancoVentaDirecta.ActDetallesExecute(Sender: TObject);
begin
  inherited;

  qrDetalles.Close;
  qrDetalles.Open;

  //qrDonante.Close;
  //qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDetallesPacienteID.Value;
  //qrDonante.Open;

end;


procedure TfrmBancoVentaDirecta.ActLiberarReservacionExecute(Sender: TObject);
begin
  inherited;

  //DMB.LiberarReservacion(qrDetallesCodigoId.Value, cxMemo2.Text);

end;

procedure TfrmBancoVentaDirecta.ActReservarExecute(Sender: TObject);
begin
  inherited;

//  Add('RS', qrDetallesCodigoId.AsString);

end;

procedure TfrmBancoVentaDirecta.cxButton2Click(Sender: TObject);
begin
  inherited;

  if not (qrEntradaPaciente.State in [dsEdit, dsInsert]) then
    qrEntradaPaciente.Edit;

  qrEntradaPacientePACIENTEID.Value:= DMB.BuscarPaciente;

  qrEntradaPaciente.Post;
  qrEntradaPaciente.Edit;

  //frmMain.LanzaVentana(-6002);

end;

procedure TfrmBancoVentaDirecta.cxButton3Click(Sender: TObject);
begin
  inherited;

  if not (qrEntradaPaciente.State in [dsEdit, dsInsert]) then
    qrEntradaPaciente.Edit;

  qrEntradaPacienteDoctorID.Value:= DMB.BuscarDoctor;

   qrEntradaPaciente.Post;
  qrEntradaPaciente.Edit;

end;

procedure TfrmBancoVentaDirecta.cxDBTextEdit5PropertiesChange(Sender: TObject);
begin
  inherited;

  if (trim(cxDBTextEdit5.Text) = '' ) then
    begin
      cxDBTextEdit3.Text:= '';
      Exit;
    end;

  qrReceptor.Close;
  qrReceptor.Parameters.ParamByName('PacienteId').Value:= cxDBTextEdit5.Text;
  qrReceptor.Open;

end;

procedure TfrmBancoVentaDirecta.cxDBTextEdit7PropertiesChange(Sender: TObject);
begin
  inherited;

  if (trim(cxDBTextEdit7.Text) = '') then
    begin
      qrDoctor.Parameters.ParamByName('DoctorId').Value:= '';
      cxDBTextEdit9.Text:= '';
      Exit;
    end;

  qrDoctor.Close;
  qrDoctor.Parameters.ParamByName('DoctorId').Value:= cxDBtextEdit7.Text;
  qrDoctor.Open;

end;

procedure TfrmBancoVentaDirecta.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  LiberarCaja;

  inherited;

end;

procedure TfrmBancoVentaDirecta.FormCreate(Sender: TObject);
begin
  inherited;

  DMB.qrBancoInventario.Close;
  DMB.qrBancoInventario.Open;

  qrProducto.Close;
  qrproducto.Open;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.Open;

  tbEntradaPacienteDetalle.Close;
  tbEntradaPacienteDetalle.Open;

  ActDetallesExecute(Sender);

  NuevaEntrada;

end;

procedure TfrmBancoVentaDirecta.qrDetallesProductoIDChange(Sender: TField);
begin
  inherited;

  qrDoctor.Close;
  qrDoctor.Parameters.ParamByName('DoctorId').Value:= cxDBtextEdit7.Text;
  qrDoctor.Open;

end;

end.
