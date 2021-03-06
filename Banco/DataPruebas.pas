unit DataPruebas;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmPruebas = class(TDataModule)
    qrPruebasDonantes: TADOQuery;
    qrPruebasDonantesPruebaID: TStringField;
    qrPruebasDonantesalias: TStringField;
    qrPruebasDonantesDescripcion: TStringField;
    qrPruebasDonantesPRECIO: TBCDField;
    qrPruebasDonantesCOSTO: TBCDField;
    qrPruebasDonantesCODIGOIDAS400: TStringField;
    qrPruebas: TADOQuery;
    qrPruebasPRUEBAID: TStringField;
    qrPruebasALIAS: TStringField;
    qrPruebasDESCRIPCION: TStringField;
    qrPruebasPRECIO: TBCDField;
    qrPruebasCOSTO: TBCDField;
    qrPruebasCODIGOIDAS400: TStringField;
    qrPruebasDonantesESTATUS: TIntegerField;
    qrPruebasDonantesGRUPOPRUEBAID: TStringField;
    qrPruebasDonantesDEPARTAMENTO: TStringField;
    qrPruebasDonantesPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasDonantesCODIGOAXAPTA: TStringField;
    qrPruebasDonantesPRECIODOLARES: TBCDField;
    qrPruebasDonantesEXTERIOR: TIntegerField;
    qrPruebasDonantesFACTURARCABECERA: TIntegerField;
    qrPruebasDonantesPRUEBAS: TIntegerField;
    qrPruebasDonantesTIPO: TStringField;
    qrPruebasDonantesORINA: TIntegerField;
    qrPruebasDonantesSANGRE: TIntegerField;
    qrPruebasDonantesCONDPACIENTE: TStringField;
    qrPruebasDonantesCONDMUESTRA: TStringField;
    qrPruebasDonantesCODDIAPROC: TStringField;
    qrPruebasDonantesDIASRESULTADO: TIntegerField;
    qrPruebasDonantesUNIDAD: TStringField;
    qrPruebasDonantesABREVIACION: TStringField;
    qrPruebasDonantesTIPOMUESTRA: TIntegerField;
    qrPruebasDonantesMEDIO: TIntegerField;
    qrPruebasDonantesCOLOR: TIntegerField;
    qrPruebasDonantesDEPID: TStringField;
    qrPruebasDonantesTIPOAS400: TStringField;
    qrPruebasDonantesMEDIOAS400: TStringField;
    qrPruebasDonantesNOPROCESAR: TIntegerField;
    qrPruebasDonantesCOMENTARIONOPROCESAR: TStringField;
    qrPruebasDonantesDATAAREAID: TStringField;
    qrPruebasDonantesRECID: TIntegerField;
    qrPruebasDonantesmsrepl_tran_version: TGuidField;
    qrPruebasESTATUS: TIntegerField;
    qrPruebasGRUPOPRUEBAID: TStringField;
    qrPruebasDEPARTAMENTO: TStringField;
    qrPruebasPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasCODIGOAXAPTA: TStringField;
    qrPruebasPRECIODOLARES: TBCDField;
    qrPruebasEXTERIOR: TIntegerField;
    qrPruebasFACTURARCABECERA: TIntegerField;
    qrPruebasPRUEBAS: TIntegerField;
    qrPruebasTIPO: TStringField;
    qrPruebasORINA: TIntegerField;
    qrPruebasSANGRE: TIntegerField;
    qrPruebasCONDPACIENTE: TStringField;
    qrPruebasCONDMUESTRA: TStringField;
    qrPruebasCODDIAPROC: TStringField;
    qrPruebasDIASRESULTADO: TIntegerField;
    qrPruebasUNIDAD: TStringField;
    qrPruebasABREVIACION: TStringField;
    qrPruebasTIPOMUESTRA: TIntegerField;
    qrPruebasMEDIO: TIntegerField;
    qrPruebasCOLOR: TIntegerField;
    qrPruebasDEPID: TStringField;
    qrPruebasTIPOAS400: TStringField;
    qrPruebasMEDIOAS400: TStringField;
    qrPruebasNOPROCESAR: TIntegerField;
    qrPruebasCOMENTARIONOPROCESAR: TStringField;
    qrPruebasDATAAREAID: TStringField;
    qrPruebasRECID: TIntegerField;
    qrPruebasmsrepl_tran_version: TGuidField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TIPO_PRODUCTO : String;
    procedure Actualizar;
  end;

var
  dmPruebas: TdmPruebas;

implementation
uses DataModule, Main,BancoReportes, BancoVenta, DatosBanco, DataBanco;
{$R *.dfm}

procedure tdmPruebas.Actualizar;
VAR
 i : integer;
begin

  qrPruebas.Close;
  qrPruebas.Open;

  if TRIM(DMB.qrDonacionDonacionTipo.value) = 'Terapeutico' then
    Begin
     With qrPruebasDonantes do
       begin
         Close;
         sql.clear;
         sql.Add('Select *  from BSPrueba');
         sql.Add('where pruebaid = ''00000167''  ');
         Open;
         i:= qrPruebasDonantes.recordcount;
       end;
    end
    else
    begin
      if TRIM(DMB.qrDonacionProductoID.value) = 'AF' then
    Begin
      With qrPruebasDonantes do
       begin
         Close;
         sql.clear;
         sql.Add('Select *  from BSPrueba');
         Open;
         i:= qrPruebasDonantes.recordcount;
       end;
    end;

  if TRIM(DMB.qrDonacionProductoID.value) <> 'AF' then
    Begin
      With qrPruebasDonantes do
       begin
         Close;
         sql.clear;
         sql.Add('Select *  from BSPrueba');
         sql.Add('where pruebaid <> ''002714''  ');
         Open;
         i:= qrPruebasDonantes.recordcount;
       end;
    end;
    end;





 // qrPruebasDonantes.Close;
 // qrPruebasDonantes.Open;

end;

procedure TdmPruebas.DataModuleCreate(Sender: TObject);
begin

 // Actualizar;

  //Esto se usara ene l futuro si cambio y unifico el acceso a pruebas generales
  //qrPruebas.Close;
  //qrPruebas.Open;
  
end;

end.
