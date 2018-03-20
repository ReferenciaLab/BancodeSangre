unit DialogConsultaCliente3;

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
  TfrmDialogConsultaCliente3 = class(TfrmDialogConsulta)
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
  frmDialogConsultaCliente3: TfrmDialogConsultaCliente3;
  adentrogrid : Boolean;

implementation

uses DataModule, Main;

{$R *.dfm}


procedure TfrmDialogConsultaCliente3.Run;
begin
 showmodal;

 if ModalResult = mrOk then
  begin
    frmMain.frmPlanes.qrPlanesEmpresaClienteID.Value := DM.qrClientesClienteID.Value;
    frmMain.frmPlanes.qrPlanesEmpresaNombre.Value := DM.qrClientesNombre.Value;
    frmMain.frmPlanes.qrPlanesEmpresaCodigoAxapta.Value := DM.qrClientesCodigoAxapta.Value;
    frmMain.frmPlanes.qrPlanesEmpresaIdentificacion.Value := DM.qrClientesIdentificacion.Value;
    frmMain.frmPlanes.qrPlanesEmpresaTelefono.Value := DM.qrClientesTelefono.Value;
    frmMain.frmPlanes.qrPlanesEmpresaTelefono2.Value := DM.qrClientesTelefono2.Value;
    frmMain.frmPlanes.qrPlanesEmpresaFax.Value := DM.qrClientesFax.Value;
    frmMain.frmPlanes.qrPlanesEmpresaDireccion.Value := DM.qrClientesDireccion.Value;
    frmMain.frmPlanes.qrPlanesEmpresaCiudadID.Value := DM.qrClientesCiudadID.Value;
    frmMain.frmPlanes.qrPlanesEmpresaAlias.Value := DM.qrClientesAlias.Value;
    frmMain.frmPlanes.qrPlanesEmpresaPacienteCiaID.Value := DM.qrClientesPacienteCiaID.Value;
//    frmMain.frmPlanes.qrPlanesEmpresaemail.Value := DM.qrClientesEmpresaemail.Value;
  end;
end;

procedure TfrmDialogConsultaCliente3.BuscarData;
begin
 DM.qrClientes.Close;
 DM.qrClientes.SQL.Text := 'Select * from PTCliente Where GrupoCliente = '+ #39 + '09' + #39;
 DM.qrClientes.Open;
end;

procedure TfrmDialogConsultaCliente3.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaCliente3.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaCliente3.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaCliente3.FormShow(Sender: TObject);
begin
  inherited;
   BuscarData;
   edbuscar.SetFocus;
end;


procedure TfrmDialogConsultaCliente3.edtipoclienteExit(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

end.
