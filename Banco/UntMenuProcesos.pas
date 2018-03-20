unit UntMenuProcesos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TFrmmenuProcesos = class(TfrmCustomModule)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Image1: TImage;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmmenuProcesos: TFrmmenuProcesos;

implementation

uses DataModule, UntInventario_Empresas, Main;

{$R *.dfm}

procedure TFrmmenuProcesos.cxButton1Click(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrmInventario_Empresas, FrmInventario_Empresas);
FrmInventario_Empresas.ShowModal;
end;

procedure TFrmmenuProcesos.cxButton2Click(Sender: TObject);
begin
  inherited;
frmMain.LanzaVentana(9605);
end;

end.
