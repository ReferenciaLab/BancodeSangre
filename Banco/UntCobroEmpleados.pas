unit UntCobroEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls, ExtCtrls,
  Buttons, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxMemo;

type
  TFrmCobroEmpleados = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxTextEdit6: TcxTextEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxDateEdit1: TcxDateEdit;
    cxMemo1: TcxMemo;
    Label8: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCobroEmpleados: TFrmCobroEmpleados;

implementation

uses DataBanco, DataDonaciones, DataFactura, DataInventario, DataModule,
  DataPruebas, ADODB;

{$R *.dfm}

procedure TFrmCobroEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmCobroEmpleados.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmCobroEmpleados.SpeedButton2Click(Sender: TObject);
begin
if cxCurrencyEdit1.Value > 0 then
  begin
    with dm.Qutilitario do
     begin
       close;
       sql.Clear;
       sql.add('UPDATE BSVENTA SET TOTALPAGADO = TOTALPAGADO  + :VALOR, TOTALPENDIENTE = isnull(TOTALPENDIENTE,0) - :VALOR2, nota =:comentario');
       sql.add('WHERE ENTRADAID =:FACTURA');
       Parameters.ParamByName('valor').Value := cxCurrencyEdit1.Value;
       Parameters.ParamByName('valor2').Value := cxCurrencyEdit1.Value;
       Parameters.ParamByName('factura').Value := cxTextEdit2.Text;
       Parameters.ParamByName('comentario').Value := cxMemo1.Text;
       ExecSQL;
      end;
      ShowMessage('Pago Realizado con Exito');
      close;
  end
  else
  ShowMessage('Digite el monto pagado');

end;

end.
