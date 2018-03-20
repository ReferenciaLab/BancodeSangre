unit VentasMeses;

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
  TfrmVentasMeses = class(TfrmDatosModule)
    lcGridItem2: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    lcDatosItem1: TdxLayoutItem;
    desde: TcxDateEdit;
    lcGridItem3: TdxLayoutItem;
    hasta: TcxDateEdit;
    qrVentas: TADOQuery;
    Open: TAction;
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
    qrVentasTotalDonantes: TIntegerField;
    qrVentasAprobados: TIntegerField;
    qrVentasRechazados: TIntegerField;
    qrVentasEnProceso: TIntegerField;
    qrVentasProducto: TWideStringField;
    tvDatosTotalDonantes: TcxGridDBColumn;
    tvDatosAprobados: TcxGridDBColumn;
    tvDatosRechazados: TcxGridDBColumn;
    tvDatosEnProceso: TcxGridDBColumn;
    tvDatosProducto: TcxGridDBColumn;
    qrVentasJanuary: TBCDField;
    qrVentasFebruary: TBCDField;
    qrVentasMarch: TBCDField;
    qrVentasApril: TBCDField;
    qrVentasMay: TBCDField;
    qrVentasJune: TBCDField;
    qrVentasJuly: TBCDField;
    qrVentasAugust: TBCDField;
    qrVentasSeptember: TBCDField;
    qrVentasNovember: TBCDField;
    qrVentasDecember: TBCDField;
    qrVentasOctober: TBCDField;
    tvDatosColumn1: TcxGridDBColumn;
    Qcantidades: TADOQuery;
    QcantidadesCANTIDAD: TIntegerField;
    qrVentasCantidad: TIntegerField;
    procedure qrVentasCalcFields(DataSet: TDataSet);
    procedure hastaPropertiesChange(Sender: TObject);
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
    function CantidadPorMes(ano : integer; mesnombre : string; producto : string) : integer;
  end;

var
  frmVentasMeses: TfrmVentasMeses;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmVentasMeses.DoPost;
begin

end;

procedure TfrmVentasMeses.DoInsert;
begin

end;

function TfrmVentasMeses.CantidadPorMes(ano: integer;
  mesnombre: string; producto : string): integer;
  var mesnumero : integer;
begin
    if mesnombre = 'January' Then
       mesnumero:= 1
       else
     if mesnombre = 'February' Then
       mesnumero:= 2 else
     if mesnombre = 'March' Then
       mesnumero:= 3 else
     if mesnombre = 'April' Then
       mesnumero:= 4 else
     if mesnombre = 'May' Then
       mesnumero:= 5 else
     if mesnombre = 'June' Then
       mesnumero:= 6 else
     if mesnombre = 'July' Then
       mesnumero:= 7 else
     if mesnombre = 'August' Then
       mesnumero:= 8 else
     if mesnombre = 'September' Then
       mesnumero:= 9 else
     if mesnombre = 'October' Then
       mesnumero:= 10 else
     if mesnombre = 'November' Then
       mesnumero:= 11 else
     if mesnombre = 'December' Then
       mesnumero:= 12;

 with Qcantidades do
  begin
    close;
    Parameters.ParamByName('PRODUCTO').Value :=producto;
    Parameters.ParamByName('ANO').Value := ANO;
    Parameters.ParamByName('MES').Value := mesnumero;
    Open;
  end;

  if Qcantidades.RecordCount > 0  then
     Result := Qcantidades.FieldByName('cantidad').value
     else
     Result := 0;
end;

procedure TfrmVentasMeses.DoDelete;
begin

end;

procedure TfrmVentasMeses.DoEdit;
begin

end;

procedure TfrmVentasMeses.btBuscarClick(Sender: TObject);
begin
  inherited;

  OpenExecute(Self);

  Self.Caption:= 'VENTAS POR MESES.     DESDE: ' + Desde.Text + ' HASTA: ' + Hasta.Text +' (Sucursal ' + DM.qrSucursal.FieldByName('NOMBRE').Value + ')';

end;

procedure TfrmVentasMeses.FormCreate(Sender: TObject);
begin
  inherited;

    Hasta.Date:= Date();
    //Desde.Date:= Date() - 7;

    OpenExecute(Self);

    Self.Caption:= 'VENTAS POR MESES.     DESDE: ' + Desde.Text + ' HASTA: ' + Hasta.Text +' (Sucursal ' + DM.qrSucursal.FieldByName('NOMBRE').Value + ')';

end;

procedure TfrmVentasMeses.hastaPropertiesChange(Sender: TObject);
var
  Inicio: TDateTime;
begin
  inherited;

  Desde.Date:= StrToDate('1/1/' + copy(DateToStr(Hasta.Date), 7, 4));

end;

procedure TfrmVentasMeses.OpenExecute(Sender: TObject);
begin
  inherited;

  qrVentas.Close;
  qrVentas.Parameters.ParamByName('Desde').Value:= Desde.Date;
  qrVentas.Parameters.ParamByName('Hasta').Value:= Hasta.Date;
  qrVentas.Parameters.ParamByName('Sucursal').Value:= dm.CurSucursal;
  qrVentas.Open;

end;

procedure TfrmVentasMeses.qrVentasCalcFields(DataSet: TDataSet);
begin
  inherited;
 //qrVentasCantidad.Value := CantidadPorMes(StrToInt(copy(cxDateEdit1.Text,1,6)),qr )
 
end;

end.
