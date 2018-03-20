unit DatosSucursales;

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
  JvEnterTab, cxMemo, cxDBEdit, cxContainer, cxTextEdit;

type
  TfrmDatosSucursales = class(TfrmDatosModule)
    qrSucursales: TADOQuery;
    qrSucursalesSucursalID: TStringField;
    qrSucursalesNombre: TStringField;
    qrSucursalesDireccion: TMemoField;
    qrSucursalesTelefono: TStringField;
    qrSucursalesFax: TStringField;
    tvDatosSucursalID: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    procedure qrSucursalesBeforePost(DataSet: TDataSet);
    procedure CrearSecuencias;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosSucursales: TfrmDatosSucursales;

implementation
uses DataModule;
{$R *.dfm}

procedure TfrmDatosSucursales.CrearSecuencias;
var
 qdoc,qinsert : TADOquery;
begin
 qdoc    := DM.NewQuery;
 qinsert := DM.NewQuery;

 qdoc.close;
 qdoc.SQL.Text := 'Select * from PTTipoDocumento';
 qdoc.Open;

 qinsert.Close;
 qinsert.SQL.Text := 'Insert into PTSecuenciaDoc(TipoDoc,Secuencia,UsarIdentificador,SucursalId) '+
                     ' values(:0,:1,:2,:3)';
 while (not qdoc.Eof) do
 begin
  qinsert.Parameters[0].Value := qdoc.FieldByName('TipoDoc').AsString;
  qinsert.Parameters[1].Value := 0;
  qinsert.Parameters[2].Value := 1;
  qinsert.Parameters[3].Value := qrSucursalesSucursalId.Value;
  qinsert.ExecSQL;

  qdoc.Next;
 end;

 FreeAndNil(qdoc);
 FreeAndNil(qinsert);
end;

procedure TfrmDatosSucursales.qrSucursalesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrSucursales.State = dsInsert then
     CrearSecuencias;
end;

end.
