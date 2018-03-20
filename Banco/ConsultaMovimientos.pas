unit ConsultaMovimientos;

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
  TfrmConsultaMovimientos = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrVentas: TADOQuery;
    Open: TAction;
    qrVentasHistCons: TLargeintField;
    qrVentasCodigoId: TStringField;
    qrVentasFecha: TDateTimeField;
    qrVentasOperacionId: TWideStringField;
    qrVentasUserId: TStringField;
    qrVentasNota: TMemoField;
    qrVentasReceptorId: TStringField;
    qrVentasDoctorId: TStringField;
    tvDatosHistCons: TcxGridDBColumn;
    tvDatosCodigoId: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosOperacionId: TcxGridDBColumn;
    tvDatosUserId: TcxGridDBColumn;
    tvDatosNota: TcxGridDBColumn;
    tvDatosReceptorId: TcxGridDBColumn;
    tvDatosDoctorId: TcxGridDBColumn;
    txtMuestra: TcxTextEdit;
    lcGridItem1: TdxLayoutItem;
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
  frmConsultaMovimientos: TfrmConsultaMovimientos;

implementation

{$R *.dfm}

procedure TfrmConsultaMovimientos.DoPost;
begin

end;

procedure TfrmConsultaMovimientos.DoInsert;
begin

end;

procedure TfrmConsultaMovimientos.DoDelete;
begin

end;

procedure TfrmConsultaMovimientos.DoEdit;
begin

end;

procedure TfrmConsultaMovimientos.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

  Self.Caption:= 'Movimientos     Desde: ' + Desde.Text + ' Hasta: ' + Hasta.Text;

end;

procedure TfrmConsultaMovimientos.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    Desde.Date:= Date() - 7;

    OpenExecute(Self);

    Self.Caption:= 'Ventas por productos     Desde: ' + Desde.Text + ' Hasta: ' + Hasta.Text;

end;

procedure TfrmConsultaMovimientos.OpenExecute(Sender: TObject);
var
  Codigo: String;
begin
  inherited;

  if ( trim(txtMuestra.Text) = '' ) then
    Codigo:= '%'
  else
    Codigo:= '%' + trim(txtMuestra.Text) + '%';

  qrVentas.Close;
    qrVentas.Parameters.ParamByName('Desde').Value:= Desde.Date;
    qrVentas.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
    qrVentas.Parameters.ParamByName('Codigo').Value:= Codigo;
  qrVentas.Open;

end;

end.
