unit DatosVentasPendientes;

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
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit;

type
  TfrmDatosVentasPendientes = class(TfrmDatosModule)
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxButton1: TcxButton;
    qrAnticipos: TADOQuery;
    qrAnticiposENTRADAID: TStringField;
    qrAnticiposFECHA: TDateTimeField;
    qrAnticiposPACIENTEID: TStringField;
    qrAnticiposNOMBREPACIENTE: TStringField;
    qrAnticiposPRUEBAID: TStringField;
    qrAnticiposDESCRIPCION: TStringField;
    qrAnticiposAnticipo: TBooleanField;
    qrAnticiposCODIGOID: TStringField;
    tvDatosENTRADAID: TcxGridDBColumn;
    tvDatosFECHA: TcxGridDBColumn;
    tvDatosPACIENTEID: TcxGridDBColumn;
    tvDatosNOMBREPACIENTE: TcxGridDBColumn;
    tvDatosPRUEBAID: TcxGridDBColumn;
    tvDatosDESCRIPCION: TcxGridDBColumn;
    tvDatosAnticipo: TcxGridDBColumn;
    qrAnticiposRECID: TIntegerField;
    lcDatosItem5: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsInventario: TDataSource;
    qrInventario: TADOQuery;
    qrInventarioCodigoId: TStringField;
    qrInventarioDonacionId: TStringField;
    qrInventarioProductoID: TWideStringField;
    qrInventarioCantidad: TBCDField;
    qrInventarioFecha: TDateTimeField;
    qrInventarioHora: TStringField;
    qrInventarioProcesoID: TWideStringField;
    qrInventarioReservado: TBooleanField;
    qrInventarioReservadoHasta: TDateTimeField;
    qrInventarioDias: TIntegerField;
    qrInventarioVence: TDateTimeField;
    qrInventarioCruce: TBooleanField;
    qrInventarioCrucePacienteId: TStringField;
    qrInventarioDisponible: TBooleanField;
    qrInventarioReceptorId: TStringField;
    qrInventarioDoctorId: TStringField;
    qrInventarioPrecio1: TBCDField;
    qrInventarioCosto1: TBCDField;
    qrInventarioStatus: TWideStringField;
    qrInventarioCaja: TBooleanField;
    lcDatosItem6: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    tbDetalle: TADOTable;
    tbDetalleId: TLargeintField;
    tbDetallePRUEBAID: TStringField;
    tbDetalleCODIGOID: TStringField;
    tbDetalleRECID: TIntegerField;
    qrAnticiposId: TLargeintField;
    qrInventarioProductoDes: TWideStringField;
    qrInventarioNOMBREPACIENTE: TStringField;
    cxGridDBTableView2CodigoId: TcxGridDBColumn;
    cxGridDBTableView2Fecha: TcxGridDBColumn;
    cxGridDBTableView2Reservado: TcxGridDBColumn;
    cxGridDBTableView2Disponible: TcxGridDBColumn;
    cxGridDBTableView2ProductoDes: TcxGridDBColumn;
    cxGridDBTableView2NOMBREPACIENTE: TcxGridDBColumn;
    tbDetalleDESCRIPCION: TStringField;
    cxButton2: TcxButton;
    lcDatosItem1: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    qrAnticiposServicio: TBooleanField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosVentasPendientes: TfrmDatosVentasPendientes;

implementation
uses
  DataBanco, DataModule;

{$R *.dfm}

procedure TfrmDatosVentasPendientes.cxButton1Click(Sender: TObject);
begin
  inherited;

  if DM.Mensaje('Desea asociar este producto al anticipo, esta operacion saca el producto de inventario  ?',mb_yesno) = id_no then
    exit;

  tbDetalle.Open;
  if not tbDetalle.Eof then
    begin
      tbDetalle.Edit;
      tbDetalleCODIGOID.Value:= qrInventarioCodigoId.Value;
      tbDetallePruebaID.Value:= qrInventarioProductoId.Value;
      tbDetalleDescripcion.Value:= qrInventarioProductoDes.Value;
      tbDetalle.Post;
    end;

  DMB.SalidaInventario(qrInventarioProductoID.Value, qrInventarioCodigoId.Value,
    'Salida por despacho de anticipo pagado.');

  qrAnticipos.Close;
  qrAnticipos.Open;

  qrInventario.Close;
  qrinventario.Open;


end;

procedure TfrmDatosVentasPendientes.cxButton2Click(Sender: TObject);
begin
  inherited;

  if DM.Mensaje('Desea reservar este producto ?',mb_yesno) = id_no then
    exit;

  tbDetalle.Open;
  if not tbDetalle.Eof then
    begin
      tbDetalle.Edit;
      tbDetalleCODIGOID.Value:= qrInventarioCodigoId.Value;
      tbDetalleDescripcion.Value:= qrInventarioProductoDes.Value;
      tbDetalle.Post;
    end;

  DMB.Reservar(qrInventarioCodigoId.Value, qrAnticiposPACIENTEID.Value, '', qrAnticiposFECHA.AsString, false, qrAnticiposDESCRIPCION.AsString);

  qrAnticipos.Close;
  qrAnticipos.Open;

  qrInventario.Close;
  qrinventario.Open;

end;

procedure TfrmDatosVentasPendientes.FormCreate(Sender: TObject);
begin
  inherited;

  qrAnticipos.Close;
  qrAnticipos.Open;

  qrInventario.Close;
  qrinventario.Open;

end;

end.
