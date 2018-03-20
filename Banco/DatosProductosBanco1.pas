unit DatosProductosBanco1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxContainer, cxTextEdit, cxDBEdit, ABSMain, JvStringHolder,
  StdActns, ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk,
  JvComponentBase, JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  JvExControls, JvComponent, JvEnterTab, cxCheckBox;

type
  TfrmDatosBSProductos = class(TfrmDatosModule)
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    tvDatosProductoID: TcxGridDBColumn;
    tvDatosProductoDes: TcxGridDBColumn;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosItem5: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosItem8: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosItem9: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    lcDatosGroup4: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosBSProductos: TfrmDatosBSProductos;

implementation
uses
  DataModule, DataBanco;
{$R *.dfm}

procedure TfrmDatosBSProductos.FormCreate(Sender: TObject);
begin

  inherited;
  
  DMB.qrProductosBanco.Close;
  DMB.qrProductosBanco.Open;

end;

end.
