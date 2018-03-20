unit Unttarjetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ppViewr, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxTextEdit, cxContainer, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeelPainters, cxButtons, ADODB, ppCtrls, ppPrnabl, ppClass, ppBands,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, Mask, Buttons,

   ppTypes, ppForms, ppPrvDlg, ppUtils, ppVar, jpeg, cxCalendar;


type
  TFrmTarjetas = class(TfrmCustomModule)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Qdonaciones: TADOQuery;
    QdonacionesDonacionID: TStringField;
    QdonacionesMuestraNo: TStringField;
    QdonacionesFecha: TDateTimeField;
    QdonacionesPacienteID: TStringField;
    QdonacionesNOMBRE: TStringField;
    QdonacionesTipoDonante: TWideStringField;
    QdonacionesTipoSangre: TWideStringField;
    QdonacionesDonanteActivo: TSmallintField;
    QdonacionesRH: TWideStringField;
    QdonacionesISTBDonacion: TStringField;
    QdonacionesIDENTIFICACION: TStringField;
    QdonacionesDonacionStatus: TWideStringField;
    Qdonacionesfecha_entrada: TDateTimeField;
    Qdonacioneshoraentrada: TStringField;
    Qdonacionesuserid: TStringField;
    QdonacionesUSUARIOMOD: TStringField;
    QdonacionesFECHAMODIFICACION: TDateTimeField;
    Qdonacionessexo: TStringField;
    Qdonacionesedad: TIntegerField;
    QdonacionesColecta: TStringField;
    DSdonaciones: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    ppDBPipeline1: TppDBPipeline;
    pnlPreviewBar: TPanel;
    spbPreviewPrint: TSpeedButton;
    spbPreviewWhole: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    Bevel1: TBevel;
    mskPreviewPercentage: TMaskEdit;
    mskPreviewPage: TMaskEdit;
    pnlCancelButton: TPanel;
    spbPreviewCancel: TSpeedButton;
    ppViewer1: TppViewer;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppImage1: TppImage;
    ppVariable1: TppVariable;
    cxButton3: TcxButton;
    cxTextEdit3: TcxTextEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    cxLabel6: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel7: TcxLabel;
    Image99: TImage;
    Image1: TImage;
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure spbPreviewCancelClick(Sender: TObject);
    procedure spbPreviewFirstClick(Sender: TObject);
    procedure spbPreviewLastClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTarjetas: TFrmTarjetas;

implementation

uses DataModule;

{$R *.dfm}

procedure TFrmTarjetas.cxButton1Click(Sender: TObject);
begin
  inherited;
