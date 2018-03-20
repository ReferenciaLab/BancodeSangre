unit DatosDoctor;

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
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit,
  cxCurrencyEdit, cxContainer, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxMemo, cxCalendar, cxCheckBox, DBCtrls;

type
  TfrmDatosDoctor = class(TfrmDatosModule)
    qrDoctor: TADOQuery;
    tvDatosDoctorID: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosTelefono: TcxGridDBColumn;
    tvDatosCodigoAxapta: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    eddoctor: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcDatosItem8: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem9: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem11: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem12: TdxLayoutItem;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem10: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem13: TdxLayoutItem;
    qrDoctorDOCTORID: TStringField;
    qrDoctorNOMBRE: TStringField;
    qrDoctorCONTACTO: TStringField;
    qrDoctorTELEFONO: TStringField;
    qrDoctorFAX: TStringField;
    qrDoctorCODIGOAXAPTA: TStringField;
    qrDoctorEMAIL: TStringField;
    qrDoctorCELULAR: TStringField;
    qrDoctorDIRECCION: TMemoField;
    qrDoctorCIUDADID: TStringField;
    qrDoctorRESULTADODOCTOR: TIntegerField;
    qrDoctorESPECIALIDADID: TStringField;
    qrDoctorPUBLICARINTERNET: TIntegerField;
    qrDoctorCODIGORESULTADO: TStringField;
    qrDoctorUSUARIOINTERNET: TStringField;
    qrDoctorCLAVEINTERNET: TStringField;
    qrDoctorCOMISION: TBCDField;
    qrDoctorDIRECCIONCONSULTA2: TMemoField;
    qrDoctorDIRECCIONCONSULTA1: TMemoField;
    qrDoctorESPECIALIDAD: TStringField;
    qrDoctorCODIGOWEB: TStringField;
    qrDoctorDATAAREAID: TStringField;
    qrDoctorRECID: TIntegerField;
    qrDoctormsrepl_tran_version: TGuidField;
    qrDoctorAutorizarDonacion: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    lcDatosItem14: TdxLayoutItem;
    procedure qrDoctorBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrDoctorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosDoctor: TfrmDatosDoctor;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDatosDoctor.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrCiudad.Close;
  DM.qrCiudad.Open;

  DM.qrespecialidad.Close;
  DM.qrespecialidad.Open;

  DM.qrParametro.close;
  DM.qrParametro.open;

  eddoctor.Properties.ReadOnly := DM.qrParametroAutoNumerarDoctor.Value;
end;

procedure TfrmDatosDoctor.qrDoctorBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (qrDoctor.State = dsInsert) Or
     (qrDoctor.State = dsEdit) Then
    If (qrDoctorDoctorID.IsNull) Or
       (qrDoctorDoctorID.Value = '')Then
      AutoKeyField := 'DoctorID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrDoctor.State = dsInsert) and (DM.qrParametroAutoNumerarDoctor.Value) then
  begin
   qrDoctorDoctorID.Value := formatfloat('0000',DM.qrParametroSecuenciaDoctor.asfloat);

   DM.qrParametro.edit;
   DM.qrParametroSecuenciaDoctor.Value := DM.qrParametroSecuenciaDoctor.Value + 1;
   DM.qrParametro.Post;
  end;
end;

procedure TfrmDatosDoctor.qrDoctorNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrDoctorResultadoDoctor.Value := 0;
  qrDoctorComision.Value := 0;
  qrDoctorPublicarInternet.Value := 0;

  DM.qrParametro.close;
  DM.qrParametro.open;

  qrDoctorDoctorID.Value := formatfloat('0000',DM.qrParametroSecuenciaDoctor.asfloat);
end;

end.
