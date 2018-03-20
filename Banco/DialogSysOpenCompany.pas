unit DialogSysOpenCompany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, cxContainer, cxCheckListBox, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxEdit, cxTextEdit, cxMaskEdit,
  FileCtrl, RzFilSys, DB, ADODB, JvDriveCtrls, JvComponent, JvAppStorage,
  JvAppXMLStorage, ExtCtrls, cxDropDownEdit, cxImageComboBox, PymeConst,
  JvComponentBase, Menus, cxLookAndFeelPainters, cxGraphics, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGrid;

type
  TfrmDialogSysOpenCompany = class(TfrmDialogModule)
    lcDialogGroup3: TdxLayoutGroup;
    edUsuario: TcxMaskEdit;
    lcDialogItem2: TdxLayoutItem;
    edClave: TcxMaskEdit;
    lcDialogItem3: TdxLayoutItem;
    conTest: TADOConnection;
    qrLogin: TADOQuery;
    qrLoginUserId: TStringField;
    qrLoginClave: TStringField;
    qrLoginNombre: TStringField;
    qrLoginRolID: TSmallintField;
    Shape1: TShape;
    ProductName: TLabel;
    lcDialogItem4: TdxLayoutItem;
    Image1: TImage;
    lcDialogGroup5: TdxLayoutGroup;
    cbConfigurar: TcxButton;
    lcDialogItem1: TdxLayoutItem;
    dsAppEmpresas: TDataSource;
    lcEmpresas: TcxLookupComboBox;
    lcDialogItem6: TdxLayoutItem;
    ProgramIcon: TImage;
    lblVer: TLabel;
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure cbConfigurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialogSysOpenCompany: TfrmDialogSysOpenCompany;

implementation

uses DataModule, DialogDbSetup;

{$R *.dfm}

//Created with Castalia Extract Method Refactoring

procedure TfrmDialogSysOpenCompany.FormCreate(Sender: TObject);
begin
  inherited;
  ProgramIcon.Picture.Assign( Application.Icon );
  ProductName.Caption := Application.Title;
  lblVer.Caption      := 'Ver: '+Version_App;

  if not DM.ApplEmpresas.Active then
    DM.ApplEmpresas.Open;
 { if DM.CurCompany <> '' then
    lcEmpresas.EditText := DM.CurCompany
  else
    lcEmpresas.EditText := DM.ApplEmpresas.FieldByName('Descripcion').Text;}

  DM.DataBase.Close;
  DM.DataBase.DefaultDatabase := '';
  DM.DataBase.ConnectionString := 'Data Source=' + DM.ApplEmpresas.FieldByName('Servidor').Text;
  DM.DataBase.ConnectionString := DM.DataBase.ConnectionString + ';Initial Catalog=' + DM.ApplEmpresas.FieldByName('Nombre').Text;
  DM.DataBase.ConnectionString := DM.DataBase.ConnectionString + ';User ID=' + DM.ApplEmpresas.FieldByName('sqlUser').Text;
  DM.DataBase.ConnectionString := DM.DataBase.ConnectionString + ';Password=' +  DM.ApplEmpresas.FieldByName('sqlPassword').Text;
  DM.DataBase.Open;

  edUsuario.Text := DM.CurUser;
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;
  if DM.CurSucursal <> '' then
    lcEmpresas.EditText := DM.CurSucursal
  else
    lcEmpresas.EditText := DM.qrSucursal.FieldByName('Nombre').Text;
  edUsuario.Text := DM.CurUser;
end;

procedure TfrmDialogSysOpenCompany.btAceptarClick(Sender: TObject);
var prueba : string;
begin
  inherited;
  if lcEmpresas.text <> '' then
  begin

  try
    conTest.Close;
    conTest.DefaultDatabase := '';
    conTest.ConnectionString := 'Data Source=' + DM.ApplEmpresas.FieldByName('Servidor').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';Initial Catalog=' + DM.ApplEmpresas.FieldByName('Nombre').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';User ID=' + DM.ApplEmpresas.FieldByName('SqlUser').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';Password=' +  DM.ApplEmpresas.FieldByName('SqlPassword').Text;
    conTest.Open;
    //
    DM.qrSucursal.locate('Nombre',lcEmpresas.text,[]);

    dm.NombreSucursal :=   DM.qrSucursal.FieldByName('Nombre').Text;
    
    qrLogin.Close;
    qrLogin.Parameters.ParamByName('pUser').Value := trim(edUsuario.Text);
    qrLogin.Parameters.ParamByName('pSuc').Value := DM.qrSucursal.FieldByName('SucursalID').AsString;
    qrLogin.Open;
    prueba :=  DecryptKey(qrLoginClave.Text);
    if (not qrLogin.Eof and (DecryptKey(qrLoginClave.Text) = trim(edClave.Text)) ) then begin
      Close;
    end else
      DM.Error(SUsuarioClaveNoE);
  except
    raise;
  end;
  end
  else
   DM.Error('La sucursal no ha sido especificada.');
end;

procedure TfrmDialogSysOpenCompany.btCancelarClick(Sender: TObject);
begin
  inherited;
  conTest.Connected := False;
  if ModalResult = mrCancel then
  Begin
        Application.Terminate;
  end;
end;

procedure TfrmDialogSysOpenCompany.cbConfigurarClick(Sender: TObject);
begin
  inherited;
  with TFrmDialogDbSetup.Create(Self) do begin
    try
      tvEmpresas.OptionsData.Deleting := False;
      liBtFunciones.Visible := False;
      ShowModal;
    finally
      Free;
    end;
  end;    // with
end;

end.
