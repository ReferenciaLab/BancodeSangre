unit RegistrarMuestras;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  dxLayoutControl, cxControls, cxPC, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, ADODB, cxImageComboBox,
  cxCheckBox, cxTimeEdit,cxDbLookupComboBox,cxDBExtLookupComboBox,cxSpinEdit,
  cxMemo, DateUtils, cxBlobEdit, cxLookupEdit, cxDBLookupEdit;

type
  TfrmRegistrarMuestras = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl2Item4: TdxLayoutItem;
    BtEntrada: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    BtSalida: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxGrid1DBTableView1PruebaID: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1DeptId: TcxGridDBColumn;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    dxLayoutControl2Group4: TdxLayoutGroup;
    BtImprimir: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    qrLabels: TADOQuery;
    dsDatos: TDataSource;
    EdDepto: TcxExtLookupComboBox;
    dxLayoutControl2Item10: TdxLayoutItem;
    EdLabel: TcxTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    EdMuestra: TcxTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    EdFecha: TcxDateEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    qrLabelsMuestraNo: TStringField;
    qrLabelsSecuencia: TIntegerField;
    qrLabelsSucursal: TStringField;
    qrLabelsDeptId: TStringField;
    qrLabelsPacienteId: TStringField;
    qrLabelsDescripcion: TStringField;
    qrLabelsEntradaId: TStringField;
    qrLabelsRecid: TLargeintField;
    qrLabelsPruebaID: TStringField;
    qrLabelsHoraEntrega: TStringField;
    qrLabelsFechaEntrega: TStringField;
    cxGrid1DBTableView1EntradaId: TcxGridDBColumn;
    cxGrid1DBTableView1MuestraNo: TcxGridDBColumn;
    cxGrid1DBTableView1Secuencia: TcxGridDBColumn;
    cxGrid1DBTableView1Sucursal: TcxGridDBColumn;
    cxGrid1DBTableView1FechaEntrega: TcxGridDBColumn;
    cxGrid1DBTableView1HoraEntrega: TcxGridDBColumn;
    procedure qrLabelsCalcFields(DataSet: TDataSet);
    procedure EdFechaPropertiesChange(Sender: TObject);
    procedure EdMuestraPropertiesChange(Sender: TObject);
    procedure EdLabelPropertiesChange(Sender: TObject);
    procedure EdDeptoPropertiesChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure BtSalidaClick(Sender: TObject);
    procedure BtEntradaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
    recid                       : Integer;
    Departamento                : String;
    muestranumber, Usuario      : String;
    urgente, reportado, doctor  : TcxStyle;

    procedure BuscarDatos;
    procedure ImprimirUnico;
    function  FindDepto(Descripcion : String) : String;
    function  Buscar_Labels(muestra: String; prueba: String): Boolean;
    Procedure Insertar_Entrada(_usuario : string; _fecha : TDateTime; _hora : string);
    Procedure Insertar_Salida(_usuario : string; _fecha : TDateTime; _hora : string);
    Procedure Insertar_Impresion(_usuario : string; _fecha : TDateTime; _hora : string);

  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

var
  frmRegistrarMuestras       : TfrmRegistrarMuestras;
  SecuenciaLabel                  : integer;
  SecAct                          : integer;
  qfindLb                         : TADOQuery;
  secuencia                       : integer;
  Descripcion, titulo             : string;
  depact,muestraact               : string;
  colact                          : integer;
  Dias                            : TDias;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}


function TfrmRegistrarMuestras.FindDepto(Descripcion: string) : String;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM PTDepartamento WHERE Descripcion = :desc ORDER BY DepId', Descripcion);
 result := qfind.FieldByName('DepId').AsString;
 FreeAndNil(qfind);
end;


//Buscando el Label de la Prueba Registrada.
function TfrmRegistrarMuestras.Buscar_Labels(muestra: String; prueba: String): Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTLabel '+
                   'WHERE PruebaId = :prue '+
                   'AND MuestraNo = :mues ';
 qfind.Parameters.ParamByName('prue').Value := prueba;
 qfind.Parameters.ParamByName('mues').Value := muestra;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   result := True
 Else
   result := False;

 FreeAndNil(qfind);
end;


procedure TfrmRegistrarMuestras.BtEntradaClick(Sender: TObject);
begin
  inherited;
//  Departamento := DM.qrDepartamentosDepid.Value;
  Departamento := FindDepto(EdDepto.Text);

  If (Departamento <> '') Then
    frmMain.LanzaVentana(-8026)
  Else
    Begin
      Beep;
      Raise exception.CreateFmt('Debe Seleccionar un Departamento Para Poder Dar ENTRADA.',[]);
    End;
end;

procedure TfrmRegistrarMuestras.BtSalidaClick(Sender: TObject);
begin
  inherited;
