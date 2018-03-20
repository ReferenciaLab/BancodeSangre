unit DialogConsultaPaciente1;

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
  TfrmDialogConsultaPaciente1 = class(TfrmDialogConsulta)
    dbDatosPacienteID: TcxGridDBColumn;
    dbDatosIdentificacion: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
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
  frmDialogConsultaPaciente1: TfrmDialogConsultaPaciente1;
  adentrogrid : Boolean;

implementation
 uses DataModule,PuntoVenta,Main, DataBanco, DCliente;
{$R *.dfm}

procedure TfrmDialogConsultaPaciente1.Run;
begin
 DMB.RetornarPaciente:= '';
 DMB.NombrePaciente:= ''; 
 AdentroGrid := false;
 BuscarData;
 showmodal;

 if ModalResult = mrOk then
 begin

    DMB.RetornarPaciente:= dmCliente.getString('CLIENTEID');
    DMB.NombrePaciente:= dmCliente.getString('NOMBRE');

  end;


end;

procedure TfrmDialogConsultaPaciente1.BuscarData;
var
 sqlString : String;
begin

 sqlString := '';

 if edbuscar.Text <> '' then begin

   case edbuscarpor.ItemIndex of
     0 : sqlString :=  ' ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString :=  ' Nombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString :=  ' Identificacion like '+#39+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString :=  ' Telefono like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;

   dmCliente.setFilter(sqlString);

 end;

end;

procedure TfrmDialogConsultaPaciente1.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPaciente1.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPaciente1.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;

  BuscarData;

end;

procedure TfrmDialogConsultaPaciente1.FormCreate(Sender: TObject);
begin
  inherited;

  edbuscarpor.ItemIndex := 1;
  dsDatos.DataSet:= dmCliente.Tabla;

end;

procedure TfrmDialogConsultaPaciente1.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaPaciente1.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
  dmCliente.Actualizar;
end;

end.
