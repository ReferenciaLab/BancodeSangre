unit BancoReservacionesVencidas;

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
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, cxMemo;

type
  TfrmReservacionesVencidas = class(TfrmDatosModule)
    tvDatosCodigoId: TcxGridDBColumn;
    tvDatosProductoDes: TcxGridDBColumn;
    tvDatosCantidad: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosHora: TcxGridDBColumn;
    tvDatosReservado: TcxGridDBColumn;
    tvDatosReservadoHasta: TcxGridDBColumn;
    tvDatosVence: TcxGridDBColumn;
    tvDatosCruce: TcxGridDBColumn;
    tvDatosReceptorId: TcxGridDBColumn;
    tvDatosDoctorId: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    qrDoctor: TADOQuery;
    qrDoctorDoctorID: TStringField;
    qrDoctorNombre: TStringField;
    dsDoctor: TDataSource;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcDatosGroup4: TdxLayoutGroup;
    qrDoctorTelefono: TStringField;
    qrDoctorFax: TStringField;
    qrDoctoreMail: TStringField;
    ActBuscarDoctor: TAction;
    cxMemo1: TcxMemo;
    lcDatosItem8: TdxLayoutItem;
    cxButton1: TcxButton;
    lcDatosItem9: TdxLayoutItem;
    AcLiberarReservacion: TAction;
    procedure AcLiberarReservacionExecute(Sender: TObject);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure ActBuscarDoctorExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoInsert; override;
    procedure DoDelete; override;

  public
    { Public declarations }
  end;

var
  frmReservacionesVencidas: TfrmReservacionesVencidas;

implementation
Uses
  DataModule, DataBanco;

{$R *.dfm}

procedure TfrmReservacionesVencidas.AcLiberarReservacionExecute(
  Sender: TObject);
begin
  inherited;

  DMB.LiberarReservacion(DMB.qrReservacionesVencidasCodigoId.Value, cxMemo1.Text);

  DMB.qrReservacionesVencidas.Close;
  DMB.qrReservacionesVencidas.Parameters.ParamByName('Fecha').Value:= DM.SystemDate;
  DMB.qrReservacionesVencidas.Open;
  
end;

procedure TfrmReservacionesVencidas.ActBuscarDoctorExecute(Sender: TObject);
begin
  inherited;

  qrDoctor.Close;
  qrDoctor.Parameters.ParamByName('DoctorId').Value:= DMB.qrReservacionesVencidasDoctorId.Value;
  qrDoctor.Open;

end;

procedure TfrmReservacionesVencidas.cxDBTextEdit1PropertiesChange(
  Sender: TObject);
begin
  inherited;

  ActBuscarDoctorExecute(Sender);
  cxMemo1.Clear;
  
end;

procedure TfrmReservacionesVencidas.FormCreate(Sender: TObject);
begin
  inherited;

  DMB.qrReservacionesVencidas.Close;
  DMB.qrReservacionesVencidas.Parameters.ParamByName('Fecha').Value:= DM.SystemDate;
  DMB.qrReservacionesVencidas.Open;

end;

procedure TfrmReservacionesVencidas.DoInsert;
begin

end;

procedure TfrmReservacionesVencidas.Dodelete;
begin

end;

end.
