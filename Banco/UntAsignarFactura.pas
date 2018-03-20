unit UntAsignarFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDCustomParentPanel,
  LMDBackPanel, StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxRadioGroup, cxLookAndFeelPainters, dxLayoutControl, cxButtons, cxTextEdit,
  QuerySearchDlgADO, cxPC, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, ADODB;

type
  TFrmAsignarFactura = class(TfrmCustomModule)
    cxGroupBox1: TcxGroupBox;
    Search: TQrySearchDlgADO;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxTextEdit2: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    dsDatos: TDataSource;
    edbuscarpor: TcxComboBox;
    edbuscar: TcxTextEdit;
    dgDatos: TcxGrid;
    tvDatos: TcxGridDBTableView;
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
    lvDatos: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsPendiente: TDataSource;
    qrSeleccionados: TADOQuery;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
   Disponible : Integer;
   Procedure ActualizarDisponible(Codigo : integer; Accion : String);
   procedure BuscarData;
   procedure BuscarDataAsignada;
    { Public declarations }
  end;

var
  FrmAsignarFactura: TFrmAsignarFactura;

implementation

uses DataModule, DataFactura ;

{$R *.dfm}

procedure TFrmAsignarFactura.ActualizarDisponible(Codigo : integer; Accion : String);
begin
 if Accion = 'MENOS' then
   BEGIN
     With dm.Qutilitario do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('UPDATE  BSINVENTARIO_EMPRESAS SET INV_DISPONIBLE = INV_DISPONIBLE -1 ');
       Sql.Add('where INV_CODIGO ='+#39+ IntToStr(Codigo) +#39);
       ExecSQL;
     End;
   end;
  if Accion = 'MAS' then
   BEGIN
     With dm.Qutilitario do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('UPDATE  BSINVENTARIO_EMPRESAS SET INV_DISPONIBLE = INV_DISPONIBLE + 1 ');
       Sql.Add('where INV_CODIGO ='+#39+ IntToStr(Codigo) +#39);
       ExecSQL;
     End;

   end;

end;

procedure TFrmAsignarFactura.BuscarData;
var
 sqlString : String;
begin

 sqlString := 'Select  * from BSVenta Where ( TotalPendiente <> 0 ) And sucursalid =  ' + #39+ dm.CurSucursal + #39 ;
 sqlString := sqlString + 'And FORMADEPAGO IS NULL ';


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

 dmFactura.qrPendientesCobros.DisableControls;
 dmFactura.qrPendientesCobros.Close;
 dmFactura.qrPendientesCobros.SQL.Text := sqlString ;
 dmFactura.qrPendientesCobros.Open;
  dmFactura.qrPendientesCobros.EnableControls;

end;

procedure TFrmAsignarFactura.BuscarDataAsignada;
begin

 with qrSeleccionados do
 begin
   close;
   sql.Clear;
   sql.add('Select  * from BSVenta Where ( TotalPendiente <> 0 ) And sucursalid = '+ #39+ dm.CurSucursal + #39);
   sql.add('and FORMADEPAGO = ''NC'' ');
   if cxTextEdit1.Text <> '' then
   sql.add('and INV_CODIGO = ' + #39 + cxTextEdit1.Text + #39);
   Open;


 end;


end;

procedure TFrmAsignarFactura.cxButton1Click(Sender: TObject);
begin
  inherited;

  Search.Title := 'Empresas';
  Search.ResultField := 'INV_CODIGO';
  Search.query.clear;
  Search.query.add('select INV_CODIGO,INV_EMPRESA from BSINVENTARIO_EMPRESAS');
  Search.query.add('where inv_disponible > 0 ');
  //Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Codigo');
  Search.AliasFields.Add('Nombre');
  if search.execute then
  begin
    cxTextEdit1.Text :=  Search.ValueField;
    With dm.Qutilitario do
     Begin
       Close;
       Sql.Clear;
       Sql.Add('select INV_CODIGO,INV_EMPRESA, INV_CANTIDAD, INV_DISPONIBLE');
       Sql.Add('from BSINVENTARIO_EMPRESAS');
       Sql.Add('where INV_CODIGO ='+#39+ cxTextEdit1.Text +#39);
       Open;

       if dm.Qutilitario.RecordCount > 0 then
         begin
             cxTextEdit2.Text := Fieldbyname('INV_EMPRESA').Value;
             cxTextEdit3.Text := Fieldbyname('INV_CANTIDAD').Value;
             cxTextEdit4.Text := Fieldbyname('INV_DISPONIBLE').Value;
             Disponible := Fieldbyname('INV_DISPONIBLE').Value;
             BuscarDataAsignada;
         end;

     end;
  end;

end;

procedure TFrmAsignarFactura.cxButton2Click(Sender: TObject);
begin
  inherited;
BuscarData;
BuscarDataAsignada;
end;

procedure TFrmAsignarFactura.cxButton3Click(Sender: TObject);
begin
  inherited;
if (dsDatos.DataSet.RecordCount > 0) and (Disponible > 0) then
begin
 if MessageDlg('Cofirma que desea cargar esta factura a la empresa seleccionada',mtConfirmation,[mbyes,mbno], 0) = mryes then
  begin
    With dm.Qutilitario do
     begin
       close;
       sql.Clear;
       sql.Add('update BSVenta set FORMADEPAGO = ''NC'', INV_CODIGO ='+ #39+ cxTextEdit1.Text + #39);
       sql.Add('where sucursalid = ' + #39+ dm.CurSucursal + #39);
       sql.Add('and ENTRADAID = '+ #39 + dmFactura.qrPendientesCobrosENTRADAID.value + #39);
       try
       ExecSQL;
       ActualizarDisponible(StrToInt(cxTextEdit1.Text), 'MENOS');
       ShowMessage('Proceso completado con exito');
       BuscarData;
       Except
       ShowMessage('El Proceso no pudo ser completado');
       abort;
       end;

     end;
  end;

end
else
ShowMessage('No se puede realizar la operación');
end;

procedure TFrmAsignarFactura.cxButton4Click(Sender: TObject);
begin
  inherited;
if qrSeleccionados.RecordCount > 0 then
begin


 if MessageDlg('Cofirma que reversar la nota de credito',mtConfirmation,[mbyes,mbno], 0) = mryes then
  begin
    With dm.Qutilitario do
     begin
       close;
       sql.Clear;                                     // qrSeleccionados.FieldByName('INV_CODIGO').Value
       sql.Add('update BSVenta set FORMADEPAGO = null, INV_CODIGO = 0');
       sql.Add('where sucursalid = ' + #39+ dm.CurSucursal + #39);
       sql.Add('and ENTRADAID = '+ #39 + qrSeleccionados.FieldByName('ENTRADAID').Value + #39);

       try
       ExecSQL;
       ActualizarDisponible(qrSeleccionados.FieldByName('INV_CODIGO').AsInteger,'MAS');
       ShowMessage('Proceso completado con exito');
       BuscarData;
       BuscarDataAsignada;
       Except
       ShowMessage('El Proceso no pudo ser completado');
       abort;
       end;

     end;
  end


else
ShowMessage('No se puede realizar la operación');

end;
end;

procedure TFrmAsignarFactura.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
 BuscarData;
end;

procedure TFrmAsignarFactura.FormCreate(Sender: TObject);
begin
  inherited;
  BuscarData;
  dsDatos.DataSet:= dmfactura.qrPendientesCobros;
  BuscarDataAsignada;
end;

end.
