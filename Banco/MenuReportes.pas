unit MenuReportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  StdActns, ActnList, JvComponentBase, JvFormPlacement, ExtCtrls, JvExControls,
  JvComponent, JvEnterTab, Buttons;

type
  TfrmMenuReportes = class(TfrmCustomModule)
    Panel3: TPanel;
    Label3: TLabel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton11: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    Panel2: TPanel;
    Label2: TLabel;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    procedure cxButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuReportes: TfrmMenuReportes;

implementation

uses DataBanco, DataModule, Untresumencobros;

{$R *.dfm}

procedure TfrmMenuReportes.cxButton14Click(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrmresumencobros,Frmresumencobros);
Frmresumencobros.ShowModal;
end;

end.