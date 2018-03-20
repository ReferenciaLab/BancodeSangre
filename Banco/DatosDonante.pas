unit DatosDonante;

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
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, cxCheckBox, cxButtonEdit,
  cxBlobEdit, cxMaskEdit, cxDropDownEdit, cxMemo, cxCalendar;

type
  TfrmDatosDonante = class(TfrmDatosModule)
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosTelefono: TcxGridDBColumn;
    tvDatosTelefono2: TcxGridDBColumn;
    tvDatosRechaso: TcxGridDBColumn;
    tvDatosDonanteActivo: TcxGridDBColumn;
    tvDatosTipoSangre: TcxGridDBColumn;
    tvDatosRH: TcxGridDBColumn;
    tvDatosFechaUltimaDon: TcxGridDBColumn;
    lcDatosGroup4: TdxLayoutGroup;
    lcDatosGroup5: TdxLayoutGroup;
    acContactos: TAction;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosGroup6: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lcDatosItem7: TdxLayoutItem;
    Operacion: TcxComboBox;
    lcDatosItem8: TdxLayoutItem;
    qrContactos: TADOQuery;
    qrContactosId: TAutoIncField;
    qrContactosFecha: TDateTimeField;
    qrContactosCliente: TStringField;
    qrContactosOperacion: TStringField;
    qrContactosRespuesta: TStringField;
    qrContactosPriximoContacto: TDateTimeField;
    qrContactosMetodoContacto: TStringField;
    dsContactos: TDataSource;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Operacion: TcxGridDBColumn;
    cxGrid1DBTableView1Respuesta: TcxGridDBColumn;
    cxGrid1DBTableView1PriximoContacto: TcxGridDBColumn;
    cxGrid1DBTableView1MetodoContacto: TcxGridDBColumn;
    lcDatosItem9: TdxLayoutItem;
    Respuesta: TcxMemo;
    lcDatosItem10: TdxLayoutItem;
    lcDatosItem11: TdxLayoutItem;
    ProximoContacto: TcxDateEdit;
    cxButton1: TcxButton;
    cmdGrabar: TADOCommand;
    CambiarPaciente: TAction;
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure CambiarPacienteExecute(Sender: TObject);
    procedure acContactosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
    procedure DoEdit; override;

    function  CanAdd : Boolean;
    function  CanEdit : Boolean;
    function  CanDelete : Boolean;

  public
    { Public declarations }
  end;

var
  frmDatosDonante: TfrmDatosDonante;

implementation
uses
  DataBanco, DataModule;

{$R *.dfm}

procedure TfrmDatosDonante.acContactosExecute(Sender: TObject);
begin
  inherited;
  
  // Pasar al historial del paciente
  cmdGrabar.Parameters.ParamByName('Fecha').Value:= DM.SystemDate;
  cmdGrabar.Parameters.ParamByName('Operacion').Value:= Operacion.Text;
  cmdGrabar.Parameters.ParamByName('Respuesta').Value:= Respuesta.Text;
  cmdGrabar.Parameters.ParamByName('ProximoContacto').Value:= ProximoContacto.Date;
  cmdGrabar.Parameters.ParamByName('Cliente').Value:= dmb.qrDonantesPacienteID.Value;

  cmdGrabar.Execute;

  qrContactos.Close;
  qrContactos.Parameters[0].Value:= dmb.qrDonantePacienteID.Value;
  qrContactos.Open;

  Respuesta.Text:= '';

end;

procedure TfrmDatosDonante.CambiarPacienteExecute(Sender: TObject);
begin
  inherited;

  qrContactos.Close;
  qrContactos.Parameters[0].Value:= trim(cxDBTextEdit1.Text);
  qrContactos.Open;

end;

function  TfrmDatosDonante.CanAdd : Boolean;
begin
  result:= false;
end;

function  TfrmDatosDonante.CanEdit : Boolean;
begin
  result:= false;
end;

procedure TfrmDatosDonante.cxDBTextEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
  
  if (trim(cxDBTextEdit1.Text) = '') then exit;

  CambiarPacienteExecute(Sender);

end;

function  TfrmDatosDonante.CanDelete : Boolean;
begin
  result:= false;
end;

procedure TfrmDatosDonante.DoEdit;
begin

end;

procedure TfrmDatosDonante.DoDelete;
begin

end;

procedure TfrmDatosDonante.DoInsert;
begin

end;

procedure TfrmDatosDonante.DoPost;
begin

end;

procedure TfrmDatosDonante.FormCreate(Sender: TObject);
begin

  dsdatos.DataSet:= DMB.qrDonantes;

  inherited;

  DMB.qrDonantes.Close;
  DMB.qrDonantes.Open;

end;

end.
