unit DatosResumenDonaciones;

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
  JvEnterTab, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmDatosResumenDonaciones = class(TfrmDatosModule)
    lcGridItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    hasta: TcxDateEdit;
    lcGridItem2: TdxLayoutItem;
    Query: TADOQuery;
    QueryESTADO: TWideStringField;
    QueryDONACIONES: TStringField;
    QueryCANTIDAD: TIntegerField;
    tvDatosESTADO: TcxGridDBColumn;
    tvDatosDONACIONES: TcxGridDBColumn;
    tvDatosCANTIDAD: TcxGridDBColumn;
    Datos: TAction;
    procedure btBuscarClick(Sender: TObject);
    procedure DatosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosResumenDonaciones: TfrmDatosResumenDonaciones;

implementation
uses
  DateUtils, DataModule;

{$R *.dfm}

procedure TfrmDatosResumenDonaciones.btBuscarClick(Sender: TObject);
begin
  inherited;

  DatosExecute(Sender);

end;

procedure TfrmDatosResumenDonaciones.DatosExecute(Sender: TObject);
begin
  inherited;

  Self.Caption:=  'RESEUMEN DE DONACIONES. DESDE : ' + DateToStr(desde.Date) +
                  ' HASTA : ' + DateToStr(hasta.Date) + ' (' + DM.NombreSucursal + ') ';

  Query.Close;
  Query.Parameters.ParamByName('Desde').Value:= desde.Date;
  Query.Parameters.ParamByName('Hasta').Value:= hasta.Date;
  Query.Parameters.ParamByName('suc').Value :=  dm.CurSucursal;
  Query.Open;

  tvDatos.DataController.Groups.FullExpand;

end;

procedure TfrmDatosResumenDonaciones.FormCreate(Sender: TObject);
begin
  inherited;

  hasta.Date:= date();
  desde.Date:= date - DayOfTheMonth(Date());

  DatosExecute(Sender);
  
end;

end.
