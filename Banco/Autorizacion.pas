unit Autorizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmAutorizacion = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton22: TcxButton;
    cxButton1: TcxButton;
    Memo1: TMemo;
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FNombreDocto: String;
    FTituloForma: String;
    FObservacion: String;
    FDoctorAceptado: Boolean;
    procedure SetNombreDocto(const Value: String);
    procedure SetTituloForma(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property NombreDocto:String read FNombreDocto write SetNombreDocto;
    property TituloForma:String read FTituloForma write SetTituloForma;
    property Observacion:String read FObservacion;
    property DoctorAceptado:Boolean read FDoctorAceptado;
  end;

var
  frmAutorizacion: TfrmAutorizacion;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmAutorizacion.cxButton1Click(Sender: TObject);
begin
  if Trim(Memo1.Text) = EmptyStr then
  begin
    if MessageDlg('No ha especificado ninguna observación para la autorización,'+#13+
                  'desea proceguir con el proceso ?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then Exit;
  end;
  FObservacion := Trim(Memo1.Text);
  FDoctorAceptado := true;
  close;
end;

procedure TfrmAutorizacion.cxButton22Click(Sender: TObject);
begin
  FDoctorAceptado := False;
  close;
end;

procedure TfrmAutorizacion.FormShow(Sender: TObject);
begin
  Caption        := TituloForma;
  Panel1.Caption := NombreDocto;
end;

procedure TfrmAutorizacion.SetNombreDocto(const Value: String);
begin
  FNombreDocto := Value;
end;

procedure TfrmAutorizacion.SetTituloForma(const Value: String);
begin
  FTituloForma := Value;
end;

end.
