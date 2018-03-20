unit DatosDonantesRecurrentes;

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
  TfrmDatosDonantesRecurrentes = class(TfrmDatosModule)
    qrDatos: TADOQuery;
    qrDatosDonaciones: TIntegerField;
    qrDatosPacienteID: TStringField;
    qrDatosDonacionStatus: TWideStringField;
    qrDatosNOMBRE: TStringField;
    tvDatosDonaciones: TcxGridDBColumn;
    tvDatosPacienteID: TcxGridDBColumn;
    tvDatosDonacionStatus: TcxGridDBColumn;
    tvDatosNOMBRE: TcxGridDBColumn;
    tvDatosTipoSangre: TcxGridDBColumn;
    qrDatosTipoSangre: TWideStringField;
    qrDatosRH: TWideStringField;
    tvDatosRH: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function CanAdd: Boolean;
  public
    { Public declarations }
  end;

var
  frmDatosDonantesRecurrentes: TfrmDatosDonantesRecurrentes;

implementation

{$R *.dfm}

function TfrmDatosDonantesRecurrentes.CanAdd;
begin
  result:= false;
end;

procedure TfrmDatosDonantesRecurrentes.FormCreate(Sender: TObject);
begin
  inherited;

  qrDatos.Close;
  qrDatos.Open;
  
end;

end.
