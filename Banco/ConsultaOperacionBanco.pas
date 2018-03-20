unit ConsultaOperacionBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  dxLayoutControl, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit, ActnList, ADODB,
  Mask, DBCtrls;

type
  TfrmDialogConsultaOeracionBanco = class(TfrmDialogConsulta)
    qrDetalles: TADOQuery;
    qrDetallesProductoID: TWideStringField;
    qrDetallesCantidad: TBCDField;
    qrDetallesFecha: TDateTimeField;
    qrDetallesDonacionId: TStringField;
    qrDetallesReservado: TBooleanField;
    dsDetalles: TDataSource;
    alEdit: TActionList;
    ActDetalles: TAction;
    qrDetallesCodigoId: TWideStringField;
    qrDetallesHora: TStringField;
    qrBancoInventario: TADOQuery;
    qrBancoInventarioProductoID: TWideStringField;
    qrBancoInventarioProductoDes: TWideStringField;
    qrBancoInventarioCantidad: TBCDField;
    qrBancoInventarioPrecio: TBCDField;
    qrBancoInventarioPrecioDolares: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure ActDetallesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaOeracionBanco: TfrmDialogConsultaOeracionBanco;

implementation
uses DataBanco, DataModule, Main;

{$R *.dfm}

procedure TfrmDialogConsultaOeracionBanco.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  frmMain.frmTmp.qrEntradaPacienteDetalle.Insert;

  frmMain.frmTmp.qrEntradaPacienteDetallePruebaID.Value := qrDetallesCodigoId.Value;
  frmMain.frmTmp.qrEntradaPacienteDetalleDescripcion.Value := qrBancoInventarioProductoDes.Value;
  frmMain.frmTmp.qrEntradaPacienteDetallePrecio.Value := qrBancoInventarioPrecio.Value;


  frmMain.frmTmp.qrEntradaPacienteDetalle.Post;

 end;
end;


procedure TfrmDialogConsultaOeracionBanco.ActDetallesExecute(Sender: TObject);
begin
  inherited;

  qrDetalles.Close;
  qrDetalles.Parameters.ParamByName('ProductoId').Value:= qrBancoInventarioProductoID.Value;
  qrDetalles.Open;

end;

procedure TfrmDialogConsultaOeracionBanco.FormCreate(Sender: TObject);
begin
  inherited;

  qrBancoInventario.Close;
  qrBancoInventario.Open;

  ActDetallesExecute(Sender);

end;

end.
