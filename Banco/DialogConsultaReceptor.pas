unit DialogConsultaReceptor;

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
  TfrmDialogConsultaReceptor = class(TfrmDialogConsulta)
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
  frmDialogConsultaReceptor: TfrmDialogConsultaReceptor;
  adentrogrid : Boolean;

implementation
 uses DataModule, DataBanco, PuntoVenta,Main;
{$R *.dfm}

procedure TfrmDialogConsultaReceptor.Run;
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
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qfindciudad := DM.Find('Select * from PTCiudad Where CiudadID = :ciu',DM.qrPacientesCiudadID.AsString);

  DMB.qrReservarReceptorId.Value := DM.qrPacientesClienteID.Value;


  FreeAndNil(qfindCiudad);

 end;
 
end;

procedure TfrmDialogConsultaReceptor.btaceptarClick(Sender: TObject);
begin
  inherited;
  //Algo
end;

procedure TfrmDialogConsultaReceptor.BuscarData;
var
 sqlString : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;
 sqlString := 'Select * from PTCliente Where GrupoCliente not in ('+#39+DM.qrParametroGrupoSeg.Value+#39+','+#39+DM.qrParametroGrupoLab.Value+#39+') ';
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

procedure TfrmDialogConsultaReceptor.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaReceptor.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaReceptor.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  //if edbuscarpor.ItemIndex = 1 then BuscarData;
  BuscarData;
  
end;

procedure TfrmDialogConsultaReceptor.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrPacientes.Close;
  DM.qrPacientes.Open;

  edbuscarpor.ItemIndex := 3;

end;

procedure TfrmDialogConsultaReceptor.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaReceptor.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

end.
