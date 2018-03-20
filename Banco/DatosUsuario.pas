unit DatosUsuario;

interface         

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxGridLnk,
  JvComponent, JvFormPlacement, dxLayoutControl, {dxCore,} 
  cxMRUEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxPC, cxLookupEdit, cxDBLookupEdit, cxDBEdit, ADODB,
  dxPScxCommon, cxLookAndFeelPainters, cxImageComboBox, JvStringHolder,
  Menus, StdActns, ActnList, StdCtrls, cxButtons, JvExControls, JvEnterTab,
  cxCheckBox, JvSpeedButton, RzLabel, RzBckgnd, ExtCtrls, cxSpinEdit, ABSMain,
  JvComponentBase;

type
  TfrmDatosUsuario = class(TfrmDatosModule)
    qrUsuarios: TADOQuery;
    qrUsuariosUserId: TStringField;
    qrUsuariosClave: TStringField;
    qrUsuariosNombre: TStringField;
    qrUsuariosRolID: TSmallintField;
    tvDatosUserId: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosRolID: TcxGridDBColumn;
    qrRoles: TADOQuery;
    dsRoles: TDataSource;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    edClave: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosItem6: TdxLayoutItem;
    cbMenuFont: TcxDBComboBox;
    lcDatosItem7: TdxLayoutItem;
    cbFormFont: TcxDBComboBox;
    qrUsuariosInterface: TIntegerField;
    qrUsuariosMenuFont: TStringField;
    qrUsuariosFormsFont: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem8: TdxLayoutItem;
    qrUsuariosMultipleVentanas: TBooleanField;
    qrUsuariosDescuentoTope: TFloatField;
    qrUsuariosCambiarPrecio: TBooleanField;
    lcDatosGroup3: TdxLayoutGroup;
    qrUsuariosCambiarMuestraNo: TBooleanField;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem5: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure qrUsuariosAfterOpen(DataSet: TDataSet);
    procedure qrUsuariosBeforePost(DataSet: TDataSet);
    procedure qrUsuariosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosUsuario: TfrmDatosUsuario;

implementation

uses DataModule,Main;

{$R *.dfm}

procedure TfrmDatosUsuario.qrUsuariosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrRoles.Close;
  qrRoles.Open;
end;

procedure TfrmDatosUsuario.qrUsuariosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrUsuariosClave.OldValue <> qrUsuariosClave.Value then
    qrUsuariosClave.Value := EncryptKey( qrUsuariosClave.Value ); 
end;

procedure TfrmDatosUsuario.qrUsuariosNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrUsuariosDescuentoTope.Value := 0;
  qrUsuariosCambiarPrecio.Value := True;
  qrUsuariosInterface.Value := DM.qrParamInterface.Value;
  qrUsuariosFormsFont.AsString := DM.qrParamFormsFont.AsString;
  qrUsuariosMenuFont.AsString := DM.qrParamMenuFont.AsString;
  qrUsuariosMultipleVentanas.Value := true;
  qrUsuariosCambiarMuestraNo.Value := false;
end;

procedure TfrmDatosUsuario.cxButton1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7990,qrUsuariosUserId.value);
end;

procedure TfrmDatosUsuario.cxButton2Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7987, qrUsuariosUserId.value);
end;

procedure TfrmDatosUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  cbFormFont.Properties.Items.Assign(Screen.Fonts);
  cbMenuFont.Properties.Items.Assign(Screen.Fonts);
  DM.qrParam.Close;
  DM.qrParam.Open;
end;

end.