unit DatosCruce;

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
  TfrmDatosCruce = class(TfrmDatosModule)
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    qrDatos: TADOQuery;
    qrDatosENTRADAID: TStringField;
    qrDatosFECHA: TDateTimeField;
    qrDatosHORAENTRADA: TStringField;
    qrDatosPACIENTEID: TStringField;
    qrDatosCLIENTEID: TStringField;
    qrDatosDOCTORID: TStringField;
    qrDatosPOLIZAID: TStringField;
    qrDatosENCLINICA: TIntegerField;
    qrDatosRECORDCLINICA: TStringField;
    qrDatosNUMEROHABITACION: TStringField;
    qrDatosFECHAENTRADA: TDateTimeField;
    qrDatosFECHADEALTA: TDateTimeField;
    qrDatosRESULTADOPACIENTE: TIntegerField;
    qrDatosRESULTADODOCTOR: TIntegerField;
    qrDatosFECHAPROMETIDA: TDateTimeField;
    qrDatosHORAPROMETIDA: TStringField;
    qrDatosFLEBOTOMISTAID: TStringField;
    qrDatosNOTA: TStringField;
    qrDatosPROYECTOID: TStringField;
    qrDatosRECORDID: TIntegerField;
    qrDatosBRUTO: TBCDField;
    qrDatosDESCUENTO: TBCDField;
    qrDatosSUBTOTAL: TBCDField;
    qrDatosNETO: TBCDField;
    qrDatosNOMBREPACIENTE: TStringField;
    qrDatosDIRECCION: TStringField;
    qrDatosTELEFONOS: TStringField;
    qrDatosTELEFONO2: TStringField;
    qrDatosEMAIL: TStringField;
    qrDatosCLIENTENOMBRE: TStringField;
    qrDatosSUCURSALID: TStringField;
    qrDatosUSERID: TStringField;
    qrDatosCOBROID: TStringField;
    qrDatosTOTALPAGADO: TBCDField;
    qrDatosPRIORIDAD: TIntegerField;
    qrDatosFAX: TStringField;
    qrDatosTIPODOCUMENTO: TIntegerField;
    qrDatosCOBERTURAPORC: TBCDField;
    qrDatosCOBERTURASEGURO: TBCDField;
    qrDatosCOBERTURAVALOR: TBCDField;
    qrDatosDESCUENTOPORC: TBCDField;
    qrDatosDESCUENTOVALOR: TBCDField;
    qrDatosDESCUENTOBONO: TBCDField;
    qrDatosORIGEN: TStringField;
    qrDatosAPROBACIONNO: TStringField;
    qrDatosAPROBACIONPOR: TStringField;
    qrDatosCOBERTURARECHAZADA: TIntegerField;
    qrDatosCOBERTURACONFIRMADA: TIntegerField;
    qrDatosFECHAASEGURADORA: TDateTimeField;
    qrDatosMUESTRANO: TStringField;
    qrDatosMONEDAID: TStringField;
    qrDatosCOBERTURAEXPPORC: TIntegerField;
    qrDatosEDADPACIENTE: TIntegerField;
    qrDatosSEXO: TIntegerField;
    qrDatosNOMBREDOCTOR: TStringField;
    qrDatosPUBLICARINTERNET: TIntegerField;
    qrDatosCARNET: TStringField;
    qrDatosPUBLICARINTERNETDOCTOR: TIntegerField;
    qrDatosCUADREGLOBAL: TStringField;
    qrDatosCUADREUSUARIO: TStringField;
    qrDatosDESCAUTORIZADOPOR: TStringField;
    qrDatosGASTOSVARIOS: TBCDField;
    qrDatosNOAS400: TIntegerField;
    qrDatosNOAXAPTA: TIntegerField;
    qrDatosNOFACTURA: TIntegerField;
    qrDatosFACTEXTERIOR: TIntegerField;
    qrDatosHOLD: TIntegerField;
    qrDatosREPMUESTRA: TIntegerField;
    qrDatosENTRADAIDANT: TStringField;
    qrDatosTIPOENTRADA: TStringField;
    qrDatosFORMADEPAGO: TStringField;
    qrDatosDESCUENTOCARD: TStringField;
    qrDatosDESCUENTOTEXTO: TStringField;
    qrDatosACUERDOPROPIO: TIntegerField;
    qrDatosCLIENTEPADRE: TStringField;
    qrDatosDESCUENTOPLANID: TStringField;
    qrDatosFECHAREGISTRO: TDateTimeField;
    qrDatosHORAREGISTRO: TStringField;
    qrDatosTASA: TBCDField;
    qrDatosESTATUS: TIntegerField;
    qrDatosTIPOCLIENTEAS400: TIntegerField;
    qrDatosCLASECREDITO: TStringField;
    qrDatosCARNETNUMERO: TStringField;
    qrDatosCLIENTEPADREAXAPTA: TStringField;
    qrDatosPACIENTEIDAXAPTA: TStringField;
    qrDatosCLIENTEIDAXAPTA: TStringField;
    qrDatosDOCTORIDAXAPTA: TStringField;
    qrDatosDATAAREAID: TStringField;
    qrDatosRECID: TIntegerField;
    qrDatosTotalPendiente: TBCDField;
    qrDatosMuestraNoAS: TStringField;
    qrDatosNoAsCorto: TStringField;
    qrDatosEsCruce: TBooleanField;
    tvDatosENTRADAID: TcxGridDBColumn;
    tvDatosFECHA: TcxGridDBColumn;
    tvDatosHORAENTRADA: TcxGridDBColumn;
    tvDatosNOMBREPACIENTE: TcxGridDBColumn;
    tvDatosTELEFONOS: TcxGridDBColumn;
    tvDatosTELEFONO2: TcxGridDBColumn;
    tvDatosMuestraNoAS: TcxGridDBColumn;
    tvDatosNoAsCorto: TcxGridDBColumn;
    ActNuevo: TAction;
    ActEditar: TAction;
    ActBorrar: TAction;
    procedure ActEditarExecute(Sender: TObject);
    procedure ActNuevoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosCruce: TfrmDatosCruce;

implementation
uses
  DataBanco;

{$R *.dfm}

procedure TfrmDatosCruce.ActEditarExecute(Sender: TObject);
begin
  inherited;

  DMB.AbrirCruce(qrDatosENTRADAID.Value);

end;

procedure TfrmDatosCruce.ActNuevoExecute(Sender: TObject);
begin
  inherited;

  DMB.AbrirCruce('');

end;

procedure TfrmDatosCruce.FormCreate(Sender: TObject);
begin
  inherited;

  qrDatos.Close;
  qrDatos.Open;

end;

end.
