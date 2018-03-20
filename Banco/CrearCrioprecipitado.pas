unit CrearCrioprecipitado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  StdActns, ActnList, JvComponentBase, JvFormPlacement, ExtCtrls, JvExControls,
  JvComponent, JvEnterTab, Buttons, DB, ADODB, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmCrearCrioprecipitado = class(TfrmCustomModule)
    pnBusqueda: TPanel;
    pnLista: TPanel;
    pnBotones: TPanel;
    dsCrio: TDataSource;
    qrCrio: TADOQuery;
    acCrear: TAction;
    qrCrioCodigoId: TStringField;
    qrCrioDonacionId: TStringField;
    qrCrioProductoID: TWideStringField;
    qrCrioFecha: TDateTimeField;
    qrCrioReservado: TBooleanField;
    qrCrioReservadoHasta: TDateTimeField;
    qrCrioVence: TDateTimeField;
    qrCrioNOMBRE: TStringField;
    qrCrioAPELLIDOS: TStringField;
    qrCrioTipoSangre: TWideStringField;
    qrCrioRH: TWideStringField;
    qrCrioDu: TWideStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CodigoId: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Reservado: TcxGridDBColumn;
    cxGrid1DBTableView1ReservadoHasta: TcxGridDBColumn;
    cxGrid1DBTableView1Vence: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TipoSangre: TcxGridDBColumn;
    cxGrid1DBTableView1RH: TcxGridDBColumn;
    cxGrid1DBTableView1Du: TcxGridDBColumn;
    cxButton1: TcxButton;
    edProducto: TEdit;
    Label1: TLabel;
    procedure acCrearExecute(Sender: TObject);
    procedure edProductoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrearCrioprecipitado: TfrmCrearCrioprecipitado;

implementation

uses DataBanco, DataInventario;

{$R *.dfm}

procedure TfrmCrearCrioprecipitado.acCrearExecute(Sender: TObject);
begin
  inherited;
  //Crear Crioprecipitado
  dmi.CrearCrioprecipitado(qrCrioCodigoId.Value);

end;

procedure TfrmCrearCrioprecipitado.edProductoChange(Sender: TObject);
var
  tmp: String;
begin
  inherited;

  if (trim(edProducto.Text) = '') then
    tmp:= '%'
  else
    tmp:= '%' + trim(edProducto.Text) + '%';

  qrCrio.Close;
  qrCrio.Parameters[0].Value:= tmp;
  qrCrio.open;
  
end;

procedure TfrmCrearCrioprecipitado.FormCreate(Sender: TObject);
begin
  inherited;

  qrCrio.Close;
  qrCrio.Parameters[0].Value:= '%';
  qrCrio.open;
  edProducto.Text:= '';

end;

end.