With Qdonaciones Do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT');
   Sql.Add('  DonacionID,MuestraNo,Fecha,PacienteID,NOMBRE,TipoDonante, ');
   Sql.Add('  TipoSangre,DonanteActivo,RH,ISTBDonacion,IDENTIFICACION, DonacionStatus, fecha_entrada,horaentrada,userid, USUARIOMOD, FECHAMODIFICACION, ISNULL(Colecta_movil,''OFICINAS BANCO DE SANGRE'') AS Colecta, ');
   Sql.Add('  case sexo when 1 then ''M'' ');
   Sql.Add('            when 0 then ''F'' end as sexo, edad');
   Sql.Add('FROM V_DONACION_DONANTE ');
   Sql.Add('WHERE NOMBRE1 IS NOT NULL');

   if cxTextEdit1.Text <> '' then
     Sql.Add('and nombre like '#39 + '%'+ cxTextEdit1.Text +'%'+ #39);

    if cxTextEdit2.Text <> '' then
     Sql.Add('and Colecta_movil like '#39 + '%'+ cxTextEdit2.Text +'%'+ #39);

    if (cxComboBox3.Text = 'NEGATIVO') OR (cxComboBox3.Text = 'POSITIVO') then
        Sql.Add('and RH = '#39 + cxComboBox3.Text + #39);

    if (cxComboBox1.Text <> '') then
        Sql.Add('and REPLACE(tiposangre,''"'','''') = '#39 + cxComboBox1.Text + #39);

    if (cxDateEdit1.Text <> '') and (cxDateEdit2.Text <> '') then
      Begin
        Sql.Add('and fecha Between :F1 And :F2 ');
        Parameters.ParamByName('F1').Value := cxDateEdit1.Date;
        Parameters.ParamByName('F2').Value := cxDateEdit2.Date;
      end;
   Open;
   if Qdonaciones.RecordCount > 0 then
       BEGIN
         //StatusBar1.Panels[1].Text := IntToStr(Qdonaciones.RecordCount);
         //cxButton4.Enabled := true;
       end
          else
          Begin

          end;


 end;

end;

procedure TFrmTarjetas.cxButton2Click(Sender: TObject);
begin
  inherited;
cxTextEdit3.Clear;
cxTextEdit2.Clear;
cxTextEdit1.Clear;
Qdonaciones.close;
Image1.Picture := nil;
cxComboBox1.ItemIndex:= -1;
cxComboBox3.ItemIndex:= -1;
ppViewer1.reset;
ppViewer1.Report := nil;
end;

procedure TFrmTarjetas.cxButton3Click(Sender: TObject);
begin
  inherited;
if OpenDialog1.Execute then
  begin
    try
    Image1.Picture.LoadFromFile(OpenDialog1.FileName);
    Except
      ShowMessage('Formato de archivo incorrecto');
    end;
  end;
end;

procedure TFrmTarjetas.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  try
    if Qdonaciones.RecordCount > 0 then
      begin

        ppViewer1.Report :=  ppReport1;
        with ppViewer1.Report do
        begin
          PrintToDevices;
        end;

      end;
  finally

  end;


end;

procedure TFrmTarjetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//action := caFree;
end;

procedure TFrmTarjetas.mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
  var
  liPercentage: Integer;

begin
  inherited;
begin
  if (Key = #13) then
    begin
      liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

      ppViewer1.ZoomPercentage := liPercentage;

      spbPreviewWhole.Down := False;
      spbPreviewWidth.Down := False;
      spbPreview100Percent.Down := False;

      mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
    end; {if, carriage return pressed}

end; {procedure, mskPreviewPercentageKeyPress}

end;

procedure TFrmTarjetas.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;
         if cxTextEdit3.Text <> '' then
           begin
             ppVariable1.Value := cxTextEdit3.Text;
           end;

           ppImage1.Picture := Image1.Picture;


end;

procedure TFrmTarjetas.spbPreview100PercentClick(Sender: TObject);
begin
  inherited;
  ppViewer1.ZoomSetting := zs100Percent;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;

end;

procedure TFrmTarjetas.spbPreviewCancelClick(Sender: TObject);
begin
  inherited;
  if ppViewer1.Report.Printing then
    ppViewer1.Cancel;
end;

procedure TFrmTarjetas.spbPreviewFirstClick(Sender: TObject);
begin
  inherited;
ppViewer1.FirstPage;
end;

procedure TFrmTarjetas.spbPreviewLastClick(Sender: TObject);
begin
  inherited;
ppViewer1.LastPage;
end;

procedure TFrmTarjetas.spbPreviewNextClick(Sender: TObject);
begin
  inherited;
ppViewer1.NextPage;
end;

procedure TFrmTarjetas.spbPreviewPrintClick(Sender: TObject);
begin
  inherited;
 ppViewer1.Print;
end;

procedure TFrmTarjetas.spbPreviewPriorClick(Sender: TObject);
begin
  inherited;
  ppViewer1.PriorPage;
end;

procedure TFrmTarjetas.spbPreviewWholeClick(Sender: TObject);
begin
  inherited;
  ppViewer1.ZoomSetting := zsWholePage;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TFrmTarjetas.spbPreviewWidthClick(Sender: TObject);
begin
  inherited;
  ppViewer1.ZoomSetting := zsPageWidth;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;

end;

end.
