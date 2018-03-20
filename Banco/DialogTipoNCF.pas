unit DialogTipoNCF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, cxGraphics, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxLayoutControl, StdCtrls,
  cxButtons, cxControls, DB, ADODB;

type
  TfrmDialogTipoNCF = class(TfrmDialogModule)
    cxComboBox1: TcxComboBox;
    lcDialogItem1: TdxLayoutItem;
    qrNCF: TADOQuery;
    qrNCFTipo: TStringField;
    qrNCFConsecutivo: TIntegerField;
    qrNCFInicial: TIntegerField;
    qrNCFFinal: TIntegerField;
    qrNCFDiario: TBooleanField;
    qrNCFFijo: TStringField;
    qrNCFDescripcion: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure run;
  end;

var
  frmDialogTipoNCF: TfrmDialogTipoNCF;

implementation
Uses DataBanco, StrUtils;

{$R *.dfm}

procedure TfrmDialogTipoNCF.run;
begin
  ShowModal;

  if (modalResult = mrok) then
    begin
      DMB._TipoNCF:= LeftStr(cxComboBox1.Text, 2)
    end
  else
    DMB._TipoNCF:= '';

end;

procedure TfrmDialogTipoNCF.FormCreate(Sender: TObject);
begin
  inherited;

  cxComboBox1.Clear;

  qrNCF.Close;
  qrNCF.Open;

  while not qrNCF.Eof do
    begin
      cxComboBox1.Properties.Items.Add( qrNCFTipo.Value + ' ' + qrNCFDescripcion.Value );
      qrNCF.Next;
    end;

end;

end.
