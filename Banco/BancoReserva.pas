unit BancoReserva;

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
  ppRelatv, ppDB, ppDBPipe, DBCtrls, DBActns, cxDBLookupComboBox, ppDBBDE,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport;

type
  TfrmBancoReserva = class(TfrmCustomModule)
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
    dbDatosFecha: TcxGridDBColumn;
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
    qrReceptorNombre: TStringField;
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
    Item20: TdxLayoutItem;
    ActLiberarReservacion: TAction;
    cxDBTextEdit11: TcxDBTextEdit;
    Item17: TdxLayoutItem;
    qrDetallesTipoSangre: TWideStringField;
    qrDetallesRH: TWideStringField;
    dbDatosTipoSangre: TcxGridDBColumn;
    dbDatosRH: TcxGridDBColumn;
    Group9: TdxLayoutGroup;
    Group10: TdxLayoutGroup;
    cxButton4: TcxButton;
    Item21: TdxLayoutItem;
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
    cxButton6: TcxButton;
    Item24: TdxLayoutItem;
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
    dbDatosNombrePaciente: TcxGridDBColumn;
    dbDatosReservadoHasta: TcxGridDBColumn;
    dbDatosVence: TcxGridDBColumn;
    ActCurzar: TAction;
    Item26: TdxLayoutItem;
    cxButton9: TcxButton;
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
    qrDonanteRechasoNota: TMemoField;
    cxButton10: TcxButton;
    Reporte_cruce: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppDetailBand2: TppDetailBand;
    ppBDEPipeline1: TppBDEPipeline;
    ppBDEPipeline1ppField1: TppField;
    ppBDEPipeline1ppField2: TppField;
    ppBDEPipeline1ppField3: TppField;
    Qlabel_cruce: TADOQuery;
    DSlabel_cruce: TDataSource;
    qrDetallesSucursal: TStringField;
    dbDatosColumn1: TcxGridDBColumn;
    cxButton11: TcxButton;
    procedure cxButton11Click(Sender: TObject);
    procedure Reporte_cruceBeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetDelete3Execute(Sender: TObject);
    procedure ActDespacharExecute(Sender: TObject);
    procedure ActCurzarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActBajaExecute(Sender: TObject);
    procedure ActCajaExecute(Sender: TObject);
    procedure ActLiberarExecute(Sender: TObject);
    procedure ActReservarExecute(Sender: TObject);
    procedure cxDBTextEdit11PropertiesChange(Sender: TObject);
    procedure ActLiberarReservacionExecute(Sender: TObject);
    procedure qrDetallesProductoIDChange(Sender: TField);
    procedure cxDBTextEdit7PropertiesChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBTextEdit6PropertiesChange(Sender: TObject);
    procedure cxDBTextEdit5PropertiesChange(Sender: TObject);
    procedure ActDetallesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    Procedure NuevaEntrada;
    procedure Add(ProductoId: string; CodigoId: String);
    Procedure LiberarCaja;
  public
    { Public declarations }
  end;

var
  frmBancoReserva: TfrmBancoReserva;

implementation
uses
  Main, DataModule, DataBanco, DialogoTipoDonacion, DialogoEntrevista,
  BancoVenta, BancoReportes;
{$R *.dfm}

procedure TfrmBancoReserva.LiberarCaja;
begin

  tbEntradaPacienteDetalle.First;

  while not tbEntradaPacienteDetalle.Eof do
    begin
      BV.SacarCaja(tbEntradaPacienteDetalleCodigoId.Value);
      tbEntradaPacienteDetalle.Next;
    end;
    
end;

procedure TfrmBancoReserva.Add(ProductoId: string; CodigoId: String);
begin

  qrProducto.Close;
  qrProducto.Parameters[0].Value:= ProductoId;
  qrProducto.Open;

  tbEntradaPacienteDetalle.Insert;
    tbEntradaPacienteDetalleProductoId.Value:= ProductoId;
    tbEntradaPacienteDetalleDescripcion.Value:= qrProductoProductoDes.Value;
    tbEntradaPacienteDetalleCodigoId.Value:= CodigoId;
  tbEntradaPacienteDetalle.Post;
end;

procedure TfrmBancoReserva.NuevaEntrada;
begin

  qrEntradaPaciente.Insert;
  qrEntradaPacienteDATAAREAID.Value:= '050';
  qrEntradaPaciente.Post;
  qrEntradaPaciente.Edit;

  tbEntradaPacienteDetalle.Close;
  tbEntradaPacienteDetalle.Open;

end;

