unit EntradasProductosMeses;

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
  TfrmEntradasProductosMeses = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrDatos: TADOQuery;
    Open: TAction;
    qrDatosTotalDonantes: TIntegerField;
    qrDatosAprobados: TIntegerField;
    qrDatosRechazados: TIntegerField;
    qrDatosEnProceso: TIntegerField;
    qrDatosProducto: TWideStringField;
    tvDatosTotalDonantes: TcxGridDBColumn;
    tvDatosAprobados: TcxGridDBColumn;
    tvDatosRechazados: TcxGridDBColumn;
    tvDatosEnProceso: TcxGridDBColumn;
    tvDatosProducto: TcxGridDBColumn;
    tvDatosEnero: TcxGridDBColumn;
    tvDatosFebrero: TcxGridDBColumn;
    tvDatosMarzo: TcxGridDBColumn;
    tvDatosAbril: TcxGridDBColumn;
    tvDatosMayo: TcxGridDBColumn;
    tvDatosJunio: TcxGridDBColumn;
    tvDatosJulio: TcxGridDBColumn;
    tvDatosAgosto: TcxGridDBColumn;
    tvDatosSeptiembre: TcxGridDBColumn;
    tvDatosOctubre: TcxGridDBColumn;
    tvDatosNoviembre: TcxGridDBColumn;
    tvDatosDiciembre: TcxGridDBColumn;
    qrDatosJanuary: TIntegerField;
    qrDatosFebruary: TIntegerField;
    qrDatosMarch: TIntegerField;
    qrDatosApril: TIntegerField;
    qrDatosMay: TIntegerField;
    qrDatosJune: TIntegerField;
    qrDatosJuly: TIntegerField;
    qrDatosAugust: TIntegerField;
    qrDatosSeptember: TIntegerField;
    qrDatosOctober: TIntegerField;
    qrDatosNovember: TIntegerField;
    qrDatosDecember: TIntegerField;
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
  frmEntradasProductosMeses: TfrmEntradasProductosMeses;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmEntradasProductosMeses.DoPost;
begin

end;

procedure TfrmEntradasProductosMeses.DoInsert;
begin

end;

procedure TfrmEntradasProductosMeses.DoDelete;
begin

end;

procedure TfrmEntradasProductosMeses.DoEdit;
begin

end;

procedure TfrmEntradasProductosMeses.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

  //Self.Caption:= 'TIPO DONACION.  PERIODO DESDE: ' + Desde.Text + ', HASTA: ' + Hasta.Text;
  Self.Caption:= 'TIPO DONACION.  PERIODO DESDE: ' + Desde.Text + ', HASTA: ' + Hasta.Text + ' (' + dm.NombreSucursal + ')';

end;

procedure TfrmEntradasProductosMeses.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    //Desde.Date:= Date() - 7;
    Desde.Date:= StrToDate('1/1/' + copy(DateToStr(Hasta.Date), 7, 4));

    OpenExecute(Self);

    Self.Caption:= 'TIPO DONACION.  PERIODO DESDE: ' + Desde.Text + ', HASTA: ' + Hasta.Text + ' (' + dm.NombreSucursal + ')';

end;

procedure TfrmEntradasProductosMeses.OpenExecute(Sender: TObject);
begin
  inherited;

  qrDatos.Close;
  qrDatos.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrDatos.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrDatos.Parameters.ParamByName('SUC').Value:= dm.CurSucursal ;
  qrDatos.Open;

end;

end.
