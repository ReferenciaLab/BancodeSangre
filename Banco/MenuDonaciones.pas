unit MenuDonaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  StdActns, ActnList, JvComponentBase, JvFormPlacement, ExtCtrls, JvExControls,
  JvComponent, JvEnterTab, Buttons;

type
  TfrmMenuDonaciones = class(TfrmCustomModule)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel2: TPanel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    cxButton7: TcxButton;
    Image3: TImage;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    Panel4: TPanel;
    Label4: TLabel;
    Image4: TImage;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    Panel5: TPanel;
    Label5: TLabel;
    Image7: TImage;
    cxButton18: TcxButton;
    cxButton15: TcxButton;
    Label6: TLabel;
    cxButton16: TcxButton;
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuDonaciones: TfrmMenuDonaciones;

implementation

uses Untescaneo, Untmovimiento, Untsalidaproducto, Untconsulta_general;

{$R *.dfm}

procedure TfrmMenuDonaciones.cxButton12Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmescaneo_etiquetas,Frmescaneo_etiquetas);
  Frmescaneo_etiquetas.showmodal;
end;

procedure TfrmMenuDonaciones.cxButton13Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmmovimientos,Frmmovimientos);
  Frmmovimientos.showmodal;

end;

procedure TfrmMenuDonaciones.cxButton14Click(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrmsalidaproducto,Frmsalidaproducto);
//  Frmsalidaproducto.showmodal;

end;

procedure TfrmMenuDonaciones.cxButton18Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmconsulta_general,Frmconsulta_general);
  Frmconsulta_general.showmodal;

end;

end.
