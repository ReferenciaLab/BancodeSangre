unit EstadisticasMeses;

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
  TfrmEstadisticasMeses = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrVentas: TADOQuery;
    Open: TAction;
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
    qrVentasDonacionTipo: TStringField;
    qrVentasEnero: TIntegerField;
    qrVentasFebrero: TIntegerField;
    qrVentasMarzo: TIntegerField;
    qrVentasAbril: TIntegerField;
    qrVentasMayo: TIntegerField;
    qrVentasJunio: TIntegerField;
    qrVentasJulio: TIntegerField;
    qrVentasAgosto: TIntegerField;
    qrVentasSeptiembre: TIntegerField;
    qrVentasOctubre: TIntegerField;
    qrVentasNoviembre: TIntegerField;
    qrVentasDiciembre: TIntegerField;
    procedure hastaPropertiesChange(Sender: TObject);
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
  frmEstadisticasMeses: TfrmEstadisticasMeses;

implementation

{$R *.dfm}

procedure TfrmEstadisticasMeses.DoPost;
begin

end;

procedure TfrmEstadisticasMeses.DoInsert;
begin

end;

procedure TfrmEstadisticasMeses.DoDelete;
begin

end;

procedure TfrmEstadisticasMeses.DoEdit;
begin

end;

procedure TfrmEstadisticasMeses.btBuscarClick(Sender: TObject);
begin
  inherited;
  OpenExecute(Self);
  Self.Caption:= 'Donaciones por tipos    Desde: ' + Desde.Text + ' Hasta: ' + Hasta.Text;
end;

procedure TfrmEstadisticasMeses.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    //Desde.Date:= Date() - 7;
    OpenExecute(Self);
    Self.Caption:= 'Donaciones por tipos    Desde: ' + Desde.Text + ' Hasta: ' + Hasta.Text;

end;

procedure TfrmEstadisticasMeses.hastaPropertiesChange(Sender: TObject);
var
  Inicio: TDateTime;
begin
  inherited;

  Desde.Date:= StrToDate('1/1/' + copy(DateToStr(Hasta.Date), 7, 4));

end;

procedure TfrmEstadisticasMeses.OpenExecute(Sender: TObject);
begin
  inherited;

  qrVentas.Close;
  qrVentas.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrVentas.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrVentas.Open;

end;

end.
