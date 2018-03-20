unit Factura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab, cxContainer,
  cxTextEdit, cxDBEdit, ADODB, cxLookAndFeelPainters, StdCtrls, cxButtons,
  DBActns;

type
  TfrmFactura = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    dsEntradaPacienteDetalle: TDataSource;
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
    cxGrid1DBTableView1PRUEBAID: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1SECUENCIAACT: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALLINEA: TcxGridDBColumn;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl2: TdxLayoutControl;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxButton2: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    qrTotal: TADOQuery;
    dsTotal: TDataSource;
    qrTotalRECID: TIntegerField;
    qrTotalPRECIO: TBCDField;
    qrTotalTOTALLINEA: TBCDField;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    ChangeValue: TAction;
    tbEntradaPacienteDetalleId: TLargeintField;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    cxButton1: TcxButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    Desaplicar: TAction;
    cxButton3: TcxButton;
    dxLayoutControl2Item7: TdxLayoutItem;
    Cobros: TAction;
    Borrar: TAction;
    procedure BorrarExecute(Sender: TObject);
    procedure CobrosExecute(Sender: TObject);
    procedure DesaplicarExecute(Sender: TObject);
    procedure tbEntradaPacienteDetalleBeforeDelete(DataSet: TDataSet);
    procedure tbEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
    procedure ChangeValueExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure buscar;
  end;

var
  frmFactura: TfrmFactura;

implementation
uses
  DataBanco, BancoVenta, DataFactura, DCobros, DataModule, DataInventario;

{$R *.dfm}

procedure TfrmFactura.BorrarExecute(Sender: TObject);
var
  RecId: String;
begin
  inherited;

  if dmcobros.ExisteCobro(qrEntradaPacienteRecId.AsInteger) then
    begin
      dm.Error('La Factura tiene cobros realizados. debe borrarlos primero');
      exit;
    end;

  if tbEntradaPacienteDetalle.RecordCount > 0 then
    begin
      dm.Error('Debe borrar el detalle de la factura primero.');
      exit;
    end;

  if MessageDlg(' Desea Borrar la Factura ? ', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
    exit;

  RecId:= qrEntradaPacienteRecId.AsString;

  qrEntradaPaciente.Close;
  tbEntradaPacienteDetalle.Close;

  dm.DataBase.Execute(
    ' delete BSVENTA where RECID = ' + RecId
  );

end;

procedure TfrmFactura.buscar;
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

procedure TfrmFactura.ChangeValueExecute(Sender: TObject);
begin
  inherited;

  if not ( qrEntradaPaciente.State in [dsInsert, dsEdit] ) then
    qrEntradaPaciente.Edit;

    qrEntradaPacienteBruto.Value:= qrTotalTOTALLINEA.Value;
    qrEntradaPacienteNeto.Value:= qrTotalTOTALLINEA.Value;
    qrEntradaPacienteTotalPendiente.Value:= qrTotalTOTALLINEA.Value;
    qrEntradaPacienteSUBTOTAL.Value:= qrTotalTOTALLINEA.Value;

  //qrEntradaPaciente.Post;

end;

procedure TfrmFactura.CobrosExecute(Sender: TObject);
begin
  inherited;

   dmCobros.ImprimirRecibos(qrEntradaPacienteRecId.AsInteger);

end;

procedure TfrmFactura.cxButton1Click(Sender: TObject);
begin
  inherited;
  buscar;
end;

procedure TfrmFactura.DesaplicarExecute(Sender: TObject);
begin
  inherited;
  //Desaplicar los cobros realizados a una factura

  if MessageDlg('Desea Borrar cobros a esta factura?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
    exit;

  dmfactura.CancelarCobroFactura(qrEntradaPacienteEntradaId.Value);

end;

procedure TfrmFactura.tbEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
begin
  inherited;

  qrTotal.close;
  qrTotal.Parameters[0].Value:= qrEntradaPacienteRECID.Value;
  qrTotal.Open;

end;

procedure TfrmFactura.tbEntradaPacienteDetalleBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  dmi.RestaurarInventario(tbEntradaPacienteDetalleCODIGOID.Value);
  bv.SacarCaja(tbEntradaPacienteDetalleCODIGOID.Value);

end;

end.
