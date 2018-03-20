unit DDoctor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DGeneral, DB, ADODB;

type
  TdmDoctor = class(TdmGeneral)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDoctor: TdmDoctor;

implementation

{$R *.dfm}

procedure TdmDoctor.DataModuleCreate(Sender: TObject);
begin
  inherited;

  KeyField:= 'DOCTORID';
  Tabla.Close;
  Tabla.Open;

end;

end.
