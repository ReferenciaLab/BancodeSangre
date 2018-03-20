unit DatosGrupoClientes;

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
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxImageComboBox, cxCheckBox,
  cxCurrencyEdit, cxMaskEdit, cxSpinEdit, cxMemo;

type
  TfrmDatosGrupoClientes = class(TfrmDatosModule)
    qrGrupoClientes: TADOQuery;
    qrGrupoClientesGrupoCliente: TStringField;
    qrGrupoClientesDescripcion: TStringField;
    qrGrupoClientesCodigoAxapta: TStringField;
    tvDatosGrupoCliente: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    tvDatosCodigoAxapta: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem3: TdxLayoutItem;
    qrGrupoClientesComentario: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosGrupoClientes: TfrmDatosGrupoClientes;

implementation

uses DataModule;

{$R *.dfm}

end.
