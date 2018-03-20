unit DonacionesSexos;

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
  TfrmDonacionesSexos = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrVentas: TADOQuery;
    Open: TAction;
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
    qrVentasTotalDonantes: TIntegerField;
    qrVentasAprobados: TIntegerField;
    qrVentasRechazados: TIntegerField;
    qrVentasEnProceso: TIntegerField;
    qrVentasSexo: TStringField;
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
    tvDatosSexo: TcxGridDBColumn;
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
  frmDonacionesSexos: TfrmDonacionesSexos;

implementation

{$R *.dfm}

procedure TfrmDonacionesSexos.DoPost;
begin

end;

procedure TfrmDonacionesSexos.DoInsert;
begin

end;

procedure TfrmDonacionesSexos.DoDelete;
begin

end;

procedure TfrmDonacionesSexos.DoEdit;
begin

end;

procedure TfrmDonacionesSexos.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

  Self.Caption:= 'Estadistica de operaciones sexos    Desde: ' + Desde.Text + ' Hasta: ' + Hasta.Text;

end;

procedure TfrmDonacionesSexos.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    //Desde.Date:= Date() - 7;

    OpenExecute(Self);

    Self.Caption:= 'Estadistica de operaciones sexos   Desde: ' + Desde.Text + ' Hasta: ' + Hasta.Text;

end;

procedure TfrmDonacionesSexos.hastaPropertiesChange(Sender: TObject);
var
  Inicio: TDateTime;
begin
  inherited;

  Desde.Date:= StrToDate('1/1/' + copy(DateToStr(Hasta.Date), 7, 4));

end;

procedure TfrmDonacionesSexos.OpenExecute(Sender: TObject);
begin
  inherited;

  qrVentas.Close;
  qrVentas.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrVentas.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrVentas.Open;

end;

end.
