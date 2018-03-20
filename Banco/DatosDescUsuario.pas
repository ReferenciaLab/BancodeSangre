unit DatosDescUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxCurrencyEdit, cxDBEdit, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ABSMain, JvStringHolder, StdActns, ActnList, ADODB, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxCommon,
  dxPScxGridLnk, JvComponentBase, JvFormPlacement, ExtCtrls, dxLayoutControl,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab;

type
  TfrmDatosDescUsuario = class(TfrmDatosModule)
    qrUsuarioDescuento: TADOQuery;
    qrUsuarioDescuentoSucursalID: TStringField;
    qrUsuarioDescuentoUserId: TStringField;
    qrUsuarioDescuentoDescuento: TBCDField;
    tvDatosSucursalID: TcxGridDBColumn;
    tvDatosDescuento: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcDatosItem1: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem2: TdxLayoutItem;
    procedure qrUsuarioDescuentoNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarData(user : string);

  end;

var
  frmDatosDescUsuario: TfrmDatosDescUsuario;
  pUser : String;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDatosDescUsuario.BuscarData(user: string);
begin
 qrUsuarioDescuento.Close;
 qrUsuarioDescuento.Parameters[0].Value := user;
 qrUsuarioDescuento.Open;

 pUser := user;
end;


procedure TfrmDatosDescUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrSucursal.Close;
  DM.qrSucursal.Open;
end;


procedure TfrmDatosDescUsuario.qrUsuarioDescuentoNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrUsuarioDescuentoUserId.Value := pUser;
end;


end.
