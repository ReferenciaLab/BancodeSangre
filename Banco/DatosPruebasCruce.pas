unit DatosPruebasCruce;

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
  JvEnterTab, cxCheckBox, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer, cxTextEdit,
  cxGroupBox, cxRadioGroup, DBCtrls, cxImageComboBox, cxSpinEdit;

type
  TfrmDatosPruebasCruce = class(TfrmDatosModule)
    qrPruebas: TADOQuery;
    tvDatosPruebaID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    tvDatosEstatus: TcxGridDBColumn;
    tvDatosGrupoPruebaID: TcxGridDBColumn;
    tvDatosPrecio: TcxGridDBColumn;
    tvDatosCodigoAxapta: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    edprueba: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem5: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    lcDatosItem8: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosItem9: TdxLayoutItem;
    BtPruebas: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    lcDatosItem10: TdxLayoutItem;
    CbTipoPrueba: TcxDBImageComboBox;
    lcDatosTipos: TdxLayoutItem;
    CbGrupoPrueba: TcxDBExtLookupComboBox;
    lcDatosGrupos: TdxLayoutItem;
    lcDatosGroupMuestra: TdxLayoutGroup;
    cxDBExtLookupComboBox4: TcxDBExtLookupComboBox;
    lcDatosItem14: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lcDatosItem15: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem11: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem13: TdxLayoutItem;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem16: TdxLayoutItem;
    BtMateriales: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    lcDatosGroupImpresion: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem17: TdxLayoutItem;
    CbDeptos: TcxDBExtLookupComboBox;
    lcDatosItem18: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    lcDatosItem20: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    lcDatosItem21: TdxLayoutItem;
    lcDatosGroup5: TdxLayoutGroup;
    lcDatosGroup4: TdxLayoutGroup;
    lcDatosGroup6: TdxLayoutGroup;
    lcDatosGroup7: TdxLayoutGroup;
    EdAlias: TcxDBTextEdit;
    lcDatosItem22: TdxLayoutItem;
    CbMuestras: TcxDBExtLookupComboBox;
    lcDatosItem23: TdxLayoutItem;
    qrPruebasPRUEBAID: TStringField;
    qrPruebasALIAS: TStringField;
    qrPruebasDESCRIPCION: TStringField;
    qrPruebasESTATUS: TIntegerField;
    qrPruebasGRUPOPRUEBAID: TStringField;
    qrPruebasDEPARTAMENTO: TStringField;
    qrPruebasPRECIO: TBCDField;
    qrPruebasPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasCODIGOAXAPTA: TStringField;
    qrPruebasPRECIODOLARES: TBCDField;
    qrPruebasCOSTO: TBCDField;
    qrPruebasEXTERIOR: TIntegerField;
    qrPruebasFACTURARCABECERA: TIntegerField;
    qrPruebasPRUEBAS: TIntegerField;
    qrPruebasTIPO: TStringField;
    qrPruebasORINA: TIntegerField;
    qrPruebasSANGRE: TIntegerField;
    qrPruebasCODDIAPROC: TStringField;
    qrPruebasDIASRESULTADO: TIntegerField;
    qrPruebasUNIDAD: TStringField;
    qrPruebasABREVIACION: TStringField;
    qrPruebasTIPOMUESTRA: TIntegerField;
    qrPruebasMEDIO: TIntegerField;
    qrPruebasCOLOR: TIntegerField;
    qrPruebasDEPID: TStringField;
    qrPruebasTIPOAS400: TStringField;
    qrPruebasCODIGOIDAS400: TStringField;
    qrPruebasMEDIOAS400: TStringField;
    qrPruebasNOPROCESAR: TIntegerField;
    qrPruebasDATAAREAID: TStringField;
    qrPruebasRECID: TIntegerField;
    qrPruebasCONDPACIENTE: TStringField;
    qrPruebasCONDMUESTRA: TStringField;
    qrPruebasCOMENTARIONOPROCESAR: TStringField;
    procedure qrPruebasAfterScroll(DataSet: TDataSet);
    procedure qrPruebasTIPOChange(Sender: TField);
    procedure qrPruebasGRUPOPRUEBAIDChange(Sender: TField);
    procedure qrPruebasBeforeInsert(DataSet: TDataSet);
    procedure qrPruebasBeforeEdit(DataSet: TDataSet);
    procedure BtAseguradoraClick(Sender: TObject);
    procedure BtMaterialesClick(Sender: TObject);
    procedure BtPruebasClick(Sender: TObject);
    procedure BtPrecioClick(Sender: TObject);
    procedure qrPruebasNewRecord(DataSet: TDataSet);
    procedure qrPruebasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure Refrescar;  
    { Public declarations }
  end;

var
  frmDatosPruebasCruce: TfrmDatosPruebasCruce;

implementation

uses DataModule,Main, DataBanco;

{$R *.dfm}

procedure TfrmDatosPruebasCruce.BtPruebasClick(Sender: TObject);
var
  NewPrueba: String;
begin
  inherited;

  NewPrueba:= DMB.BuscarPrueba;

  //DatosPruebasbancos.frmDatosPruebasBanco.dsDatos.DataSet.Post
  DM.DataBase.Execute('Insert into BSPruebaCruce '
  + ' Select * from PTPrueba where PruebaID = '
  + #39 + NewPrueba + #39 );

  qrPruebas.Close;
  qrPruebas.Open;

end;

procedure TfrmDatosPruebasCruce.BtPrecioClick(Sender: TObject);
begin
  inherited;
   frmMain.LanzaConsulta(-7985, qrPruebasPruebaId.Value);
end;

procedure TfrmDatosPruebasCruce.BtAseguradoraClick(Sender: TObject);
begin
  inherited;
  If (qrPruebas.State = dsInsert) or (qrPruebas.State = dsEdit) then
    Raise exception.CreateFmt('Debe Grabar Antes de Agregar los Codigos CUP de Esta Prueba', [])
  Else
    frmMain.LanzaConsulta(-8007, qrPruebasPruebaId.Value);
end;

procedure TfrmDatosPruebasCruce.BtMaterialesClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7983,qrPruebasPruebaid.AsString);
end;

