unit DatosAcuerdoPrecio;

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
  JvEnterTab, cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxDBLookupComboBox, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxImageComboBox, DBCtrls;

type
  TfrmDatosAcuerdoPrecio = class(TfrmDatosModule)
    qrAcuerdoPrecios: TADOQuery;
    tvDatosPrecio: TcxGridDBColumn;
    tvDatosDesde: TcxGridDBColumn;
    tvDatosHasta: TcxGridDBColumn;
    tvDatosMonedaID: TcxGridDBColumn;
    tvDatosPruebaCode: TcxGridDBColumn;
    tvDatosPruebaRelation: TcxGridDBColumn;
    tvDatosClienteCode: TcxGridDBColumn;
    tvDatosClienteRelation: TcxGridDBColumn;
    tvDatosActivo: TcxGridDBColumn;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosGroup4: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem1: TdxLayoutItem;
    elcRelacionPrueba: TcxDBExtLookupComboBox;
    lcRelacionPrueba: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    lcDatosItem3: TdxLayoutItem;
    elcRelacionCliente: TcxDBExtLookupComboBox;
    lcRelacionCliente: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcDatosItem5: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    lcDatosItem8: TdxLayoutItem;
    CbActivo: TcxDBCheckBox;
    lcDatosItem9: TdxLayoutItem;
    edcobertura: TcxDBCurrencyEdit;
    lcDatosItem2: TdxLayoutItem;
    edcoberturaporc: TcxDBCheckBox;
    lcDatosItem4: TdxLayoutItem;
    CbCosto: TcxDBCheckBox;
    lcDatosItem10: TdxLayoutItem;
    qrAcuerdoPreciosPRECIO: TBCDField;
    qrAcuerdoPreciosPCTDESCUENTO: TBCDField;
    qrAcuerdoPreciosDESDE: TDateTimeField;
    qrAcuerdoPreciosHASTA: TDateTimeField;
    qrAcuerdoPreciosMONEDAID: TStringField;
    qrAcuerdoPreciosPRUEBARELATION: TStringField;
    qrAcuerdoPreciosCLIENTERELATION: TStringField;
    qrAcuerdoPreciosRELACION: TStringField;
    qrAcuerdoPreciosCOBERTURAVALOR: TBCDField;
    qrAcuerdoPreciosACTIVO: TIntegerField;
    qrAcuerdoPreciosCOBERTURAEXPPORC: TIntegerField;
    qrAcuerdoPreciosGASTOSVARIOS: TBCDField;
    qrAcuerdoPreciosGASTOVARIOID: TStringField;
    qrAcuerdoPreciosCOSTO: TIntegerField;
    qrAcuerdoPreciosREFRECID: TIntegerField;
    qrAcuerdoPreciosPRUEBACODE: TIntegerField;
    qrAcuerdoPreciosCLIENTECODE: TIntegerField;
    qrAcuerdoPreciosDATAAREAID: TStringField;
    qrAcuerdoPreciosRECID: TIntegerField;
    procedure qrAcuerdoPreciosAfterScroll(DataSet: TDataSet);
    procedure qrAcuerdoPreciosCoberturaExpPorcValidate(Sender: TField);
    procedure qrAcuerdoPreciosCoberturaValorValidate(Sender: TField);
    procedure qrAcuerdoPreciosClienteCodeChange(Sender: TField);
    procedure qrAcuerdoPreciosPruebaCodeChange(Sender: TField);
    procedure qrAcuerdoPreciosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RefrescarPrueba;
    procedure RefrescarCliente;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosAcuerdoPrecio: TfrmDatosAcuerdoPrecio;

implementation
Uses DataModule;
{$R *.dfm}

