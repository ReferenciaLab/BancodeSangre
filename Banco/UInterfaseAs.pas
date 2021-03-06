unit UInterfaseAs;

interface

uses
  SysUtils, Classes, DB, ADODB, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TInterfaseAS = class(TDataModule)
    ASConnection: TADOConnection;
    qrASDetalle: TADOQuery;
    qrASEncabezado: TADOQuery;
    qrSQLEncabezado: TADOQuery;
    qrSQLDetalle: TADOQuery;
    qrASEncabezadoIN3MUE: TBCDField;
    qrASEncabezadoIN3NOM: TStringField;
    qrASEncabezadoIN3HOR: TIntegerField;
    qrASEncabezadoIN3DIR: TStringField;
    qrASEncabezadoIN3EDA: TIntegerField;
    qrASEncabezadoIN3NAC: TIntegerField;
    qrASEncabezadoIN3TEL: TStringField;
    qrASEncabezadoIN3CAT: TStringField;
    qrASEncabezadoIN3FEC: TIntegerField;
    qrASEncabezadoIN3USU: TStringField;
    qrASEncabezadoIN3SEX: TStringField;
    qrASEncabezadoIN3CED: TBCDField;
    qrASEncabezadoIN3SUC: TIntegerField;
    qrASEncabezadoIN3CDO: TIntegerField;
    qrASEncabezadoIN3DOC: TStringField;
    qrASEncabezadoIN3CLI: TBCDField;
    qrASEncabezadoIN3FAC: TBCDField;
    qrASEncabezadoIN3PAG: TBCDField;
    qrASEncabezadoIN3RES: TBCDField;
    qrASEncabezadoIN3EPA: TIntegerField;
    qrASEncabezadoIN3IPA: TIntegerField;
    qrASEncabezadoIN3EDO: TIntegerField;
    qrASEncabezadoIN3IDO: TIntegerField;
    qrASEncabezadoIN3RCL: TIntegerField;
    qrASEncabezadoIN3ICL: TIntegerField;
    qrASEncabezadoIN3COM: TStringField;
    qrASEncabezadoIN3ABR: TIntegerField;
    qrASEncabezadoIN3REL: TBCDField;
    qrASEncabezadoIN3REF: TStringField;
    qrASDetalleIN4MUE: TBCDField;
    qrASDetalleIN4COD: TIntegerField;
    qrASDetalleIN4NOM: TStringField;
    qrASDetalleIN4STS: TStringField;
    qrASDetalleIN4DEP: TIntegerField;
    qrASDetalleIN4FEC: TIntegerField;
    qrASDetalleIN4HOR: TIntegerField;
    qrASDetalleIN4USU: TStringField;
    qrASDetalleIN4COM: TStringField;
    qrASDetalleIN4PET: TIntegerField;
    qrASDetalleIN4ANT: TBCDField;
    qrASDetalleIN4TIP: TStringField;
    qrASResult: TADOQuery;
    qrResult: TADOConnection;
    qrASResultL49MUE: TBCDField;
    qrASResultL49PRU: TIntegerField;
    qrASResultL49RES: TStringField;
    qrTipificacion: TADOQuery;
    qrASDetalleIN4VAL: TBCDField;
    qrASDetalleIN4ACT: TStringField;
    qrTipificacionL57MUE: TBCDField;
    qrTipificacionL57PRU: TIntegerField;
    qrTipificacionL57GRU: TStringField;
    qrTipificacionL57FAC: TStringField;
    qrTipificacionL57VAD: TStringField;
    qrTipificacionL57FEC: TIntegerField;
    qrTipificacionL57HOR: TIntegerField;
    qrTipificacionL57USU: TStringField;
    qrTipificacionL57NOM: TStringField;
    tbConfig: TADOTable;
    tbConfigSendToAs400: TBooleanField;
    qrGetTipificacion: TADOQuery;
    qrGetTipificacionL57MUE: TBCDField;
    qrGetTipificacionL57PRU: TIntegerField;
    qrGetTipificacionL57GRU: TStringField;
    qrGetTipificacionL57FAC: TStringField;
    qrGetTipificacionL57VAD: TStringField;
    qrGetTipificacionL57FEC: TIntegerField;
    qrGetTipificacionL57HOR: TIntegerField;
    qrGetTipificacionL57USU: TStringField;
    qrGetTipificacionL57NOM: TStringField;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    BooleanField1: TBooleanField;
    qrASEncabezadoCruce: TADOQuery;
    qrASDetallecruce: TADOQuery;
    qrASEncabezadoCruceIN3MUE: TBCDField;
    qrASEncabezadoCruceIN3NOM: TStringField;
    qrASEncabezadoCruceIN3HOR: TIntegerField;
    qrASEncabezadoCruceIN3DIR: TStringField;
    qrASEncabezadoCruceIN3EDA: TIntegerField;
    qrASEncabezadoCruceIN3NAC: TIntegerField;
    qrASEncabezadoCruceIN3TEL: TStringField;
    qrASEncabezadoCruceIN3CAT: TStringField;
    qrASEncabezadoCruceIN3FEC: TIntegerField;
    qrASEncabezadoCruceIN3USU: TStringField;
    qrASEncabezadoCruceIN3SEX: TStringField;
    qrASEncabezadoCruceIN3CED: TBCDField;
    qrASEncabezadoCruceIN3SUC: TIntegerField;
    qrASEncabezadoCruceIN3CDO: TIntegerField;
    qrASEncabezadoCruceIN3DOC: TStringField;
    qrASEncabezadoCruceIN3CLI: TBCDField;
    qrASEncabezadoCruceIN3FAC: TBCDField;
    qrASEncabezadoCruceIN3PAG: TBCDField;
    qrASEncabezadoCruceIN3RES: TBCDField;
    qrASEncabezadoCruceIN3EPA: TIntegerField;
    qrASEncabezadoCruceIN3IPA: TIntegerField;
    qrASEncabezadoCruceIN3EDO: TIntegerField;
    qrASEncabezadoCruceIN3IDO: TIntegerField;
    qrASEncabezadoCruceIN3RCL: TIntegerField;
    qrASEncabezadoCruceIN3ICL: TIntegerField;
    qrASEncabezadoCruceIN3COM: TStringField;
    qrASEncabezadoCruceIN3ABR: TIntegerField;
    qrASEncabezadoCruceIN3REL: TBCDField;
    qrASEncabezadoCruceIN3REF: TStringField;
    qrASEncabezadoCruceIN3ACT: TStringField;
    qrASDetallecruceIN4MUE: TBCDField;
    qrASDetallecruceIN4COD: TIntegerField;
    qrASDetallecruceIN4NOM: TStringField;
    qrASDetallecruceIN4STS: TStringField;
    qrASDetallecruceIN4DEP: TIntegerField;
    qrASDetallecruceIN4FEC: TIntegerField;
    qrASDetallecruceIN4HOR: TIntegerField;
    qrASDetallecruceIN4USU: TStringField;
    qrASDetallecruceIN4COM: TStringField;
    qrASDetallecruceIN4PET: TIntegerField;
    qrASDetallecruceIN4ANT: TBCDField;
    qrASDetallecruceIN4VAL: TBCDField;
    qrASDetallecruceIN4TIP: TStringField;
    qrASDetallecruceIN4ACT: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Enviar_Cruce : Boolean;
    function SetEncabezado(
      Muestra: String;
      Nombre: String;
      Hora: String;
      Direccion: String;
      Edad: Integer;
      FechaNacimieto: String;
      Telefono: String;
      Categoria: String;
      Fecha: String;
      Usuario: String;
      Sexo: String;
      Cedula: String;
      Sucursal: Integer;
      CodigoDoctor: String;
      Doctor: String;
      CLiente: String;
      Facturado: Currency;
      Pagado: Currency;
      Resto: Currency;
      TipoResultadoPaciente: Integer;
      InternetPaciente: Integer;
      TipoResultadoDoctor: Integer;
      InternetDoctor: Integer;
      TipoResultadoCliente: Integer;
      InternetCliente: Integer;
      Comentario: String;
      PacienteClinica: Integer;
      NumeroRelacionInternet: Integer;
      ReferenciaExterna: String = ''
    ): Boolean;

    function SetDetalle(
      Muestra: String;
      CodigoPrueba: string;
      Prueba: String;
      Status: String;
      Depto: Integer;
      FechaEntrada: String;
      Hora: string;
      Usuario: String;
      Comentario: String;
      Peticion2Muestra: Integer;
      NumeroMuestraAnterior: Integer;
      TipoMuestra: String;
      Valor: Currency = 0
    ): Boolean;

    function GetResult(
      Muestra: String;
      CodigoPrueba: string
    ): String;

    procedure SetStatusPrueba(Muestra: String; CodigoPrueba: string; Status: String);
    function GetTipificacion(Muestra: String; Var Tipo: String; var RH: String; Var Du: String): Boolean;

  end;

