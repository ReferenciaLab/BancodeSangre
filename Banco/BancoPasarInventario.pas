unit BancoPasarInventario;

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
  ppRelatv, ppDB, ppDBPipe, DBCtrls, DBActns, ppCtrls, ppBands, jpeg, ppMemo,
  ppStrtch, ppBarCod, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDBBDE,
  ppVar;

type
  TfrmPasaraInventario = class(TfrmCustomModule)
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dsDatos: TDataSource;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dsDonacion: TDataSource;
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
    qrDonacionPagina: TSmallintField;
    qrTipoDonacion: TADOQuery;
    dsTipoDonacion: TDataSource;
    qrTipoDonacionTipoFundaID: TWideStringField;
    qrTipoDonacionTipoFundaDes: TWideStringField;
    qrTipoDonacionDias: TIntegerField;
    qrDonacionTipoFundaID: TWideStringField;
    qrDonacionHemoglobina: TStringField;
    qrDonacionHematocito: TStringField;
    qrDonacionGlobulosBlancos: TStringField;
    qrDonacionPlaquetas: TStringField;
    qrDonacionNotasCuestionario: TMemoField;
    qrProductos: TADOQuery;
    dsProductos: TDataSource;
    qrDonacionProductoID: TWideStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    cxGridInventario: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxButton3: TcxButton;
    DBLookupComboBox1: TDBLookupComboBox;
    cxButton4: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    Group1: TdxLayoutGroup;
    Item1: TdxLayoutItem;
    qrProcesos: TADOQuery;
    dsProcesos: TDataSource;
    qrInventario: TADOQuery;
    dsInventario: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    Item2: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Group2: TdxLayoutGroup;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    DataSetEdit1: TDataSetEdit;
    cxButton7: TcxButton;
    DataSetDelete2: TDataSetDelete;
    Item4: TdxLayoutItem;
    qrProductosDias: TIntegerField;
    qrProductosProductoID: TWideStringField;
    qrProductosProductoDes: TWideStringField;
    qrProductosPrecio: TBCDField;
    qrProductosPrecioDolares: TBCDField;
    cxDBTextEdit10: TcxDBTextEdit;
    cxGridDBTableView1Cantidad: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1Hora: TcxGridDBColumn;
    cxGridDBTableView1CodigoId: TcxGridDBColumn;
    cxGridDBTableView1Dias: TcxGridDBColumn;
    Item5: TdxLayoutItem;
    qrInventarioDonacionId: TStringField;
    qrInventarioProductoID: TWideStringField;
    qrInventarioCodigoId: TStringField;
    qrInventarioCantidad: TBCDField;
    qrInventarioFecha: TDateTimeField;
    qrInventarioHora: TStringField;
    qrInventarioProcesoID: TWideStringField;
    qrInventarioReservado: TBooleanField;
    qrInventarioDias: TIntegerField;
    qrInventarioCruce: TBooleanField;
    qrInventarioCrucePacienteId: TStringField;
    qrInventarioDisponible: TBooleanField;
    qrInventarioReceptorId: TStringField;
    cxButton8: TcxButton;
    Item6: TdxLayoutItem;
    ActEtiqueta: TAction;
    Group4: TdxLayoutGroup;
    Group5: TdxLayoutGroup;
    cxButton9: TcxButton;
    Item7: TdxLayoutItem;
    ActPruebas: TAction;
    qrInventarioReservadoHasta: TDateTimeField;
    qrInventarioVolumen_total: TIntegerField;
    qrInventarioVolumen_Actual: TIntegerField;
    qrInventarioUnidad: TStringField;
    cxDBTextEdit11: TcxDBTextEdit;
    Item8: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    Item3: TdxLayoutItem;
    cxButton1: TcxButton;
    Qreporte_pruebas: TADOQuery;
    DSreporte_pruebas: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    Reporte_Pruebas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    qrDonacionMuestraNo: TStringField;
    qrDonacionISTBDonacion: TStringField;
    ppVariable1: TppVariable;
    ppLabel4: TppLabel;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    cxButton2: TcxButton;
    Reporte_cruce: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppVariable2: TppVariable;
    ppDetailBand2: TppDetailBand;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    qrInventarioSUCURSALID: TStringField;
    procedure cxButton2Click(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure dsDatosDataChange(Sender: TObject; Field: TField);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDBTextEdit11Exit(Sender: TObject);
    procedure ActPruebasExecute(Sender: TObject);
    procedure DataSetPost1Execute(Sender: TObject);
    procedure ActEtiquetaExecute(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PruebaCruzada : String;
  end;

var
  frmPasaraInventario: TfrmPasaraInventario;

implementation
uses DataModule, DialogoTipoDonacion, DialogoEntrevista, DataBanco, StrUtils,
  BancoReportes;
{$R *.dfm}

procedure TfrmPasaraInventario.ActEtiquetaExecute(Sender: TObject);
begin
  inherited;

  //BSReportes.Donacion_Tipo := qrdonacion.fieldbyname('DonacionTipo').Asstring;

  BSReportes.Donacion_Tipo := qrDonacionDonacionTipo.Value;
  BSReportes.EtiquetaProducto(qrInventarioCodigoId.Value);

end;

procedure TfrmPasaraInventario.ActPruebasExecute(Sender: TObject);
begin
  inherited;

     BSReportes.Donacion_Tipo := qrDonacionDonacionTipo.Value;
     BSReportes.Pruebas(qrInventarioCodigoId.Value);

end;

procedure TfrmPasaraInventario.cxButton1Click(Sender: TObject);
begin
  inherited;
With Qreporte_pruebas Do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT PRUEBAID, DESCRIPCION, RESULTADO');
   Sql.Add('FROM BSDETALLE');
   Sql.Add('WHERE MUESTRANO =' + #39+ qrDonacionMuestraNo.Value +#39);
   Sql.Add('AND PRUEBAID <> ''00000216''');
   if Trim(qrDonacionProductoID.value) <> 'AF' then
   Sql.Add('AND PRUEBAID <> ''002714''');

   Sql.Add('ORDER BY descripcion');
   Open;
 end;

 Reporte_pruebas.print;
end;

procedure TfrmPasaraInventario.cxButton2Click(Sender: TObject);
begin
  inherited;
PruebaCruzada := InputBox('Digite Numero de Prueba','Numero','');
Reporte_cruce.print;
end;

procedure TfrmPasaraInventario.cxButton3Click(Sender: TObject);
begin
  inherited;

  qrInventario.Insert;
  qrInventarioDonacionId.Value:= DMB.qrDonacionesAprobadasDonacionID.Value;
  qrInventarioSUCURSALID.Value := DM.qrSucursal.Fieldbyname('SUCURSALID').Value;
end;


procedure TfrmPasaraInventario.cxButton4Click(Sender: TObject);
begin
  //inherited;

  if not (qrInventario.State in [dsinsert,dsedit]) then
    qrInventario.Edit;

  qrInventarioDonacionId.Value:= DMB.qrDonacionesAprobadasDonacionID.Value; 
  qrInventarioProductoID.Value:= qrProductosProductoID.Value;
  qrInventarioFecha.Value:= DMB.qrDonacionesAprobadasFecha.Value;
  qrInventarioHora.AsString:= TimeToStr(Time);
  qrInventarioReceptorId.Value:= DMB.qrDonacionesAprobadasDirigidoPacienteId.Value;
  qrInventarioCodigoId.Value:=
    RightStr(DMB.qrDonacionesAprobadasMuestraNo.Value, 9) + '-' +
    trim(qrProductosProductoID.Value);
  qrInventario.Post;

end;

procedure TfrmPasaraInventario.cxButton7Click(Sender: TObject);
begin
  inherited;

  if DM.Mensaje('Finalizar trabajo con esta donacion?',MB_YESNO) = ID_NO then
    Exit;

  if not (qrDonacion.State in [dsinsert,dsedit]) then
    qrDonacion.Edit;

  qrDonacionDonacionStatus.Value:= 'Procesada';

  qrDonacion.Post;

  DMB.qrDonacionesAprobadas.Close;
  DMB.qrDonacionesAprobadas.Open;
end;

procedure TfrmPasaraInventario.cxDBTextEdit11Exit(Sender: TObject);
begin
  inherited;
  Try
  if StrToInt(cxDBTextEdit11.Text) >= 400 then
  begin
   cxDBComboBox1.ItemIndex := 0;
  end;
  Except
  End;


end;

procedure TfrmPasaraInventario.cxDBTextEdit1PropertiesChange(Sender: TObject);
begin
  inherited;

  qrDonacion.Close;
  qrDonacion.Parameters.ParamByName('DonacionID').Value:= DMB.qrDonacionesAprobadasDonacionID.Value;
  qrDonacion.Open;

  qrInventario.Close;
  qrInventario.Parameters.ParamByName('DonacionID').Value:= DMB.qrDonacionesAprobadasDonacionID.Value;
  qrInventario.Open;

  qrProductos.Close;
  qrProductos.Parameters[0].Value:= DMB.qrDonacionesAprobadasTipoFundaId.Value;
  qrProductos.Open;
end;


procedure TfrmPasaraInventario.DataSetPost1Execute(Sender: TObject);
begin

  //inherited;

  if not (qrInventario.State in [dsinsert,dsedit]) then
    qrInventario.Edit;

  qrInventarioDonacionId.Value:= DMB.qrDonacionesAprobadasDonacionID.Value; //DMB.qrDonacionesAprobadasDonacionID.Value;
  qrInventarioProductoID.Value:= qrProductosProductoID.Value;
  qrInventarioFecha.Value     := DMB.qrDonacionesAprobadasFecha.Value;
  qrInventarioHora.AsString   := TimeToStr(Time);


  qrInventarioCodigoId.Value:= DMB.qrDonacionesAprobadasMuestraNoLargo.Value + '-' + trim(qrProductosProductoID.Value);
//    RightStr(DMB.qrDonacionesAprobadasMuestraNoLargo.Value, 9) + '-' +
//    trim(qrProductosProductoID.Value);
  qrInventario.Post;
  if cxDBTextEdit10.Text = '1 'then
    Begin

    end;
end;

procedure TfrmPasaraInventario.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;

  if (qrProductosDias.asInteger = 0)  then
    qrInventarioDias.Value:= DMB.qrDonacionesAprobadasDias.AsInteger
  else
    qrInventarioDias.Value:= qrProductosDias.Value;
end;

procedure TfrmPasaraInventario.dsDatosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
if trim(DMB.qrDonacionesAprobadas.Fieldbyname('DonacionStatus').value) = 'Aprobada'  then
  Begin
    cxButton8.Enabled := True;
    cxButton9.Enabled := True;
    cxButton1.Enabled := True;
    cxButton7.Enabled := True;
    cxButton2.Enabled := True;
  end
  else
  begin
   cxButton8.Enabled := False;
   cxButton9.Enabled := False;
   cxButton1.Enabled := False;
   cxButton7.Enabled := False;
   cxButton2.Enabled := False;
  end;

end;

procedure TfrmPasaraInventario.FormCreate(Sender: TObject);
begin
  inherited;

  qrProductos.Close;
  qrProductos.Open;

  qrProcesos.Close;
  qrProcesos.Open;

  DMB.qrDonacionesAprobadas.Close;
  DMB.qrDonacionesAprobadas.Open;

  qrDonacion.Close;
  qrDonacion.Parameters.ParamByName('DonacionID').Value:= DMB.qrDonacionesAprobadasDonacionID.Value;
  qrDonacion.Open;

  qrInventario.Close;
  qrInventario.Parameters.ParamByName('DonacionID').Value:= DMB.qrDonacionesAprobadasDonacionID.Value;
  qrInventario.Open;
end;

procedure TfrmPasaraInventario.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
 ppvariable1.value := qrDonacionISTBDonacion.Value;
end;

procedure TfrmPasaraInventario.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  inherited;
 ppvariable2.value :=  PruebaCruzada; //qrDonacionISTBDonacion.Value;
 ppvariable3.value :=  DMB.qrDonacionesAprobadasIdentificacion.AsString;
 ppvariable4.value :=  DMB.qrDonacionesAprobadasNombre.AsString;
end;

end.
