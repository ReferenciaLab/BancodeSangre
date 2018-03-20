unit DialogConsultaEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, ExtCtrls;

type
  TfrmDialogConsultaEntradas = class(TfrmDialogConsulta)
    dbDatosTotalPagado: TcxGridDBColumn;
    dbDatosTotalPendiente: TcxGridDBColumn;
    dbDatosEntradaID: TcxGridDBColumn;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosPacienteID: TcxGridDBColumn;
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosNeto: TcxGridDBColumn;
    dbDatosNombrePaciente: TcxGridDBColumn;
    dbDatosClienteNombre: TcxGridDBColumn;
    dbDatosMonedaID: TcxGridDBColumn;
    dbDatosTelefonos: TcxGridDBColumn;
    dbDatosHold: TcxGridDBColumn;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
    strWhere: String;
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaEntradas: TfrmDialogConsultaEntradas;
  adentrogrid : Boolean;

implementation

uses DataModule,PuntoVenta,Main, DataBanco;

{$R *.dfm}

procedure TfrmDialogConsultaEntradas.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
    Begin
      DMB.RetornarEntrada:= DM.qrEntradaPacienteConsRecid.AsInteger;
      DMB.RetornarEntradaId:= DM.qrEntradaPacienteConsEntradaId.Value;
    end
  else
    begin
      DMB.RetornarEntrada:= 0;
      DMB.RetornarEntradaId:= '';
    end;
end;

procedure TfrmDialogConsultaEntradas.BuscarData;
begin
  DM.qrParametro.close;
  DM.qrParametro.open;

  if trim(edbuscar.Text) <> '' then begin
    case edbuscarpor.ItemIndex of
       0 : strWhere := ' AND EntradaID like '+#39+'%'+edbuscar.Text+'%'+#39;
       1 : strWhere := ' AND PacienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
       2 : strWhere := ' AND NombrePaciente like '+#39+'%'+'%'+edbuscar.Text+'%'+#39;
       3 : strWhere := ' AND ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
       4 : strWhere := ' AND ClienteNombre like '+#39+'%'+edbuscar.Text+'%'+#39;
       5 : strWhere := ' AND Telefonos like '+#39+'%'+edbuscar.Text+'%'+#39;
    end;
  end
  else
    strWhere := '';


  DM.qrEntradaPacienteCons.Close;
  DM.qrEntradaPacienteCons.SQL.Text := DMB.sqlString + strWhere + ' Order by fecha desc,horaentrada desc,EntradaID';
  DM.qrEntradaPacienteCons.Open;

end;

procedure TfrmDialogConsultaEntradas.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaEntradas.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaEntradas.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaEntradas.FormCreate(Sender: TObject);
begin
  inherited;

  strWhere := '';

  DM.qrEntradaPacienteCons.Close;
  DM.qrEntradaPacienteCons.SQL.Text := DMB.sqlString;
  DM.qrEntradaPacienteCons.Open;

  If (frmMain.Exis_Vta = True) then
    edbuscarpor.ItemIndex := 2
  Else
    edbuscarpor.ItemIndex := 2;

end;

procedure TfrmDialogConsultaEntradas.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaEntradas.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;


end.
