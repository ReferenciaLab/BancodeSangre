unit DatosEmpresas;

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
  TfrmDatosEmpresas = class(TfrmDatosModule)
    tvDatosEmpresaId: TcxGridDBColumn;
    tvDatosCodigo: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosRNC: TcxGridDBColumn;
    tvDatosTelefono: TcxGridDBColumn;
    tvDatosTelefono1: TcxGridDBColumn;
    tvDatosFAX: TcxGridDBColumn;
    tvDatosNCFTipo: TcxGridDBColumn;
    ActionList1: TActionList;
    Action1: TAction;
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
    procedure DoEdit; override;
    procedure DoCancel; override;
    //function  CanAdd : Boolean;
    //function  CanEdit : Boolean;
    //function  CanDelete : Boolean;
  public
    { Public declarations }
  end;

var
  frmDatosEmpresas: TfrmDatosEmpresas;

implementation

uses DataBanco;

{$R *.dfm}

procedure TfrmDatosEmpresas.DoPost;
begin

end;

procedure TfrmDatosEmpresas.DoInsert;
begin

  DMB.NuevaEmpresa;

end;

procedure TfrmDatosEmpresas.DoDelete;
begin

end;

procedure TfrmDatosEmpresas.DoEdit;
begin

end;

procedure TfrmDatosEmpresas.DoCancel;
begin

end;

end.
