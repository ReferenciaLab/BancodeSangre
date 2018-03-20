unit DatosProductosBanco;

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
  JvExControls, JvComponent, JvEnterTab, cxCheckBox, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxDBLookupComboBox, Mask, DBCtrls, cxCurrencyEdit;

type
  TfrmDatosBSProductos = class(TfrmDatosModule)
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    tvDatosProductoID: TcxGridDBColumn;
    tvDatosProductoDes: TcxGridDBColumn;
    lcDatosItem6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosItem5: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosItem9: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    lcDatosGroup4: TdxLayoutGroup;
    tvDatosColumn1: TcxGridDBColumn;
    tvDatosColumn2: TcxGridDBColumn;
    lcDatosGroup5: TdxLayoutGroup;
    lcDatosItem10: TdxLayoutItem;
    dsListaDonaciones: TDataSource;
    lcDatosItem3: TdxLayoutItem;
    cxButton1: TcxButton;
    lcDatosItem8: TdxLayoutItem;
    lcDatosGroup6: TdxLayoutGroup;
    cxLookupComboBox1: TcxLookupComboBox;
    ActionList1: TActionList;
    acGetPrecio: TAction;
    acSetPrecio: TAction;
    cxDBTextEdit3: TcxCurrencyEdit;
    procedure acSetPrecioExecute(Sender: TObject);
    procedure acGetPrecioExecute(Sender: TObject);
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
  DataModule, DataBanco, StrUtils;
{$R *.dfm}

procedure TfrmDatosBSProductos.acGetPrecioExecute(Sender: TObject);
begin
  inherited;

  if cxLookupComboBox1.EditValue = null then cxLookupComboBox1.EditValue:= 'PRI';

  cxDBTextEdit3.Text:=
    CurrToStr(
      DMB.GetPrecio(DMB.qrProductosBancoProductoID.AsString,
      cxLookupComboBox1.EditValue));

end;

procedure TfrmDatosBSProductos.acSetPrecioExecute(Sender: TObject);
begin
  inherited;

  DMB.SetPrecio(DMB.qrProductosBancoProductoID.AsString, cxLookUpComboBox1.EditValue, cxDBTextEdit3.Text );

end;

procedure TfrmDatosBSProductos.FormCreate(Sender: TObject);
begin

  inherited;
  
  DMB.qrProductosBanco.Close;
  DMB.qrProductosBanco.Open;

  DMB.qrCategorias.Close;
  DMB.qrCategorias.Open;

end;

end.
