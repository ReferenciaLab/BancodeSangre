unit Untescaneo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, ExtCtrls, jpeg, Buttons, cxGraphics,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Grids, DBGrids;

type
  TFrmescaneo_etiquetas = class(TForm)
    Qetiquetas: TADOQuery;
    DSetiquetas: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    Shape1: TShape;
    Image1: TImage;
    DBText3: TDBText;
    Image2: TImage;
    DBText4: TDBText;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DBMemo1: TDBMemo;
    Edit3: TEdit;
    Image3: TImage;
    DBText5: TDBText;
    CheckBox2: TCheckBox;
    DBText6: TDBText;
    DBText7: TDBText;
    Edit4: TEdit;
    CheckBox3: TCheckBox;
    Image4: TImage;
    DBText8: TDBText;
    DBText9: TDBText;
    SpeedButton1: TSpeedButton;
    QetiquetasDonacionID: TStringField;
    QetiquetasMuestraNoAS: TStringField;
    QetiquetasFecha: TWideStringField;
    Qetiquetasfjfecha: TStringField;
    QetiquetasPacienteID: TStringField;
    QetiquetasVence: TWideStringField;
    Qetiquetasfjvence: TStringField;
    QetiquetasTipoFundaDes: TWideStringField;
    QetiquetasTipo: TWideStringField;
    QetiquetasTS: TWideStringField;
    QetiquetasCodigoId: TStringField;
    QetiquetasProductoID: TWideStringField;
    QetiquetasProductoDes: TWideStringField;
    QetiquetasMuestraNo: TStringField;
    QetiquetasTipoSangre: TWideStringField;
    QetiquetasRH: TWideStringField;
    QetiquetasReceptorId: TStringField;
    QetiquetasDoctorId: TStringField;
    QetiquetasCruce: TBooleanField;
    QetiquetasCrucePacienteId: TStringField;
    QetiquetasDu: TWideStringField;
    QetiquetasISTBDonacion: TStringField;
    QetiquetasCheckDigit: TStringField;
    QetiquetasCheckChar: TStringField;
    QetiquetasTemperatura: TStringField;
    QetiquetasCodeBar: TWideStringField;
    QetiquetasISTB128CodeBar: TWideStringField;
    QetiquetasISTBProducto: TWideStringField;
    QetiquetasISTBAOBCODE: TWideStringField;
    QetiquetasBSCode: TWideStringField;
    QetiquetasISTBTipo: TWideStringField;
    QetiquetasISTBRH: TWideStringField;
    QetiquetasISBT128DivCode: TWideStringField;
    QetiquetasBarra: TWideStringField;
    QetiquetasVolumen_Actual: TIntegerField;
    QetiquetasDonacionTipo: TStringField;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    cxComboBox1: TcxComboBox;
    Panel1: TPanel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    Qbusca_etiquetas: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    WideStringField1: TWideStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    WideStringField2: TWideStringField;
    StringField5: TStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    StringField6: TStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    StringField7: TStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BooleanField1: TBooleanField;
    StringField10: TStringField;
    WideStringField10: TWideStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    IntegerField1: TIntegerField;
    StringField15: TStringField;
    DSbusca_etiquetas: TDataSource;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmescaneo_etiquetas: TFrmescaneo_etiquetas;

implementation

uses DataModule;

{$R *.dfm}

procedure TFrmescaneo_etiquetas.Edit1Exit(Sender: TObject);
begin
{
if Edit1.Text <> '' then
 Begin
   With Qetiquetas do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM V_ETIQUETAS (NOLOCK)');
      Sql.Add('WHERE ISTBDONACION ='+ #39+ Edit1.Text + #39);
      Open;
    end;
    if Qetiquetas.RecordCount > 0 then
       Begin
        Edit2.Enabled := true;
        Edit3.Enabled := true;
        Edit4.Enabled := true;
       end
       else
       ShowMessage('Esta Etiqueta no es Valida');
 end;
 }
end;

procedure TFrmescaneo_etiquetas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  Begin
   if Edit1.Text <> '' then
 Begin
   With Qbusca_etiquetas  do  //Qetiquetas
    begin
      Close;
      parameters.parambyname('codigo').Value :=  Edit1.Text;
      parameters.parambyname('INTENCION').Value := cxComboBox1.Text;
      Open;

      if Qbusca_etiquetas.RecordCount > 1 then
        Begin
          ShowMessage('Esta Donacion tiene varios productos');
          Panel1.Visible := True;
        end
        else
        Begin
          With Qetiquetas DO
            begin
             Close;
             parameters.parambyname('codigo').Value :=  Edit1.Text;
             parameters.parambyname('INTENCION').Value := cxComboBox1.Text;
             parameters.parambyname('PRODUCTO').Value :=  Qbusca_etiquetas.FieldByName('Productoid').Value;
             Open;
          if Qetiquetas.RecordCount > 0 then
            Begin
              Edit2.Enabled := true;
              Edit3.Enabled := true;
              Edit4.Enabled := true;
            end
            else
             ShowMessage('Esta Etiqueta no es Valida');
         end;

    end;

 end;

  end;
 End;
end;

procedure TFrmescaneo_etiquetas.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   Begin
     if Edit2.Text <> EmptyStr then
        Begin
          if Edit2.Text = QetiquetasBarra.Value then
            CheckBox1.Checked := True
            Else
            begin
            ShowMessage('Codigo Incorrecto');
            CheckBox1.Checked := false;
            end;

        end;

   end;

end;

procedure TFrmescaneo_etiquetas.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   Begin
     if Edit3.Text <> EmptyStr then
        Begin
          if Edit3.Text = QetiquetasISTBAOBCODE.Value then
            CheckBox2.Checked := True
            Else
            begin
            ShowMessage('Codigo Incorrecto');
            CheckBox2.Checked := false;
            end;

        end;

   end;
end;

procedure TFrmescaneo_etiquetas.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   Begin
     if Edit4.Text <> EmptyStr then
        Begin
          if Edit4.Text = Qetiquetasfjvence.Value then
            CheckBox3.Checked := True
            Else
            begin
            ShowMessage('Codigo Incorrecto');
            CheckBox3.Checked := false;
            end;

        end;

   end;

end;

procedure TFrmescaneo_etiquetas.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmescaneo_etiquetas.SpeedButton2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Qetiquetas.close;
CheckBox1.Checked := False;
CheckBox2.Checked := False;
CheckBox3.Checked := False;

Edit1.SetFocus;

end;

procedure TFrmescaneo_etiquetas.SpeedButton3Click(Sender: TObject);
begin

With Qetiquetas DO
  begin
      Close;
      parameters.parambyname('codigo').Value :=  Edit1.Text;
      parameters.parambyname('INTENCION').Value := cxComboBox1.Text;
      parameters.parambyname('PRODUCTO').Value :=  Qbusca_etiquetas.FieldByName('Productoid').Value;
      Open;
       if Qetiquetas.RecordCount > 0 then
       Begin
        Edit2.Enabled := true;
        Edit3.Enabled := true;
        Edit4.Enabled := true;
       end;
  End;
panel1.visible := false;
end;

end.
