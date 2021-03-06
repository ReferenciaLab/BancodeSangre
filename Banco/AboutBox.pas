unit AboutBox;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, RzLabel, RzBckgnd, jpeg, JvExExtCtrls,
  JvBaseThumbnail, JvThumbImage, PymeConst;

type
  TfrmAboutBox = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    Panel2: TPanel;
    ProductName: TLabel;
    ProgramIcon: TImage;
    RzSeparator1: TRzSeparator;
    RzBackground1: TRzBackground;
    Comments: TRzLabel;
    CopyRight: TRzLabel;
    RzLabel3: TRzLabel;
    RzSeparator2: TRzSeparator;
    RzLabel4: TRzLabel;
    lbCg: TRzLabel;
    RzLabel6: TRzLabel;
    lbBc: TRzLabel;
    RzLabel8: TRzLabel;
    lbCp: TRzLabel;
    RzLabel10: TRzLabel;
    lbCc: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    lbIn: TRzLabel;
    lbFa: TRzLabel;
    lbCo: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel1: TRzLabel;
    Version: TLabel;
    lbVersion: TRzLabel;
    lbSupportURL: TRzURLLabel;
    lbSupporteMail: TRzURLLabel;
    RzLabel2: TRzLabel;
    lbSv: TRzLabel;
    RzLabel5: TRzLabel;
    lbNo: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAboutBox: TfrmAboutBox;

implementation

uses DataModule, Main, Dialogs;

{$R *.dfm}

procedure TfrmAboutBox.FormCreate(Sender: TObject);
begin
  ProductName.Caption := Application.Title;
  ProgramIcon.Picture.Assign( Application.Icon );
  With DM do begin
    lbSupportURL.Caption := SupportURL;
    lbSupporteMail.Caption := SupporteMail;
    qrParam.Close;
    qrParam.Open;
    if StrToInt(il_NetworkUser) > 5 then
      lbVersion.Caption := SEdicionProfesional + ' (' + il_NetworkUser + SUsuarios + ')'
    else
      lbVersion.Caption := SEdicionEstandard;
    Copyright.Caption := Uppercase(il_UserCompanyName);
    Comments.Caption := il_ProgramState;
    if il_IsTrial then
      Comments.Caption := Comments.Caption + ' - ' + IntToStr(il_TrialDays) + SDiasRestantes;
    if not il_Cg then lbCg.Caption := '-';
    if not il_Bc then lbBc.Caption := '-';
    Version.Caption      := 'Ver: '+Version_App;
    {if not il_Cc then lbCc.Caption := '-';
    if not il_Cp then lbCp.Caption := '-';
    if not il_In then lbIn.Caption := '-';
    if not il_Fa then lbFa.Caption := '-';
    if not il_Co then lbCo.Caption := '-';
    if not il_No then lbNo.Caption := '-';
    if not il_Sv then lbSv.Caption := '-';}
  End;
end;

procedure TfrmAboutBox.Panel1Click(Sender: TObject);
begin
  Close;
end;

end.

