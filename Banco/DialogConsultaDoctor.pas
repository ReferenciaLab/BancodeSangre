unit DialogConsultaDoctor;

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
  TfrmDialogConsultaDoctor = class(TfrmDialogConsulta)
    dbDatosDoctorID: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosContacto: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
    dbDatosFax: TcxGridDBColumn;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
  private
    FFiltro: string;
    procedure SetFiltro(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
    property Filtro:string write SetFiltro;
  end;

var
  frmDialogConsultaDoctor: TfrmDialogConsultaDoctor;
  adentrogrid : Boolean;

implementation
 uses DataModule, DataBanco, PuntoVenta,Main, DDoctor;
{$R *.dfm}

procedure TfrmDialogConsultaDoctor.Run;
begin
 AdentroGrid := false;
 BuscarData;
 showmodal;

 if ModalResult = mrOk then
 begin

    DMB.RetornarDoctor := dmDoctor.getString('DOCTORID');
    DMB.NombreDoctor:= dmDoctor.getString('NOMBRE');

 end;

end;

procedure TfrmDialogConsultaDoctor.SetFiltro(const Value: String);
begin
  FFiltro := Value;
end;

procedure TfrmDialogConsultaDoctor.BuscarData;
var
 sqlString : String;
begin
  if Trim(FFiltro) <> EmptyStr then
   sqlString := FFiltro
  else
   sqlString := '';
 if edbuscar.Text <> '' then
 begin
   if edbuscarpor.ItemIndex in [0,1,2] then
     if Trim(sqlString) <> EmptyStr then
        sqlString := sqlString + ' and ';
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' DoctorID like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' Nombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' Telefono like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;
 if Trim(sqlString) <> EmptyStr then 
   dmDoctor.setFilter(sqlString);
end;

procedure TfrmDialogConsultaDoctor.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaDoctor.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaDoctor.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;

  BuscarData;

end;

procedure TfrmDialogConsultaDoctor.FormCreate(Sender: TObject);
begin
  inherited;

  edbuscarpor.ItemIndex := 1;

end;

procedure TfrmDialogConsultaDoctor.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaDoctor.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

end.