procedure TfrmDatosAcuerdoPrecio.RefrescarPrueba;
begin
  if qrAcuerdoPreciosPruebaCode.Value = 2 then
  begin
   elcRelacionPrueba.RepositoryItem := nil;
   lcRelacionPrueba.Enabled := false;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosPruebaRelation.Clear;
  end;

  if qrAcuerdoPreciosPruebaCode.Value = 1 then
  begin
   elcRelacionPrueba.RepositoryItem := DM.elcGrupoPrueba;
   lcRelacionPrueba.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosPruebaRelation.Clear;
  end;

  if qrAcuerdoPreciosPruebaCode.Value = 0 then
  begin
   elcRelacionPrueba.RepositoryItem := DM.elcPruebas;
   lcRelacionPrueba.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosPruebaRelation.Clear;
  end;

  if (qrAcuerdoPreciosPruebaCode.Value = 0) and (qrAcuerdoPreciosClienteCode.Value = 0) then
  begin
   edcobertura.enabled := true;
   edcoberturaporc.enabled := true;
  end
  else
  begin
   edcobertura.enabled := false;
   edcoberturaporc.enabled := false;
  end;

end;

procedure TfrmDatosAcuerdoPrecio.RefrescarCliente;
begin
  if qrAcuerdoPreciosClienteCode.Value = 2 then
  begin
   elcRelacionCliente.RepositoryItem := nil;
   lcRelacionCliente.Enabled := false;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if qrAcuerdoPreciosClienteCode.Value = 1 then
  begin
   elcRelacionCliente.RepositoryItem := DM.elcGrupoCliente;
   lcRelacionCliente.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if qrAcuerdoPreciosClienteCode.Value = 0 then
  begin
   elcRelacionCliente.RepositoryItem := DM.elcClientes;
   lcRelacionCliente.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if (qrAcuerdoPreciosPruebaCode.Value = 0) and (qrAcuerdoPreciosClienteCode.Value = 0) then
  begin
   edcobertura.enabled := true;
   edcoberturaporc.enabled := true;
  end
  else
  begin
   edcobertura.enabled := false;
   edcoberturaporc.enabled := false;
  end;
end;

procedure TfrmDatosAcuerdoPrecio.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;

  DM.qrClientes.Close;
  DM.qrClientes.Open;

  DM.qrGrupoPrueba.Close;
  DM.qrGrupoPrueba.Open;

  DM.qrPruebas.Close;
  DM.qrPruebas.Open;

  RefrescarPrueba;
  RefrescarCliente;
end;

procedure TfrmDatosAcuerdoPrecio.qrAcuerdoPreciosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefrescarPrueba;
  RefrescarCliente;
end;

procedure TfrmDatosAcuerdoPrecio.qrAcuerdoPreciosClienteCodeChange(
  Sender: TField);
begin
  inherited;
  RefrescarCliente;
end;

procedure TfrmDatosAcuerdoPrecio.qrAcuerdoPreciosPruebaCodeChange(
  Sender: TField);
begin
  inherited;
  RefrescarPrueba;
end;

procedure TfrmDatosAcuerdoPrecio.qrAcuerdoPreciosCoberturaExpPorcValidate(
  Sender: TField);
begin
  inherited;
  if (qrAcuerdoPreciosCoberturaValor.Value >= 100) and
     (qrAcuerdoPreciosCoberturaExpPorc.Value = 1) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;

procedure TfrmDatosAcuerdoPrecio.qrAcuerdoPreciosCoberturaValorValidate(
  Sender: TField);
begin
  inherited;
  if (qrAcuerdoPreciosCoberturaValor.Value >= 100) and
     (qrAcuerdoPreciosCoberturaExpPorc.Value = 1) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;

procedure TfrmDatosAcuerdoPrecio.qrAcuerdoPreciosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qrAcuerdoPreciosClienteCode.Value := 2;
  qrAcuerdoPreciosPruebaCode.Value := 2;
  qrAcuerdoPreciosPrecio.Value := 0;
  qrAcuerdoPreciosCoberturaValor.Value := 0;
  qrAcuerdoPreciosCoberturaExpPorc.Value := 0;
  qrAcuerdoPreciosActivo.Value := 1;
  qrAcuerdoPreciosRelacion.Value := 'P';
  qrAcuerdoPreciosCosto.Value := 0;
  qrAcuerdoPreciosRelacion.Value := 'P';
  qrAcuerdoPreciosMonedaID.Value := DM.qrParametroMonedaID.Value;

  qrAcuerdoPreciosDATAAREAID.value := 'ldr';
  qrAcuerdoPreciosRECID.value := DM.qrParametroSecuencia.Value;
  qrAcuerdoPreciosREFRECID.value := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;
end;



end.