var
  InterfaseAS: TInterfaseAS;
    Const
      _AreaId = 'bds';

implementation
uses StrUtils, Windows;

{$R *.dfm}
function TInterfaseAS.GetTipificacion(Muestra: String; Var Tipo: String; var RH: String; Var Du: String): boolean;
begin

  qrGetTipificacion.Close;
  qrGetTipificacion.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrGetTipificacion.Open;

  if qrGetTipificacion.Eof then
    begin
      getTipificacion:= false
    end
  else
    begin
      if Trim(qrGetTipificacionL57VAD.Value) = 'POSITIVO' then
         Begin
          getTipificacion:= True;
          Tipo:= Trim(qrGetTipificacionL57GRU.Value);
          RH:= 'POSITIVO';
          Du:= Trim(qrGetTipificacionL57VAD.Value);
        end
        else
        begin
          getTipificacion:= True;
          Tipo:= Trim(qrGetTipificacionL57GRU.Value);
          RH:= Trim(qrGetTipificacionL57FAC.Value);
          Du:= Trim(qrGetTipificacionL57VAD.Value);
        end;

    end;

end;

procedure TInterfaseAS.SetStatusPrueba(Muestra: String; CodigoPrueba: string; Status: String);
begin

  //  Modo prueba
  tbConfig.Close;
  tbConfig.Open;
  if not tbConfigSendToAs400.Value then
    exit;

  qrASDetalle.Close;
  qrASDetalle.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASDetalle.Parameters.ParamByName('Codigo').Value:= CodigoPrueba;
  qrASDetalle.Open;

  if not qrASDetalle.Eof then
    begin
      qrASDetalle.Edit;
      qrASDetalleIN4STS.AsString:= LeftStr(Status, 1);
      qrASDetalleIN4ACT.AsString:= ' ';
      qrASDetalle.Post;
    end;

  qrASDetalle.Close;

