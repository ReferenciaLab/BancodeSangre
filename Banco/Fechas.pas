unit Fechas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, StdCtrls,
  cxButtons, cxControls;

type
  TfrmDialogFechas = class(TfrmDialogModule)
    cxDateEdit1: TcxDateEdit;
    lcDialogItem2: TdxLayoutItem;
    cxDateEdit2: TcxDateEdit;
    lcDialogItem1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure run;
  end;

var
  frmDialogFechas: TfrmDialogFechas;

implementation
uses
  DataBanco;
  
{$R *.dfm}


procedure TfrmDialogFechas.FormCreate(Sender: TObject);
begin
  inherited;

  cxDateEdit1.Date:= Date - 15;
  cxDateEdit2.Date:= Date ;
end;

procedure TfrmDialogFechas.run;
begin

  Self.ShowModal;

    if (modalResult = mrok) then
    begin
      DMB._Desde:= cxDateEdit1.Date;
      DMB._Hasta:= cxDateEdit2.Date;
      DMB._fecha:= True;
    end
  else
    DMB._fecha:= False;

end;

end.
