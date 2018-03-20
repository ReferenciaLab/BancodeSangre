unit UntDatosClinicas;

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
  JvEnterTab, Mask, DBCtrls;

type
  TFrmDatosClinicas = class(TfrmDatosModule)
    tvDatosColumn1: TcxGridDBColumn;
    tvDatosColumn2: TcxGridDBColumn;
    tvDatosColumn3: TcxGridDBColumn;
    tvDatosColumn4: TcxGridDBColumn;
    tvDatosColumn5: TcxGridDBColumn;
    tvDatosColumn6: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    DBEdit1: TDBEdit;
    lcDatosItem1: TdxLayoutItem;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosItem3: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosItem5: TdxLayoutItem;
    lcDatosItem6: TdxLayoutItem;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosGroup4: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosClinicas: TFrmDatosClinicas;

implementation

uses DataModule;

{$R *.dfm}

end.
