unit DatosVentasProductos;

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
  TfrmDatosVentasProductos = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrVentas: TADOQuery;
    Open: TAction;
    qrVentasProductoID: TWideStringField;
    qrVentasProductoDes: TWideStringField;
    qrVentasTOTAL: TBCDField;
    tvDatosProductoID: TcxGridDBColumn;
    tvDatosProductoDes: TcxGridDBColumn;
    tvDatosTOTAL: TcxGridDBColumn;
    qrVentasCantidad: TIntegerField;
    Cantidad: TcxGridDBColumn;
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
  frmDatosVentasProductos: TfrmDatosVentasProductos;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDatosVentasProductos.DoPost;
begin

end;

procedure TfrmDatosVentasProductos.DoInsert;
begin

end;

procedure TfrmDatosVentasProductos.DoDelete;
begin

end;

procedure TfrmDatosVentasProductos.DoEdit;
begin

end;

procedure TfrmDatosVentasProductos.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

   Self.Caption:= ' Ventas por productos     Desde: ' + Desde.Text + ' Hasta: ' + Hasta.Text +' (Sucursal ' + DM.qrSucursal.FieldByName('NOMBRE').Value + ')';

end;

procedure TfrmDatosVentasProductos.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    Desde.Date:= Date() - 7;

    OpenExecute(Self);

    Self.Caption:= ' Ventas por productos     Desde: ' + Desde.Text + ' Hasta: ' + Hasta.Text +' (Sucursal ' + DM.qrSucursal.FieldByName('NOMBRE').Value + ')';

end;

procedure TfrmDatosVentasProductos.OpenExecute(Sender: TObject);
begin
  inherited;

  qrVentas.Close;
  qrVentas.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrVentas.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrVentas.Parameters.ParamByName('SUCURSAL').Value:= dm.CurSucursal;
  qrVentas.Open;

end;

end.
