unit UntpreciosCategorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxCalendar, cxBlobEdit, dxLayoutControl, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxImage, cxDBLookupComboBox, ExtCtrls, DBCtrls,
  cxImageComboBox, cxDropDownEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxMemo, ADODB, cxGroupBox, cxCheckBox, cxNavigator,
  cxDBNavigator, RzPanel, ImgList, Menus, cxLookAndFeelPainters, cxButtons;

type
  TFrmpreciosCategorias = class(TForm)
    cxGroupBox1: TcxGroupBox;
    dsPreciosCategorias: TDataSource;
    qrPreciosCategorias: TADOQuery;
    qrPreciosCategoriasSECUENCIA: TAutoIncField;
    qrPreciosCategoriasPRODUCTOID: TStringField;
    qrPreciosCategoriasGRUPOCLIENTE: TStringField;
    qrPreciosCategoriasTIPOCLIENTE: TStringField;
    qrPreciosCategoriasPRECIO: TFloatField;
    qrPreciosCategoriasESTATUS: TStringField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    QryProductos: TADOQuery;
    QryProductosProductoID: TWideStringField;
    QryProductosProductoDes: TWideStringField;
    QryProductosPrecio: TBCDField;
    QryProductosPrecioDolares: TBCDField;
    QryProductosDias: TIntegerField;
    QryProductosPermiteCambioPrecio: TBooleanField;
    QryProductosCodigoAxapta: TStringField;
    QryProductosCosto: TBCDField;
    QryProductosExterior: TBooleanField;
    QryProductosFacturarCabecera: TBooleanField;
    QryProductosTipo: TBooleanField;
    QryProductosNecesitaCruce: TBooleanField;
    QryProductosServicio: TBooleanField;
    QryProductosInicial: TBooleanField;
    QryProductosAnticipo: TBooleanField;
    QryProductosTiempoMesProximaDonacion: TIntegerField;
    DSproductos: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    QtipoCliente: TADOQuery;
    QtipoClienteTIPOCLIENTE: TStringField;
    QtipoClienteDESCRIPCION: TStringField;
    QtipoClienteDATAAREAID: TStringField;
    QtipoClienteRECID: TIntegerField;
    QtipoClientemsrepl_tran_version: TGuidField;
    DStipocliente: TDataSource;
    Qgrupoclientes: TADOQuery;
    DSgrupoclientes: TDataSource;
    QgrupoclientesGRUPOCLIENTE: TStringField;
    QgrupoclientesDESCRIPCION: TStringField;
    QgrupoclientesCODIGOAXAPTA: TStringField;
    QgrupoclientesCOMENTARIO: TMemoField;
    QgrupoclientesDATAAREAID: TStringField;
    QgrupoclientesRECID: TIntegerField;
    Qgrupoclientesmsrepl_tran_version: TGuidField;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    qrPreciosCategoriasDESTIPO: TStringField;
    qrPreciosCategoriasDESGRUPO: TStringField;
    qrPreciosCategoriasPRODUCTODES: TStringField;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    RzStatusBar1: TRzStatusBar;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    ilTreeView: TImageList;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmpreciosCategorias: TFrmpreciosCategorias;

implementation

uses Main, DataModule;

{$R *.dfm}

procedure TFrmpreciosCategorias.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmpreciosCategorias.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmpreciosCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmpreciosCategorias.FormCreate(Sender: TObject);
begin
qrPreciosCategorias.Open;
QryProductos.Open;
QtipoCliente.Open;
Qgrupoclientes.Open;
end;

end.