end;

procedure TInterfaseAS.DataModuleCreate(Sender: TObject);
begin

  ASConnection.Open;

end;

function TInterfaseAS.GetResult(
  Muestra: String;
  CodigoPrueba: string): String;

var
  Dia, Mes, Year: Word;
begin

  qrASResult.Close;
  qrASResult.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASResult.Parameters.ParamByName('Codigo').Value:= CodigoPrueba;
  qrASResult.Open;

  if not qrASResult.Eof then
    GetResult:= qrASResultL49RES.AsString
  else
    GetResult:= '';

  qrASResult.Close;

end;


function TInterfaseAS.SetDetalle(
  Muestra: String;
  CodigoPrueba: string;
  Prueba: String;
  Status: String;
  Depto: Integer;
  FechaEntrada: String;
  Hora: string;
  Usuario: String;
  Comentario: String;
  Peticion2Muestra: Integer;
  NumeroMuestraAnterior: Integer;
  TipoMuestra: String;
  Valor: Currency = 0  ): Boolean;

var
  Dia, Mes, Year: Word;
begin

  tbConfig.Close;
  tbConfig.Open;

if not tbConfigSendToAs400.Value then   //  Modo prueba
    exit;

 if Enviar_Cruce = True then
  begin
  qrASDetallecruce.Close;
  qrASDetallecruce.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASDetallecruce.Parameters.ParamByName('Codigo').Value:= CodigoPrueba;
  qrASDetallecruce.Open;

  if qrASDetallecruce.Eof then
    qrASDetallecruce.Insert
  else
    qrASDetallecruce.Edit;

    qrASDetallecruceIN4MUE.AsString:= LeftStr(Muestra, 11);
    qrASDetallecruceIN4COD.AsString:= CodigoPrueba;
    qrASDetallecruceIN4NOM.AsString:= LeftStr(Prueba, 50);
    qrASDetallecruceIN4STS.AsString:= LeftStr(Status, 1);
    qrASDetallecruceIN4DEP.AsInteger:= Depto;

    DecodeDate(StrToDate(FechaEntrada), Year, Mes, Dia);
    qrASDetallecruceIN4FEC.AsString:=    RightStr('00' + IntToStr(Dia), 2) +
                                    RightStr('00' + IntToStr(Mes), 2) +
                                    RightStr('0000' + IntToStr(Year), 2);
    qrASDetallecruceIN4HOR.AsString:= LeftStr(StringReplace(Hora, ':', '', [rfReplaceAll] ), 4);
    qrASDetallecruceIN4USU.AsString:= LeftStr(Usuario, 10);
    qrASDetallecruceIN4COM.AsString:= LeftStr(Comentario, 100);
    qrASDetallecruceIN4PET.AsInteger:= Peticion2Muestra;
    qrASDetallecruceIN4ANT.AsInteger:= NumeroMuestraAnterior;
    qrASDetallecruceIN4TIP.AsString:= 'C'; //LeftStr(TipoMuestra, 1);
    qrASDetallecruceIN4VAL.AsCurrency:= Valor;

  qrASDetallecruce.Post;
  qrASDetallecruce.Close;

  end
  else
  begin
  qrASDetalle.Close;
  qrASDetalle.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASDetalle.Parameters.ParamByName('Codigo').Value:= CodigoPrueba;
  qrASDetalle.Open;

  if qrASDetalle.Eof then
    qrASDetalle.Insert
  else
    qrASDetalle.Edit;

    qrASDetalleIN4MUE.AsString:= LeftStr(Muestra, 11);
    qrASDetalleIN4COD.AsString:= CodigoPrueba;
    qrASDetalleIN4NOM.AsString:= LeftStr(Prueba, 50);
    qrASDetalleIN4STS.AsString:= LeftStr(Status, 1);
    qrASDetalleIN4DEP.AsInteger:= Depto;

    DecodeDate(StrToDate(FechaEntrada), Year, Mes, Dia);
    qrASDetalleIN4FEC.AsString:=    RightStr('00' + IntToStr(Dia), 2) +
                                    RightStr('00' + IntToStr(Mes), 2) +
                                    RightStr('0000' + IntToStr(Year), 2);
    qrASDetalleIN4HOR.AsString:= LeftStr(StringReplace(Hora, ':', '', [rfReplaceAll] ), 4);
    qrASDetalleIN4USU.AsString:= LeftStr(Usuario, 10);
    qrASDetalleIN4COM.AsString:= LeftStr(Comentario, 100);
    qrASDetalleIN4PET.AsInteger:= Peticion2Muestra;
    qrASDetalleIN4ANT.AsInteger:= NumeroMuestraAnterior;
    qrASDetalleIN4TIP.AsString:= LeftStr(TipoMuestra, 1);
    qrASDetalleIN4VAL.AsCurrency:= Valor;
  qrASDetalle.Post;
  qrASDetalle.Close;