procedure TfrmBancoReserva.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  inherited;
 ppvariable2.value :=  cxDBTextEdit11.Text; //qrDonacionISTBDonacion.Value;
 ppvariable3.value :=  Qlabel_cruce.FieldByName('Identificacion').AsString; // DMB.qrDonacionesAprobadasIdentificacion.AsString;
 ppvariable4.value :=  Qlabel_cruce.FieldByName('Nombre').AsString; //DMB.qrDonacionesAprobadasNombre.AsString;
end;

procedure TfrmBancoReserva.ActBajaExecute(Sender: TObject);
var
  Comentario : string;
begin
  inherited;
  //Dar baja

  if DM.Mensaje('Desea sacar producto de inventario ?',mb_yesno) = id_no then
    exit;
 begin
   Comentario := InputBox('Baja Producto de Inventario','Causa de Salida','');
    With dm.Qutilitario do
    begin
      close;
      sql.Clear;
      sql.add('UPDATE BSInventario Set status =:est,FECHA_SALIDA = getdate(),USUARIO_SALIDA =:usu,COMENTARIO_SALIDA =:com');
      sql.add('where CodigoId ='+ #39 + qrDetallesCodigoId.Value + #39);
      Parameters.ParamByName('usu').Value := dm.CurUser;
      Parameters.ParamByName('est').Value := 'I';
      Parameters.ParamByName('com').Value := Comentario;
      ExecSQL;
    end;

 end;
  //DMB.BajaInventario(qrDetallesCodigoId.Value,cxMemo1.Text);

end;

procedure TfrmBancoReserva.ActCajaExecute(Sender: TObject);
begin
  inherited;
  //Envio a caja
  if (qrEntradaPaciente.State in [dsInsert, dsEdit]) then
    qrEntradaPaciente.Post;

  if (trim(cxDBTextEdit5.Text) = '') then
    begin
      DM.Warning('Seleccione un paciente.');
      Exit;
    end;

  if tbEntradapacienteDetalle.Eof then
    begin
      DM.Warning('Seleccione productos a enviar a caja.');
      Exit;
    end;

  tbEntradaPacienteDetalle.First;

  BV.AddAVenta(
  qrEntradaPacientePacienteId.Value,
  qrEntradaPacienteDOCTORID.Value,
  qrEntradaPacienteFECHAPROMETIDA.AsString);


  while not tbEntradaPacienteDetalle.Eof do
    begin

      BV.AddADetVenta(
          tbEntradaPacienteDetalleProductoId.Value,
          tbEntradaPacienteDetalleCodigoId.Value
      );

      DMB.AddHistorico(
        tbEntradaPacienteDetalleCodigoId.Value,
        'DP',
        'Envio desde modulo de despacho.');

      tbEntradaPacienteDetalle.Next;

    end;

  NuevaEntrada;

end;

procedure TfrmBancoReserva.ActCancelarExecute(Sender: TObject);
begin
  inherited;

  //Eliminar actual de envio preparado

end;

procedure TfrmBancoReserva.ActCurzarExecute(Sender: TObject);
begin
  inherited;

  //Cruce de sagre
  if (trim(cxDBTextEdit5.Text)= '') then
    begin
      DM.Error(' Debe Seleccionar el paciente antes de la Operacion.');
      Exit;
    end;

  Add('CR', qrDetallesCodigoId.AsString);

end;

procedure TfrmBancoReserva.ActDespacharExecute(Sender: TObject);
begin
  inherited;

  if (trim(cxDBTextEdit5.Text)= '') then
    begin
      DM.Error('Debe Seleccionar el paciente antes de la Operación.');
      Exit;
    end;

  Add(qrDetallesProductoId.Value, qrDetallesCodigoId.AsString);

  //Marcar como que esta en caja
  BV.AddCaja(tbEntradaPacienteDetalleCodigoId.Value);

//  BSReportes.Entrega(qrDetallesCodigoId.AsString);

  ActDetallesExecute(Sender);

end;

procedure TfrmBancoReserva.ActDetallesExecute(Sender: TObject);
begin
  inherited;

  qrDetalles.Close;
  qrDetalles.Parameters.ParamByName('ProductoId').Value:= DMB.qrBancoInventarioProductoID.Value;
  qrDetalles.Open;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDetallesPacienteID.Value;
  qrDonante.Open;

end;


procedure TfrmBancoReserva.ActLiberarExecute(Sender: TObject);
begin
  inherited;



  {  DMB.LiberarReservacion(qrDetallesCodigoId.Value,
                   cxMemo1.Text );
  cxMemo1.Clear;

  qrDetalles.Close;
  qrDetalles.Open;  }

end;

procedure TfrmBancoReserva.ActLiberarReservacionExecute(Sender: TObject);
begin
  inherited;

  //DMB.LiberarReservacion(qrDetallesCodigoId.Value, cxMemo2.Text);

end;

procedure TfrmBancoReserva.ActReservarExecute(Sender: TObject);
begin
  inherited;

  if (trim(cxDBTextEdit5.Text)= '') then
    begin
      DM.Error(' Debe Seleccionar el paciente antes de la Operacion.');
      Exit;
    end;

    With dm.Qutilitario do
     begin
       Close;
       Sql.Clear;
       Sql.Add('UPDATE BSINVENTARIO SET RESERVADO = 1');
       Sql.Add('WHERE CODIGOID =' + #39 + qrDetallesCodigoId.AsString +#39);
       ExecSQL;
     //  Sql.Add('');
     end;


  Add('RS', qrDetallesCodigoId.AsString);

end;

procedure TfrmBancoReserva.cxButton10Click(Sender: TObject);
begin
  inherited;
if cxDBTextEdit5.Text <> ''  then
  Begin
    Reporte_cruce.Print;
  end
  else
  ShowMessage('Primero debe seleccionar un receptor');

end;

procedure TfrmBancoReserva.cxButton11Click(Sender: TObject);
begin
  inherited;
  if (trim(cxDBTextEdit5.Text)= '') then
    begin
      DM.Error(' Debe Seleccionar el paciente antes de la Operacion.');
      Exit;
    end;



  Add('SPRN', qrDetallesCodigoId.AsString);

end;

procedure TfrmBancoReserva.cxButton2Click(Sender: TObject);
begin
  inherited;

  if not (qrEntradaPaciente.State in [dsEdit, dsInsert]) then
    qrEntradaPaciente.Edit;

  qrEntradaPacientePACIENTEID.Value:= DMB.BuscarPaciente;

  qrEntradaPaciente.Post;
  qrEntradaPaciente.Edit;

  //frmMain.LanzaVentana(-6002);

end;

procedure TfrmBancoReserva.cxButton3Click(Sender: TObject);
begin
  inherited;

  if not (qrEntradaPaciente.State in [dsEdit, dsInsert]) then
    qrEntradaPaciente.Edit;

  qrEntradaPacienteDoctorID.Value:= DMB.BuscarDoctor;

   qrEntradaPaciente.Post;
  qrEntradaPaciente.Edit;

end;

procedure TfrmBancoReserva.cxDBTextEdit11PropertiesChange(Sender: TObject);
begin
  inherited;

  DMB.qrReservar.Close;
  DMB.qrReservar.Parameters.ParamByName('CodigoId').Value:= qrDetallesCodigoId.Value;
  DMB.qrReservar.Open;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDetallesPacienteID.Value;
  qrDonante.Open;

  cxButton4.Enabled:= qrDetallesReservado.Value;
  cxMemo1.Text:= '';
  //cxMemo2.Text:= '';

end;

procedure TfrmBancoReserva.cxDBTextEdit5PropertiesChange(Sender: TObject);
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

procedure TfrmBancoReserva.cxDBTextEdit6PropertiesChange(Sender: TObject);
begin
  inherited;

  DMB.qrReservar.Close;
  DMB.qrReservar.Parameters.ParamByName('CodigoId').Value:= qrDetallesCodigoId.Value;
  DMB.qrReservar.Open;

  DMB.qrReservar.Edit;

end;

procedure TfrmBancoReserva.cxDBTextEdit7PropertiesChange(Sender: TObject);
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

procedure TfrmBancoReserva.DataSetDelete3Execute(Sender: TObject);
begin
  inherited;

  BV.SacarCaja(tbEntradaPacienteDetalleCodigoId.Value);
    With dm.Qutilitario do
     begin
       Close;
       Sql.Clear;
       Sql.Add('UPDATE BSINVENTARIO SET RESERVADO = 0, Caja =  0');
       Sql.Add('WHERE CODIGOID =' + #39 + qrDetallesCodigoId.AsString +#39);
       ExecSQL;
     end;

  tbEntradaPacienteDetalle.Delete;
  ActDetallesExecute(Sender);

end;

procedure TfrmBancoReserva.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  LiberarCaja;

  inherited;

end;

procedure TfrmBancoReserva.FormCreate(Sender: TObject);
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

procedure TfrmBancoReserva.qrDetallesProductoIDChange(Sender: TField);
begin
  inherited;

  qrDoctor.Close;
  qrDoctor.Parameters.ParamByName('DoctorId').Value:= cxDBtextEdit7.Text;
  qrDoctor.Open;

end;

procedure TfrmBancoReserva.Reporte_cruceBeforePrint(Sender: TObject);
begin
  inherited;
  Qlabel_cruce.Close;
  Qlabel_cruce.Parameters.ParamByName('CLIENTE').Value := cxDBTextEdit5.Text;
  Qlabel_cruce.Open;
end;

end.
