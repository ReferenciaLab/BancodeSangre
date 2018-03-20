unit BancoProductosVencidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, cxMemo;

type
  TfrmProductosVencidos = class(TfrmDatosModule)
    tvDatosCodigoId: TcxGridDBColumn;
    tvDatosDonacionId: TcxGridDBColumn;
    tvDatosProductoID: TcxGridDBColumn;
    tvDatosProductoDes: TcxGridDBColumn;
    tvDatosCantidad: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosHora: TcxGridDBColumn;
    tvDatosReservado: TcxGridDBColumn;
    tvDatosReservadoHasta: TcxGridDBColumn;
    tvDatosDias: TcxGridDBColumn;
    tvDatosVence: TcxGridDBColumn;
    tvDatosCruce: TcxGridDBColumn;
    tvDatosReceptorId: TcxGridDBColumn;
    tvDatosDoctorId: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    cxMemo1: TcxMemo;
    lcDatosItem6: TdxLayoutItem;
    cxButton1: TcxButton;
    lcDatosItem7: TdxLayoutItem;
    ActDesecharProducto: TAction;
    ActActualizar: TAction;
    procedure ActActualizarExecute(Sender: TObject);
    procedure ActDesecharProductoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  protected
    procedure DoInsert; override;
    procedure DoDelete; override;

  public
    { Public declarations }
  end;

var
  frmProductosVencidos: TfrmProductosVencidos;

implementation
Uses
  DataModule, DataBanco;

{$R *.dfm}

procedure TfrmProductosVencidos.FormCreate(Sender: TObject);
begin
  inherited;

  DMB.qrProductosVencidos.Close;
  DMB.qrProductosVencidos.Parameters.ParamByName('Fecha').Value:= DM.SystemDate;
  DMB.qrProductosVencidos.Open;

end;

procedure TfrmProductosVencidos.DoInsert;
begin

end;

procedure TfrmProductosVencidos.ActActualizarExecute(Sender: TObject);
begin
  inherited;

  cxMemo1.Clear;

end;

procedure TfrmProductosVencidos.ActDesecharProductoExecute(Sender: TObject);
begin
  inherited;

  DMB.DesecharProducto(DMB.qrProductosVencidosCodigoId.Value, cxMemo1.Text);

  DMB.qrProductosVencidos.Close;
  DMB.qrProductosVencidos.Parameters.ParamByName('Fecha').Value:= DM.SystemDate;
  DMB.qrProductosVencidos.Open;

end;

procedure TfrmProductosVencidos.DoDelete;
begin

end;


end.
