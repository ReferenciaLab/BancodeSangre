unit DialogConsultaEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  dxLayoutControl, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit;

type
  TfrmDialogConsultaEmpresas = class(TfrmDialogConsulta)
    dbDatosEmpresaId: TcxGridDBColumn;
    dbDatosCodigo: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosRNC: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
    dbDatosTelefono1: TcxGridDBColumn;
    dbDatosFAX: TcxGridDBColumn;
    dbDatosNCFTipo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure run;
  end;

var
  frmDialogConsultaEmpresas: TfrmDialogConsultaEmpresas;

implementation

uses DataBanco;

{$R *.dfm}

procedure TfrmDialogConsultaEmpresas.run;
begin

  DMB.RetornarEmpresa:= '';

  Self.ShowModal;

  if ModalResult = mrOk then
    begin
      DMB.RetornarEmpresa:= DMB.qrEmpresasCodigo.Value;
    end
  else
    begin
      DMB.RetornarEmpresa:= '';
    end;

end;

procedure TfrmDialogConsultaEmpresas.FormCreate(Sender: TObject);
begin
  inherited;

  DMB.qrEmpresas.Close;
  DMB.qrEmpresas.Parameters[0].Value:= '%';
  DMB.qrEmpresas.Open;

end;

end.
