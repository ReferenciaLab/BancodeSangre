unit DatosDonaciones1;

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
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxMemo, DBCtrls, cxSpinEdit, cxTimeEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DateUtils, Grids, DBGrids, Mask;

type
  TfrmDatosDonaciones = class(TfrmDatosModule)
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcGridItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    lcDatosItem5: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    tvDatosDonacionID: TcxGridDBColumn;
    tvDatosMuestraNo: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosNOMBREPACIENTE: TcxGridDBColumn;
    lcDatosItem8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcDatosItem9: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    lcDatosItem11: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    lcDatosItem12: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    lcDatosItem13: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    lcDatosItem14: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    lcDatosGroup5: TdxLayoutGroup;
    lcDatosGroup6: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ActImpresion: TActionList;
    Muestras: TAction;
    Etiqueta: TAction;
    Donante: TAction;
    ActBorrar: TAction;
    lcDatosGroup7: TdxLayoutGroup;
    lcDatosItem15: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    lcDatosGroup8: TdxLayoutGroup;
    lcDatosGroup9: TdxLayoutGroup;
    lcDatosGroup10: TdxLayoutGroup;
    lcDatosGroup11: TdxLayoutGroup;
    lcDatosGroup13: TdxLayoutGroup;
    lcDatosGroup14: TdxLayoutGroup;
    lcDatosGroup12: TdxLayoutGroup;
    lcDatosItem16: TdxLayoutItem;
    lcDatosItem17: TdxLayoutItem;
    lcDatosItem18: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    lcDatosItem19: TdxLayoutItem;
    cxDBComboBox4: TcxDBComboBox;
    lcDatosItem20: TdxLayoutItem;
    cxDBMemo2: TcxDBMemo;
    lcDatosItem21: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dsDonacion: TDataSource;
    lcDatosItem23: TdxLayoutItem;
    DBLookupComboBox2: TDBLookupComboBox;
    lcDatosItem24: TdxLayoutItem;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    tvDatosDonacionStatus: TcxGridDBColumn;
    tbDonacion: TADOTable;
    tbDonacionDonacionID: TStringField;
    tbDonacionMuestraNo: TStringField;
    tbDonacionMuestraNoAS: TStringField;
    tbDonacionNoAsCorto: TStringField;
    tbDonacionFecha: TDateTimeField;
    tbDonacionPacienteID: TStringField;
    tbDonacionNotaEntrevista: TMemoField;
    tbDonacionDonacionStatus: TWideStringField;
    tbDonacionDonacionTipo: TStringField;
    tbDonacionComentario: TMemoField;
    tbDonacionCantidadRecogida: TBCDField;
    tbDonacionTemperatura: TBCDField;
    tbDonacionPeso: TBCDField;
    tbDonacionPulsoMinimo: TBCDField;
    tbDonacionPulsoEstado: TStringField;
    tbDonacionTensionArteriar: TStringField;
    tbDonacionHoraInicio: TDateTimeField;
    tbDonacionHoraFin: TDateTimeField;
    tbDonacionDirigidoPacienteId: TStringField;
    tbDonacionDirigidoNombre: TStringField;
    tbDonacionHospital: TStringField;
    tbDonacionFechaTranfusion: TDateTimeField;
    tbDonacionMedico: TStringField;
    tbDonacionTelefono: TStringField;
    tbDonacionTelefono2: TStringField;
    tbDonacionDireccionMedico: TMemoField;
    tbDonacionPagina: TSmallintField;
    tbDonacionHemoglobina: TStringField;
    tbDonacionHematocito: TStringField;
    tbDonacionGlobulosBlancos: TStringField;
    tbDonacionPlaquetas: TStringField;
    tbDonacionUsuarioAS: TStringField;
    tbDonacionNotasCuestionario: TMemoField;
    tbDonacionProductoID: TWideStringField;
    tbDonacionReservado: TBooleanField;
    tbDonacionDisponible: TBooleanField;
    tbDonacionDoctorId: TStringField;
    tbDonacionUserIdCuestionario: TStringField;
    tbDonacionUserIdMuestra: TStringField;
    tbDonacionUserIdHemograma: TStringField;
    tbDonacionCausaRechazoId: TIntegerField;
    tbDonante: TADOTable;
    dsDonante: TDataSource;
    tbDonantePacienteID: TStringField;
    tbDonanteTipoDonante: TWideStringField;
    tbDonanteEstado: TWideStringField;
    tbDonanteDonanteActivo: TSmallintField;
    tbDonanteTipoSangre: TWideStringField;
    tbDonanteRH: TWideStringField;
    tbDonanteDu: TWideStringField;
    tbDonanteUltimaDonacionId: TStringField;
    tbDonanteFechaUltimaDon: TDateTimeField;
    tbEntradaPaciente: TADOTable;
    dsEntradaPaciente: TDataSource;
    tbEntradaPacienteNOMBREPACIENTE: TStringField;
    tbEntradaPacienteDIRECCION: TStringField;
    tbEntradaPacienteTELEFONOS: TStringField;
    tbEntradaPacienteTELEFONO2: TStringField;
    tbEntradaPacienteENTRADAID: TStringField;
    lcDatosGroup4: TdxLayoutGroup;
    lcDatosGroup17: TdxLayoutGroup;
    lcDatosGroup18: TdxLayoutGroup;
    lcDatosItem3: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    lcDatosItem6: TdxLayoutItem;
    cxDBComboBox2: TcxDBComboBox;
    lcDatosItem7: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1PruebaId: TcxGridDBColumn;
    cxGridDBTableView1Descripcion: TcxGridDBColumn;
    cxGridDBTableView1Resultado: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    lcDatosGroup20: TdxLayoutGroup;
    dsResultados: TDataSource;
    qrResultados: TADOQuery;
    qrResultadosMuestraNo: TStringField;
    qrResultadosPruebaId: TStringField;
    qrResultadosResultado: TStringField;
    qrResultadosDescripcion: TStringField;
    Estado: TAction;
    Registro: TAction;
    lcDatosGroup15: TdxLayoutGroup;
    lcDatosGroup16: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcDatosItem22: TdxLayoutItem;
    tvDatosCausaRechazo: TcxGridDBColumn;
    cxButton6: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    Borrar: TAction;
    tbDonanteRechaso: TWideStringField;
    tbDonanteRechasoNota: TMemoField;
    Qhistorico: TADOQuery;
    cxTabSheet1: TcxTabSheet;
    cxButton7: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxTextEdit1: TcxTextEdit;
    lcDatosItem25: TdxLayoutItem;
    DBGrid1: TDBGrid;
    Qhistorico_donante: TADOQuery;
    DShistorico: TDataSource;
    tbDonanteUSUARIOMOD: TStringField;
    tbDonanteFECHAMODIFICACION: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    cxButton8: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    tbDonacionUSUARIOMOD: TStringField;
    tbDonacionFECHAMODIFICACION: TDateTimeField;
    Qhistorico_donanteDONACIONID: TStringField;
    Qhistorico_donanteFECHA: TDateTimeField;
    Qhistorico_donantePACIENTEID: TStringField;
    Qhistorico_donanteDONACIONSTATUS: TWideStringField;
    Qhistorico_donanteDONACIONTIPO: TStringField;
    Qhistorico_donanteUSUARIOMOD: TStringField;
    Qhistorico_donanteFECHAMODIFICACION: TDateTimeField;
    Qhistorico_donanteRECHASO: TWideStringField;
    Qhistorico_donanteRECHASONOTA: TMemoField;
    Qhistorico_donanteCAUSARECHASO: TStringField;
    Qhistorico_donanteFECHARECHAZA: TDateTimeField;
    Qhistorico_donanteRECHAZONOTA: TStringField;
    Qhistorico_donanteUseridrechaza: TStringField;
    Qhistorico_donanteHORAMOD: TDateTimeField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    tbDonacionFECHA_RECOLECCION: TDateTimeField;
    DBEdit5: TDBEdit;
    lcDatosItem27: TdxLayoutItem;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBMemo2: TDBMemo;
    tbDonacionTipoFundaID: TWideStringField;
    procedure tbDonacionBeforePost(DataSet: TDataSet);
    procedure tbDonacionBeforeEdit(DataSet: TDataSet);
    procedure tbDonanteBeforeEdit(DataSet: TDataSet);
    procedure tbDonanteBeforePost(DataSet: TDataSet);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure dsDatosStateChange(Sender: TObject);
    procedure EstadoExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure RegistroExecute(Sender: TObject);
    procedure cxDBTextEdit4PropertiesChange(Sender: TObject);
    procedure MuestrasExecute(Sender: TObject);
    procedure EtiquetaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    procedure DoInsert; override;
    procedure DoDelete; override;
    procedure DoEdit; override;
    procedure DoCancel; override;
    //function CanAdd: Boolean;
  public
    { Public declarations }
  end;

