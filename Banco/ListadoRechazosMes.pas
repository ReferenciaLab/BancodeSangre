unit ListadoRechazosMes;

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
  TfrmListadoRechazosMes = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrDatos: TADOQuery;
    Open: TAction;
    qrDatosTotalDonantes: TIntegerField;
    qrDatosAprobados: TIntegerField;
    qrDatosRechazados: TIntegerField;
    qrDatosEnProceso: TIntegerField;
    qrDatosProducto: TWideStringField;
    qrDatosEnero: TIntegerField;
    qrDatosFebrero: TIntegerField;
    qrDatosMarzo: TIntegerField;
    qrDatosAbril: TIntegerField;
    qrDatosMayo: TIntegerField;
    qrDatosJunio: TIntegerField;
    qrDatosJulio: TIntegerField;
    qrDatosAgosto: TIntegerField;
    qrDatosSeptiembre: TIntegerField;
    qrDatosOctubre: TIntegerField;
    qrDatosNoviembre: TIntegerField;
    qrDatosDiciembre: TIntegerField;
    tvDatosTotalDonantes: TcxGridDBColumn;
    tvDatosAprobados: TcxGridDBColumn;
    tvDatosRechazados: TcxGridDBColumn;
    tvDatosEnProceso: TcxGridDBColumn;
    tvDatosProducto: TcxGridDBColumn;
    tvDatosEnero: TcxGridDBColumn;
    tvDatosFebrero: TcxGridDBColumn;
    tvDatosMarzo: TcxGridDBColumn;
    tvDatosAbril: TcxGridDBColumn;
    tvDatosMayo: TcxGridDBColumn;
    tvDatosJunio: TcxGridDBColumn;
    tvDatosJulio: TcxGridDBColumn;
    tvDatosAgosto: TcxGridDBColumn;
    tvDatosSeptiembre: TcxGridDBColumn;
    tvDatosOctubre: TcxGridDBColumn;
    tvDatosNoviembre: TcxGridDBColumn;
    tvDatosDiciembre: TcxGridDBColumn;
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
  frmListadoRechazosMes: TfrmListadoRechazosMes;

implementation

{$R *.dfm}

procedure TfrmListadoRechazosMes.DoPost;
begin

end;

procedure TfrmListadoRechazosMes.DoInsert;
begin

end;

procedure TfrmListadoRechazosMes.DoDelete;
begin

end;

procedure TfrmListadoRechazosMes.DoEdit;
begin

end;

procedure TfrmListadoRechazosMes.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

  Self.Caption:= 'Entrada de Productos por Meses en el periodo desde: ' + Desde.Text + ', hasta: ' + Hasta.Text;

end;

procedure TfrmListadoRechazosMes.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    Desde.Date:= Date() - 7;

    OpenExecute(Self);

    Self.Caption:= 'Entrada de Productos por Meses en el periodo desde: ' + Desde.Text + ', hasta: ' + Hasta.Text;

end;

procedure TfrmListadoRechazosMes.OpenExecute(Sender: TObject);
begin
  inherited;

  qrDatos.Close;
  qrDatos.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrDatos.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrDatos.Open;

end;

end.
