unit DialogConsultaCliente;

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
  TfrmDialogConsultaCliente = class(TfrmDialogConsulta)
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
    edtipocliente: TcxExtLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure edtipoclientePropertiesChange(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure BuscarData;
    function CodGrupo(Descripcion : String) : String;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaCliente: TfrmDialogConsultaCliente;
  adentrogrid : Boolean;

implementation
 uses DataModule,PuntoVenta,Main;
{$R *.dfm}

function TfrmDialogConsultaCliente.CodGrupo(Descripcion: string) : String;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('Select * from PTGrupoCliente Where Descripcion = :desc',Descripcion);
 result := qfind.FieldByName('GrupoCliente').AsString;
 FreeAndNil(qfind);
end;

procedure TfrmDialogConsultaCliente.Run;
Var
 qfind,qfindPrincipal : TADOQuery;
 clientefactura : string;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qfind := DM.NewQuery;
  qfind.Close;
  qfind.SQL.Text := 'Select * from PTProyecto Where ClienteID = '+#39+DM.qrClientesClienteID.Value+#39;
  qfind.Open;

  frmMain.frmTmp.qrEntradaPacienteClienteID.Value := DM.qrClientesClienteID.Value;
  frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := DM.qrClientesNombre.AsString;
  frmMain.frmTmp.qrEntradaPacienteProyectoID.Value := qfind.FieldByName('ProyectoID').AsString;
  frmMain.frmTmp.qrEntradaPacienteOrigen.Value := DM.qrClientesGrupoCliente.Value;

  if frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value then
  begin
   frmMain.frmTmp.qrEntradaPacienteDescuentoPorc.Value := 0;
   frmMain.frmTmp.AsignarDescuentoPermitidoalUsuario1.Enabled := false;
   frmMain.frmTmp.AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   frmMain.frmTmp.ActTotales;
  end
  else
  begin
   frmMain.frmTmp.AsignarDescuentoPermitidoalUsuario1.Enabled := true;
   frmMain.frmTmp.AsignarDescuentoAutorizadoporCobros1.Enabled := true;
  end;

  if frmMain.frmTmp.qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoEmp.Value then
  begin
   FreeAndNil(qfind);
   qfind := DM.Find('Select * from PTCliente Where ClienteID = :cli',frmMain.frmTmp.qrEntradaPacienteClienteID.Value);

   if qfind.FieldByName('Principal').AsString <> '' then
   begin
      qfindPrincipal := DM.Find('Select * from PTCliente Where ClienteID = :cli',qfind.FieldByName('Principal').AsString);

      if qfindPrincipal.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoEmp.Value then
      begin
        ClienteFactura := frmMain.frmTmp.qrEntradaPacienteClienteID.Value;
        frmMain.frmTmp.AsignarDescuentoPermitidoalUsuario1.Enabled := false;
        frmMain.frmTmp.AsignarDescuentoAutorizadoporCobros1.Enabled := false;
      end
      else
        ClienteFactura := qfind.FieldByName('Principal').AsString;

      FreeAndNil(qfindPrincipal);
   end
   else
      ClienteFactura := frmMain.frmTmp.qrEntradaPacienteClienteID.Value;

   frmMain.frmTmp.qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(ClienteFactura);
   frmMain.frmTmp.ActTotales;
  end;

  DM.VerificarGastosVarios(ClienteFactura,frmMain.frmTmp.qrEntradaPacienteRecid.value);
  frmMain.frmTmp.ActTotales;

  if DM.qrClientesCoberturaPorc.value <> 0 then
  begin
   frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := DM.qrClientesCoberturaPorc.value;
   //frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.value := DM.qrClientesAutoConfirmar.Value;
  end
  else
  begin
   frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := 0;
   frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.value := 0;
  end;
  if DM.qrClientesMonedaID.Value <> '' then
     frmMain.frmTmp.qrEntradaPacienteMonedaID.Value := DM.qrClientesMonedaID.Value;

  if frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value then
  begin
   frmMain.frmTmp.qrEntradaPacienteDescuentoPorc.Value := 0;
   frmMain.frmTmp.AsignarDescuentoPermitidoalUsuario1.Enabled := false;
   frmMain.frmTmp.AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   frmMain.frmTmp.ActTotales;
  end
  else
  begin
   frmMain.frmTmp.AsignarDescuentoPermitidoalUsuario1.Enabled := true;
   frmMain.frmTmp.AsignarDescuentoAutorizadoporCobros1.Enabled := true;
  end;

  FreeAndNil(qfind);
  frmMain.frmTmp.RefrescarInterface;
 end;
 
end;

procedure TfrmDialogConsultaCliente.BuscarData;
var
 sqlString,concatenacion : String;
begin
 sqlString := 'Select * from PTCliente ';
 if (edtipocliente.Text <> '') and (edtipocliente.Text <> 'Todos') then
 begin
  sqlString := sqlString + ' Where GrupoCliente = '+ #39+CodGrupo(edtipocliente.Text)+#39;
  concatenacion := ' and ';
 end
 else
  concatenacion := ' where ';

 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + concatenacion + ' ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + concatenacion + ' Nombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + concatenacion + ' Telefono like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;

 end;

 DM.qrClientes.Close;
 DM.qrClientes.SQL.Text := sqlString;
 DM.qrClientes.Open;

end;

procedure TfrmDialogConsultaCliente.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaCliente.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaCliente.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
  
end;

procedure TfrmDialogConsultaCliente.edtipoclientePropertiesChange(
  Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaCliente.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaCliente.FormShow(Sender: TObject);
begin
  inherited;
  edbuscarpor.ItemIndex := 1;
  BuscarData;
  edbuscar.SetFocus;
end;

end.
