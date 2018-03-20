unit DialogConsultaPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro;

type
  TfrmDialogConsultaPaciente = class(TfrmDialogConsulta)
    dbDatosPacienteID: TcxGridDBColumn;
    dbDatosIdentificacion: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
    procedure btaceptarClick(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaPaciente: TfrmDialogConsultaPaciente;
  adentrogrid : Boolean;

implementation
 uses DataModule,PuntoVenta,Main;
{$R *.dfm}

procedure TfrmDialogConsultaPaciente.Run;
Var
 qfind : TADOQuery;
 qfindciudad : TADOquery;
 ClienteFactura : string;
begin
 AdentroGrid := false;
 BuscarData;
 showmodal;
 if ModalResult = mrOk then
 begin
 // qfind := DM.NewQuery;
 { qfind.Close;
  qfind.SQL.Text := 'Select * from PTCliente Where ClienteID = '+#39+DM.qrPacientesSeguroID.Value+#39;
  qfind.Open;  }
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qfindciudad := DM.Find('Select * from PTCiudad Where CiudadID = :ciu',DM.qrPacientesCiudadID.AsString);

  frmMain.frmTmp.qrEntradaPacientePacienteID.Value := DM.qrPacientesClienteID.Value;
 // frmMain.frmTmp.qrEntradaPacienteClienteID.Value := DM.qrPacientesSeguroID.Value;
  frmMain.frmTmp.qrEntradaPacienteNombrePaciente.Value := DM.qrPacientesNombre.Value;
  frmMain.frmTmp.qrEntradaPacienteDireccion.Value := DM.qrPacientesDireccion.Value;
  if qfindciudad.RecordCount > 0 then
     frmMain.frmTmp.qrEntradaPacienteDireccion.Value := frmMain.frmTmp.qrEntradaPacienteDireccion.Value + #13 +
                                                        qfindciudad.FieldByName('Descripcion').AsString;

  frmMain.frmTmp.qrEntradaPacienteTelefonos.Value := DM.qrPacientesTelefono.Value;
  frmMain.frmTmp.qrEntradaPacienteEmail.Value := DM.qrPacienteseMail.Value;
 // frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := qfind.FieldByName('Nombre').AsString;
  frmMain.frmTmp.qrEntradaPacienteFax.Value := DM.qrPacientesFax.Value;

  frmMain.frmTmp.qrEntradaPacienteResultadoPaciente.Value := DM.qrPacientesEnvioResultado.Value;
 // frmMain.frmTmp.qrEntradaPacientePolizaID.Value := DM.qrPacientesPolizaSeguro.Value;
 // frmMain.frmTmp.qrentradapacienteorigen.Value := qfind.FieldByName('Origen').AsInteger;
 frmMain.frmTmp.qrEntradaPacienteEdadPaciente.Value := trunc((DM.SystemDate - DM.qrPacientesFechaNacimiento.Value)/365);
// frmMain.frmTmp.qrentradaPacientePublicarInternet.value := DM.qrPacientesPublicarInternet.Value;

 if frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
  begin
   qfind := DM.Find('Select * from PTCliente Where ClienteID = :cli',frmMain.frmTmp.qrEntradaPacientePacienteID.Value);

   if qfind.FieldByName('Principal').AsString <> '' then
      ClienteFactura := qfind.FieldByName('Principal').AsString
   else
      ClienteFactura := frmMain.frmTmp.qrEntradaPacientePacienteID.Value;

   frmMain.frmTmp.qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(ClienteFactura);
   DM.VerificarGastosVarios(ClienteFactura,frmMain.frmTmp.qrEntradaPacienteRecid.value);
   frmMain.frmTmp.ActTotales;

  end;


{  qfind.Close;
  qfind.SQL.Text := 'Select * from PTProyecto Where ClienteID = '+#39+DM.qrPacientesSeguroID.Value+#39;
  qfind.Open;

  frmMain.frmTmp.qrEntradaPacienteProyectoID.Value := qfind.FieldByName('ProyectoID').AsString; }

 // FreeAndNil(qfind);
  FreeAndNil(qfindCiudad);
 end;
 
end;

procedure TfrmDialogConsultaPaciente.btaceptarClick(Sender: TObject);
begin
  inherited;
  //Algo
end;

procedure TfrmDialogConsultaPaciente.BuscarData;
var
 sqlString : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;
 sqlString := 'Select * from PTCliente Where GrupoCliente not in ('+#39+DM.qrParametroGrupoSeg.Value+#39+','+#39+DM.qrParametroGrupoCli.Value+#39+','+#39+DM.qrParametroGrupoLab.Value+#39+') ';
 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' and ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' and Nombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' and Identificacion like '+#39+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' and Telefono like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;

 end;

 DM.qrPacientes.Close;
 DM.qrPacientes.SQL.Text := sqlString;
 DM.qrPacientes.Open;

end;

procedure TfrmDialogConsultaPaciente.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPaciente.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPaciente.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  //if edbuscarpor.ItemIndex = 1 then BuscarData;
  BuscarData;
  
end;

procedure TfrmDialogConsultaPaciente.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrPacientes.Close;
  DM.qrPacientes.Open;

  edbuscarpor.ItemIndex := 1;

end;

procedure TfrmDialogConsultaPaciente.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaPaciente.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

end.
