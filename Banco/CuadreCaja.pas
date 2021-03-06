unit CuadreCaja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls,ADODB,pptypes,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmCuadreCaja = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    rgTipoCorte: TcxRadioGroup;
    edfechacorte: TcxDateEdit;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    GroupParametros: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    botonescuadre: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    Label2: TLabel;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl3Item3: TdxLayoutItem;
    dsDatos: TDataSource;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1CorteId: TcxGridDBColumn;
    cxGrid1DBTableView1Forma: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    dsCorteOtros: TDataSource;
    cxGrid2DBTableView1Id: TcxGridDBColumn;
    cxGrid2DBTableView1CorteId: TcxGridDBColumn;
    cxGrid2DBTableView1Forma: TcxGridDBColumn;
    cxGrid2DBTableView1Tipo: TcxGridDBColumn;
    cxGrid2DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid2DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Denominacion: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure SetDefaultCuadre;
    procedure CrearCabeceraCorte;
    procedure CrearDetalleCorte;
    procedure ActVentas;
    function GetCuadreNo : String;
  private
    { Private declarations }
    IdCorte: Integer;
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmCuadreCaja: TfrmCuadreCaja;
  corteid : string;

implementation
 uses ActionsDM,DataModule,PuntoVenta,Main, BancoReportes, DCobros;
{$R *.dfm}


procedure TfrmCuadreCaja.FormCreate(Sender: TObject);
begin
  IdCorte:= dmCobros.getUltimoTemporalCobro + 1;
  dmCobros.AddFormasCobro(IdCorte);
  dmCobros.OpenCorte(IdCorte);
  edfechacorte.Date:= DM.SystemDate;
end;

procedure TfrmCuadreCaja.Run;
begin
 SetDefaultCuadre;
 showmodal;
 if ModalResult = mrOk then
 begin
  if MessageDlg('Seguro que desea realizar el corte?', mtWarning, [mbYes,mbNo], 0) = mrYes then
  begin

    //Grabar los datos si quedan posibles ds abiertos
    if (dmCobros.qrCorteEfectivo.State in [dsEdit, dsInsert]) then
      dmCobros.qrCorteEfectivo.Post;
    if (dmCobros.qrCorteOtros.State in [dsEdit, dsInsert]) then
      dmCobros.qrCorteOtros.Post;

   CorteId := GetCuadreNo;

   dmCobros.UpdateCorte(IdCorte, CorteId);

   CrearCabeceraCorte;
   CrearDetalleCorte;
   ActVentas;

   DM.qrCorteCajaDetRep.Close;
   DM.qrCorteCajaDetRep.Parameters.ParamByName('cor').Value := CorteId;
   DM.qrCorteCajaDetRep.Open;

   dmCobros.PrintCorte(CorteId);
  end;
 end;

end;

procedure TfrmCuadreCaja.SetDefaultCuadre;
begin

  rgTipoCorte.ItemIndex := 1;

end;

function TfrmCuadreCaja.GetCuadreNo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  if DM.qrParametroIdentificadorCuadre.Value <> '' then
    result := DM.qrParametroIdentificadorCuadre.Value + '-' + DM.cursucursal + '-' +
              formatfloat('000000',DM.qrParametroSecuenciaCuadre.AsFloat)

 {
   result := DM.qrParametroIdentificadorCuadre.Value + '-' +
              formatfloat('00',strtofloat(DM.cursucursal))+ '-' +
              formatfloat('000000',DM.qrParametroSecuenciaCuadre.AsFloat)
  }
  else
    result := DM.cursucursal+ '-' +
              formatfloat('000000',DM.qrParametroSecuenciaCuadre.AsFloat);

  DM.qrParametro.Edit;
  DM.qrParametroSecuenciaCuadre.Value := DM.qrParametroSecuenciaCuadre.Value + 1;
  DM.qrParametro.Post;
end;

procedure TfrmCuadreCaja.CrearCabeceraCorte;
Var
 qcabcorte : TADOQuery;
