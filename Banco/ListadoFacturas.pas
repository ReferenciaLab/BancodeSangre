unit ListadoFacturas;

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
  JvEnterTab, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit;

type
  TfrmListadoFacturas = class(TfrmDatosModule)
    cxButton2: TcxButton;
    Cobrar: TAction;
    Descuento: TAction;
    Mostrar: TAction;
    Imprimir: TAction;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    tvDatosENTRADAID: TcxGridDBColumn;
    tvDatosFECHA: TcxGridDBColumn;
    tvDatosRECID: TcxGridDBColumn;
    tvDatosPACIENTEID: TcxGridDBColumn;
    tvDatosNOMBREPACIENTE: TcxGridDBColumn;
    tvDatosCLIENTEID: TcxGridDBColumn;
    tvDatosCLIENTENOMBRE: TcxGridDBColumn;
    tvDatosBRUTO: TcxGridDBColumn;
    tvDatosDESCUENTO: TcxGridDBColumn;
    tvDatosSUBTOTAL: TcxGridDBColumn;
    tvDatosNETO: TcxGridDBColumn;
    tvDatosTOTALPAGADO: TcxGridDBColumn;
    tvDatosTotalPendiente: TcxGridDBColumn;
    cxButton5: TcxButton;
    PrintCobros: TAction;
    lcGridItem1: TdxLayoutItem;
    edbuscarpor: TcxComboBox;
    lcGridItem2: TdxLayoutItem;
    edbuscar: TcxTextEdit;
    CobrarNCF: TAction;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    Timer1: TTimer;
    procedure btBuscarClick(Sender: TObject);
    procedure CobrarNCFExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure MostrarExecute(Sender: TObject);
    procedure DescuentoExecute(Sender: TObject);
    procedure PrintCobrosExecute(Sender: TObject);
    procedure CobrarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
    function  CanAdd : Boolean;
    function  CanEdit : Boolean;
    function  CanDelete : Boolean;
  public
    { Public declarations }
    procedure BuscarData;
  end;

var
  frmListadoFacturas: TfrmListadoFacturas;

implementation

uses BancoVenta, DataFactura, DCobros, DialogShowFactura, DataBanco;

{$R *.dfm}

procedure TfrmListadoFacturas.btBuscarClick(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmListadoFacturas.BuscarData;
var
 sqlString : String;
begin

 sqlString := 'Select * from BSVenta Where ( 1 = 1 ) ';

 if edbuscar.Text <> '' then begin

   case edbuscarpor.ItemIndex of
     0 :  sqlString := sqlString +
          ' AND EntradaID like '+#39+'%'+edbuscar.Text+'%'+#39 +
          ' ORDER BY EntradaID ';
     1 :  sqlString := sqlString +
          ' AND PacienteID like '+#39+'%'+edbuscar.Text+'%'+#39 +
          ' ORDER BY PacienteID ';
     2 :  sqlString := sqlString +
          ' AND NombrePaciente like '+#39+'%'+'%'+edbuscar.Text+'%'+#39 +
          ' ORDER BY NombrePaciente ';
     3 :  sqlString := sqlString +
          ' AND ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39+
          ' ORDER BY ClienteID ';
     4 :  sqlString := sqlString +
          ' AND ClienteNombre like '+#39+'%'+edbuscar.Text+'%'+#39 +
          ' ORDER BY ClienteNombre ';
     5 :  sqlString := sqlString +
          ' AND Telefonos like '+#39+'%'+edbuscar.Text+'%'+#39 +
          ' ORDER BY Telefonos ';
   end;

 end;

 dmFactura.qrPendientesCobros.Close;
 dmFactura.qrPendientesCobros.SQL.Text := sqlString ;
 dmFactura.qrPendientesCobros.Open;

end;


procedure TfrmListadoFacturas.CobrarExecute(Sender: TObject);
begin
  inherited;

  dmFactura.AplicarCobro(dsDatos.DataSet.FieldByName('EntradaId').AsString);

end;

procedure TfrmListadoFacturas.CobrarNCFExecute(Sender: TObject);
var
  Empresa: String;
begin
  inherited;

  Empresa:= DMB.BuscarEmpresa;

  if (trim(dmFactura.qrPendientesCobrosNCF.Value) = '') then
    begin
     if (true) then
        begin
          if not(dmFactura.qrPendientesCobros.State in [dsInsert, dsEdit]) then
            dmFactura.qrPendientesCobros.Edit;
            dmFactura.qrPendientesCobrosNCF.Value:= DMB.GetNCF('02');
            dmFactura.qrPendientesCobros.Post;
        end
      else
        begin
          dmFactura.qrPendientesCobros.Edit;
          dmFactura.qrPendientesCobrosNCF.Value:= DMB.GetNCF('02');
          dmFactura.qrPendientesCobros.Post;
        end;
    end;

  CobrarExecute(Sender);

end;

procedure TfrmListadoFacturas.DescuentoExecute(Sender: TObject);
var
  Descuento: Currency;
begin
  inherited;
  dmFactura.DialogoDescuento;
  //dmFactura.AplicarDescuento(dsDatos.DataSet.FieldByName('EntradaId').AsString, Descuento );
end;

procedure TfrmListadoFacturas.FormCreate(Sender: TObject);
begin

  Buscardata;

  dsDatos.DataSet:= dmfactura.qrPendientesCobros;

  inherited;

end;

procedure TfrmListadoFacturas.ImprimirExecute(Sender: TObject);
begin
  inherited;

  dmFactura.ImprimirFactura(dsDatos.DataSet.FieldByName('EntradaId').AsString);

end;

procedure TfrmListadoFacturas.MostrarExecute(Sender: TObject);
begin
  inherited;

  dmFactura.AbrirFactura(dsDatos.DataSet.FieldByName('EntradaId').AsString);
  TfrmDialogShowFactura.Create(Self).Run;

end;

procedure TfrmListadoFacturas.PrintCobrosExecute(Sender: TObject);
begin
  inherited;

  dmCobros.ImprimirRecibos(dsDatos.DataSet.FieldByName('RecId').AsInteger);

end;

procedure TfrmListadoFacturas.Timer1Timer(Sender: TObject);
begin
  inherited;

  dmFactura.qrPendientesCobros.Close;
  dmfactura.qrPendientesCobros.Open;

end;

procedure TfrmListadoFacturas.DoPost;
begin

end;

procedure TfrmListadoFacturas.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;

  BuscarData;

end;

function  TfrmListadoFacturas.CanAdd : Boolean;
begin
  result:= false;
end;

function  TfrmListadoFacturas.CanEdit : Boolean;
begin
  result:= false;
end;

function  TfrmListadoFacturas.CanDelete : Boolean;
begin
  result:= false;
end;

procedure TfrmListadoFacturas.DoInsert;
begin

end;

procedure TfrmListadoFacturas.DoDelete;
begin

end;

end.