var
  frmDatosDonaciones: TfrmDatosDonaciones;

implementation

uses DataBanco, BancoReportes, Main, DataModule;

{$R *.dfm}

{function TfrmDatosDonaciones.CanAdd;
begin
  result:= False;
end; }

procedure TfrmDatosDonaciones.BorrarExecute(Sender: TObject);
begin
  inherited;

  DMB.BorrarDonacion(DMB.qrListaDonacionesDonacionID.Value);
end;

procedure TfrmDatosDonaciones.cxButton7Click(Sender: TObject);
begin
  inherited;
  With Qhistorico_donante do
   begin
    close;
    Sql.clear;
    Sql.Add('SELECT A.DONACIONID,A.FECHA,A.PACIENTEID,A.DONACIONSTATUS,');
    Sql.Add('       A.DONACIONTIPO,A.USUARIOMOD,A.FECHAMODIFICACION,');
    Sql.Add('       RECHASO = (SELECT TOP 1 RECHASO FROM BSDonanTE_Historico WHERE PACIENTEID = A.PACIENTEID),');
    Sql.Add('       RECHASONOTA = (SELECT TOP 1 RECHASONOTA FROM BSDonanTE_Historico WHERE PACIENTEID = A.PACIENTEID),');
    Sql.Add('       CAUSARECHASO =(SELECT CAUSA FROM BSCausasRechazo WHERE ID = A.CAUSARECHAZOID),');
    Sql.Add('       A.FECHARECHAZA,A.RECHAZONOTA,A.Useridrechaza,A.FECHAMODIFICACION AS HORAMOD');
    Sql.Add('FROM BSDonacion_Historico A (NOLOCK)');
    Sql.Add('WHERE A.PACIENTEID ='+#39+TBDONANTEPACIENTEID.VALUE+#39);
    Open;
   end;
  pcDatos.ActivePageIndex:= 2;
end;

procedure TfrmDatosDonaciones.cxButton8Click(Sender: TObject);
begin
  inherited;
pcDatos.ActivePageIndex:= 1;

end;

procedure TfrmDatosDonaciones.cxDBTextEdit4PropertiesChange(Sender: TObject);
begin
  inherited;

  qrResultados.Close;
  qrResultados.Parameters[0].Value:= tbDonacionMuestraNo.Value;
  qrResultados.Open;
end;

procedure TfrmDatosDonaciones.DoCancel;
begin
  if tbDonacion.State in [dsEdit, dsInsert] then
    tbDonacion.Cancel;

  if tbDonante.State in [dsEdit, dsInsert] then
    tbDonante.Cancel;

  if tbEntradaPaciente.State in [dsEdit, dsInsert] then
    tbEntradaPaciente.Cancel;

  inherited;

  pcDatos.ActivePageIndex:= 0;
end;

procedure TfrmDatosDonaciones.DoEdit;
begin
  inherited;

  if not( tbDonacion.State in [dsEdit, dsInsert]) then
    tbDonacion.Edit;

  if (tbDonante.State in [dsEdit, dsInsert]) then
    tbDonante.Edit;

  if (tbEntradaPaciente.State in [dsEdit, dsInsert]) then
    tbEntradaPaciente.Edit;

end;

procedure TfrmDatosDonaciones.DoPost;
var
  BM: TBookMark;
begin
  inherited;

  BM:= DMB.qrListaDonaciones.GetBookmark;

  if tbDonacion.State in [dsEdit, dsInsert] then
    tbDonacion.Post;

  if tbDonante.State in [dsEdit, dsInsert] then
    tbDonante.Post;

  if tbEntradaPaciente.State in [dsEdit, dsInsert] then
    tbEntradaPaciente.Post;

  if qrResultados.State in [dsEdit, dsInsert] then
    qrResultados.Post;

  DMB.qrListaDonaciones.Close;
  DMB.qrListaDonaciones.Open;

 DMB.qrListaDonaciones.GotoBookmark(bM);
 DMB.qrListaDonaciones.FreeBookmark(bM);

 pcDatos.ActivePageIndex:= 0;

end;

procedure TfrmDatosDonaciones.dsDatosStateChange(Sender: TObject);
begin
  inherited;

  //Validamos si el paciente ha sido rechazado para impedir que se modifiquen sus datos
    if dsDatos.state in [dsedit] then
    //  if tbDonacion.state in [dsedit] then
//    begin
//      if {(DaysBetween(Now,DMB.qrListaDonaciones.fieldbyname('Fecha').Value)>= 10)
//       and} ((tbDonante.fieldbyname('Rechaso').Value = 'Temporal') or
//        (tbDonante.fieldbyname('Rechaso').Value = 'Permanente'))  then
//        Application.MessageBox('No Puede Realizar Ningun Tipo de Cambio a un Paciente Rechazado!!!',
//                               'Advertencia',Mb_Ok + Mb_IconWarning);
//        dsDatos.dataset.cancel;
//        pcdatos.activepage:= tsMain;
//        Abort;
//    end;
end;

procedure TfrmDatosDonaciones.DoInsert;
begin

end;

procedure TfrmDatosDonaciones.DoDelete;
begin

    //ActBorrarExecute(Self);

end;

procedure TfrmDatosDonaciones.EstadoExecute(Sender: TObject);
begin
  inherited;
  //Estado de la Donacion

  if DM.Mensaje('Desea cambiar el estado de esta donacion?', mb_yesno) = id_no then
    Exit;

  if (trim(tbDonacionDonacionStatus.AsString) = 'Procesada')  then
    begin
      DM.DataBase.Execute(' UPDATE BSDonacion SET DonacionStatus = ''Aprobada''' +
                          ' WHERE  DonacionID = ''' + trim(tbDonacionDonacionID.AsString) + '''');
    end;
end;

procedure TfrmDatosDonaciones.EtiquetaExecute(Sender: TObject);
begin
  inherited;
      BSReportes.EtiquetaDonacion(DMB.qrListaDonacionesDonacionID.Value);   //Donacion(DMB.qrDonacionesDonacionID.Value);
end;

procedure TfrmDatosDonaciones.FormCreate(Sender: TObject);
begin
  inherited;

  DMB.qrCausasRechaso.Close;
  DMB.qrCausasRechaso.Open;

  DMB.qrProductosIniciales.close;
  DMB.qrProductosIniciales.Open;

  DMB.qrListaDonaciones.Close;
  DMB.qrListaDonaciones.Open;

  DMB.tbDonante.close;
  DMB.tbDonante.Open;

  tbDonacion.Close;
  tbDonacion.open;

  tbDonante.Close;
  tbDonante.Open;

  tbEntradaPaciente.Close;
  tbEntradaPaciente.Open;

  DMB.qrTipoBolsa.Close;
  DMB.qrTipoBolsa.Open;

  dsdatos.DataSet:= DMB.qrListaDonaciones;

end;

procedure TfrmDatosDonaciones.MuestrasExecute(Sender: TObject);
begin
  inherited;

  DMB.PruebaActual:= DMB.RecordId(DMB.qrListaDonacionesDonacionID.Value);
  frmMain.LanzaVentana(6014);
end;

procedure TfrmDatosDonaciones.RegistroExecute(Sender: TObject);
begin
  inherited;

  BSReportes.Donacion(tbDonacionDonacionId.Value);
end;

procedure TfrmDatosDonaciones.tbDonacionBeforeEdit(DataSet: TDataSet);
begin
  inherited;
 With dm.Qutilitario do
  Begin
    Close;
    Sql.clear;
    Sql.add('SELECT DATEDIFF(DAY,FECHA,GETDATE()) AS DIAS   FROM BSDonacion');
    Sql.Add('WHERE DONACIONID = '+#39+tbDonacionDonacionID.value+#39);
    Open;
    if fieldbyname('dias').value > 4 then
      begin
        if (DM.CurRol  <> 7) and (DM.CurRol  <> 4)  then
           begin
            Showmessage('ESTE REGISTRO NO PUEDE SER MODIFICADO');
            Abort;
           end;
      end;
  end;

end;

procedure TfrmDatosDonaciones.tbDonacionBeforePost(DataSet: TDataSet);
begin
  inherited;
if tbDonacion.State in[dsedit] then
 begin
  //****************** INSERTANDO EL REGISTRO EN EL HISTORICO ANTES DE GUARDAR LOS CAMBIOS
  tbDonante.edit;
  tbDonanteUSUARIOMOD.value:= dm.CurUser;
  tbDonanteFECHAMODIFICACION.value:= now;
  tbDonante.Post;

  if DBEdit5.Text <> '/ /' then
    begin
      try
      With dm.Qutilitario do
        begin
           Close;
           Sql.Clear;
           sql.Add('update bsinventario set fecha =:f1');
           sql.Add('where donacionid ='+ #39 + cxDBTextEdit1.Text + #39);
           Parameters.ParamByName('f1').Value:= DBEdit5.Text;
           ExecSQL;
        end;
      Except
      End;


    end;
 end;

end;

procedure TfrmDatosDonaciones.tbDonanteBeforeEdit(DataSet: TDataSet);
begin
  inherited;
 With dm.Qutilitario do
  Begin
    Close;
    Sql.clear;
    Sql.add('SELECT DATEDIFF(DAY,FECHA,GETDATE()) AS DIAS   FROM BSDonacion');
    Sql.Add('WHERE DONACIONID = '+#39+tbDonacionDonacionID.value+#39);
    Open;
    if fieldbyname('dias').value > 4 then
      begin
       if (DM.CurRol  <> 7) and (DM.CurRol  <> 4)  then
           begin
            Showmessage('ESTE REGISTRO NO PUEDE SER MODIFICADO');
            Abort;
           end;
        end;
  end;

end;

procedure TfrmDatosDonaciones.tbDonanteBeforePost(DataSet: TDataSet);
begin
  inherited;
if tbDonacion.State in[dsedit] then
 begin
  tbDonacionUSUARIOMOD.value:= dm.CurUser;
  tbDonacionFECHAMODIFICACION.value:= now;
 End;
if tbDonante.State in[dsedit] then
 begin
  //****************** INSERTANDO EL REGISTRO EN EL HISTORICO ANTES DE GUARDAR LOS CAMBIOS
  tbDonanteUSUARIOMOD.value:= dm.CurUser;
  tbDonanteFECHAMODIFICACION.value:= now;
  With Qhistorico do
   begin
    Close;
    Sql.clear;
    Sql.Add('INSERT INTO BSDonacion_Historico');
    Sql.Add('SELECT * FROM BSDonacion');
    Sql.Add('WHERE DONACIONID = '+#39+tbDonacionDonacionID.value+#39);
    ExecSQL;
   End;
  With Qhistorico do
   begin
    Close;
    Sql.clear;
    Sql.Add('INSERT INTO BSDonante_Historico');
    Sql.Add('SELECT * FROM BSDonante');
    Sql.Add('WHERE pacienteid = '+#39+tbDonantepacienteid.value+#39);
    ExecSQL;
   End;
 end;

end;

end.