begin

 qcabcorte := DM.NewQuery;
 qcabcorte.Close;
 qcabcorte.SQL.Text := 'Insert into PTCorteCajaCab(CorteId,Fecha,Hora,Usuario,SucursalId, Tipo) Values(:0,:1,:2,:3,:4, :5)';
 qcabcorte.Parameters[0].Value := corteid;
 qcabcorte.Parameters[1].Value := edFechaCorte.Date;
 qcabcorte.Parameters[2].Value := copy(timetostr(now),1,5);
 qcabcorte.Parameters[5].Value := rgTipoCorte.ItemIndex;

 if (rgTipoCorte.ItemIndex = 0) then
  qcabcorte.Parameters[3].Value := 'GLOBAL'
 else
  qcabcorte.Parameters[3].Value := DM.CurUser;
 qcabcorte.Parameters[4].Value := DM.CurSucursal;
 qcabcorte.ExecSQL;

 FreeAndNil(qcabcorte);


end;

procedure TfrmCuadreCaja.CrearDetalleCorte;
Var
 Sql : String;
 qcobros,qdetalle : TADOQuery;
begin
 Sql := 'Select c.formadepagoid,sum(c.montoMST) from PTCobro b,ptcobrodetalle c '+
        ' Where b.cobroid = c.cobroid '+
        ' And b.SucursalID =  '  + #39+  DM.CurSucursal +#39 +
        '   and b.fecha <= :fec ';

 if (rgtipoCorte.ItemIndex = 0) then
     Sql := Sql + ' and (b.CuadreGlobal is null or b.CuadreGlobal = '+#39#39+')'
 else
     Sql := Sql + ' and (b.CuadreUsuario is null or b.CuadreUsuario = '+#39#39+') '  +
                  ' and b.usuarioId = ' +#39 + DM.curUser + #39;

 qcobros := DM.NewQuery;
 qcobros.close;
 qcobros.sql.Text := Sql + ' group by c.formaDepagoid ';
 qcobros.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qcobros.Active := True;

 qdetalle := DM.NewQuery;
 qdetalle.close;
 qdetalle.SQL.Text := 'Insert into PTCorteCajaDet(CorteID,Tipo,FormaDePagoId,Valor) Values(:0,:1,:2,:3)';

 while not qcobros.Eof do begin
  qdetalle.Parameters[0].Value := CorteId;
  qdetalle.Parameters[1].Value := '1';
  qdetalle.Parameters[2].Value := qcobros.Fields[0].AsString;
  qdetalle.Parameters[3].Value := qcobros.Fields[1].AsFloat;
  qdetalle.ExecSQL;
  qcobros.Next;
 end;

 FreeAndNil(qcobros);
 FreeAndNil(qdetalle);
end;

procedure TfrmCuadreCaja.ActVentas;
Var
 Sql,Fieldact : String;
 qact : TADOQuery;
begin

 if (rgtipoCorte.ItemIndex = 0) then
     Fieldact := 'CuadreGlobal'
 else
     Fieldact := 'CuadreUsuario';

 Sql := 'update PTCobro Set '+ Fieldact + ' = :cor  Where fecha <= :fec ' +
        ' And SucursalID =  '  + #39+  DM.CurSucursal +#39 ;

 if (rgtipoCorte.ItemIndex = 0) then
     Sql := Sql + ' and (CuadreGlobal is null or CuadreGlobal = '+#39#39+')'
 else
     Sql := Sql + ' and (CuadreUsuario is null or CuadreUsuario = '+#39#39+') '  +
                  ' and usuarioId = ' +#39 + DM.curUser + #39 +
                  ' And SucursalID =  '  + #39+  DM.CurSucursal +#39 ;

 qact := DM.NewQuery;
 qact.close;
 qact.sql.Text := Sql;
 qact.Parameters.ParamByName('cor').Value := CorteId;
 qact.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qact.ExecSQL;

 FreeAndNil(qact);
end;

end.
