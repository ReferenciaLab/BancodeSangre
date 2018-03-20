unit DialogConsultaPruebasCap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit;

type
  TfrmDialogConsultaPruebasCap = class(TfrmDialogConsulta)
    dbDatosPruebaID: TcxGridDBColumn;
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPrecio: TcxGridDBColumn;
    dbDatosColumn1: TcxGridDBColumn;
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
  frmDialogConsultaPruebasCap: TfrmDialogConsultaPruebasCap;
  adentrogrid : Boolean;

implementation

uses DataModule,Main;

{$R *.dfm}

procedure TfrmDialogConsultaPruebasCap.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  frmMain.frmCap.qrEntradaPacienteDetalle.Insert;
  frmMain.frmCap.qrEntradaPacienteDetallePruebaID.Value := DM.qrPruebasPruebaID.Value;
  frmMain.frmCap.qrEntradaPacienteDetalle.Post;
 end;
end;

procedure TfrmDialogConsultaPruebasCap.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'Select * from PTPrueba ';

 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' Where PruebaID Like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' Where Descripcion Like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;

 DM.qrPruebas.Close;
 DM.qrPruebas.SQL.Text := sqlString;
 DM.qrPruebas.Open;
end;

procedure TfrmDialogConsultaPruebasCap.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPruebasCap.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPruebasCap.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCap.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrPruebas.Close;
  DM.qrPruebas.Open;

  edbuscarpor.ItemIndex := 1;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCap.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaPruebasCap.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

end.