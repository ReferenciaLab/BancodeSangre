unit DGeneral;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmGeneral = class(TDataModule)
    Tabla: TADOTable;
    Datos: TDataSource;
  private
    { Private declarations }

  public
    { Public declarations }
    _Key: String;
    KeyField: String;
        
    function Go(Key: String): Boolean;
    function getValue(Campo: string): Currency;
    function getString(Campo: String): String;
    function getInteger(Campo: String): Integer;
    function getValueIn(Key: String; Campo: String): Currency;
    function getStringIn(Key: String; Campo: String): String;
    function getIntegerIn(Key: String; Campo: String): Integer;

    function setFilter(Filtro: String): Integer;

    procedure Actualizar;

  end;

var
  dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

procedure tdmGeneral.Actualizar;
begin

  Tabla.Close;
  Tabla.Open;
  setFilter('');

end;

function tdmGeneral.setFilter;
begin

  if Tabla.Filtered then
    Tabla.Filtered:= false;

  Tabla.Filter:= Filtro;

  if (trim(Filtro) <> '') then
    begin
      tabla.Filtered:= true;
    end;

  Result:= tabla.RecordCount;

end;

function tdmGeneral.Go;
begin

  setFilter('');

  if (trim(Key) = '') then
    begin
      Result:= False;
      _Key:= '';
      exit;
    end;

  if ( trim(_key) <> trim(Key)) then
    begin

      _Key:= trim(Key);

      if Tabla.Locate(KeyField, _Key, []) then
        begin
          Result:= True;
          Exit;
        end;

      //Tabla.Refresh;
      Tabla.Close;
      Tabla.Open;

      if Tabla.Locate(KeyField, _Key, []) then
        begin
          Result:= True;
          Exit;
        end;

      Result:= False;
      _Key:= '';

    end;

end;

function tdmGeneral.getValue;
begin

    Result:= Tabla.FieldByName(Campo).AsCurrency

end;

function tdmGeneral.getString;
begin

    Result:= Tabla.FieldByName(Campo).AsString

end;

function tdmGeneral.getInteger;
begin

    Result:= Tabla.FieldByName(Campo).AsInteger

end;

function tdmGeneral.getValueIn;
begin

    Go(Key);
    Result:= Tabla.FieldByName(Campo).AsCurrency

end;

function tdmGeneral.getStringIn;
begin

    Go(Key);
    Result:= Tabla.FieldByName(Campo).AsString

end;

function tdmGeneral.getIntegerIn;
begin

    Go(Key);
    Result:= Tabla.FieldByName(Campo).AsInteger

end;


end.