//  Departamento := DM.qrDepartamentosDepid.Value;
  Departamento := FindDepto(EdDepto.Text);

  If (Departamento <> '') Then
    frmMain.LanzaVentana(-8027)
  Else
    Begin
      Beep;
      Raise exception.CreateFmt('Debe Seleccionar un Departamento Para Poder Dar SALIDA.',[]);
    End;
end;


procedure TfrmRegistrarMuestras.BtImprimirClick(Sender: TObject);
begin
 inherited;
 If (qrLabels.RecordCount > 0) Then
   frmMain.LanzaVentana(-8028)
 Else
   Begin
    Beep;
    Raise exception.CreateFmt('Debe Seleccionar un Numero de Muestra Para Poder Imprimir el Label.',[]);
   End;
end;


procedure TfrmRegistrarMuestras.EdDeptoPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarDatos;
end;


procedure TfrmRegistrarMuestras.EdFechaPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarDatos;
end;


procedure TfrmRegistrarMuestras.EdLabelPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarDatos;
end;


procedure TfrmRegistrarMuestras.EdMuestraPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarDatos;
end;


procedure TfrmRegistrarMuestras.SetColorTo(iColor: TColor);
var
  i : Integer;
  oColor : TColor;
begin
  //SetComponentsColor(iColor);
  stGrEdit.Color := iColor;

  oColor := DM.ColorConsulta;
  for i := 0 to ComponentCount -1 do begin
    if ( Components[i] is TcxDbMaskEdit ) then begin
      if ( Components[i] as TcxDbMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbComboBox ) then begin
      if ( Components[i] as TcxDbComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbButtonEdit ) then begin
      if ( Components[i] as TcxDbButtonEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbButtonEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbButtonEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBMRUEdit ) then begin
      if ( Components[i] as TcxDBMRUEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDBMRUEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDBMRUEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTextEdit ) then begin
      if ( Components[i] as TcxDbTextEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTextEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTextEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBExtLookupComboBox ) then begin
      if ( Components[i] as TcxDBExtLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCheckBox ) then begin
      if ( Components[i] as TcxDbCheckBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbCheckBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCheckBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbImageComboBox ) then begin
      if ( Components[i] as TcxDbImageComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbImageComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbImageComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCalcEdit ) then begin
      if ( Components[i] as TcxDbCalcEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCalcEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCalcEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbSpinEdit ) then begin
      if ( Components[i] as TcxDbSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbSpinEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCurrencyEdit ) then begin
      if ( Components[i] as TcxDbCurrencyEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTimeEdit ) then begin
      if ( Components[i] as TcxDbTimeEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTimeEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTimeEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbMemo ) then begin
      if ( Components[i] as TcxDbMemo ).Properties.ReadOnly then
        ( Components[i] as TcxDbMemo ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMemo ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbHyperLinkEdit ) then begin
      if ( Components[i] as TcxDbHyperLinkEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbDateEdit ) then begin
      if ( Components[i] as TcxDbDateEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbDateEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbDateEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxMaskEdit ) then begin
      if ( Components[i] as TcxMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxSpinEdit ) then begin
      if ( Components[i] as TcxSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxSpinEdit ).Style.Color := iColor;
    end;
    //
  end;
end;


procedure TfrmRegistrarMuestras.BuscarDatos;
Var
  Seleccion : String;
begin
  Seleccion := ' SELECT * FROM PTLabel WHERE Recid > 0 ';

    If (EdDepto.Text <> '') Then
      Seleccion := Seleccion + ' AND DeptId LIKE '+#39+ FindDepto(EdDepto.Text) +#39;
//      Seleccion := Seleccion + ' AND DeptId LIKE '+#39+ DM.qrDepartamentosDepid.Value +#39;

    If (EdMuestra.Text <> '') Then
      Seleccion := Seleccion + ' AND MuestraNo LIKE '+#39+ EdMuestra.Text +#39;

//    If (EdLabel.Text <> '') Then
//      Seleccion := Seleccion + ' AND EmpresaID LIKE '+#39+ EdLabel.Text +#39;

//    If (EdFecha.Text <> '') Then
//      Seleccion := Seleccion + ' AND FechaSangre BETWEEN '+#39+ EdFecha.Text +#39;

  Seleccion := Seleccion + ' ORDER BY DeptId, MuestraNo, PruebaId, Recid ';

  qrLabels.Close;
  qrLabels.SQL.Text := Seleccion;
  qrLabels.Open;
end;


procedure TfrmRegistrarMuestras.FormCreate(Sender: TObject);
begin
  inherited;
  titulo := 'Registrar el Proceso de las Muestras.';

  frmMain.Exis_RegMuestra := True;

  SetColorTo(dm.ColorModifica);

  DM.qrDepartamentos.Close;
  DM.qrDepartamentos.Open;
  DM.qrDepartamentos.First;

  qrLabels.Close;
  qrLabels.Open;
