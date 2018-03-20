unit ListaRechazosMes;

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
  TfrmListaRechazosMes = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrDatos: TADOQuery;
    Open: TAction;
    qrDatosDonacionID: TStringField;
    qrDatosMuestraNo: TStringField;
    qrDatosMuestraNoAS: TStringField;
    qrDatosAnno: TIntegerField;
    qrDatosMes: TWideStringField;
    qrDatosFecha: TDateTimeField;
    qrDatosPacienteID: TStringField;
    qrDatosDonacionTipo: TStringField;
    qrDatosTipoSangre: TWideStringField;
    qrDatosRH: TWideStringField;
    qrDatosDu: TWideStringField;
    qrDatosFechaUltimaDon: TDateTimeField;
    qrDatosNOMBRE: TStringField;
    qrDatosNOMBRE1: TStringField;
    qrDatosAPELLIDOS: TStringField;
    qrDatosTELEFONO: TStringField;
    tvDatosMuestraNo: TcxGridDBColumn;
    tvDatosAnno: TcxGridDBColumn;
    tvDatosMes: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosPacienteID: TcxGridDBColumn;
    tvDatosDonacionTipo: TcxGridDBColumn;
    tvDatosTipoSangre: TcxGridDBColumn;
    tvDatosRH: TcxGridDBColumn;
    tvDatosDu: TcxGridDBColumn;
    tvDatosFechaUltimaDon: TcxGridDBColumn;
    tvDatosNOMBRE: TcxGridDBColumn;
    tvDatosTELEFONO: TcxGridDBColumn;
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
  frmListaRechazosMes: TfrmListaRechazosMes;

implementation

{$R *.dfm}

procedure TfrmListaRechazosMes.DoPost;
begin

end;

procedure TfrmListaRechazosMes.DoInsert;
begin

end;

procedure TfrmListaRechazosMes.DoDelete;
begin

end;

procedure TfrmListaRechazosMes.DoEdit;
begin

end;

procedure TfrmListaRechazosMes.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

end;

procedure TfrmListaRechazosMes.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    Desde.Date:= Date() - 7;

    OpenExecute(Self);

end;

procedure TfrmListaRechazosMes.OpenExecute(Sender: TObject);
begin
  inherited;

  qrDatos.Close;
  qrDatos.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrDatos.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrDatos.Open;

end;

end.
