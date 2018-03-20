unit ConsultaCxC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab, StdCtrls,
  cxGraphics, cxDropDownEdit, cxDBEdit, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxLabel, DB, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ADODB, DBCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLookAndFeelPainters, cxButtons, Grids, DBGrids, ppVar, ppPrnabl,
  ppClass, ppCtrls, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppDBBDE;

type
  TfrmConsultacxc = class(TfrmCustomModule)
    Panel1: TPanel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    Panel2: TPanel;
    TBtipoCliente: TADOTable;
    TBGrupoCliente: TADOTable;
    TBtipoClienteTIPOCLIENTE: TStringField;
    TBtipoClienteDESCRIPCION: TStringField;
    TBGrupoClienteGRUPOCLIENTE: TStringField;
    TBGrupoClienteDESCRIPCION: TStringField;
    DSgrupoCliente: TDataSource;
    DStipoCliente: TDataSource;
    TBGrupoClienteGRUPO: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    TBtipoClienteTIPO: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Qrydatos: TADOQuery;
    DSdatos: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    cxButton4: TcxButton;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    QrydatosRECID: TIntegerField;
    QrydatosPACIENTEID: TStringField;
    QrydatosNOMBREPACIENTE: TStringField;
    QrydatosNETO: TBCDField;
    QrydatosTOTALPAGADO: TBCDField;
    QrydatosTotalPendiente: TBCDField;
    QrydatosFECHA: TDateTimeField;
    QrydatosGRUPOCLIENTE: TStringField;
    QrydatosTIPOCLIENTE: TStringField;
    Qrydetalle: TADOQuery;
    QrydetalleCODIGOID: TStringField;
    QrydetalleDESCRIPCION: TStringField;
    QrydetallePRECIO: TBCDField;
    DSdetalle: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    Fecha1: TppVariable;
    Fecha2: TppVariable;
    tipo: TppVariable;
    Grupo: TppVariable;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultacxc: TfrmConsultacxc;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmConsultacxc.cxButton1Click(Sender: TObject);
begin
  inherited;
With Qrydatos do
 begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM V_CXC');
   Sql.Add('WHERE TOTALPENDIENTE > 0');
   if  cxCheckBox3.Checked = true  then
       Sql.Add('AND FECHA >='+ #39+ FormatDateTime('mm/dd/yyyy', cxDateEdit1.Date) + #39);
   if  cxCheckBox4.Checked = true  then
       Sql.Add('AND FECHA <='+#39+ FormatDateTime('mm/dd/yyyy', cxDateEdit2.Date) + #39);
   if  cxCheckBox1.Checked = true  then
       Sql.Add('AND TIPOCLIENTE =' +#39+ TBtipoClienteTIPOCLIENTE.Value + #39);
   if  cxCheckBox2.Checked = true  then
       Sql.Add('AND GRUPOCLIENTE =' +#39+ TBGrupoClienteGRUPOCLIENTE.Value + #39);

   Sql.Add('');
   Open;



 end;
end;

procedure TfrmConsultacxc.cxButton2Click(Sender: TObject);
begin
  inherited;

  ppReport1.Print;
end;

procedure TfrmConsultacxc.cxButton4Click(Sender: TObject);
begin
  inherited;
Panel3.Visible := false;
end;

procedure TfrmConsultacxc.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
    With Qrydetalle do
    begin
      Close;
      Parameters.ParamByName('numero').Value := QrydatosRECID.Value;
      Open;
    end;
    Panel3.Visible := True;
    cxTextEdit3.Text := QrydatosPACIENTEID.AsString;
    cxTextEdit4.Text := QrydatosNOMBREPACIENTE.AsString;

end;

procedure TfrmConsultacxc.FormCreate(Sender: TObject);
begin
  inherited;
TBtipoCliente.Open;
TBGrupoCliente.Open;
end;

procedure TfrmConsultacxc.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
  if cxCheckBox3.Checked = true then
     Fecha1.Value := 'Fecha Desde : ' + cxDateEdit1.Text
     else
     Fecha1.Value := '';
  if cxCheckBox4.Checked = true then
     Fecha2.Value := 'Fecha Hasta : ' + cxDateEdit2.Text
     else
     Fecha2.Value := '';

  if cxCheckBox1.Checked = true then
     Tipo.Value := 'Tipo Cliente  : ' + cxDBLookupComboBox2.Text
     else
     Tipo.Value := '';
  if cxCheckBox2.Checked = true then
     grupo.Value := 'Empresa / Categoria : ' + cxDBLookupComboBox1.Text
     else
     grupo.Value := '';

end;

end.
