unit DialogEditarEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, Mask, DBCtrls, DB, cxGraphics, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ADODB, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmDialogEditarEmpresa = class(TfrmDialogModule)
    dsEmpresa: TDataSource;
    DBEdit1: TDBEdit;
    lcDialogItem2: TdxLayoutItem;
    DBEdit2: TDBEdit;
    lcDialogItem4: TdxLayoutItem;
    DBEdit3: TDBEdit;
    lcDialogItem6: TdxLayoutItem;
    DBEdit4: TDBEdit;
    lcDialogItem8: TdxLayoutItem;
    DBEdit5: TDBEdit;
    lcDialogItem10: TdxLayoutItem;
    DBEdit6: TDBEdit;
    lcDialogItem12: TdxLayoutItem;
    Edit1: TEdit;
    lcDialogItem1: TdxLayoutItem;
    lcDialogGroup4: TdxLayoutGroup;
    lcDialogGroup3: TdxLayoutGroup;
    qrNCF: TADOQuery;
    qrNCFTipo: TStringField;
    qrNCFConsecutivo: TIntegerField;
    qrNCFInicial: TIntegerField;
    qrNCFFinal: TIntegerField;
    qrNCFDiario: TBooleanField;
    qrNCFFijo: TStringField;
    qrNCFDescripcion: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcDialogItem3: TdxLayoutItem;
    dsTipoNCF: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure run;
  end;

var
  frmDialogEditarEmpresa: TfrmDialogEditarEmpresa;

implementation

uses DataBanco;

{$R *.dfm}

procedure TfrmDialogEditarEmpresa.btAceptarClick(Sender: TObject);
begin
  inherited;

  if ( Self.ActiveControl.Name <> 'btAceptar' ) then
    begin
      FindNextControl(ActiveControl, True, True, False).SetFocus;
      exit;
    end;

  if (trim(Edit1.Text) = '' ) then
    begin
      DMB.qrEmpresasCodigo.Value:= '';
      Close;
    end;

  try

    if (DMB.qrEmpresas.State in [dsEdit, dsInsert]) then
      begin
        DMB.qrEmpresas.Post;
        DMB.qrEmpresas.Edit;
        DMB.qrEmpresasRNC.Value:= trim(Edit1.Text);
        DMB.qrEmpresasCodigo.Value:= formatfloat('00000000', DMB.qrEmpresasEmpresaId.Value);
        DMB.qrEmpresas.Post;
      end;
    DMB.RetornarEmpresa:= DMB.qrEmpresasCodigo.AsString;

  finally
    Close;
  end;



end;

procedure TfrmDialogEditarEmpresa.btCancelarClick(Sender: TObject);
begin
  inherited;

  DMB.RetornarEmpresa:= '';
  Close;

end;

procedure TfrmDialogEditarEmpresa.Edit1Change(Sender: TObject);
begin
  inherited;

  DMB.qrEmpresas.Close;

  if (trim(Edit1.Text) <> '') then
    DMB.qrEmpresas.Parameters.ParamByName('RNC').Value:= trim(Edit1.Text) // + '%'
  else
    DMB.qrEmpresas.Parameters.ParamByName('RNC').Value:=  '';

  DMB.qrEmpresas.Open;

  //lcDialogGroup4.Enabled:= (trim(DBEdit2.Text) = '');

end;

procedure TfrmDialogEditarEmpresa.Edit1Exit(Sender: TObject);
begin
  inherited;

  if (trim(DBEdit2.Text) = '') then
    begin
      DMB.qrEmpresas.Insert;
      DMB.qrEmpresasRNC.Value:= DBEdit2.Text;
    end;

end;

procedure TfrmDialogEditarEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  Self.Release;

end;

procedure TfrmDialogEditarEmpresa.FormCreate(Sender: TObject);
begin
  inherited;

  qrNCF.Close;
  qrNCF.Open;

end;

procedure TfrmDialogEditarEmpresa.FormShow(Sender: TObject);
begin
  inherited;

  SelectFirst;

end;

procedure TfrmDialogEditarEmpresa.run;
begin

  DMB.RetornarEmpresa:= '';

  Self.ShowModal;

  {if ModalResult = mrOk then
    begin
      if (DMB.qrEmpresas.State in [dsEdit, dsInsert]) then
        DMB.qrEmpresas.Post;
      DMB.RetornarEmpresa:= DMB.qrEmpresasCodigo.Value;
    end
  else
    begin
      if (DMB.qrEmpresas.State in [dsEdit, dsInsert]) then
        DMB.qrReservar.Cancel;
    end;}

end;

end.