end;


procedure TfrmRegistrarMuestras.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_RegMuestra := False;
end;


procedure TfrmRegistrarMuestras.FormPaint(Sender: TObject);
begin
  inherited;
  pnCaption.Caption := titulo;
  FFrameTopPanel.Caption := titulo;
  frmCustomModule.Caption := FFrameTopPanel.Caption;
end;


procedure TfrmRegistrarMuestras.Insertar_Entrada(_usuario : string; _fecha : TDateTime; _hora : string);
var
 Valor      : String;
 Qinsert    : TADOQuery;
begin
  Qinsert := DM.NewQuery;

//  Valor := muestraact + '-' + IntToStr(secuencia) + '-' + DM.CurSucursal;
  Valor := muestraact + '-' + qrLabelsSecuencia.AsString + '-' + DM.CurSucursal;

  Qinsert.SQL.Text := ' INSERT INTO PTLabelSeguimiento(MuestraNo, PruebaID, recid, Secuencia, '+
                      ' RefRecid, Sucursal, DeptId, UserId, Fecha, Hora, Accion, Label) VALUES '+
                      ' (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10, :11)';
  Qinsert.Parameters[0].Value := qrLabelsMuestraNo.Value;
  Qinsert.Parameters[1].Value := qrLabelsPruebaID.Value;
  Qinsert.Parameters[2].Value := qrLabelsRecid.Value;
  Qinsert.Parameters[3].Value := qrLabelsSecuencia.Value;
  Qinsert.Parameters[4].Value := qrLabelsRecid.Value;
  Qinsert.Parameters[5].Value := DM.CurSucursal;
//  Qinsert.Parameters[6].Value := DM.qrDepartamentosDepid.Value;
  Qinsert.Parameters[6].Value := FindDepto(EdDepto.Text);
  Qinsert.Parameters[7].Value := _usuario;
  Qinsert.Parameters[8].Value := _fecha;
  Qinsert.Parameters[9].Value := _hora;
  Qinsert.Parameters[10].Value := 1;
  Qinsert.Parameters[11].Value := Valor;
  Qinsert.ExecSQL;

  FreeAndNil(Qinsert);
end;


procedure TfrmRegistrarMuestras.Insertar_Salida(_usuario : string; _fecha : TDateTime; _hora : string);
var
 Valor      : String;
 Qinsert    : TADOQuery;
begin
  Qinsert := DM.NewQuery;

//  Valor := muestraact + '-' + IntToStr(secuencia) + '-' + DM.CurSucursal;
  Valor := muestraact + '-' + qrLabelsSecuencia.AsString + '-' + DM.CurSucursal;

  Qinsert.SQL.Text := ' INSERT INTO PTLabelSeguimiento(MuestraNo, PruebaID, recid, Secuencia, '+
                      ' RefRecid, Sucursal, DeptId, UserId, Fecha, Hora, Accion, Label) VALUES '+
                      ' (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10, :11)';
  Qinsert.Parameters[0].Value := qrLabelsMuestraNo.Value;
  Qinsert.Parameters[1].Value := qrLabelsPruebaID.Value;
  Qinsert.Parameters[2].Value := qrLabelsRecid.Value;
  Qinsert.Parameters[3].Value := qrLabelsSecuencia.Value;
  Qinsert.Parameters[4].Value := qrLabelsRecid.Value;
  Qinsert.Parameters[5].Value := DM.CurSucursal;
//  Qinsert.Parameters[6].Value := DM.qrDepartamentosDepid.Value;
  Qinsert.Parameters[6].Value := FindDepto(EdDepto.Text);
  Qinsert.Parameters[7].Value := _usuario;
  Qinsert.Parameters[8].Value := _fecha;
  Qinsert.Parameters[9].Value := _hora;
  Qinsert.Parameters[10].Value := 2;
  Qinsert.Parameters[11].Value := Valor;
  Qinsert.ExecSQL;

  FreeAndNil(Qinsert);
end;


procedure TfrmRegistrarMuestras.Insertar_Impresion(_usuario : string; _fecha : TDateTime; _hora : string);
var
 Valor      : String;
 Qinsert    : TADOQuery;
begin
  Qinsert := DM.NewQuery;

