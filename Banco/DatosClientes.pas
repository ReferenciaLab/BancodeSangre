unit DatosClientes;

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
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, StrUtils,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxDBEdit, cxDBLookupComboBox,
  cxImageComboBox, cxMemo, cxSpinEdit, cxCheckBox, cxCurrencyEdit, cxCalendar,
  cxGroupBox, cxRadioGroup, DBCtrls, cxImage, jpeg, cxBlobEdit, RzPanel, Grids,
  DBGrids, Mask;

type
  TfrmDatosClientes = class(TfrmDatosModule)
    tvDatosClienteID: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    edcliente: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcDatosItem8: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    lcDatosItem9: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    BtTransacciones: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    BtBalance: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    pmAcuerdoComercial: TPopupMenu;
    Precios1: TMenuItem;
    Descuentos1: TMenuItem;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem12: TdxLayoutItem;
    lcDatosGrpPacientes: TdxLayoutGroup;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem17: TdxLayoutItem;
    lcDatosItem20: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    lcDatosItem21: TdxLayoutItem;
    CbTipodeCliente: TcxDBImageComboBox;
    ActionList1: TActionList;
    cxDBTextEdit10: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    EdAseguradora: TcxDBTextEdit;
    lcDatosItem15: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    lcDatosItem16: TdxLayoutItem;
    cxDBMaskEdit1: TcxDBMaskEdit;
    lcDatosItem14: TdxLayoutItem;
    lcDatosGroup4: TdxLayoutGroup;
    tvDatosNOMBRE1: TcxGridDBColumn;
    tvDatosAPELLIDOS: TcxGridDBColumn;
    tvDatosTELEFONO2: TcxGridDBColumn;
    tvDatosSEXO: TcxGridDBColumn;
    tvDatosTELEFONO: TcxGridDBColumn;
    lcDatosItem3: TdxLayoutItem;
    lcGridItem2: TdxLayoutItem;
    edbuscarpor: TcxComboBox;
    lcGridItem3: TdxLayoutItem;
    edbuscar: TcxTextEdit;
    DBRadioGroup1: TDBRadioGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcDatosItem13: TdxLayoutItem;
    lcDatosGroup6: TdxLayoutGroup;
    cxImage1: TcxImage;
    lcDatosItem11: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    lcDatosItem18: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    tvDatosDonacionID: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDonacionStatus: TcxGridDBColumn;
    tvDonacionNota: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    lcDatosGroup8: TdxLayoutGroup;
    lcDatosItem19: TdxLayoutItem;
    dsDonacionesHist: TDataSource;
    lcDatosGroup10: TdxLayoutGroup;
    tvDatosEdad: TcxGridDBColumn;
    lcDatosGroup9: TdxLayoutGroup;
    lcDatosGroup11: TdxLayoutGroup;
    lcDatosGroup7: TdxLayoutGroup;
    lcDatosGroup5: TdxLayoutGroup;
    tvDatosColumn1: TcxGridDBColumn;
    tvDatosColumn2: TcxGridDBColumn;
    lcDatosItem23: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    lcDatosGroup12: TdxLayoutGroup;
    RzStatusBar1: TRzStatusBar;
    lcDatosItem22: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBBlobEdit1: TcxDBBlobEdit;
    lcGridItem1: TdxLayoutItem;
    qrLogin: TADOQuery;
    qrLoginUserId: TStringField;
    qrLoginClave: TStringField;
    qrLoginNombre: TStringField;
    qrLoginRolID: TSmallintField;
    Panel1: TPanel;
    edUsuario: TcxMaskEdit;
    edClave: TcxMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    btAceptar: TcxButton;
    btCancelar: TcxButton;
    lcDatosItem25: TdxLayoutItem;
    DBEdit1: TDBEdit;
    lcDatosGroup13: TdxLayoutGroup;
    cxTextEdit1: TcxTextEdit;
    lcDatosGroup14: TdxLayoutGroup;
    lcDatosItem24: TdxLayoutItem;
    lcDatosGroup16: TdxLayoutGroup;
    cxButton1: TcxButton;
    lcDatosItem26: TdxLayoutItem;
    procedure cxButton1Click(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure cxDBLookupComboBox3Editing(Sender: TObject; var CanEdit: Boolean);
    procedure cxDBMaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDatosStateChange(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxDBMaskEdit1Exit(Sender: TObject);
    procedure pcDatosChange(Sender: TObject);
    procedure cxDBTextEdit2PropertiesChange(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure qrClientesORIGENChange(Sender: TField);
    procedure qrClientesGRUPOCLIENTEChange(Sender: TField);
    procedure BtLookInternetClick(Sender: TObject);
    procedure BtRelacionadosClick(Sender: TObject);
    procedure qrClientesAfterScroll(DataSet: TDataSet);
    procedure BtTarjetaClick(Sender: TObject);
    procedure BtParametroClick(Sender: TObject);
    procedure BtBalanceClick(Sender: TObject);
    procedure BtTransaccionesClick(Sender: TObject);
    procedure qrClientesNewRecord(DataSet: TDataSet);
    procedure qrClientesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    procedure BuscarHistoricoDonaciones(PacienteId: String);
    function Validar_Existe_Donante(campobusqueda, valorbusqueda: String;tipodocumento:integer): Boolean;
    { Private declarations }
  protected
    procedure DoPost; override;
    //procedure DoInsert; override;
  public

     Procedure Refrescar;
     Procedure Procesar_Usuario;
     Procedure Insertar_Usuario(usuario: string; clave: string; name: string;
                                cedula: string; cliente: string; tipo: string;
                                actual: string);

     Function Crear_Usuario(nombre : String) : String;
     Function Crear_Clave(cedularnc : String) : Integer;
     Function Valida_Usuario(usuario : String) : Boolean;
     Function Buscar_User_Internet(Cliente : String) : Boolean;
     procedure BuscarData;

  end;

var
  frmDatosClientes: TfrmDatosClientes;

implementation

uses DataModule, Main, DatosBanco, UntBuscar;

{$R *.dfm}

procedure TfrmDatosClientes.BuscarData;
var
 sqlString,concatenacion : String;
begin

  sqlString := 'Select * from PTCliente ';
  concatenacion := ' where ';

  if edbuscar.Text <> '' then begin
    case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + concatenacion + ' ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + concatenacion + ' Nombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + concatenacion + ' Telefono like '+#39+'%'+edbuscar.Text+'%'+#39;
    end;

 end;

 DM.qrClientes.Close;
 DM.qrClientes.SQL.Text := sqlString;
 DM.qrClientes.Open;

end;

procedure TfrmDatosClientes.BtTarjetaClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8005, DM.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtTransaccionesClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7989, DM.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.btAceptarClick(Sender: TObject);
begin
  inherited;
    qrLogin.Close;
    qrLogin.Parameters.ParamByName('pUser').Value := trim(edUsuario.Text);
    qrLogin.Parameters.ParamByName('pSuc').Value := DM.qrSucursal.FieldByName('SucursalID').AsString;
    qrLogin.Open;

    if (not qrLogin.Eof and (DecryptKey(qrLoginClave.Text) = trim(edClave.Text)) ) then
      begin
        Panel1.Visible := False;
      end
      else
       ShowMessage('Error clave incorrecta');
end;

procedure TfrmDatosClientes.BtBalanceClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7988, DM.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.btCancelarClick(Sender: TObject);
begin
  inherited;
  Abort;
 Panel1.Visible := False;


end;

procedure TfrmDatosClientes.BtLookInternetClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8023, DM.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtParametroClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-8006);
end;

procedure TfrmDatosClientes.BtRelacionadosClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8022, DM.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.DoPost;
begin
  if Trim(cxDBMaskEdit1.Text) <> EmptyStr then
    if Validar_Existe_Donante('identificacion', cxDBMaskEdit1.Text, cxDBLookupComboBox2.DataBinding.DataSource.DataSet.FieldByName('TipoDocumentoID').AsInteger) then
    begin
      cxDBMaskEdit1.SetFocus;
      Exit;
    end;

  If (DM.qrClientes.State = dsInsert) Or (DM.qrClientes.State = dsEdit) Then
    If (DM.qrClientesClienteID.IsNull) Or (DM.qrClientesClienteID.Value = '') Then
      AutoKeyField := 'ClienteID';

  DM.qrParametro.close;
  DM.qrParametro.open;
  If (DM.qrClientes.State = dsEdit) then
  begin
    DM.qrClientesUserIdModifica.Value := DM.CurUser;
    DM.qrClientesFechaModifica.Value  := Now;    
  end;

  If (DM.qrClientes.State = dsInsert) and (DM.qrParametroAutoNumerarClientes.Value) then
   begin

    DM.qrClientesClienteID.Value := formatfloat('000000', DM.qrParametroSecuenciaCliente.asfloat);
    DM.qrClientesUserIdCrea.Value:= DM.CurUser;    
    DM.qrParametro.edit;
    DM.qrParametroSecuenciaCliente.Value := DM.qrParametroSecuenciaCliente.Value + 1;
    DM.qrParametro.Post;
   end;

  DM.qrParametro.close;
  DM.qrParametro.open;

  inherited;

  DM.qrClientes.Close;
  DM.qrClientes.Open;

  cxImage1.Picture := nil;
end;

procedure TfrmDatosClientes.dsDatosStateChange(Sender: TObject);
begin
  inherited;
  if dsDatos.State in [dsEdit] then
  begin
    cxDBMaskEdit1Exit(cxDBMaskEdit1);
    BuscarHistoricoDonaciones(edcliente.Text);
  end
  else if dsDatos.State in [dsInsert] then
  begin
    cxImage1.Picture := nil;
    if dsDonacionesHist.DataSet <> nil then
      dsDonacionesHist.DataSet.Close;
  end;
end;

procedure TfrmDatosClientes.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDatosClientes.FormCreate(Sender: TObject);
begin
  inherited;

  DM.qrCiudad.close;
  DM.qrCiudad.open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;

  DM.qrParametro.close;
  DM.qrParametro.open;

  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrTiposDocumentos.Close;
  DM.qrTiposDocumentos.Open;

  BuscarData;
  edbuscarpor.ItemIndex := 1;

  DM.qrSeguros.close;
  DM.qrSeguros.open;

  dm.Qclinicas.Close;
  dm.Qclinicas.Open;

  EdAseguradora.Properties.ReadOnly := True;
  edcliente.Properties.ReadOnly := DM.qrParametroAutoNumerarClientes.Value;
  CbTipodeCliente.Properties.ReadOnly:= false;

end;

procedure TfrmDatosClientes.qrClientesBeforePost(DataSet: TDataSet);
begin
  inherited;

  If (DM.qrClientes.State = dsInsert) Or (DM.qrClientes.State = dsEdit) Then
    If (DM.qrClientesClienteID.IsNull) Or (DM.qrClientesClienteID.Value = '') Then
      AutoKeyField := 'ClienteID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  If (DM.qrClientes.State = dsInsert) and (DM.qrParametroAutoNumerarClientes.Value) then
   begin
    DM.qrClientesClienteID.Value := formatfloat('000000', DM.qrParametroSecuenciaCliente.asfloat);
    DM.qrParametro.edit;
    DM.qrParametroSecuenciaCliente.Value := DM.qrParametroSecuenciaCliente.Value + 1;
    DM.qrParametro.Post;
   end;
   cxImage1.Picture := nil;
end;

procedure TfrmDatosClientes.qrClientesGRUPOCLIENTEChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;

procedure TfrmDatosClientes.qrClientesNewRecord(DataSet: TDataSet);
Var RecId: Integer;
begin
  inherited;

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  RecId := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  DM.qrClientesDATAAREAID.Value := 'bds';
  DM.qrClientesRECID.Value := RecId;

  DM.qrClientesEstatus.Value := 1;
  DM.qrClientesSexo.Value := 1;
  DM.qrClientesEnviarFax.Value := 0;
  DM.qrClientesPruebasPorDia.Value := 0;
  DM.qrClientesCoberturaPorc.value := 0;
  DM.qrClientesEnvioResultado.value := 0;
  DM.qrClientesAutoconfirmar.value := 0;
  DM.qrClientesCobrarDiferencia.Value := 1;
  DM.qrClientesActivarDescuentos.Value := 1;
  DM.qrClientesPublicarInternet.Value := 1;
  DM.qrClientesSiempreInternet.Value := 1;
  DM.qrClientesSiempreImprimir.Value := 1;
  DM.qrClientesIncluirPrecioTicket.Value := 1;
  DM.qrClientesImprimirAliasNombre.Value := 0;
  DM.qrClientesImprimirAliasPrueba.Value := 0;
  DM.qrClientesUsarAcuerdoPropio.Value := 0;

  DM.qrClientesQuienPaga.Value := 'EMP';
  DM.qrClientesGrupoCliente.Value := '03';
  DM.qrClientesTipoCliente.Value := 'PRI';
  DM.qrClientesEntregarResultados.Value := 'EMP';
  DM.qrClientesMonedaID.Value :=  DM.qrParametroMonedaID.Value;


  DM.qrParametro.close;
  DM.qrParametro.open;

end;


procedure TfrmDatosClientes.qrClientesORIGENChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;

procedure TfrmDatosClientes.Refrescar;
begin

end;

procedure TfrmDatosClientes.qrClientesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Refrescar;
end;


//Procesando el Usuario de Internet de Este Cliente.
procedure TfrmDatosClientes.Procesar_Usuario;
Var
  Valor : Boolean;
  Pass2, Clave : Integer;
  Usuario, Useralt, Tipo : String;
begin
  //Creando la Clave de Internet.
  Clave :=  Crear_Clave(DM.qrClientesIDENTIFICACION.Value);

  //Creando el Usuario de Internet.
  Usuario :=  Crear_Usuario(DM.qrClientesNombre.Value);

  //Creando el Usuario Alternativo. 6 Digitos o Menos.
  If ( Length(Usuario) > 6 ) Then
    Useralt := Copy(Usuario, 1, 6)
  Else
    Useralt := Usuario;

  //Creando el Usuario Alternativo. 4 Digitos de la Clave.
  Pass2 := StrToInt( RightStr (IntToStr (Clave), 4) );

  If Not Valida_Usuario(Usuario) then
    Begin
      //Creando el Usuario Alternativo (Useralt + Pass2).
      Usuario := Useralt + IntToStr(Pass2);
      While Not Valida_Usuario(Usuario) do
       Begin
         Pass2 := Pass2 + 1;
         Usuario := Useralt + IntToStr(Pass2);
         Next;
       End;
    End;

  //Identificando el Tipo de Clave.
  If (DM.qrClientesGrupoCliente.Value = '03') Or
     (DM.qrClientesGrupoCliente.Value = '04') Or
     (DM.qrClientesGrupoCliente.Value = '05') Or
     (DM.qrClientesGrupoCliente.Value = '11') Or
     (DM.qrClientesTipoCliente.Value  = 'ACC') Or
     (DM.qrClientesTipoCliente.Value  = 'EMP') Or
     (DM.qrClientesTipoCliente.Value  = 'VIP') Or
     (DM.qrClientesTipoCliente.Value  = 'PRI') Then
   Tipo := 'P'
 Else
   Tipo := 'C';

  Insertar_Usuario(Usuario, IntToStr(Clave),
                   DM.qrClientesNombre.Value,
                   DM.qrClientesIDENTIFICACION.Value,
                   DM.qrClientesClienteId.Value, Tipo, 'N');
end;


//Creando la Clave de Internet Segun el Algoritmo de Alejandro Espinosa Curiel.
Function TfrmDatosClientes.Crear_Clave(cedularnc : String) : Integer;
Var
  Numero  : Double;
  Valor   : Int64;
//  Valor   : Integer;
  Texto   : String; //AnsiString;
begin
  //Cargando la Cedula - RNC.
//  Valor := StrToInt(cedularnc);
  Valor := StrToInt64(cedularnc);

  //Obteniendo el Numero Unico (Alejandro Espinosa Curiel).
  Numero := ((Valor * 180) / 360) * 3.1416;

  //Obteniendo la Parte Entera del Numero Unico.
  Valor := Trunc(Numero);

  //Tomando las 1ras 6 Posiciones del Entero.
  Texto := RightStr(IntToStr(Valor), 6);
//  Texto := AnsiRightStr(IntToStr(Valor), 6);

  //Asignando la Clave Obtenida.
  Result := StrToInt(Texto);
end;


//Creando el Usuario de Internet.
Function TfrmDatosClientes.Crear_Usuario(nombre : String) : String;
Var
  Texto : String;
  Valor, Largo, Blanco : Integer;
begin
  Largo := Length(nombre);

  Blanco := AnsiPos(' ', nombre);
//  Blanco := AnsiPos(#32, nombre);

  If (Largo > 10) Then
    Begin
      If (Blanco > 1) Then
        Begin
         Valor := Blanco - 1;

         If (Valor > 9) Then
           Texto := Copy(nombre, 1, 10)
         Else
           Texto := Copy(nombre, 1, Valor);
        End
      Else
        Texto := Copy(nombre, 1, 10);
    End
  Else
    Texto := nombre;

  Result := Texto;
end;


procedure TfrmDatosClientes.cxButton1Click(Sender: TObject);
begin
  inherited;
if(dm.qrClientes.State in[dsedit,dsinsert]) then
Begin
Application.CreateForm(Tfrmbuscar,frmbuscar);
Frmbuscar.ShowModal;
DBEdit1.Text := inttostr(DM.codigoclinica);
cxTextEdit1.text := DM.NombreClinica;
end;
end;

procedure TfrmDatosClientes.cxDBDateEdit1Exit(Sender: TObject);
begin
  inherited;

  if (DM.qrClientesFECHANACIMIENTO.Value > date()) then
    begin
      DM.Info('Fecha de nacimiento posterior a la fecha actual.');
    end;

end;

procedure TfrmDatosClientes.cxDBLookupComboBox2PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBMaskEdit1.Properties.EditMask := cxDBLookupComboBox2.Properties.ListSource.DataSet.FieldByName('Mascara').AsString;
  cxDBMaskEdit1.Update;
end;

procedure TfrmDatosClientes.cxDBLookupComboBox3Editing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
 if dm.qrClientes.State in[dsedit] then
  begin
    if (dm.CurRol in[1,4] ) then
      Begin

      end
      Else
      Begin
         if MessageDlg('Para cambiar la categoria debe introducir un usuario Supervisor', mtConfirmation,[mbYes,mbNo], 0 ) = mryes then
           begin
             edUsuario.Clear;
             edClave.Clear;
             Panel1.Visible := True;
          end
          else
          begin
            Abort;
          end;

      end;

 End;
end;

procedure TfrmDatosClientes.cxDBMaskEdit1Exit(Sender: TObject);
begin
  inherited;
  Validar_Existe_Donante('identificacion', cxDBMaskEdit1.Text, cxDBLookupComboBox2.DataBinding.DataSource.DataSet.FieldByName('TipoDocumentoID').AsInteger);
end;

procedure TfrmDatosClientes.cxDBMaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  case cxDBLookupComboBox2.DataBinding.DataSource.DataSet.FieldByName('TipoDocumentoID').AsInteger of
    1: if not (key in ['0'..'9',#13,#8]) then key := #0;
  end;
end;

procedure TfrmDatosClientes.cxDBTextEdit2PropertiesChange(Sender: TObject);
begin
  inherited;

end;

//Buscar Historico de Donaciones
procedure TfrmDatosClientes.BuscarHistoricoDonaciones(PacienteId:String);
Var
  qfind  : TAdoQuery;
  vsqlStr: String;
begin
  if dsDonacionesHist.DataSet <> nil then
  begin
    qfind := TAdoQuery(dsDonacionesHist.DataSet);
    FreeAndNil(qfind);
  end;
  vsqlStr := 'select fecha, DonacionId, DonacionStatus, DonacionTipo, RechazoNota';
  vsqlStr := vsqlStr + ' from dbo.BSDonacion ';
  vsqlStr := vsqlStr + ' where PacienteId = '+QuotedStr(PacienteId);
  vsqlStr := vsqlStr + ' order by fecha desc';

  qfind := DM.Find(vsqlStr, '');
  lcDatosGroup8.Caption := 'Historico de Donaciones ('+inttostr(qfind.RecordCount)+')';
  dsDonacionesHist.DataSet := qfind;
end;
//Validar si el Donante Existe
Function TfrmDatosClientes.Validar_Existe_Donante(campobusqueda, valorbusqueda:String;tipodocumento:integer):Boolean;
Var
  qfind  : TAdoQuery;
  vCedula: String;
  vmunCed,
  vseqCed,
  vverCed: String;
begin
  if Trim(valorbusqueda) = EmptyStr then Exit;
  vCedula := ReplaceStr(valorbusqueda,'-','');
  qfind := DM.Find('SELECT * FROM dbo.PTCLIENTE WHERE '+campobusqueda+' = :criterio and TipoDocumentoId = '+inttostr(tipodocumento), valorbusqueda);

  If (qfind.RecordCount > 0) then
  begin
    if (edcliente.DataBinding.DataSource.DataSet.FieldByName(edcliente.DataBinding.DataField)).Value <> qfind.FieldByName(edcliente.DataBinding.DataField).Value then
    begin
      Result := True;
      MessageDlg('Este n�mero de documento corresponde al donante '+
                 qfind.FieldByName('nombre').AsString+', C�digo '+qfind.FieldByName('clienteid').AsString, mtWarning, [mbOK], 0);
    end;
  end
  Else
  begin
    FreeAndNil(qfind);
    case tipodocumento of
      //Cedulados
      1:
      begin
        vmunCed := copy(vCedula,1,3);
        vseqCed := copy(vCedula,4,7);
        vverCed := copy(vCedula,11,1);
        qfind :=DM.Find('SELECT * FROM dbo.vwCedulados WHERE mun_ced = '+QuotedStr(vmunCed)+' and seq_ced = '+QuotedStr(vseqCed)+' and ver_ced = '+QuotedStr(vverCed), '');
      end;
    end;
    if qfind <> nil then
    begin
      if not qfind.IsEmpty then
      begin
        if qfind.FindField('Nombres') <> nil then
         cxDBTextEdit2.DataBinding.DataSource.DataSet.FieldByName(cxDBTextEdit2.DataBinding.DataField).Value := qfind.FieldByName('Nombres').Value; //nombre
        if qfind.FindField('Apellidos') <> nil then
          cxDBTextEdit10.DataBinding.DataSource.DataSet.FieldByName(cxDBTextEdit10.DataBinding.DataField).Value := qfind.FieldByName('Apellidos').Value; //apellido
        if qfind.FindField('Direccion') <> nil then
          cxDBMemo1.DataBinding.DataSource.DataSet.FieldByName(cxDBMemo1.DataBinding.DataField).Value := qfind.FieldByName('Direccion').Value; //direccion
        if qfind.FindField('Sector') <> nil then
          cxDBTextEdit9.DataBinding.DataSource.DataSet.FieldByName(cxDBTextEdit9.DataBinding.DataField).Value := qfind.FieldByName('Sector').Value; //sector
        if qfind.FindField('cod_municipio') <> nil then
          cxDBLookupComboBox1.DataBinding.DataSource.DataSet.FieldByName(cxDBLookupComboBox1.DataBinding.DataField).Value := qfind.FieldByName('cod_municipio').Value; //Ciudad
        if qfind.FindField('fecha_nac') <> nil then
          cxDBDateEdit1.DataBinding.DataSource.DataSet.FieldByName(cxDBDateEdit1.DataBinding.DataField).Value := qfind.FieldByName('fecha_nac').Value; //Fecha Nac
        if Not((qfind.FindField('Sexo').value = Null) Or (qfind.FindField('Sexo') = nil)) then
        begin
          case qfind.FieldByName('Sexo').AsString[1]  of//sexo
            'F':DBRadioGroup1.ItemIndex := 0;
            'M':DBRadioGroup1.ItemIndex := 1;
          end;
        end;
      end;
    end;
  end;
  if tipodocumento = 1 then
    if not qfind.IsEmpty then
      cxImage1.Picture.Assign(dm.BuscarFotoCedulado(qfind, copy(vCedula,1,3), copy(vCedula,4,7), copy(vCedula,11,1)));

  Result := False;
  FreeAndNil(qfind);
end;

//Validando la Existencia del Usuario Creado.
Function TfrmDatosClientes.Valida_Usuario(usuario : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.Find('SELECT * FROM PTUsuariosInternet WHERE UsuarioInternet = :usr', usuario);

  If (qfind.RecordCount > 0) then
    Result := False
  Else
    Result := True;

  FreeAndNil(qfind);
end;


//Insertando el Usuario de Internet Creado.
procedure TfrmDatosClientes.Insertar_Usuario(usuario: string; clave: string; name: string; cedula: string;
                                             cliente: string; tipo: string; actual: string);
var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := ' INSERT INTO PTUsuariosInternet(UsuarioInternet, ClaveInternet, Nombre, Identificacion, '+
                     ' ClienteId, Tipo, Actualizado) VALUES (:0, :1, :2, :3, :4, :5, :6)';
 qinsert.Parameters[0].Value := usuario;
 qinsert.Parameters[1].Value := clave;
 qinsert.Parameters[2].Value := name;
 qinsert.Parameters[3].Value := cedula;
 qinsert.Parameters[4].Value := cliente;
 qinsert.Parameters[5].Value := tipo;
 qinsert.Parameters[6].Value := 'N';
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;


procedure TfrmDatosClientes.pcDatosChange(Sender: TObject);
begin
  inherited;
  if (pcDatos.ActivePageIndex = 1) then
    cxDBLookupComboBox2.SetFocus;
end;

//Validando la Existencia del Usuario Creado.
Function TfrmDatosClientes.Buscar_User_Internet(Cliente : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT * FROM PTUsuariosInternet '+
                    ' WHERE ClienteId = ' + #39 + Cliente + #39 +
                    ' AND Tipo = ' + #39 + 'P' + #39;
  qfind.Open;

  if (qfind.RecordCount > 0) then
    result := true
  else
    result := false;

  FreeAndNil(qfind);
end;


end.