end;

end;

function TInterfaseAS.SetEncabezado(
  Muestra: String;
  Nombre: String;
  Hora: String;
  Direccion: String;
  Edad: Integer;
  FechaNacimieto: String;
  Telefono: String;
  Categoria: String;
  Fecha: String;
  Usuario: String;
  Sexo: String;
  Cedula: String;
  Sucursal: Integer;
  CodigoDoctor: String;
  Doctor: String;
  CLiente: String;
  Facturado: Currency;
  Pagado: Currency;
  Resto: Currency;
  TipoResultadoPaciente: Integer;
  InternetPaciente: Integer;
  TipoResultadoDoctor: Integer;
  InternetDoctor: Integer;
  TipoResultadoCliente: Integer;
  InternetCliente: Integer;
  Comentario: String;
  PacienteClinica: Integer;
  NumeroRelacionInternet: Integer;
  ReferenciaExterna: string = ''
): Boolean;
var
  Dia, Mes, Year: Word;

begin

  tbConfig.Close;
  tbConfig.Open;
  if not tbConfigSendToAs400.Value then //  Modo prueba
  exit;

if Enviar_Cruce <> True then
 Begin
  qrASEncabezado.Close;
  qrASEncabezado.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASEncabezado.Open;

  if qrASEncabezado.Eof then
    qrASEncabezado.Insert
  else
    qrASEncabezado.Edit;

    qrASEncabezadoIN3MUE.asString := Muestra;
    qrASEncabezadoIN3NOM.AsString:= LeftStr(Nombre, 40);
    qrASEncabezadoIN3HOR.AsString:= LeftStr(StringReplace(Hora, ':', '', [rfReplaceAll] ), 4);
    qrASEncabezadoIN3DIR.AsString:= LeftStr(Direccion, 40);
    qrASEncabezadoIN3EDA.AsInteger:= Edad;

    DecodeDate(StrToDate(Fechanacimieto), Year, Mes, Dia);
    qrASEncabezadoIN3NAC.AsString:=  RightStr('00' + IntToStr(Dia), 2) +
                                     RightStr('00' + IntToStr(Mes), 2) +
                                     RightStr('0000' + IntToStr(Year), 2);

    qrASEncabezadoIN3TEL.AsString:= Telefono;
    qrASEncabezadoIN3CAT.AsString:= Categoria;

    DecodeDate(StrToDate(Fecha), Year, Mes, Dia);
    qrASEncabezadoIN3FEC.AsString:=   RightStr('00' + IntToStr(Dia), 2) +
                                      RightStr('00' + IntToStr(Mes), 2) +
                                      RightStr('0000' + IntToStr(Year), 2);
    qrASEncabezadoIN3USU.AsString:= LeftStr(Usuario, 10);
    qrASEncabezadoIN3SEX.AsString:= LeftStr(Sexo, 1);
    qrASEncabezadoIN3CED.AsString:= LeftStr(Cedula, 11);
    qrASEncabezadoIN3SUC.AsInteger:= Sucursal;
    qrASEncabezadoIN3CDO.AsString:= CodigoDoctor;
    qrASEncabezadoIN3DOC.AsString:= Doctor;
    qrASEncabezadoIN3CLI.AsString:= Cliente;
    qrASEncabezadoIN3FAC.AsCurrency:= Facturado;
    qrASEncabezadoIN3PAG.AsCurrency:= Pagado;
    qrASEncabezadoIN3RES.AsCurrency:= Resto;
    qrASEncabezadoIN3EPA.AsInteger:= TiporesultadoPaciente;
    qrASEncabezadoIN3IPA.AsInteger:= InternetPaciente;
    qrASEncabezadoIN3EDO.AsInteger:= TipoResultadoDoctor;
    qrASEncabezadoIN3IDO.AsInteger:= InternetDoctor;
    qrASEncabezadoIN3RCL.AsInteger:= TipoResultadoCliente;
    qrASEncabezadoIN3ICL.AsInteger:= InternetCliente;
    qrASEncabezadoIN3COM.AsString:= LeftStr(Comentario, 50);
    qrASEncabezadoIN3ABR.AsInteger:= PacienteClinica;
    qrASEncabezadoIN3REL.AsInteger:= NumeroRelacionInternet;
    qrASEncabezadoIN3REF.AsString:= LeftStr(ReferenciaExterna, 20);

  qrASEncabezado.Post;
  qrASEncabezado.Close;
 End;
 if Enviar_Cruce = True then  // ENVIAR LA MUESTRA A LABORATORIO PARA HACER EL CRUCE SANGUINEO ********************
  Begin
  qrASEncabezadocruce.Close;
  qrASEncabezadocruce.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASEncabezadocruce.Open;

  if qrASEncabezadocruce.Eof then
     qrASEncabezadocruce.Insert
  else
    qrASEncabezadocruce.Edit;

    qrASEncabezadocruceIN3MUE.asString := Muestra;
    qrASEncabezadocruceIN3NOM.AsString:= LeftStr(Nombre, 40);
    qrASEncabezadocruceIN3HOR.AsString:= LeftStr(StringReplace(Hora, ':', '', [rfReplaceAll] ), 4);
    qrASEncabezadocruceIN3DIR.AsString:= LeftStr(Direccion, 40);
    qrASEncabezadocruceIN3EDA.AsInteger:= Edad;

    DecodeDate(StrToDate(Fechanacimieto), Year, Mes, Dia);
    qrASEncabezadocruceIN3NAC.AsString:=  RightStr('00' + IntToStr(Dia), 2) +
                                     RightStr('00' + IntToStr(Mes), 2) +
                                     RightStr('0000' + IntToStr(Year), 2);

    qrASEncabezadocruceIN3TEL.AsString:= Telefono;
    qrASEncabezadocruceIN3CAT.AsString:= Categoria;

    DecodeDate(StrToDate(Fecha), Year, Mes, Dia);
    qrASEncabezadocruceIN3FEC.AsString:=   RightStr('00' + IntToStr(Dia), 2) +
                                      RightStr('00' + IntToStr(Mes), 2) +
                                      RightStr('0000' + IntToStr(Year), 2);
    qrASEncabezadocruceIN3USU.AsString:= LeftStr(Usuario, 10);
    qrASEncabezadocruceIN3SEX.AsString:= LeftStr(Sexo, 1);
    qrASEncabezadocruceIN3CED.AsString:= LeftStr(Cedula, 11);
    qrASEncabezadocruceIN3SUC.AsInteger:= Sucursal;
    qrASEncabezadocruceIN3CDO.AsString:= CodigoDoctor;
    qrASEncabezadocruceIN3DOC.AsString:= Doctor;
    qrASEncabezadocruceIN3CLI.AsString:= Cliente;
    qrASEncabezadocruceIN3FAC.AsCurrency:= Facturado;
    qrASEncabezadocruceIN3PAG.AsCurrency:= Pagado;
    qrASEncabezadocruceIN3RES.AsCurrency:= Resto;
    qrASEncabezadocruceIN3EPA.AsInteger:= TiporesultadoPaciente;
    qrASEncabezadocruceIN3IPA.AsInteger:= InternetPaciente;
    qrASEncabezadocruceIN3EDO.AsInteger:= TipoResultadoDoctor;
    qrASEncabezadocruceIN3IDO.AsInteger:= InternetDoctor;
    qrASEncabezadocruceIN3RCL.AsInteger:= TipoResultadoCliente;
    qrASEncabezadocruceIN3ICL.AsInteger:= InternetCliente;
    qrASEncabezadocruceIN3COM.AsString:= LeftStr(Comentario, 50);
    qrASEncabezadocruceIN3ABR.AsInteger:= PacienteClinica;
    qrASEncabezadocruceIN3REL.AsInteger:= NumeroRelacionInternet;
    qrASEncabezadocruceIN3REF.AsString:= LeftStr(ReferenciaExterna, 20);

  qrASEncabezadocruce.Post;
  qrASEncabezadocruce.Close;
 End;
  
end;

end.
