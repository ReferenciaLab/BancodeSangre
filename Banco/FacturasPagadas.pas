unit FacturasPagadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ABSMain, JvStringHolder, StdActns, ActnList,
  ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk,
  dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase, JvFormPlacement,
  ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab;

type
  TfrmFacturasPagadas = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrDatos: TADOQuery;
    Open: TAction;
    qrDatosEntrada: TStringField;
    qrDatosFecha: TDateTimeField;
    qrDatosTotal: TBCDField;
    qrDatosPagado: TBCDField;
    qrDatosUsuario: TStringField;
    qrDatosFechaPago: TDateTimeField;
    qrDatosHoraPago: TStringField;
    qrDatosCobrador: TStringField;
    qrDatosFormaPago: TStringField;
    qrDatosMoneda: TStringField;
    qrDatosCobrado: TBCDField;
    tvDatosEntrada: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosTotal: TcxGridDBColumn;
    tvDatosPagado: TcxGridDBColumn;
    tvDatosUsuario: TcxGridDBColumn;
    tvDatosFechaPago: TcxGridDBColumn;
    tvDatosHoraPago: TcxGridDBColumn;
    tvDatosCobrador: TcxGridDBColumn;
    tvDatosFormaPago: TcxGridDBColumn;
    tvDatosMoneda: TcxGridDBColumn;
    tvDatosCobrado: TcxGridDBColumn;
    procedure btBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OpenExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
    procedure DoEdit; override;
  public
    { Public declarations }
  end;

var
  frmFacturasPagadas: TfrmFacturasPagadas;

implementation

{$R *.dfm}

procedure TfrmFacturasPagadas.DoPost;
begin

end;

procedure TfrmFacturasPagadas.DoInsert;
begin

end;

procedure TfrmFacturasPagadas.DoDelete;
begin

end;

procedure TfrmFacturasPagadas.DoEdit;
begin

end;

procedure TfrmFacturasPagadas.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

  Self.Caption:= 'Facturas Pagadas: ' + Desde.Text + ', hasta: ' + Hasta.Text;

end;

procedure TfrmFacturasPagadas.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    Desde.Date:= Date() - 7;

    OpenExecute(Self);

    Self.Caption:= 'Facturas Pagadas: ' + Desde.Text + ', hasta: ' + Hasta.Text;


end;

procedure TfrmFacturasPagadas.OpenExecute(Sender: TObject);
begin
  inherited;

  qrDatos.Close;
  qrDatos.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrDatos.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrDatos.Open;

end;

end.