procedure TfrmDatosPruebasCruce.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrGrupoPrueba.Close;
  DM.qrGrupoPrueba.Open;

  DM.qrParametro.close;
  DM.qrParametro.open;

  DM.qrUnidades.Close;
  DM.qrUnidades.Open;
  
  DM.qrDiasProcesamiento.close;
  DM.qrDiasProcesamiento.Open;

  DM.qrDepartamentos.Close;
  DM.qrDepartamentos.Open;

  DM.qrMuestras.Close;
  DM.qrMuestras.Open;

//  edprueba.Properties.ReadOnly := DM.qrParametroAutoNumerarPruebas.Value;

  AutoKeyField := 'PruebaID';
end;

procedure TfrmDatosPruebasCruce.qrPruebasBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (qrPruebas.State = dsInsert) Or
     (qrPruebas.State = dsEdit) Then
    If (qrPruebasPruebaID.IsNull) Or
       (qrPruebasPruebaID.Value = '')Then
      AutoKeyField := 'PruebaID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrPruebas.State = dsInsert) and (DM.qrParametroAutoNumerarPruebas.Value) then
  begin
//   qrPruebasPruebaID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
//                              formatfloat('000000',DM.qrParametroSecuenciaPruebas.asfloat);

   qrPruebasPruebaID.Value := formatfloat('000000', DM.qrParametroSecuenciaPruebas.asfloat);

   DM.qrParametro.edit;
   DM.qrParametroSecuenciaPruebas.Value := DM.qrParametroSecuenciaPruebas.Value + 1;
   DM.qrParametro.Post;
  end;
end;

procedure TfrmDatosPruebasCruce.qrPruebasGRUPOPRUEBAIDChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;

procedure TfrmDatosPruebasCruce.qrPruebasNewRecord(DataSet: TDataSet);
Var RecId: Integer;
begin
  inherited;
  {DM.qrParametro.Close;
  DM.qrParametro.Open;

  RecId := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  qrPruebasDATAAREAID.Value := 'ldr';
  qrPruebasRECID.Value := RecId;

  qrPruebasEstatus.Value := 1;
  qrPruebasCosto.Value := 0;
  qrPruebasPruebas.Value := 0;
  qrPruebasPrecio.Value := 0;
  qrPruebasPrecioDolares.Value := 0;
  qrPruebasExterior.Value := 0;
  qrPruebasOrina.Value := 0;
  qrPruebasSangre.Value := 1;
  qrPruebasFacturarCabecera.Value := 0;
  qrPruebasPermiteCambioPrecio.Value := 0;
  qrPruebasTipo.Value := 'C';
  qrPruebasGRUPOPRUEBAID.Value := 'COMBOS';

//  qrPruebasCONDMUESTRA.Value := '.';
//  qrPruebasCONDPACIENTE.Value := '.';
//  qrPruebasCOMENTARIONOPROCESAR.Value := '.';

//  qrPruebasCosto.ReadOnly := True;
//  qrPruebasPrecio.ReadOnly := True;
//  qrPruebasPrecioDolares.ReadOnly := True;

  lcDatosTipos.Enabled := False;
  lcDatosGrupos.Enabled := False;
  CbTipoPrueba.Properties.ReadOnly := True;
  CbGrupoPrueba.Properties.ReadOnly := True;}
end;


procedure TfrmDatosPruebasCruce.qrPruebasTIPOChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;

procedure TfrmDatosPruebasCruce.qrPruebasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Refrescar;
end;

procedure TfrmDatosPruebasCruce.qrPruebasBeforeEdit(DataSet: TDataSet);
begin
  {If (qrPruebasTipo.Value = 'C') Or (qrPruebasGRUPOPRUEBAID.Value = 'COMBOS') Then
    Begin
      lcDatosTipos.Enabled := False;
      lcDatosGrupos.Enabled := False;
      CbTipoPrueba.Properties.ReadOnly := True;
      CbGrupoPrueba.Properties.ReadOnly := True;
      inherited;
    end
  Else
    Raise exception.CreateFmt('Solo Pueden Modificar Pruebas De Tipo COMBOS.', []);}
end;

procedure TfrmDatosPruebasCruce.qrPruebasBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  lcDatosTipos.Enabled := False;
  lcDatosGrupos.Enabled := False;
  CbTipoPrueba.Properties.ReadOnly := True;
  CbGrupoPrueba.Properties.ReadOnly := True;
end;

procedure TfrmDatosPruebasCruce.Refrescar;
begin
  If (qrPruebasTipo.Value = 'C') Or
     (qrPruebasGRUPOPRUEBAID.Value = 'COMBOS') Then
    Begin
     lcDatosGroupMuestra.Enabled := False;
     lcDatosGroupMuestra.Visible := False;
     lcDatosGroupImpresion.Enabled := False;
     lcDatosGroupImpresion.Visible := False;
    End
  Else
    Begin
     lcDatosGroupMuestra.Enabled := True;
     lcDatosGroupMuestra.Visible := True;
     lcDatosGroupImpresion.Enabled := True;
     lcDatosGroupImpresion.Visible := True;
    End;
end;


END.
