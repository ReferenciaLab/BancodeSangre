unit DialogConsultaCliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox;

type
  TfrmDialogConsultaCliente2 = class(TfrmDialogConsulta)
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
    edtipocliente: TcxComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    procedure edtipoclienteExit(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaCliente2: TfrmDialogConsultaCliente2;
  adentrogrid : Boolean;

implementation

uses DataModule, Main;

{$R *.dfm}


procedure TfrmDialogConsultaCliente2.Run;
begin
 showmodal;

 if ModalResult = mrOk then
  begin
    frmMain.frmCups.qrCodigosCupClienteID.Value := DM.qrClientesClienteID.Value;
    frmMain.frmCups.qrCodigosCupNombreCliente.Value := DM.qrClientesNombre.Value;
  end;
end;

procedure TfrmDialogConsultaCliente2.BuscarData;
begin
 DM.qrClientes.Close;
 DM.qrClientes.SQL.Text := 'Select * from PTCliente Where GrupoCliente = '+ #39 + '01' + #39;
 DM.qrClientes.Open;
end;

procedure TfrmDialogConsultaCliente2.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaCliente2.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaCliente2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) and (AdentroGrid) then
  begin
   Close;
   ModalResult := mrOk;
  end;  
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogConsultaCliente2.FormShow(Sender: TObject);
begin
  inherited;
   BuscarData;
   edbuscar.SetFocus;
end;


procedure TfrmDialogConsultaCliente2.edtipoclienteExit(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

end.
