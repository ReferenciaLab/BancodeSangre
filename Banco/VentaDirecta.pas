unit VentaDirecta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmVentaDirecta = class(TfrmCustomModule)
    actBuscarPaciente: TAction;
    actBuscarDoctor: TAction;
    actCruzar: TAction;
    actReservar: TAction;
    actDespachar: TAction;
    actCaja: TAction;
    pnPaciente: TPanel;
    Label1: TLabel;
    Paciente: TcxTextEdit;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Doctor: TcxTextEdit;
    cxButton2: TcxButton;
    cxTextEdit3: TcxTextEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    cxTextEdit4: TcxTextEdit;
    Panel7: TPanel;
    cxButton5: TcxButton;
    PG: TCheckBox;
    AF: TCheckBox;
    PFC: TCheckBox;
    CRI: TCheckBox;
    ST: TCheckBox;
    cxGrid1DBTableView1DonacionID: TcxGridDBColumn;
    cxGrid1DBTableView1MuestraNo: TcxGridDBColumn;
    cxGrid1DBTableView1MuestraNoAS: TcxGridDBColumn;
    cxGrid1DBTableView1NoAsCorto: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1PacienteID: TcxGridDBColumn;
    cxGrid1DBTableView1DonacionStatus: TcxGridDBColumn;
    cxGrid1DBTableView1Disponible: TcxGridDBColumn;
    cxButton6: TcxButton;
    procedure actDespacharExecute(Sender: TObject);
    procedure actReservarExecute(Sender: TObject);
    procedure actCajaExecute(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure actCruzarExecute(Sender: TObject);
    procedure cxTextEdit4PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PacienteExit(Sender: TObject);
    procedure DoctorExit(Sender: TObject);
    procedure actBuscarDoctorExecute(Sender: TObject);
    procedure actBuscarPacienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Add(Operacion: String);
  end;

var
  frmVentaDirecta: TfrmVentaDirecta;

implementation

uses DataBanco, DDoctor, DCliente, DataDonaciones, BancoVenta;

{$R *.dfm}

procedure TfrmVentaDirecta.Add;
var
  Codigo: String;
  Producto: String;
begin

  BV.AddAVenta(Paciente.Text, Doctor.Text, '1/1/1');

  Codigo:= dmDonaciones.qrDatosMuestraNo.AsString;

  if st.Checked then
    begin
      //Adicionar Sangre total a la operacion
      Codigo:= trim(Codigo) + '-ST';
      Producto:= 'ST';

      if (Operacion = 'CR')  or (Operacion = 'RS') then
        Producto:= Operacion;

      BV.AddADetVenta(Producto, Codigo);

    end;

  if af.Checked then
    begin
      //Adicionar Sangre total a la operacion
      Codigo:= trim(Codigo) + '-AF';
      Producto:= 'AF';

      if (Operacion = 'CR')  or (Operacion = 'RS') then
        Producto:= Operacion;

      BV.AddADetVenta(Producto, Codigo);

    end;

  if pfc.Checked then
    begin
      //Adicionar Sangre total a la operacion
      Codigo:= trim(Codigo) + '-PFC';
      Producto:= 'PFC';

      if (Operacion = 'CR')  or (Operacion = 'RS') then
        Producto:= Operacion;

      BV.AddADetVenta(Producto, Codigo);

    end;

  if cri.Checked then
    begin
      //Adicionar Sangre total a la operacion
      Codigo:= trim(Codigo) + '-CRI';
      Producto:= 'CRI';

      if (Operacion = 'CR')  or (Operacion = 'RS') then
        Producto:= Operacion;

      BV.AddADetVenta(Producto, Codigo);

    end;

  if pg.Checked then
    begin
      //Adicionar Sangre total a la operacion
      Codigo:= trim(Codigo) + '-PG';
      Producto:= 'PG';

      if (Operacion = 'CR')  or (Operacion = 'RS') then
        Producto:= Operacion;

      BV.AddADetVenta(Producto, Codigo);

    end;

end;

procedure TfrmVentaDirecta.actBuscarDoctorExecute(Sender: TObject);
begin
  inherited;
  Doctor.Text:= DMB.BuscarDoctor;
end;

procedure TfrmVentaDirecta.actBuscarPacienteExecute(Sender: TObject);
begin
  inherited;
  Paciente.Text:= DMB.BuscarPaciente;
end;

procedure TfrmVentaDirecta.actCajaExecute(Sender: TObject);
begin
  inherited;
  //Envio a Caja de las vainas
  
end;

procedure TfrmVentaDirecta.actCruzarExecute(Sender: TObject);
begin
  inherited;

  //Cruzar Sangre



end;

procedure TfrmVentaDirecta.actDespacharExecute(Sender: TObject);
begin
  inherited;
  //Despachar sangre
  
end;

procedure TfrmVentaDirecta.actReservarExecute(Sender: TObject);
begin
  inherited;

  //Reservar sangre

end;

procedure TfrmVentaDirecta.cxButton5Click(Sender: TObject);
begin
  inherited;

  //Despacahr a caja

end;

procedure TfrmVentaDirecta.cxTextEdit4PropertiesChange(Sender: TObject);
begin
  inherited;
  
  if (trim(cxTextEdit4.Text) <> '') then
    dmDonaciones.setFiltro(' MuestraNo like ''' + trim(cxTextEdit4.Text) + '%''')
  else
    dmDonaciones.setFiltro('');

end;

procedure TfrmVentaDirecta.DoctorExit(Sender: TObject);
begin
  inherited;

  cxTextEdit3.Text:= '';

  if (trim(Doctor.Text) = '') then
    begin
      actBuscarDoctorExecute(Sender);
    end;

  if dmDoctor.Go(Doctor.Text) then
    cxTextEdit3.Text:= dmDoctor.getString('Nombre');

end;

procedure TfrmVentaDirecta.FormCreate(Sender: TObject);
begin
  inherited;

  dmDonaciones.setFiltro('');
  
end;

procedure TfrmVentaDirecta.PacienteExit(Sender: TObject);
begin
  inherited;
  cxTextEdit1.Text:= '';

  if (trim(pACIENTE.Text) = '') then
    begin
      actBuscarPacienteExecute(Sender);
    end;

  if dmCliente.Go(Paciente.Text) then
    cxTextEdit1.Text:= dmCliente.getString('Nombre');

end;

end.
