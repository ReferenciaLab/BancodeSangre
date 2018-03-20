unit DialogConsultaReceptorDonacion;

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
  TfrmDialogConsultaReceptorDonacion = class(TfrmDialogConsulta)
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
  frmDialogConsultaReceptorDonacion: TfrmDialogConsultaReceptorDonacion;
  adentrogrid : Boolean;

implementation
 uses DataModule,PuntoVenta,Main, DataBanco;
{$R *.dfm}

procedure TfrmDialogConsultaReceptorDonacion.Run;
Var
 qfind : TADOQuery;
 //qfindciudad : TADOquery;
 //ClienteFactura : string;
begin
 AdentroGrid := false;
 BuscarData;
 showmodal;
 if ModalResult = mrOk then
 begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;


  DMB.qrDonacionDirigidoPacienteId.Value := DM.qrPacientesClienteID.Value;
  DMB.qrDonacionDirigidoNombre.Value:= DM.qrPacientesNombre.Value;

  end;

  //FreeAndNil(qfindCiudad);

end;

procedure TfrmDialogConsultaReceptorDonacion.btaceptarClick(Sender: TObject);
begin
  inherited;
  //Algo
end;

procedure TfrmDialogConsultaReceptorDonacion.BuscarData;
var
 sqlString : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;
 sqlString := 'Select * from PTCliente Where GrupoCliente not in ('+#39+DM.qrParametroGrupoSeg.Value+#39+','+#39+DM.qrParametroGrupoClinica.Value+#39+','+#39+DM.qrParametroGrupoLab.Value+#39+') ';
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

procedure TfrmDialogConsultaReceptorDonacion.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaReceptorDonacion.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaReceptorDonacion.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  //if edbuscarpor.ItemIndex = 1 then BuscarData;
  BuscarData;
  
end;

procedure TfrmDialogConsultaReceptorDonacion.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrPacientes.Close;
  DM.qrPacientes.Open;

  edbuscarpor.ItemIndex := 3;

end;

procedure TfrmDialogConsultaReceptorDonacion.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaReceptorDonacion.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

end.
