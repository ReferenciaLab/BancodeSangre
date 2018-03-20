unit DatosTarjetaBonos;

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
  TfrmDatosTarjetaBonos = class(TfrmDatosModule)
    qrTarjetaBonos: TADOQuery;
    tvDatosTarjetaID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    EdTarjeta: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    CbEstatus: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    EdNumero: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    qrTarjetaBonosTarjetaID: TStringField;
    qrTarjetaBonosTarjetaNumero: TStringField;
    qrTarjetaBonosDescripcion: TStringField;
    tvDatosActivo: TcxGridDBColumn;
    qrTarjetaBonosActivo: TBooleanField;
    procedure qrTarjetaBonosNewRecord(DataSet: TDataSet);
    procedure qrTarjetaBonosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    cardId : String;
    procedure BuscarData(card: string);
    { Public declarations }
  end;

var
  frmDatosTarjetaBonos: TfrmDatosTarjetaBonos;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosTarjetaBonos.qrTarjetaBonosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qrTarjetaBonos.State = dsInsert) or (qrTarjetaBonos.State = dsEdit) then
   qrTarjetaBonosTarjetaID.Value := cardId;
end;

procedure TfrmDatosTarjetaBonos.qrTarjetaBonosNewRecord(DataSet: TDataSet);
Var
  qfind : TADOQuery;
begin
  inherited;
  qrTarjetaBonosTarjetaID.Value := cardId;
  qrTarjetaBonosActivo.Value := True;
  qfind := DM.find('Select * From PTTarjetaDescuento Where TarjetaId = :tar ', qrTarjetaBonosTarjetaID.Value);
  qrTarjetaBonosDescripcion.Value := qfind.FieldByName('Descripcion').AsString;

  AutoKeyField := 'TarjetaID';
  AutoKeyField := 'Descripcion';
  AutoKeyField := 'TarjetaNumero';
  FreeAndNil(qfind);
end;


procedure TfrmDatosTarjetaBonos.BuscarData(card: string);
begin
 qrTarjetaBonos.Close;
 qrTarjetaBonos.Parameters[0].Value := card;
 qrTarjetaBonos.Open;

 cardId := card;
end;


end.
