unit DatosCodigosCup;

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
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer, cxTextEdit;

type
  TfrmDatosCodigosCup = class(TfrmDatosModule)
    qrCodigosCup: TADOQuery;
    tvDatosPruebaID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    EdPrueba: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    CbEstatus: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    EdClienteId: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    btClientes: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    EdCodigoCup: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    EdNombreAseguradora: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    EdDescripcionCup: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    qrCodigosCupPruebaID: TStringField;
    qrCodigosCupClienteID: TStringField;
    qrCodigosCupCodigoCupID: TStringField;
    qrCodigosCupDescripcion: TStringField;
    qrCodigosCupDescripcionCup: TStringField;
    qrCodigosCupNombreCliente: TStringField;
    qrCodigosCupCodigoAxapta: TStringField;
    qrCodigosCupEstatus: TBooleanField;
    qrCodigosCupLinea: TIntegerField;
    tvDatosCodigoCupID: TcxGridDBColumn;
    tvDatosNombreCliente: TcxGridDBColumn;
    procedure btClientesClick(Sender: TObject);
    procedure qrCodigosCupNewRecord(DataSet: TDataSet);
    procedure qrCodigosCupBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    pruebaId : String;

    procedure BuscarData(prueba: string);
    { Public declarations }
  end;

var
  frmDatosCodigosCup: TfrmDatosCodigosCup;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosCodigosCup.btClientesClick(Sender: TObject);
begin
  inherited;
  if (qrCodigosCup.State = dsInsert) or (qrCodigosCup.State = dsEdit) then
    Begin
      frmMain.LanzaVentana(-8008);
    end
  else
    Raise exception.CreateFmt('El Mantenimiento NO Esta En Edicion.', []);
end;

procedure TfrmDatosCodigosCup.FormCreate(Sender: TObject);
begin
  inherited;
    DM.qrClientes.Close;
    DM.qrClientes.Open;
end;

procedure TfrmDatosCodigosCup.qrCodigosCupBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qrCodigosCup.State = dsInsert) or (qrCodigosCup.State = dsEdit) then
   qrCodigosCupPruebaID.Value := pruebaId;
end;

procedure TfrmDatosCodigosCup.qrCodigosCupNewRecord(DataSet: TDataSet);
Var
  qfind : TADOQuery;
begin
  inherited;
  btClientes.Click;
  qrCodigosCupPruebaID.Value := pruebaId;
  qrCodigosCupEstatus.Value := True;
  qfind := DM.find('Select * from PTPrueba where PruebaID = :pru', qrCodigosCupPruebaID.Value);
  qrCodigosCupDescripcion.Value := qfind.FieldByName('Descripcion').AsString;
  qrCodigosCupDescripcionCup.Value := qfind.FieldByName('Descripcion').AsString;

  AutoKeyField := 'PruebaID';
  AutoKeyField := 'ClienteID';
  AutoKeyField := 'CodigoCupID';
  AutoKeyField := 'DescripcionCup';
  AutoKeyField := 'NombreCliente';

  FreeAndNil(qfind);
end;


procedure TfrmDatosCodigosCup.BuscarData(prueba: string);
begin
 qrCodigosCup.Close;
 qrCodigosCup.Parameters[0].Value := prueba;
 qrCodigosCup.Open;

 pruebaId := prueba;
end;


end.

