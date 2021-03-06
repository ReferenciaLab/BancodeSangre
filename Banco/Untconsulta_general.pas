unit Untconsulta_general;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, cxPC, cxControls, cxLabel, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGraphics, Menus,
  cxLookAndFeelPainters, cxButtons, Grids, DBGrids, DB, ADODB, Buttons, ExtCtrls,
  DBCtrls, Mask, ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppBands, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE;

type
  TFrmconsulta_general = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel9: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    DBGrid1: TDBGrid;
    cxTabSheet4: TcxTabSheet;
    cxLabel11: TcxLabel;
    cxComboBox3: TcxComboBox;
    Qdonaciones: TADOQuery;
    DSdonaciones: TDataSource;
    cxTextEdit4: TcxTextEdit;
    DBGrid2: TDBGrid;
    Qproductos: TADOQuery;
    DSproductos: TDataSource;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Qsalida: TADOQuery;
    QsalidaCOMENTARIO_SALIDA: TMemoField;
    QsalidaFECHA_SALIDA: TDateTimeField;
    QsalidaUSUARIO_SALIDA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBGrid3: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid4: TDBGrid;
    Qmovimientos: TADOQuery;
    Qhistorial: TADOQuery;
    DSmovimientos: TDataSource;
    DShistorial: TDataSource;
    DBMemo2: TDBMemo;
    Label7: TLabel;
    QmovimientosISTBDONACION: TStringField;
    QmovimientosMOVIMIENTO: TStringField;
    QmovimientosFECHA: TDateTimeField;
    QmovimientosHORA: TDateTimeField;
    QmovimientosUSUARIO: TStringField;
    QmovimientosNOMBRE_EQUIPO: TStringField;
    QmovimientosDIRECCION_IP: TStringField;
    QmovimientosCODIGOID: TStringField;
    DBGrid5: TDBGrid;
    Qresumen: TADOQuery;
    DSresumen: TDataSource;
    DBGrid6: TDBGrid;
    SpeedButton2: TSpeedButton;
    Qproductos_resumen: TADOQuery;
    DSproductos_resumen: TDataSource;
    DBGrid7: TDBGrid;
    Label8: TLabel;
    cxLabel8: TcxLabel;
    Qproductos_cobrados: TADOQuery;
    DSproductos_cobrados: TDataSource;
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
    ppSystemVariable3: TppSystemVariable;
    ppImage1: TppImage;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    BitBtn1: TBitBtn;
    ppBDEPipeline2: TppBDEPipeline;
    QproductosDonacionID: TStringField;
    QproductosMuestraNoAS: TStringField;
    QproductosFecha: TWideStringField;
    Qproductosfjfecha: TStringField;
    QproductosPacienteID: TStringField;
    QproductosVENCE: TWideStringField;
    Qproductosfjvence: TStringField;
    QproductosTipoFundaDes: TWideStringField;
    QproductosTipo: TWideStringField;
    QproductosTS: TWideStringField;
    QproductosCodigoId: TStringField;
    QproductosProductoID: TWideStringField;
    QproductosProductoDes: TWideStringField;
    QproductosMuestraNo: TStringField;
    QproductosTipoSangre: TWideStringField;
    QproductosRH: TWideStringField;
    QproductosReceptorId: TStringField;
    QproductosDoctorId: TStringField;
    QproductosCruce: TBooleanField;
    QproductosCrucePacienteId: TStringField;
    QproductosDu: TWideStringField;
    QproductosISTBDonacion: TStringField;
    QproductosCheckDigit: TStringField;
    QproductosCheckChar: TStringField;
    QproductosTemperatura: TStringField;
    QproductosCodeBar: TWideStringField;
    QproductosISTB128CodeBar: TWideStringField;
    QproductosISTBProducto: TWideStringField;
    QproductosISTBAOBCODE: TWideStringField;
    QproductosBSCode: TWideStringField;
    QproductosISTBTipo: TWideStringField;
    QproductosISTBRH: TWideStringField;
    QproductosISBT128DivCode: TWideStringField;
    QproductosBarra: TWideStringField;
    QproductosVolumen_Actual: TIntegerField;
    QproductosDonacionTipo: TStringField;
    QproductosFECHA_DONACION: TDateTimeField;
    QproductosFechaUltimaDon: TDateTimeField;
    QproductosNOMBRE: TStringField;
    QproductosSEX: TStringField;
    QproductosUltimaDonacionId: TStringField;
    QproductosPRODUCTO: TWideStringField;
    QproductosReservado: TBooleanField;
    QproductosDisponible: TBooleanField;
    QproductosStatus: TWideStringField;
    QproductosESTADO: TStringField;
    QproductosCOMENTARIO_SALIDA: TMemoField;
    QproductosFECHA_SALIDA: TDateTimeField;
    QproductosCaja: TBooleanField;
    QproductosUSUARIO_SALIDA: TStringField;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel11: TppLabel;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppShape2: TppShape;
    qOTROS_DATOS: TADOQuery;
    cxLabel10: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    cxButton4: TcxButton;
    ReporteDonaciones: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel16: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppImage2: TppImage;
    ppLabel17: TppLabel;
    ppShape3: TppShape;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
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
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    procedure cxButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure QproductosAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmconsulta_general: TFrmconsulta_general;

