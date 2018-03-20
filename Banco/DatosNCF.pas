unit DatosNCF;

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
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, cxCheckBox;

type
  TfrmDatosNCF = class(TfrmDatosModule)
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    tvDatosTipo: TcxGridDBColumn;
    tvDatosConsecutivo: TcxGridDBColumn;
    tvDatosInicial: TcxGridDBColumn;
    tvDatosFinal: TcxGridDBColumn;
    tvDatosFijo: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem7: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosNCF: TfrmDatosNCF;

implementation

uses DataBanco;

{$R *.dfm}

procedure TfrmDatosNCF.FormCreate(Sender: TObject);
begin
  inherited;

  DMB.qrNCF.Close;
  DMB.qrNCF.OPen;

end;

end.
