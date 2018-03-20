unit DialogDescuento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxDBEdit;

type
  TfrmDialogDescuento = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dsFactura: TDataSource;
    dxLayoutControl1Item1: TdxLayoutItem;
    edvalor: TcxCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogDescuento: TfrmDialogDescuento;


implementation
 uses ActionsDM,DataModule,PuntoVenta,Main, BancoVenta, DataBanco, DataFactura;
{$R *.dfm}

procedure TfrmDialogDescuento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogDescuento.FormShow(Sender: TObject);
begin

  edvalor.Value := 0.00;

end;

procedure TfrmDialogDescuento.Run;
begin

 showmodal;

 if ModalResult = mrOk then
   begin
      if edvalor.Value > dmFactura.qrPendientesCobrosTotalPendiente.Value then
        begin
           DM.Info('El total a aplicar es mayor que el total pendiente de la factura. Por favor verificar.');
           exit;
        end
        else
          if edvalor.Value <= 0 then
             begin
              DM.Info('El total a aplicar tiene que ser mayor de Cero. Por favor verificar.');
              exit;
             end
          else
           begin
              dmFactura.AplicarDescuento(dmFactura.qrPendientesCobrosEntradaId.Value, edvalor.Value);
           end;

      end;

end;

end.