//  Valor := muestraact + '-' + IntToStr(secuencia) + '-' + DM.CurSucursal;
  Valor := muestraact + '-' + qrLabelsSecuencia.AsString + '-' + DM.CurSucursal;

  Qinsert.SQL.Text := ' INSERT INTO PTLabelSeguimiento(MuestraNo, PruebaID, recid, Secuencia, '+
                      ' RefRecid, Sucursal, DeptId, UserId, Fecha, Hora, Accion, Label) VALUES '+
                      ' (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10, :11)';
  Qinsert.Parameters[0].Value := qrLabelsMuestraNo.Value;
  Qinsert.Parameters[1].Value := qrLabelsPruebaID.Value;
  Qinsert.Parameters[2].Value := qrLabelsRecid.Value;
  Qinsert.Parameters[3].Value := qrLabelsSecuencia.Value;
  Qinsert.Parameters[4].Value := qrLabelsRecid.Value;
  Qinsert.Parameters[5].Value := DM.CurSucursal;
//  Qinsert.Parameters[6].Value := DM.qrDepartamentosDepid.Value;
  Qinsert.Parameters[6].Value := FindDepto(EdDepto.Text);
  Qinsert.Parameters[7].Value := _usuario;
  Qinsert.Parameters[8].Value := _fecha;
  Qinsert.Parameters[9].Value := _hora;
  Qinsert.Parameters[10].Value := 3;
  Qinsert.Parameters[11].Value := Valor;
  Qinsert.ExecSQL;

  //Imprimiendo el Label Actual.
  ImprimirUnico;

  FreeAndNil(Qinsert);
end;


procedure TfrmRegistrarMuestras.ImprimirUnico;
var
 qfind  : TADOQuery;
 texto  : TextFile;
 labels : Integer;
 cadena : String;
Const
 LetraSec : array [1..26] of string = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT a.*, b.Descripcion AS DescDept,c.Nombre FROM '+
                   ' PTLabel a, PTDepartamento b, PTCliente c '+
                   ' WHERE a.MuestraNo = '+ #39 + qrLabelsMuestraNo.Value + #39 +
                   ' AND a.PruebaId = '+ #39 + qrLabelsPruebaID.Value + #39 +
                   ' AND a.Deptid = b.DepId AND a.PacienteId = c.ClienteId '+
                   ' ORDER BY recid, secuencia';
 qfind.Open;

 labels := qfind.RecordCount;

 qfind.First;
 While Not qfind.Eof Do
  begin
   cadena := 'C:\barcode.bat';
   assignfile(texto, cadena);
   rewrite(texto);
     
   writeln(texto,'N');
   writeln(texto,'N');
   writeln(texto,'q1200');
   writeln(texto,'Q200,30+0');
   writeln(texto,'S2');
   writeln(texto,'D8');
   writeln(texto,'ZT');
   writeln(texto,'B235,15,0,3,2,6,98,N,"' + Qfind.FieldByName('MuestraNo').AsString+'"');
   writeln(texto,'A220,112,0,3,1,1,N,"' + Qfind.FieldByName('MuestraNo').AsString+'"');
   writeln(texto,'A415,112,0,1,1,1,N,"' + Qfind.FieldByName('DescDept').AsString+'"');
   writeln(texto,'A230,130,0,2,1,1,N,"' + Qfind.FieldByName('Nombre').AsString+'"');
   writeln(texto,'A230,150,0,1,1,1,N,"' + Qfind.FieldByName('Descripcion').AsString+'"');
   writeln(texto,'P1');
   system.closefile(texto);

   cadena := 'C:\barcode.bat';
   assignfile(texto, cadena);
   rewrite(texto);

//   writeln(texto,'Type c:\barcode >prn');
   writeln(texto,'PRINT /d:lpt1 C:\barcode ');
   system.closefile(texto);
//   winexec('C:\barcode.bat',SW_SHOWNORMAL);
   winexec('print /d:lpt1 C:\barcode ',SW_SHOWNORMAL);
//   CreateProcess(NULL, "print /d:lpt1 c:\barcode ");

   qfind.Next;
  end;
end;


procedure TfrmRegistrarMuestras.qrLabelsCalcFields(DataSet: TDataSet);
Var
  qFind : TAdoQuery;
begin
  inherited;
  qFind := DM.NewQuery;
  qFind.Close;
  qFind.SQL.Text := ' SELECT * FROM PTEntradaPacienteDetalle '+
                    ' WHERE MuestraNo = :num '+
                    ' AND PruebaId = :pru '+
                    ' ORDER BY  RefRecId ';
  qFind.Parameters.ParamByName('num').Value := qrLabelsMuestraNo.Value;
  qFind.Parameters.ParamByName('pru').Value := qrLabelsPruebaID.Value;
  qFind.Open;

  If (qFind.RecordCount > 0) then
    Begin
     qrLabelsFechaEntrega.Value := VarToStr(qFind.FieldByName('FechaEntrega').Value);
     qrLabelsHoraEntrega.Value := VarToStr(qFind.FieldByName('HoraEntrega').Value);
    end
  Else
    Begin
     qrLabelsFechaEntrega.Value := '';
     qrLabelsHoraEntrega.Value := '';
    end;

  FreeAndNil(qFind);
end;


END.


