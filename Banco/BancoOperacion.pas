unit BancoOperacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, CustomModule, ppComm, ppRelatv, ppDB, ppDBPipe, DBActns, cxMemo,
  cxCheckBox, cxDBEdit, cxCalendar, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab;

type
  TfrmBancoOperacion = class(Tform)
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
    qrEntradaPacienteEntredaID: TStringField;
    qrEntradaPacienteFecha: TDateTimeField;
    qrEntradaPacientePacienteID: TStringField;
    qrEntradaPacienteClienteID: TStringField;
    qrEntradaPacienteDoctorID: TStringField;
    qrEntradaPacientePolizaID: TStringField;
    qrEntradaPacienteEnClinica: TBooleanField;
    qrEntradaPacienteRecordClinica: TStringField;
    qrEntradaPacienteResultadoPaciente: TIntegerField;
    qrEntradaPacienteResultadoDoctor: TIntegerField;
    qrEntradaPacienteFechaPrometida: TDateTimeField;
    qrEntradaPacienteHoraPrometida: TStringField;
    qrEntradaPacienteFlebotomistaID: TStringField;
    qrEntradaPacienteNota: TMemoField;
    qrEntradaPacienteCoberturaConfirmada: TBooleanField;
    qrEntradaPacienteProyectoID: TStringField;
    qrEntradaPacienteRecid: TLargeintField;
    qrEntradaPacienteBruto: TBCDField;
    qrEntradaPacienteDescuento: TBCDField;
    qrEntradaPacienteSubTotal: TBCDField;
    qrEntradaPacienteCoberturaSeguro: TBCDField;
    qrEntradaPacienteNeto: TBCDField;
    qrEntradaPacienteNombrePaciente: TStringField;
    qrEntradaPacienteDireccion: TMemoField;
    qrEntradaPacienteTelefonos: TStringField;
    qrEntradaPacienteEmail: TStringField;
    qrEntradaPacienteClienteNombre: TStringField;
    qrEntradaPacienteSucursalId: TStringField;
    qrEntradaPacienteUserID: TStringField;
    qrEntradaPacienteTotalPendiente: TFloatField;
    qrEntradaPacienteCobroID: TStringField;
    qrEntradaPacienteTotalPagado: TBCDField;
    qrEntradaPacienteHoraEntrada: TStringField;
    qrEntradaPacientePrioridad: TIntegerField;
    qrEntradaPacienteFax: TStringField;
    qrEntradaPacienteTipoDocumento: TIntegerField;
    qrEntradaPacienteCoberturaPorc: TBCDField;
    qrEntradaPacienteCoberturaValor: TBCDField;
    qrEntradaPacienteDescuentoPorc: TBCDField;
    qrEntradaPacienteDescuentoValor: TBCDField;
    qrEntradaPacienteAprobadoPor: TStringField;
    qrEntradaPacienteMuestraNo: TStringField;
    qrEntradaPacienteAprobacionNo: TStringField;
    qrEntradaPacienteMonedaID: TStringField;
    qrEntradaPacienteFechaEntrada: TDateTimeField;
    qrEntradaPacienteCoberturaExpPorc: TBooleanField;
    qrEntradaPacienteEdadPaciente: TBCDField;
    qrEntradaPacienteNombreDoctor: TStringField;
    qrEntradaPacientePublicarInternet: TBooleanField;
    qrEntradaPacienteOrigen: TStringField;
    qrEntradaPacienteCarnet: TStringField;
    qrEntradaPacientePublicarInternetDoctor: TBooleanField;
    qrEntradaPacienteCuadreGlobal: TStringField;
    qrEntradaPacienteCuadreUsuario: TStringField;
    qrEntradaPacienteDescAutorizadoPor: TStringField;
    qrEntradaPacienteGastosVarios: TBCDField;
    qrEntradaPacienteNoAS400: TBooleanField;
    qrEntradaPacienteNoAxapta: TBooleanField;
    qrEntradaPacienteNoFactura: TBooleanField;
    qrEntradaPacienteFactExterior: TBooleanField;
    qrEntradaPacienteHold: TBooleanField;
    qrEntradaPacienteRepMuestra: TBooleanField;
    qrEntradaPacienteEntradaIdAnt: TStringField;
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
    qrDetallesProductoID: TWideStringField;
    qrDetallesCantidad: TBCDField;
    qrDetallesFecha: TDateTimeField;
    qrDetallesDonacionId: TStringField;
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
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    qrDetallesReservado: TBooleanField;
    cxButton1: TcxButton;
    Item1: TdxLayoutItem;
    Item4: TdxLayoutItem;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Item3: TdxLayoutItem;
    cgDatos: TcxGrid;
    dbDatos: TcxGridDBTableView;
    dbDatosCodigoId: TcxGridDBColumn;
    dbDatosCantidad: TcxGridDBColumn;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosHora: TcxGridDBColumn;
    dbDatosDonacionId: TcxGridDBColumn;
    dbDatosReservado: TcxGridDBColumn;
    lvDatos: TcxGridLevel;
    qrDetallesCodigoId: TStringField;
    Group1: TdxLayoutGroup;
    Item2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    Item5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    qrDetallesNombrePaciente: TStringField;
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
    qrDetallesProcesoID: TWideStringField;
    qrDetallesReservadoHasta: TDateTimeField;
    qrDetallesDias: TIntegerField;
    qrDetallesCruce: TBooleanField;
    qrDetallesCrucePacienteId: TStringField;
    qrDetallesDisponible: TBooleanField;
    qrDetallesPacienteID: TStringField;
    Item10: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    Group3: TdxLayoutGroup;
    Group4: TdxLayoutGroup;
    qrReceptorNombre: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    Item11: TdxLayoutItem;
    Group5: TdxLayoutGroup;
    Item12: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    qrDetallesHora: TStringField;
    cxDBTextEdit7: TcxDBTextEdit;
    Item13: TdxLayoutItem;
    Item14: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
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
    qrDetallesVence: TDateTimeField;
    qrDonanteRH: TWideStringField;
    qrDonanteTipoSangre: TWideStringField;
    cxDBTextEdit10: TcxDBTextEdit;
    Item19: TdxLayoutItem;
    cxMemo1: TcxMemo;
    Group13: TdxLayoutGroup;
    Item20: TdxLayoutItem;
    ActLiberarReservacion: TAction;
    cxDBTextEdit11: TcxDBTextEdit;
    Item17: TdxLayoutItem;
    qrDetallesTipoSangre: TWideStringField;
    qrDetallesRH: TWideStringField;
    dbDatosProductoID: TcxGridDBColumn;
    dbDatosTipoSangre: TcxGridDBColumn;
    dbDatosRH: TcxGridDBColumn;
    procedure cxDBTextEdit11PropertiesChange(Sender: TObject);
    procedure ActLiberarReservacionExecute(Sender: TObject);
    procedure qrDetallesProductoIDChange(Sender: TField);
    procedure cxDBTextEdit7PropertiesChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBTextEdit6PropertiesChange(Sender: TObject);
    procedure cxDBTextEdit5PropertiesChange(Sender: TObject);
    procedure ActDetallesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure run;
  end;

