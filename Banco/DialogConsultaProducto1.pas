unit DialogConsultaProducto1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxLayoutControl,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit, cxMemo,
  cxCheckBox, cxDBEdit, cxCalendar, ADODB;

type
  TfrmDialogConsultaProducto = class(TfrmDialogConsulta)
    dbDatosCantidad: TcxGridDBColumn;
    dbDatosReservado: TcxGridDBColumn;
    dbDatosVence: TcxGridDBColumn;
    dbDatosCruce: TcxGridDBColumn;
    dbDatosDisponible: TcxGridDBColumn;
    dbDatosProductoDes: TcxGridDBColumn;
    dbDatosPrecio: TcxGridDBColumn;
    dbDatosTipoSangre: TcxGridDBColumn;
    dbDatosRH: TcxGridDBColumn;
    dxLayoutControl1Item3: TdxLayoutItem;
    dsDoctor: TDataSource;
    dsReceptor: TDataSource;
    tbReceptor: TADOTable;
    tbReceptorNOMBRE: TStringField;
    tbReceptorCLIENTEID: TStringField;
    tbDoctor: TADOTable;
    tbDoctorDOCTORID: TStringField;
    tbDoctorNOMBRE: TStringField;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    qrDoctor: TADOQuery;
    qrDoctorDoctorID: TStringField;
    qrDoctorNombre: TStringField;
    qrReceptor: TADOQuery;
    qrReceptorNombre: TStringField;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxButton1: TcxButton;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxButton2: TcxButton;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxButton3: TcxButton;
    cxDBTextEdit9: TcxDBTextEdit;
    cxMemo1: TcxMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    Group2: TdxLayoutGroup;
    Group8: TdxLayoutGroup;
    Group4: TdxLayoutGroup;
    Group3: TdxLayoutGroup;
    Item7: TdxLayoutItem;
    Item9: TdxLayoutItem;
    Item8: TdxLayoutItem;
    Group5: TdxLayoutGroup;
    Group13: TdxLayoutGroup;
    Item6: TdxLayoutItem;
    Item20: TdxLayoutItem;
    Item11: TdxLayoutItem;
    Group6: TdxLayoutGroup;
    Group7: TdxLayoutGroup;
    Item13: TdxLayoutItem;
    Item15: TdxLayoutItem;
    Item16: TdxLayoutItem;
    Item12: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    procedure cxDBTextEdit7PropertiesChange(Sender: TObject);
    procedure cxDBTextEdit5PropertiesChange(Sender: TObject);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure run;
  end;

var
  frmDialogConsultaProducto: TfrmDialogConsultaProducto;

implementation
uses
  DataBanco;

{$R *.dfm}

procedure TfrmDialogConsultaProducto.cxButton1Click(Sender: TObject);
begin
  inherited;

  if (DMB.qrReservar.State in [dsinsert,dsedit]) then
    begin
      DMB.qrReservar.Post;

      DMB.Reservar(DMB.qrConsultaProductoCodigoId.Value,
                   DMB.qrReservarReceptorId.Value,
                   DMB.qrReservarDoctorId.Value,
                   DMB.qrReservarReservadoHasta.AsString,
                   DMB.qrReservarCruce.Value,
                   cxMemo1.Text );

    end;

    if cxDBCheckBox2.Checked then
      DMB.RetornarProducto:= '00000000-RCC'
    else
      DMB.RetornarProducto:= '00000000-RSC';

    Close;

end;

procedure TfrmDialogConsultaProducto.cxButton2Click(Sender: TObject);
begin
  inherited;

  if not (DMB.qrReservar.State in [dsInsert, dsEdit]) then
    DMB.qrReservar.Edit;

  DMB.qrReservarReceptorId.AsString:= DMB.BuscarPaciente;

end;

procedure TfrmDialogConsultaProducto.cxButton3Click(Sender: TObject);
begin
  inherited;

  if not (DMB.qrReservar.State in [dsInsert, dsEdit]) then
    DMB.qrReservar.Edit;

  DMB.qrReservarDoctorId.AsString:= DMB.BuscarDoctor;

end;

procedure TfrmDialogConsultaProducto.cxDBTextEdit1PropertiesChange(
  Sender: TObject);
begin
  inherited;

  DMB.qrReservar.Close;
  DMB.qrReservar.Parameters.ParamByName('CodigoId').Value:= DMB.qrConsultaProductoCodigoId.Value;
  DMB.qrReservar.Open;

  cxButton1.Enabled:= not DMB.qrConsultaProductoCruce.Value;

end;

procedure TfrmDialogConsultaProducto.cxDBTextEdit5PropertiesChange(
  Sender: TObject);
begin
  inherited;

  if (trim(cxDBTextEdit5.Text) = '') then
    begin
      qrReceptor.Parameters.ParamByName('PacienteId').Value:= '';
      cxDBTextEdit3.Text:= '';
      Exit;
    end;

  qrReceptor.Close;
  qrReceptor.Parameters.ParamByName('PacienteId').Value:= DMB.qrReservarReceptorId.Value;
  qrReceptor.Open;

end;

procedure TfrmDialogConsultaProducto.cxDBTextEdit7PropertiesChange(
  Sender: TObject);
begin
  inherited;

  if (trim(cxDBTextEdit7.Text) = '') then
    begin
      qrDoctor.Parameters.ParamByName('DoctorId').Value:= '';
      cxDBTextEdit9.Text:= '';
      Exit;
    end;

  qrDoctor.Close;
  qrDoctor.Parameters.ParamByName('DoctorId').Value:= cxDBtextEdit7.Text;
  qrDoctor.Open;

end;

procedure TfrmDialogConsultaProducto.FormCreate(Sender: TObject);
begin
  inherited;

  DMB.qrConsultaProducto.Close;
  DMB.qrConsultaProducto.Open;

  DMB.qrReservar.Close;
  DMB.qrReservar.Parameters.ParamByName('CodigoId').Value:= DMB.qrConsultaProductoCodigoId.Value;
  DMB.qrReservar.Open;

  //tbReceptor.Close;
  //tbReceptor.Open;

  //tbDoctor.Close;
  //tbDoctor.Open;

end;

procedure TfrmDialogConsultaProducto.run;
begin

  DMB.RetornarProducto:= '';

  Self.ShowModal;

  if ModalResult = mrOk then
    begin
      DMB.RetornarProducto:= DMB.qrConsultaProductoCodigoId.Value;
    end
  else
    begin
      if (DMB.qrReservar.State in [dsinsert,dsedit]) then
        DMB.qrReservar.Cancel;
    end;

  DMB.qrConsultaProducto.Close;
  DMB.qrReservar.Close;
  tbReceptor.Close;
  tbDoctor.Close;

end;

end.
