unit Untbusca_donacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, Menus, cxLookAndFeelPainters,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit;

type
  TFrmbusca_donacion = class(TForm)
    Dsdonacion: TDataSource;
    Qdonaciones: TADOQuery;
    Qry_donacion: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btaceptar: TcxButton;
    btcancelar: TcxButton;
    QdonacionesDonacionID: TStringField;
    QdonacionesMuestraNo: TStringField;
    QdonacionesFecha: TDateTimeField;
    QdonacionesPacienteID: TStringField;
    QdonacionesNOMBRE: TStringField;
    QdonacionesNOMBRE1: TStringField;
    QdonacionesAPELLIDOS: TStringField;
    QdonacionesTipoDonante: TWideStringField;
    QdonacionesTipoSangre: TWideStringField;
    QdonacionesDonanteActivo: TSmallintField;
    Qry_donacionColumn1: TcxGridDBColumn;
    Qry_donacionColumn2: TcxGridDBColumn;
    Qry_donacionColumn3: TcxGridDBColumn;
    Qry_donacionColumn4: TcxGridDBColumn;
    Qry_donacionColumn5: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxButton1: TcxButton;
    procedure cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure btaceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmbusca_donacion: TFrmbusca_donacion;

implementation

uses ActionsDM, DataModule, Cruce;

{$R *.dfm}

procedure TFrmbusca_donacion.btaceptarClick(Sender: TObject);
begin

DM.Qdatosdonacion.close;
DM.Qdatosdonacion.Parameters.ParamByName('NUMERO').Value := QdonacionesDonacionID.Value;
DM.Qdatosdonacion.open;

close;
end;

procedure TFrmbusca_donacion.cxButton1Click(Sender: TObject);
begin
With Qdonaciones do
 begin
   Close;
   If cxTextEdit1.Text <> '' then
      SQL.Add('AND DONACIONID ='+#39+ cxTextEdit1.Text + #39);
   If cxTextEdit2.Text <> '' then
      SQL.Add('AND NOMBRE LIKE'+#39+'%'+ cxTextEdit2.Text +'%'+ #39);
   If cxTextEdit3.Text <> '' then
      SQL.Add('AND MUESTRANO = '+#39+ cxTextEdit3.Text + #39);

   Open;
 end;
end;

procedure TFrmbusca_donacion.cxTextEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
 cxButton1Click(self);
end;

procedure TFrmbusca_donacion.cxTextEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
 cxButton1Click(self);
end;

procedure TFrmbusca_donacion.cxTextEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
 cxButton1Click(self);
end;

procedure TFrmbusca_donacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
end;

procedure TFrmbusca_donacion.FormCreate(Sender: TObject);
begin
Qdonaciones.Open;
end;

end.
