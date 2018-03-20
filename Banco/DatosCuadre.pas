unit DatosCuadre;

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
  JvEnterTab;

type
  TfrmDatosCuadre = class(TfrmDatosModule)
    tvDatosCorteId: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosHora: TcxGridDBColumn;
    tvDatosUsuario: TcxGridDBColumn;
    tvDatosSucursalId: TcxGridDBColumn;
    tvDatosValor: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosCuadre: TfrmDatosCuadre;

implementation

uses DCobros, DataBanco;

{$R *.dfm}

procedure TfrmDatosCuadre.cxButton1Click(Sender: TObject);
begin
  inherited;
  dmCobros.PrintCorte(DMB.qrCuadresCorteId.Value);
end;

procedure TfrmDatosCuadre.FormCreate(Sender: TObject);
begin
  inherited;
  dsdatos.DataSet:= DMB.qrCuadres;
end;

end.
