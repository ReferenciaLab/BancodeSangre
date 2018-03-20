unit MenuCaja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  StdActns, ActnList, JvComponentBase, JvFormPlacement, ExtCtrls, JvExControls,
  JvComponent, JvEnterTab, Buttons;

type
  TfrmMenuCaja = class(TfrmCustomModule)
    Panel1: TPanel;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    Panel2: TPanel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton7: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuCaja: TfrmMenuCaja;

implementation

uses DataBanco;

{$R *.dfm}

procedure TfrmMenuCaja.cxButton1Click(Sender: TObject);
var
  Empresa: String;

begin
  inherited;

  Empresa:= DMB.NuevaEmpresa;

end;

end.
