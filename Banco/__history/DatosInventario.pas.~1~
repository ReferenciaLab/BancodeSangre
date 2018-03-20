unit DatosInventario;

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
  JvEnterTab, cxCheckBox, cxContainer, cxTextEdit, cxDBEdit;

type
  TfrmDatosInventario = class(TfrmDatosModule)
    tvDatosCodigoId: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosReservado: TcxGridDBColumn;
    tvDatosVence: TcxGridDBColumn;
    tvDatosProductoDes: TcxGridDBColumn;
    tvDatosTipoSangre: TcxGridDBColumn;
    tvDatosRH: TcxGridDBColumn;
    cxButton3: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
    //procedure DoEdit; override;
  public
    { Public declarations }
  end;

var
  frmDatosInventario: TfrmDatosInventario;

implementation

uses BancoReportes, DataBanco;

{$R *.dfm}

procedure TfrmDatosInventario.DoPost;
begin

end;

procedure TfrmDatosInventario.cxButton1Click(Sender: TObject);
begin
  inherited;
  BSReportes.EtiquetaProducto(DMB.qrInventarioCodigoId.Value);
end;

procedure TfrmDatosInventario.cxButton3Click(Sender: TObject);
begin
  inherited;

  BSReportes.Pruebas(DMB.qrInventarioCodigoId.Value);

end;

procedure TfrmDatosInventario.DoDelete;
begin

end;

procedure TfrmDatosInventario.DoInsert;
begin

end;

{procedure TfrmDatosInventario.DoEdit;
begin

end;}

end.
