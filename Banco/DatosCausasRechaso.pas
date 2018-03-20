unit DatosCausasRechaso;

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
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, DataBanco;

type
  TfrmDatosCausasRechaso = class(TfrmDatosModule)
    tvDatosId: TcxGridDBColumn;
    tvDatosCausa: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosItem1: TdxLayoutItem;
    edprueba: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
  private
    { Private declarations }
  protected
    procedure DoEdit; override;
  public
    { Public declarations }
  end;

var
  frmDatosCausasRechaso: TfrmDatosCausasRechaso;

implementation

{$R *.dfm}

procedure TfrmDatosCausasRechaso.DoEdit;
begin
  dsdatos.DataSet.Edit;
end;

end.
