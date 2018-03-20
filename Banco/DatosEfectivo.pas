unit DatosEfectivo;

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
  TfrmDatosEfectivo = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrVentas: TADOQuery;
    Open: TAction;
    qrVentasCobroID: TStringField;
    qrVentasTurnoID: TStringField;
    qrVentasEntradaID: TStringField;
    qrVentasSucursalID: TStringField;
    qrVentasFecha: TDateTimeField;
    qrVentasHora: TStringField;
    qrVentasPacienteID: TStringField;
    qrVentasPacientePrincipalID: TStringField;
    qrVentasUsuarioID: TStringField;
    qrVentasTotalCobrado: TBCDField;
    qrVentasrefRecid: TLargeintField;
    qrVentasTotalFactura: TBCDField;
    qrVentasTotalPagado: TBCDField;
    qrVentasPendienteFactura: TBCDField;
    qrVentasPendienteCobro: TBCDField;
    qrVentasReciboNo: TStringField;
    qrVentasClienteID: TStringField;
    qrVentasAplicado: TBooleanField;
    qrVentasSecuencia: TLargeintField;
    qrVentasMonedaID: TStringField;
    qrVentasTipoDoc: TStringField;
    qrVentasCuadreGlobal: TStringField;
    qrVentasCuadreUsuario: TStringField;
    qrVentasConcepto: TStringField;
    tvDatosCobroID: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosUsuarioID: TcxGridDBColumn;
    tvDatosTotalCobrado: TcxGridDBColumn;
    tvDatosTotalFactura: TcxGridDBColumn;
    tvDatosReciboNo: TcxGridDBColumn;
    tvDatosClienteID: TcxGridDBColumn;
    tvDatosMonedaID: TcxGridDBColumn;
    tvDatosTipoDoc: TcxGridDBColumn;
    cxButton1: TcxButton;
    lcDatosItem2: TdxLayoutItem;
    cxButton3: TcxButton;
    lcDatosItem4: TdxLayoutItem;
    qrVentasPACIENTE: TStringField;
    tvDatospaciente: TcxGridDBColumn;
    cxButton4: TcxButton;
    lcGridItem1: TdxLayoutItem;
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ReimprimirClick(Sender: TObject);
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
  frmDatosEfectivo: TfrmDatosEfectivo;

implementation

uses DCobros;

{$R *.dfm}

procedure TfrmDatosEfectivo.DoPost;
begin

end;

procedure TfrmDatosEfectivo.DoInsert;
begin

end;

procedure TfrmDatosEfectivo.ReimprimirClick(Sender: TObject);
begin
  inherited;
 showmessage('Re-imprimir recibo de pago');

end;

procedure TfrmDatosEfectivo.cxButton2Click(Sender: TObject);
var
 Cobro: String;
begin
  inherited;
  Cobro:=  qrVentascobroid.value;
  dmCobros.ImprimirRecibo(Cobro);
end;

procedure TfrmDatosEfectivo.cxButton4Click(Sender: TObject);
var
 Cobro: String;

begin
  inherited;
  Cobro:=  qrVentascobroid.value;
  dmCobros.ImprimirRecibo(Cobro);

end;

procedure TfrmDatosEfectivo.DoDelete;
begin

end;

procedure TfrmDatosEfectivo.DoEdit;
begin

end;

procedure TfrmDatosEfectivo.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

end;

procedure TfrmDatosEfectivo.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    Desde.Date:= Date() - 7;

    OpenExecute(Self);

end;

procedure TfrmDatosEfectivo.OpenExecute(Sender: TObject);
begin
  inherited;

  qrVentas.Close;
  qrVentas.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrVentas.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrVentas.Open;

end;

end.
