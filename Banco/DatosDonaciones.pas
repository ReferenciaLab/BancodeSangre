unit DatosDonaciones;

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
  ppDB, ppComm, ppRelatv, ppDBPipe, DBClient, DBActns, DBCtrls, DateUtils;

type
  TfrmDonaciones = class(TfrmDatosModule)
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
    qrDonacionesDonacionID: TStringField;
    qrDonacionesFecha: TDateTimeField;
    qrDonacionesPacienteID: TStringField;
    qrDonacionesNotaEntrevista: TMemoField;
    qrDonacionesDonacionStatus: TWideStringField;
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
    ClientDataSet1: TClientDataSet;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    qrDonacionesHemoglobina: TStringField;
    qrDonacionesHematocito: TStringField;
    qrDonacionesGlobulosBlancos: TStringField;
    qrDonacionesPlaquetas: TStringField;
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
    qrDonacionesMuestraNo: TStringField;
    dxLayoutControl2Group6: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl2Item6: TdxLayoutItem;
    qrDonacionesComentario: TMemoField;
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
    cxGridDBTableView1PruebaId: TcxGridDBColumn;
    cxGridDBTableView1Resultado: TcxGridDBColumn;
    cxGridDBTableView1Descripcion: TcxGridDBColumn;
    dxLayoutControl2Item8: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl2Group7: TdxLayoutGroup;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutControl2Item11: TdxLayoutItem;
    dxLayoutControl2Item12: TdxLayoutItem;
    cxDBComboBox2: TcxDBComboBox;
    qrDonante: TADOQuery;
    qrDonantePacienteID: TStringField;
    qrDonanteTipoDonante: TWideStringField;
    qrDonanteEstado: TWideStringField;
    qrDonanteRechaso: TWideStringField;
    qrDonanteDonanteActivo: TSmallintField;
    dsDonante: TDataSource;
    qrDonanteTipoSangre: TWideStringField;
    qrDonanteRH: TWideStringField;
    qrDonacionesNombrePaciente: TStringField;
    qrDonacionesDisponible: TBooleanField;
    qrDonacion: TADOQuery;
    dsDonacion: TDataSource;
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
    qrDonacionDirigidoPacienteId: TStringField;
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
    cxCheckBox1: TcxCheckBox;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Group10: TdxLayoutGroup;
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
    cxButton1: TcxButton;
    dxLayoutControl2Item10: TdxLayoutItem;
    ActImprimir: TAction;
    GetResult: TAction;
    cxButton3: TcxButton;
    dxLayoutControl2Item13: TdxLayoutItem;
    qrResultados1: TADOQuery;
    qrResultados1MuestraNo: TStringField;
    qrResultados1PruebaId: TStringField;
    qrResultados1Resultado: TStringField;
    qrResultados1MuestraNoAS: TStringField;
    dxLayoutControl2Item14: TdxLayoutItem;
    cxButton4: TcxButton;
    tvDatosNombrePaciente: TcxGridDBColumn;
    qrDonacionesMuestraNoAS: TStringField;
    tvDatosNoAsCorto: TcxGridDBColumn;
    Timer1: TTimer;
    dxLayoutControl2Group13: TdxLayoutGroup;
    dxLayoutControl2Group14: TdxLayoutGroup;
    qrDonanteDu: TWideStringField;
    dxLayoutControl2Item15: TdxLayoutItem;
    cxDBComboBox4: TcxDBComboBox;
    dxLayoutControl2Group8: TdxLayoutGroup;
    dxLayoutControl2Group15: TdxLayoutGroup;
    dxLayoutControl2Group11: TdxLayoutGroup;
    qrDonacionesNoAsCorto: TStringField;
    dxLayoutControl2Group9: TdxLayoutGroup;
    cxDBMemo2: TcxDBMemo;
    dxLayoutControl2Item16: TdxLayoutItem;
    DBLookupComboBox1: TDBLookupComboBox;
    dxLayoutControl2Item17: TdxLayoutItem;
    qrDonacionesCausaRechazoId: TIntegerField;
    grRechazo: TdxLayoutGroup;
    dxLayoutControl2Group18: TdxLayoutGroup;
    qrDonanteRechasoNota: TMemoField;
    qrDonacionesISTBDonacion: TStringField;
    Qverifica_pruebas: TADOQuery;
    qrDonacionesSUCURSALID: TStringField;
    procedure cxButton4Click(Sender: TObject);
    procedure GetResultExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure qrDonacionesAfterPost(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBTextEdit9PropertiesChange(Sender: TObject);
    procedure BtTarjetaClick(Sender: TObject);
    procedure BtBalanceClick(Sender: TObject);
    procedure BtTransaccionesClick(Sender: TObject);
    procedure qrDonacionesNewRecord(DataSet: TDataSet);
    procedure qrDonacionesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function ValidarPrueba: Boolean;
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
    function CanAdd: boolean; 
    //function CanAdd: Boolean;
  public
    { Public declarations }
  end;

var
  frmDonaciones: TfrmDonaciones;

implementation

uses DataModule, Main, BancoReportes, UInterfaseAs, DataBanco;

{$R *.dfm}

function TfrmDonaciones.CanAdd: Boolean;
begin
  Result := False;
end;

procedure TfrmDonaciones.BtTarjetaClick(Sender: TObject);
begin
  inherited;
//   frmMain.LanzaConsulta(-8005, qrClientesClienteId.Value);
end;

procedure TfrmDonaciones.BtTransaccionesClick(Sender: TObject);
begin
  inherited;
//  frmMain.LanzaVentana(-7999);
  //qrDonacionesDonacionStatus.Value:= BtTransacciones.Caption;
end;

function TfrmDonaciones.ValidarPrueba;
begin

  ValidarPrueba:= True;
  qrResultados.First;

  if qrResultados.Eof then
    begin
      ValidarPrueba:= False;
      Exit
    end;

  while not qrResultados.Eof do
    begin

    if (qrResultadosPruebaId.Value <> '231' ) and (qrResultadosPruebaId.Value <> '314' ) and (qrResultadosPruebaId.Value <> '1137' ) and (qrResultadosPruebaId.Value <> '293' ) then
      if (trim(qrResultadosResultado.AsString) = '') then
        begin
            ValidarPrueba:= False;
             Exit

        end;

      qrResultados.Next;

    end;

end;

procedure TfrmDonaciones.cxButton2Click(Sender: TObject);
begin
  //inherited;

  if not ValidarPrueba then
    begin
       if TRIM(qrDonacionProductoID.value) = 'AF' then
            begin
             Qverifica_pruebas.Close;
             Qverifica_pruebas.Parameters.ParamByName('MuestraNo').Value:= qrEntradaPacienteMuestraNo.Value;
             Qverifica_pruebas.Open;
             if Qverifica_pruebas.recordcount > 0 then
              begin
                DM.Warning('Hay pruebas sin resultados que no son las permitidas para este producto');
                Exit;
              end;

            end
            else
            begin
              DM.Warning('Hay pruebas sin resultados.');
              Exit;
            end;
    end;

  if cxCheckBox1.Checked then
  begin

    if not (dsDonacion.State in [dsinsert,dsedit]) then
    begin
      qrDonacion.Edit;
      qrDonacionDonacionStatus.Value:= 'Aprobada';
      qrDonacion.Post;
    end;

    if (dsDonante.State in [dsinsert,dsedit]) then
      dsDonante.DataSet.Post;
    if (dsResultados.State in [dsinsert,dsedit]) then
      dsResultados.DataSet.Post;
  end;

  cxCheckBox1.Checked:= False;

  qrDonaciones.Close;
  qrDonaciones.Parameters.ParamByName('SUCURSAL').Value := dm.CurSucursal;
  qrDonaciones.Open;

end;

procedure TfrmDonaciones.cxButton4Click(Sender: TObject);
begin
  inherited;

 if MessageDlg('Desea Rechazar esta Donacion?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
      exit;

 if not (dsDonacion.State in [dsinsert,dsedit]) then
    begin
      qrDonacion.Edit;
      qrDonacionDonacionStatus.Value:= 'Rechazado';
      qrDonacion.Post;

      With dm.Qutilitario do
       begin
         Close;
         Sql.clear;
         Sql.Add('INSERT INTO BSDonacion_Historico');
         Sql.Add('SELECT * FROM BSDonacion');
         Sql.Add('WHERE DONACIONID = '+#39+ qrDonacionesDonacionID.Value+#39);
         ExecSQL;
       End;
    end;

  qrDonaciones.Close;
  qrDonaciones.Parameters.ParamByName('SUCURSAL').Value := dm.CurSucursal;
  qrDonaciones.Open;

  if (qrDonante.State in [dsInsert, dsEdit]) then
    qrDonante.Post;

  DMB.RechazarPruebas(qrEntradaPacienteMuestraNo.Value);

  //DMB.RechasarDonante(

end;

procedure TfrmDonaciones.cxDBTextEdit9PropertiesChange(Sender: TObject);
begin
  inherited;

  qrDonacion.Close;
  qrDonacion.Parameters.ParamByName('DonacionId').Value:= qrDonacionesDonacionID.AsString;
  qrDonacion.Open;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDonacionesPacienteID.Value;
  qrDonante.Open;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := qrDonacionesDonacionID.AsString;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := qrEntradaPacienteMuestraNo.Value;
  qrEntradaPacienteDetalle.Open;

  qrResultados.Close;
  qrResultados.Parameters.ParamByName('MuestraNo').Value:= qrEntradaPacienteMuestraNo.Value;
  qrResultados.Open;

end;

procedure TfrmDonaciones.ActImprimirExecute(Sender: TObject);
begin
  inherited;

  BSReportes.Donacion(qrDonacionesDonacionID.Value);

end;

procedure TfrmDonaciones.BtBalanceClick(Sender: TObject);
begin
  inherited;
//  frmMain.LanzaConsulta(-7988,qrClientesClienteId.Value);
end;

procedure TfrmDonaciones.DoPost;
begin
  inherited;

end;

procedure TfrmDonaciones.DoInsert;
begin

end;

procedure TfrmDonaciones.Dodelete;
begin

end;

procedure TfrmDonaciones.FormCreate(Sender: TObject);
begin
  inherited;

  qrDonaciones.Close;
  qrDonaciones.Parameters.ParamByName('SUCURSAL').Value := dm.CurSucursal;
  qrDonaciones.Open;

  DMB.qrCausasRechaso.Close;
  DMB.qrCausasRechaso.Open;

  qrDonacion.Close;
  qrDonacion.Parameters.ParamByName('DonacionId').Value:= qrDonacionesDonacionID.AsString;
  qrDonacion.Open;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteId').Value:= qrDonacionesPacienteID.Value;
  qrDonante.Open;
end;

procedure TfrmDonaciones.GetResultExecute(Sender: TObject);
var
  Tipo, RH, Du : string;
begin
  inherited;

  if InterfaseAs.GetTipificacion(qrDonacionesMuestraNoAS.Value, Tipo, Rh, Du) then
    begin
      qrDonante.Edit;
      qrDonanteTipoSangre.Value:= Tipo;
      qrDonanteRH.Value:= RH;
      qrDonanteDu.Value:= Du;
      qrDonante.Post;
    end;

  qrResultados.Close;

  qrResultados1.Close;
  qrResultados1.Parameters.ParamByName('MuestraNo').Value:= qrEntradaPacienteMuestraNo.Value;
  qrResultados1.Open;

  while not qrResultados1.Eof do
    begin
      qrResultados1.Edit;
      qrResultados1Resultado.Value:=
      InterfaseAs.GetResult(qrResultados1MuestraNoAS.Value, qrResultados1PruebaId.AsString);
      qrResultados1.Post;
      qrResultados1.Next;
    end;
  qrresultados1.Close;
  qrResultados.Open;
end;

procedure TfrmDonaciones.qrDonacionesAfterPost(DataSet: TDataSet);
begin
  inherited;

  if (dsDonante.State in [dsinsert,dsedit]) then
    dsDonante.DataSet.Post;

  if (dsResultados.State in [dsinsert,dsedit]) then
    dsResultados.DataSet.Post;
end;

procedure TfrmDonaciones.qrDonacionesBeforePost(DataSet: TDataSet);
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

procedure TfrmDonaciones.qrDonacionesNewRecord(DataSet: TDataSet);
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
