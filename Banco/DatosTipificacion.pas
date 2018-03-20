unit DatosTipificacion;

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
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxContainer, cxTextEdit;

type
  TfrmDatosTipificacion = class(TfrmDatosModule)
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    lcDatosItem4: TdxLayoutItem;
    lcDatosGroup4: TdxLayoutGroup;
    lcDatosItem6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBComboBox2: TcxDBComboBox;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosItem3: TdxLayoutItem;
    cxDBComboBox3: TcxDBComboBox;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem7: TdxLayoutItem;
    tvDatosL57MUE: TcxGridDBColumn;
    tvDatosL57PRU: TcxGridDBColumn;
    tvDatosL57GRU: TcxGridDBColumn;
    tvDatosL57FAC: TcxGridDBColumn;
    tvDatosL57VAD: TcxGridDBColumn;
    tvDatosL57NOM: TcxGridDBColumn;
    procedure lcDatosEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
  public
    { Public declarations }
  end;

var
  frmDatosTipificacion: TfrmDatosTipificacion;

implementation
uses
  UInterfaseAS, DataModule;

{$R *.dfm}

procedure TfrmDatosTipificacion.FormCreate(Sender: TObject);
begin
  inherited;

  InterfaseAs.qrTipificacion.Close;
  InterfaseAs.qrTipificacion.Open;

end;

procedure TfrmDatosTipificacion.lcDatosEnter(Sender: TObject);
begin
  inherited;

  //if not (InterfaseAs.qrTipificacion.State in [dsEdit, dsInsert]) then
    //InterfaseAs.qrTipificacion.Edit;

  //InterfaseAs.qrTipificacionL57USU.Value:= DM.CurUser;

end;

procedure TfrmDatosTipificacion.DoInsert;
begin

end;

procedure TfrmDatosTipificacion.DoPost;
begin

end;

procedure TfrmDatosTipificacion.DoDelete;
begin

end;

end.
