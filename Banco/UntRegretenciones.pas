unit UntRegretenciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxCurrencyEdit, cxContainer, cxEdit,
  cxTextEdit, DB, ADODB;

type
  TFrmregRetenciones = class(TfrmDialogModule)
    cxTextEdit3: TcxTextEdit;
    lcDialogItem3: TdxLayoutItem;
    cxCurrencyEdit1: TcxCurrencyEdit;
    lcDialogItem1: TdxLayoutItem;
    cxTextEdit1: TcxTextEdit;
    lcDialogItem2: TdxLayoutItem;
    Qretenciones: TADOQuery;
    QretencionesENTRADAID: TStringField;
    QretencionesFECHA_FACTURA: TDateTimeField;
    QretencionesMONTO_FACTURA: TFloatField;
    QretencionesNUMERO_CHEQUE: TIntegerField;
    QretencionesMONTO_CHEQUE: TFloatField;
    QretencionesNOMBRE_INSTITUCION: TStringField;
    QretencionesUSUARIO_CREA: TStringField;
    QretencionesFECHA_CREA: TDateTimeField;
    QretencionesMONTO_RETENCION: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmregRetenciones: TFrmregRetenciones;

implementation

uses DataModule, DataFactura;

{$R *.dfm}

procedure TFrmregRetenciones.btAceptarClick(Sender: TObject);
begin
  inherited;

  if (cxTextEdit3.Text <> '') and (cxCurrencyEdit1.Text <> '') then
    Begin
       Qretenciones.Insert;
       QretencionesENTRADAID.Value       := dmFactura.qrPendientesCobrosENTRADAID.Value;
       QretencionesFECHA_FACTURA.Value   := dmFactura.qrPendientesCobrosFECHA.Value;
       QretencionesMONTO_FACTURA.Value   := dmFactura.qrPendientesCobrosNETO.Value;
       QretencionesMONTO_RETENCION.Value := dmFactura.qrPendientesCobrosTotalPendiente.Value;
       QretencionesNUMERO_CHEQUE.AsString:= cxTextEdit3.Text;
       QretencionesMONTO_CHEQUE.AsString := cxCurrencyEdit1.Text;
       QretencionesNOMBRE_INSTITUCION.value :=  cxTextEdit1.Text;
       QretencionesUSUARIO_CREA.Value :=  dm.CurUser;
       Qretenciones.post;

       With dm.Qutilitario do
        begin
          Close;
          Sql.Clear;
          Sql.add('Update BSVenta set TotalPendiente = 0');
          Sql.add('WHERE ENTRADAID =' + #39 + dmFactura.qrPendientesCobrosENTRADAID.Value + #39);
          ExecSQL;
        end;
    end
    else
    begin
      ShowMessage('Digite el Numero y monto del Cheque');
    end;

end;

procedure TFrmregRetenciones.btCancelarClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFrmregRetenciones.FormCreate(Sender: TObject);
begin
  inherited;
Qretenciones.oPEN;
end;

end.
