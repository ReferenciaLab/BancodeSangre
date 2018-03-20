unit ListaDonaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ABSMain, JvStringHolder, StdActns, ActnList,
  ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk,
  dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase, JvFormPlacement,
  ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab;

type
  TfrmListaDonaciones = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrDatos: TADOQuery;
    Open: TAction;
    tvDatosMuestraNo: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosTipoSangre: TcxGridDBColumn;
    tvDatosRH: TcxGridDBColumn;
    tvDatosDu: TcxGridDBColumn;
    tvDatosNOMBRE: TcxGridDBColumn;
    qrDatosDonacionID: TStringField;
    qrDatosMuestraNo: TStringField;
    qrDatosMuestraNoAS: TStringField;
    qrDatosFecha: TDateTimeField;
    qrDatosPacienteID: TStringField;
    qrDatosTipoDonante: TWideStringField;
    qrDatosTipoSangre: TWideStringField;
    qrDatosRH: TWideStringField;
    qrDatosDu: TWideStringField;
    qrDatosFechaUltimaDon: TDateTimeField;
    qrDatosNOMBRE: TStringField;
    qrDatosTELEFONO: TStringField;
    qrDatosCausa: TStringField;
    qrDatosDonacionStatus: TWideStringField;
    tvDatosCausa: TcxGridDBColumn;
    qrDatosDonacionTipo: TStringField;
    tvDatosDonacionTipo: TcxGridDBColumn;
    tvDatosDonacionStatus: TcxGridDBColumn;
    procedure btBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OpenExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
    procedure DoEdit; override;
  public
    { Public declarations }
  end;

var
  frmListaDonaciones: TfrmListaDonaciones;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmListaDonaciones.DoPost;
begin

end;

procedure TfrmListaDonaciones.DoInsert;
begin

end;

procedure TfrmListaDonaciones.DoDelete;
begin

end;

procedure TfrmListaDonaciones.DoEdit;
begin

end;

procedure TfrmListaDonaciones.btBuscarClick(Sender: TObject);
begin
  inherited;

  Self.Caption:= 'LISTA DE DONACIONES.   PERIODO: ' + Desde.Text + ', HASTA: ' + Hasta.Text + ' ('+ DM.CurSucursal + ')' ;
  OpenExecute(Self);

end;

procedure TfrmListaDonaciones.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    Desde.Date:= Date() - 7;
    Self.Caption:= 'LISTA DE DONACIONES.   PERIODO: ' + Desde.Text + ', HASTA: ' + Hasta.Text + ' ('+ DM.CurSucursal + ')' ;;

    OpenExecute(Self);

end;

procedure TfrmListaDonaciones.OpenExecute(Sender: TObject);
begin
  inherited;

  qrDatos.Close;
  qrDatos.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrDatos.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrDatos.Parameters.ParamByName('SUC').Value:= dm.CurSucursal ;
  qrDatos.Open;

end;

end.