implementation

uses DataModule;

{$R *.dfm}

procedure TFrmconsulta_general.BitBtn1Click(Sender: TObject);
begin
  qOTROS_DATOS.close;
  qOTROS_DATOS.Parameters.ParamByName('muestra').value := QproductosMuestraNo.Value;
  qOTROS_DATOS.Open;

  ppReport1.print;
end;

procedure TFrmconsulta_general.cxButton1Click(Sender: TObject);
begin
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
   if CheckBox1.Checked = true then
      Sql.Add('and Colecta_movil is not null');
   if cxTextEdit6.Text <> '' then
     Sql.Add('and Colecta_movil like '#39 + '%'+ cxTextEdit6.Text +'%'+ #39);

   if cxTextEdit1.Text <> '' then
     Sql.Add('and DonacionID = '#39 + cxTextEdit1.Text + #39);
   if cxTextEdit2.Text <> '' then
     Sql.Add('and PacienteID = '#39 + cxTextEdit2.Text + #39);
   if cxTextEdit4.Text <> '' then
     Sql.Add('and IDENTIFICACION= '#39 + cxTextEdit4.Text + #39);
   if cxTextEdit3.Text <> '' then
     Sql.Add('and nombre like '#39 + '%'+ cxTextEdit3.Text +'%'+ #39);
   if cxTextEdit5.Text <> '' then
     Sql.Add('and MuestraNo= '#39 + cxTextEdit5.Text + #39);

    if (cxDateEdit1.Text <> '') and (cxDateEdit2.Text <> '') then
      Begin
        Sql.Add('and fecha Between :F1 And :F2 ');
        Parameters.ParamByName('F1').Value := cxDateEdit1.Date;
        Parameters.ParamByName('F2').Value := cxDateEdit2.Date;
      end;
    if (cxComboBox3.Text = 'NEGATIVO') OR (cxComboBox3.Text = 'POSITIVO') then
        Sql.Add('and RH = '#39 + cxComboBox3.Text + #39);

    if (cxComboBox1.Text <> '') then
        Sql.Add('and REPLACE(tiposangre,''"'','''') = '#39 + cxComboBox1.Text + #39);
   Open;
   if Qdonaciones.RecordCount > 0 then
       BEGIN
         StatusBar1.Panels[1].Text := IntToStr(Qdonaciones.RecordCount);
         cxButton4.Enabled := true;
       end
          else
          Begin
            cxButton4.Enabled := false;
            StatusBar1.Panels[1].Text := '0';
          end;


 end;


end;

procedure TFrmconsulta_general.cxButton2Click(Sender: TObject);
begin
 Qdonaciones.close;
 cxTextEdit1.Clear;
 cxTextEdit2.Clear;
 cxTextEdit3.Clear;
 cxTextEdit4.Clear;
 cxTextEdit5.Clear;
 cxButton4.Enabled := false;
end;

procedure TFrmconsulta_general.cxButton3Click(Sender: TObject);
begin
Close;
end;

procedure TFrmconsulta_general.cxButton4Click(Sender: TObject);
begin

ReporteDonaciones.Print;

end;

procedure TFrmconsulta_general.DBGrid1DblClick(Sender: TObject);
begin
if Qdonaciones.RecordCount > 0  then
  Begin
    cxPageControl1.ActivePage := cxTabSheet2;
    With Qproductos Do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT  * FROM V_ETIQUETAS');
       Sql.Add('WHERE DONACIONID ='+#39+ Qdonaciones.FieldByName('DONACIONID').Value + #39);
       //Sql.Add('GROUP BY DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION');
       Open;
     end;
     Qproductos_cobrados.close;
     Qproductos_cobrados.parameters.parambyname('DONACION').value := Qdonaciones.FieldByName('DONACIONID').Value;
     Qproductos_cobrados.open;
  end;
end;

procedure TFrmconsulta_general.DBGrid2DblClick(Sender: TObject);
begin
if Qproductos.RecordCount > 0  then
  Begin
    cxPageControl1.ActivePage := cxTabSheet3;
    With Qhistorial Do
     Begin
       Close;
       Parameters.ParamByName('PRODUCTO').Value := Qproductos.FieldByName('codigoid').AsString;
       Open;
     end;
    With Qmovimientos  Do
     Begin
       Close;
       Parameters.ParamByName('donacion').Value := Qproductos.FieldByName('ISTBDONACION').AsString;
       Open;
     end;
  end;

end;

procedure TFrmconsulta_general.DBGrid5DblClick(Sender: TObject);
begin
if Qresumen.RecordCount > 0  then
  Begin

    With Qproductos_resumen Do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,');
       Sql.Add('       PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION,NOMBRE,ISTBPRODUCTO');
       Sql.Add('FROM V_ETIQUETAS');
       Sql.Add('WHERE PRODUCTOID ='+#39+ Qresumen.FieldByName('PRODUCTOID').Value + #39);
       Sql.Add('and ISNULL(status,''A'') = '+ #39+ 'A'+#39);
       Sql.Add('and  caja = 0 ');
       Sql.Add('and  reservado = 0 ');
       Sql.Add('GROUP BY DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION,NOMBRE,ISTBPRODUCTO');
       Sql.Add('ORDER BY VENCE DESC');
       Open;
     end;
  end;

end;

procedure TFrmconsulta_general.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := cafree;
end;

procedure TFrmconsulta_general.FormCreate(Sender: TObject);
begin
Qproductos.close;
Qdonaciones.close;
cxPageControl1.ActivePage := cxTabSheet1;
end;

procedure TFrmconsulta_general.QproductosAfterScroll(DataSet: TDataSet);
begin
if  trim(Qproductos.FieldByName('Status').AsString) = 'I' then
   Begin
     Qsalida.close;
     Qsalida.Parameters.ParamByName('PRODUCTO').Value := Qproductos.FieldByName('CODIGOID').AsString;
     Qsalida.Open;
   end
   else
   Qsalida.close;
end;

procedure TFrmconsulta_general.SpeedButton1Click(Sender: TObject);
begin
if RadioButton1.Checked = True then
 Begin
    With Qproductos Do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,');
       Sql.Add('       PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION');
       Sql.Add('FROM V_ETIQUETAS');
       Sql.Add('GROUP BY DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION');
       Open;
     end;
 end;
if RadioButton2.Checked = True then
 Begin
    With Qproductos Do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,');
       Sql.Add('       PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION');
       Sql.Add('FROM V_ETIQUETAS');
       Sql.Add('WHERE STATUS ='+#39+ 'A'+#39);
       Sql.Add('GROUP BY DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION');
       Open;
     end;
 end;
if RadioButton3.Checked = True then
 Begin
    With Qproductos Do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,');
       Sql.Add('       PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION');
       Sql.Add('FROM V_ETIQUETAS');
       Sql.Add('WHERE RESERVADO = 1');
       Sql.Add('GROUP BY DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION');
       Open;
     end;
 end;
 Qproductos_cobrados.close;
end;

procedure TFrmconsulta_general.SpeedButton2Click(Sender: TObject);
begin
Qresumen.close;
Qresumen.Open;
end;

end.
