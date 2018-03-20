unit DialogConsultaFactura;

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
  TfrmDialogConsultaFactura = class(TfrmDialogConsulta)
    dbDatosTotalPagado: TcxGridDBColumn;
    dbDatosTotalPendiente: TcxGridDBColumn;
    dbDatosEntredaID: TcxGridDBColumn;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosPacienteID: TcxGridDBColumn;
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosNeto: TcxGridDBColumn;
    dbDatosNombrePaciente: TcxGridDBColumn;
    dbDatosClienteNombre: TcxGridDBColumn;
    qrFacturas: TADOQuery;
    qrFacturasENTRADAID: TStringField;
    qrFacturasFECHA: TDateTimeField;
    qrFacturasHORAENTRADA: TStringField;
    qrFacturasPACIENTEID: TStringField;
    qrFacturasCLIENTEID: TStringField;
    qrFacturasDOCTORID: TStringField;
    qrFacturasPOLIZAID: TStringField;
    qrFacturasENCLINICA: TIntegerField;
    qrFacturasRECORDCLINICA: TStringField;
    qrFacturasNUMEROHABITACION: TStringField;
    qrFacturasFECHAENTRADA: TDateTimeField;
    qrFacturasFECHADEALTA: TDateTimeField;
    qrFacturasRESULTADOPACIENTE: TIntegerField;
    qrFacturasRESULTADODOCTOR: TIntegerField;
    qrFacturasFECHAPROMETIDA: TDateTimeField;
    qrFacturasHORAPROMETIDA: TStringField;
    qrFacturasFLEBOTOMISTAID: TStringField;
    qrFacturasNOTA: TStringField;
    qrFacturasPROYECTOID: TStringField;
    qrFacturasRECORDID: TIntegerField;
    qrFacturasBRUTO: TBCDField;
    qrFacturasDESCUENTO: TBCDField;
    qrFacturasSUBTOTAL: TBCDField;
    qrFacturasNETO: TBCDField;
    qrFacturasNOMBREPACIENTE: TStringField;
    qrFacturasDIRECCION: TStringField;
    qrFacturasTELEFONOS: TStringField;
    qrFacturasTELEFONO2: TStringField;
    qrFacturasEMAIL: TStringField;
    qrFacturasCLIENTENOMBRE: TStringField;
    qrFacturasSUCURSALID: TStringField;
    qrFacturasUSERID: TStringField;
    qrFacturasCOBROID: TStringField;
    qrFacturasTOTALPAGADO: TBCDField;
    qrFacturasPRIORIDAD: TIntegerField;
    qrFacturasFAX: TStringField;
    qrFacturasTIPODOCUMENTO: TIntegerField;
    qrFacturasCOBERTURAPORC: TBCDField;
    qrFacturasCOBERTURASEGURO: TBCDField;
    qrFacturasCOBERTURAVALOR: TBCDField;
    qrFacturasDESCUENTOPORC: TBCDField;
    qrFacturasDESCUENTOVALOR: TBCDField;
    qrFacturasDESCUENTOBONO: TBCDField;
    qrFacturasORIGEN: TStringField;
    qrFacturasAPROBACIONNO: TStringField;
    qrFacturasAPROBACIONPOR: TStringField;
    qrFacturasCOBERTURARECHAZADA: TIntegerField;
    qrFacturasCOBERTURACONFIRMADA: TIntegerField;
    qrFacturasFECHAASEGURADORA: TDateTimeField;
    qrFacturasMUESTRANO: TStringField;
    qrFacturasMONEDAID: TStringField;
    qrFacturasCOBERTURAEXPPORC: TIntegerField;
    qrFacturasEDADPACIENTE: TIntegerField;
    qrFacturasSEXO: TIntegerField;
    qrFacturasNOMBREDOCTOR: TStringField;
    qrFacturasPUBLICARINTERNET: TIntegerField;
    qrFacturasCARNET: TStringField;
    qrFacturasPUBLICARINTERNETDOCTOR: TIntegerField;
    qrFacturasCUADREGLOBAL: TStringField;
    qrFacturasCUADREUSUARIO: TStringField;
    qrFacturasDESCAUTORIZADOPOR: TStringField;
    qrFacturasGASTOSVARIOS: TBCDField;
    qrFacturasNOAS400: TIntegerField;
    qrFacturasNOAXAPTA: TIntegerField;
    qrFacturasNOFACTURA: TIntegerField;
    qrFacturasFACTEXTERIOR: TIntegerField;
    qrFacturasHOLD: TIntegerField;
    qrFacturasREPMUESTRA: TIntegerField;
    qrFacturasENTRADAIDANT: TStringField;
    qrFacturasTIPOENTRADA: TStringField;
    qrFacturasFORMADEPAGO: TStringField;
    qrFacturasDESCUENTOCARD: TStringField;
    qrFacturasDESCUENTOTEXTO: TStringField;
    qrFacturasACUERDOPROPIO: TIntegerField;
    qrFacturasCLIENTEPADRE: TStringField;
    qrFacturasDESCUENTOPLANID: TStringField;
    qrFacturasFECHAREGISTRO: TDateTimeField;
    qrFacturasHORAREGISTRO: TStringField;
    qrFacturasTASA: TBCDField;
    qrFacturasESTATUS: TIntegerField;
    qrFacturasTIPOCLIENTEAS400: TIntegerField;
    qrFacturasCLASECREDITO: TStringField;
    qrFacturasCARNETNUMERO: TStringField;
    qrFacturasCLIENTEPADREAXAPTA: TStringField;
    qrFacturasPACIENTEIDAXAPTA: TStringField;
    qrFacturasCLIENTEIDAXAPTA: TStringField;
    qrFacturasDOCTORIDAXAPTA: TStringField;
    qrFacturasDATAAREAID: TStringField;
    qrFacturasRECID: TIntegerField;
    qrFacturasTotalPendiente: TBCDField;
    qrFacturasSTATUS: TStringField;
    qrFacturasNCF: TStringField;
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
  frmDialogConsultaFactura: TfrmDialogConsultaFactura;
  adentrogrid : Boolean;

implementation

uses DataModule,dataBanco, Main;

{$R *.dfm}

procedure TfrmDialogConsultaFactura.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin

  DMB.RetornarFactura := qrFacturasEntradaId.value;
  //frmMain.frmTmp.BuscarDatos;
  //frmMain.frmTmp.RefrescarInterface;
 end;
end;

procedure TfrmDialogConsultaFactura.BuscarData;
var
 sqlString : String;
begin
 //sqlString := 'Select * from dbo.PTENTRADAPACIENTE INNER JOIN dbo.BSDonacion ON dbo.PTENTRADAPACIENTE.ENTRADAID = dbo.BSDonacion.DonacionID ';
 sqlString := 'Select * from BSVenta ';
 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' where EntradaID like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' where PacienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' where NombrePaciente like '+#39+'%'+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' where ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     4 : sqlString := sqlString + ' where ClienteNombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     5 : sqlString := sqlString + ' where Telefonos like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;

 qrFacturas.Close;
 qrFacturas.SQL.Text := sqlString + ' Order by fecha desc,horaentrada desc,entradaId';
 qrFacturas.Open;

end;

procedure TfrmDialogConsultaFactura.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaFactura.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaFactura.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaFactura.FormCreate(Sender: TObject);
begin
  inherited;
  qrFacturas.Close;
  qrFacturas.SQL.Text :=  'Select * from BSVenta ';
  qrFacturas.Open;

  edbuscarpor.ItemIndex := 2;
end;

procedure TfrmDialogConsultaFactura.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaFactura.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;


end.
