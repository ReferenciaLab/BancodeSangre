unit Untsalidaproducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, jpeg, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, Sockets;

type
  TFrmsalidaproducto = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBText1: TDBText;
    Image1: TImage;
    DBText7: TDBText;
    DBText6: TDBText;
    Label3: TLabel;
    Edit1: TEdit;
    DBMemo1: TDBMemo;
    Edit2: TEdit;
    DSetiquetas: TDataSource;
    Qetiquetas: TADOQuery;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Label1: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    TcpClient1: TTcpClient;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmsalidaproducto: TFrmsalidaproducto;

implementation

uses DataModule;

{$R *.dfm}

procedure TFrmsalidaproducto.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmsalidaproducto.cxButton2Click(Sender: TObject);
begin

//************* CAMBIANDO EL STATUS DEL PRODUCTO ***********************
With dm.Qutilitario do
    begin
      close;
      sql.Clear;
      sql.add('UPDATE BSInventario Set status =:est,FECHA_SALIDA = getdate(),USUARIO_SALIDA =:usu,COMENTARIO_SALIDA =:com');
      sql.add('where CodigoId ='+ #39 +  Qetiquetas.FieldByName('CODIGOID').Value + #39);
      Parameters.ParamByName('usu').Value := dm.CurUser;
      Parameters.ParamByName('est').Value := 'I';
      Parameters.ParamByName('com').Value := Memo1.Text;
      ExecSQL;
    end;

//******************* INSERTANDO UN REGISTRO DEL MOVIMIENTO DEL PRODUCTO **************
With dm.Qutilitario do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('INSERT INTO MOVIMIENTOS_PRODUCTOS(CODIGOID,ISTBDONACION,MOVIMIENTO,FECHA,HORA,USUARIO,NOMBRE_EQUIPO,DIRECCION_IP)');
   Sql.Add('VALUES(:PCODIGOID,:PISTBDONACION,:PMOVIMIENTO,:PFECHA,:PHORA,:PUSUARIO,:PNOMBRE_EQUIPO,:PDIRECCION_IP)');
   Parameters.ParamByName('PCODIGOID').Value := Qetiquetas.fieldbyname('CODIGOID').value;
   Parameters.ParamByName('PISTBDONACION').Value := DBText1.Caption;
   Parameters.ParamByName('PMOVIMIENTO').Value := 'FUERA INV.';
   Parameters.ParamByName('PFECHA').Value := date;
   Parameters.ParamByName('PHORA').Value := time;
   Parameters.ParamByName('PUSUARIO').Value := DM.CurUser;
   Parameters.ParamByName('PNOMBRE_EQUIPO').Value := TcpClient1.LocalHostName;
   Parameters.ParamByName('PDIRECCION_IP').Value :=  TcpClient1.LocalHostAddr;
   ExecSQL;
end;
ShowMessage('PROCESO REALIZADO CON EXITO');
Edit1.Clear;
Edit2.Clear;
Qetiquetas.Close;
end;

procedure TFrmsalidaproducto.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 Edit2.SetFocus;

end;

procedure TFrmsalidaproducto.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  Begin
     if Edit1.Text <> '' then
       Begin
        With Qetiquetas do
          begin
           Close;
           Sql.Clear;
           Sql.Add('SELECT * FROM V_ETIQUETAS (NOLOCK)');
           Sql.Add('WHERE ISTBDONACION ='+ #39+ Edit1.Text + #39);
           Sql.Add('AND BARRA ='+ #39+ Edit2.Text + #39);
           Open;
          end;
     end;

  end;

end;

procedure TFrmsalidaproducto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := caFree;
end;

end.
