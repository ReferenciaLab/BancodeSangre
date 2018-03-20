unit DCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DGeneral, DB, ADODB;

type
  TdmCliente = class(TdmGeneral)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCliente: TdmCliente;

implementation

{$R *.dfm}

procedure TdmCliente.DataModuleCreate(Sender: TObject);
begin
  inherited;

  KeyField:= 'CLIENTEID';

  Tabla.Close;
  Tabla.Open;

end;

end.
