unit DialogImpCuadre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, ADODB,pptypes, cxGroupBox,
  cxRadioGroup;

type
  TfrmDialogImpCuadre = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    cgDatos: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsDatos: TDataSource;
    qrCuadres: TADOQuery;
    rgCriterio: TcxRadioGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    qrCuadresCorteId: TStringField;
    qrCuadresFecha: TDateTimeField;
    qrCuadresHora: TStringField;
    qrCuadresUsuario: TStringField;
    qrCuadresSucursalId: TStringField;
    dbDatosCorteId: TcxGridDBColumn;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosHora: TcxGridDBColumn;
    dbDatosUsuario: TcxGridDBColumn;
    procedure rgCriterioPropertiesChange(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RefrescarDatos;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogImpCuadre: TfrmDialogImpCuadre;
  AdentroGrid : Boolean;

implementation

uses ActionsDM,DataModule,PuntoVenta,Main;

{$R *.dfm}

procedure TfrmDialogImpCuadre.RefrescarDatos;
var
 Sql : String;
begin
 Sql := 'SELECT * FROM PTCorteCajaCab ';

 if rgCriterio.ItemIndex = 0 then
    Sql := Sql + 'WHERE Usuario = '+ #39 + DM.CurUser + #39 ;

 qrCuadres.close;
 qrCuadres.SQL.Clear;
 qrCuadres.SQL.Text := Sql;
 qrCuadres.open;

end;

procedure TfrmDialogImpCuadre.rgCriterioPropertiesChange(Sender: TObject);
begin
 RefrescarDatos;
end;

procedure TfrmDialogImpCuadre.cgDatosEnter(Sender: TObject);
begin
 AdentroGrid := True;
end;

procedure TfrmDialogImpCuadre.cgDatosExit(Sender: TObject);
begin
 AdentroGrid := False;
end;

procedure TfrmDialogImpCuadre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogImpCuadre.Run;
begin
 RefrescarDatos;
 showmodal;
 if ModalResult = mrOk then
 begin
  if qrCuadres.RecordCount > 0 then
  begin
   DM.qrCorteCajaDetRep.Close;
   DM.qrCorteCajaDetRep.Parameters.ParamByName('cor').Value := qrCuadresCorteID.Value;
   DM.qrCorteCajaDetRep.Open;

   DM.ppImpCuadreCaja.DeviceType := dtScreen;
   DM.ppImpCuadreCaja.Print;
  end;
 end;


end;

end.