var
  frmBancoOperacion: TfrmBancoOperacion;

implementation
uses Main, DataModule, DataBanco, DialogoTipoDonacion, DialogoEntrevista,DialogConsulta;
{$R *.dfm}

procedure TfrmBancoOperacion.run;
Var
 qfind : TADOQuery;
begin
 frmBancoOperacion.showmodal;
 {if ModalResult = mrOk then
 begin
  frmMain.frmTmp.qrEntradaPacienteDetalle.Insert;

  frmMain.frmTmp.qrEntradaPacienteDetallePruebaID.Value := qrDetallesCodigoId.Value;
  frmMain.frmTmp.qrEntradaPacienteDetalleDescripcion.Value := qrBancoInventarioProductoDes.Value;
  frmMain.frmTmp.qrEntradaPacienteDetallePrecio.Value := qrBancoInventarioPrecio.Value;


  frmMain.frmTmp.qrEntradaPacienteDetalle.Post;

 end; }
end;


procedure TfrmBancoOperacion.ActDetallesExecute(Sender: TObject);
begin
  inherited;

  qrDetalles.Close;
  qrDetalles.Parameters.ParamByName('ProductoId').Value:= DMB.qrBancoInventarioProductoID.Value;
  qrDetalles.Open;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDetallesPacienteID.Value;
  qrDonante.Open;

end;


procedure TfrmBancoOperacion.ActLiberarReservacionExecute(Sender: TObject);
begin
  inherited;

  //DMB.LiberarReservacion(qrDetallesCodigoId.Value, cxMemo2.Text);

end;

procedure TfrmBancoOperacion.cxButton1Click(Sender: TObject);
begin
  inherited;

  if (DMB.qrReservar.State in [dsinsert,dsedit]) then
    begin
      DMB.qrReservar.Post;

      DMB.Reservar(qrDetallesCodigoId.Value,
                   DMB.qrReservarReceptorId.Value,
                   DMB.qrReservarDoctorId.Value,
                   DMB.qrReservarReservadoHasta.AsString,
                   DMB.qrReservarCruce.Value,
                   cxMemo1.Text );

    end;

end;

procedure TfrmBancoOperacion.cxButton2Click(Sender: TObject);
begin
  inherited;

  frmMain.LanzaVentana(-6002);

end;

procedure TfrmBancoOperacion.cxButton3Click(Sender: TObject);
begin
  inherited;

  DMB.qrReservarDoctorId.Value:= DMB.BuscarDoctor;

end;

procedure TfrmBancoOperacion.cxDBTextEdit11PropertiesChange(Sender: TObject);
begin
  inherited;
   
  DMB.qrReservar.Close;
  DMB.qrReservar.Parameters.ParamByName('CodigoId').Value:= qrDetallesCodigoId.Value;
  DMB.qrReservar.Open;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDetallesPacienteID.Value;
  qrDonante.Open;

  cxMemo1.Text:= '';
  //cxMemo2.Text:= '';

end;

procedure TfrmBancoOperacion.cxDBTextEdit5PropertiesChange(Sender: TObject);
begin
  inherited;

  qrReceptor.Close;
  qrReceptor.Parameters.ParamByName('PacienteId').Value:= DMB.qrReservarReceptorId.Value;
  qrReceptor.Open;

end;

procedure TfrmBancoOperacion.cxDBTextEdit6PropertiesChange(Sender: TObject);
begin
  inherited;

  DMB.qrReservar.Close;
  DMB.qrReservar.Parameters.ParamByName('CodigoId').Value:= qrDetallesCodigoId.Value;
  DMB.qrReservar.Open;

  DMB.qrReservar.Edit;

end;

procedure TfrmBancoOperacion.cxDBTextEdit7PropertiesChange(Sender: TObject);
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

procedure TfrmBancoOperacion.FormCreate(Sender: TObject);
begin
  inherited;

  DMB.qrBancoInventario.Close;
  DMB.qrBancoInventario.Open;

  ActDetallesExecute(Sender);

end;

procedure TfrmBancoOperacion.qrDetallesProductoIDChange(Sender: TField);
begin
  inherited;

  qrDoctor.Close;
  qrDoctor.Parameters.ParamByName('DoctorId').Value:= cxDBtextEdit7.Text;
  qrDoctor.Open;

end;

end.
