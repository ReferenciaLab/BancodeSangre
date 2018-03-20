﻿unit Main;

interface

uses
  SysUtils, Types, Classes, Variants, JvComponent, JvPrint, ImgList,
  Controls, Menus, Buttons, ExtCtrls, Forms, cxGraphics, cxControls,
  dxStatusBar, dxNavBarBase, dxNavBarStyles, dxNavBar, Tabs, Windows,
  dxBar, dxBarDBNav, dxsbar, dxNavBarCollns, DBActns, ActnList, JvAppEvent,
  dxBarExtItems, Dialogs, XPMan, JvBaseDlg, JvCalc, dxDockControl,
  dxDockPanel, JvFormPlacement, JvAppStorage, JvAppRegistryStorage,
  dxPSEngn, cxLookAndFeels, dxPSPrVwAdv, RzGroupBar,
  RzPrgres, RzStatus, RzDBStat, RzPanel, RzSplit, StdCtrls,
  DB, dxmdaset, IceLicense, ComCtrls, ADODB, Graphics,           
  JvDesktopAlert, RzLabel, RzDBLbl, RzBckgnd, RzButton,
  JvStringHolder, cxFilterControl, cxDBFilterControl, cxNavigator, cxButtons, cxInplaceContainer,
  cxVGrid, cxOI, JvComponentBase, cxStyles, cxEdit, Modules, PymeConst,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDFormDisplay,
  AdvTabSet, GradientLabel, PuntoVenta, DatosCombosPruebas, BancoDespacho,
  TomaMuestras, RegistrarMuestras, SeguimientoCodigoBarra, ReporteDonantes,
  EntradaLaboratorio, DialogCobroPesos, DialogCobroDolares, DialogCobro, ToolWin,
  jpeg, cxLookAndFeelPainters;

type
  TfrmMain = class(TForm, IcxLookAndFeelNotificationListener)
    ilTreeView: TImageList;                                              
    dxToolBar: TdxBarManager;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    miOpciones: TdxBarButton;
    ConfigurarImpresora1: TdxBarButton;
    dxBarUsuario: TdxBarButton;
    dxBarRol: TdxBarButton;
    Salir1: TdxBarButton;
    Sistema1: TdxBarSubItem;
    miBarraEstado: TdxBarButton;
    miVer: TdxBarSubItem;
    Calculadora1: TdxBarButton;
    dxCloseYear: TdxBarButton;
    Herramientas1: TdxBarSubItem;
    Acercade1: TdxBarButton;
    Ayuda1: TdxBarSubItem;
    dxBarComando: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    dxBarCloseWindow: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarListItem1: TdxBarListItem;
    dxBarMRUListItem1: TdxBarMRUListItem;
    dxBarListItem2: TdxBarListItem;
    dxBarWinList: TdxBarListItem;
    PSetup: TPrinterSetupDialog;
    ilNavBarSmall: TImageList;
    JvCalculator: TJvCalculator;
    dxDockingManager: TdxDockingManager;
    dxDockSiteLeft: TdxDockSite;
    dpMenu: TdxDockPanel;
    JvAppRegistryStorage: TJvAppRegistryStorage;
    JvFormStorage: TJvFormStorage;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    miDeveloperMenu: TdxBarSubItem;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarToggleNavBar: TdxBarButton;
    lnfController: TcxLookAndFeelController;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    alMainMenu: TActionList;
    nbMainMenu: TdxNavBar;
    StatusBar: TRzStatusBar;
    spTexto: TRzStatusPane;
    spAno: TRzStatusPane;
    ksCaps: TRzKeyStatus;
    ksNum: TRzKeyStatus;
    dbState: TRzDBStateStatus;
    pbStatusBar: TRzProgressBar;
    dxBarButton41: TdxBarButton;
    miContabilidad: TdxBarSubItem;
    miBanco: TdxBarSubItem;
    miCxc: TdxBarSubItem;
    miCxp: TdxBarSubItem;
    miFinanzas: TdxBarSubItem;
    miConfiguracion: TdxBarSubItem;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dxBarButton95: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton97: TdxBarButton;
    dxBarButton98: TdxBarButton;
    dxBarButton99: TdxBarButton;
    dxBarButton100: TdxBarButton;
    dxBarButton101: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarButton103: TdxBarButton;
    dxBarButton104: TdxBarButton;
    dxBarButton105: TdxBarButton;
    dxBarButton106: TdxBarButton;
    dxBarButton107: TdxBarButton;
    miDataDictionary: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton112: TdxBarButton;
    dxBarButton113: TdxBarButton;
    dxMemDataMain: TdxMemData;
    dxMemDataMainCategoria: TStringField;
    dxMemDataMainTexto: TStringField;
    dxMemDataMainImageID: TIntegerField;
    dxMemDataMainModuloIdx: TSmallintField;
    dxBarUserScripts: TdxBarButton;
    dxBarQueryBuilder: TdxBarButton;
    dxBarButton114: TdxBarButton;
    mbFinanzas: TdxBarSubItem;
    mbComercio: TdxBarSubItem;
    dxBarButton115: TdxBarButton;
    dxBarButtonSysDoc: TdxBarButton;
    dxLayoutDockSite1: TdxLayoutDockSite;
    spFavoritos: TRzSizePanel;
    rpFavoritos: TRzPanel;
    tvFavoritos: TTreeView;
    rzCaption: TRzLabel;
    rzBackGround: TGradientLabel;                              
    dxBarFavoritos: TdxBarButton;
    shFavorites: TJvStrHolder;
    spUser: TRzGlyphStatus;
    deSystemDate: TdxBarDateCombo;
    miIDE: TdxBarButton;
    dxBarButton116: TdxBarButton;
    dpProperties: TdxDockPanel;
    dxFloatDockSite1: TdxFloatDockSite;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton117: TdxBarButton;
    dxBarOpenCompany: TdxBarButton;
    dxBarSendMail: TdxBarButton;
    dxBarButton118: TdxBarButton;
    JvAppEvents: TJvAppEvents;
    spFill: TRzGlyphStatus;
    dxBarUtil: TdxBarSubItem;
    dxBarExportData: TdxBarButton;
    dxBarImportData: TdxBarButton;
    dxBarCompanyExport: TdxBarButton;
    pnWorkSpace: TPanel;
    tsVentanas: TAdvTabSet;
    lmdForms: TLMDFormDisplay;
    ActClientes: TAction;
    ActDoctores: TAction;
    ActFlebotomista: TAction;
    ActProyectos: TAction;
    ActPruebas: TAction;
    ActSucursales: TAction;
    ActFormaPago: TAction;
    ActParametro: TAction;
    actGrupoPrueba: TAction;
    ActMoneda: TAction;
    ActAcuerdoPrecios: TAction;
    actciudad: TAction;
    ActEspecialidad: TAction;
    actgrupocliente: TAction;
    ActAcuerdoDesc: TAction;
    ActGastosVarios: TAction;
    ActAcuerdoGastosVarios: TAction;
    ActCombos: TAction;
    ActBanco: TAction;
    ActPendientes: TAction;
    ActCanceladas: TAction;
    ActTipoDonacion: TAction;
    ActProductos: TAction;
    ActPruebasBanco: TAction;
    ActDonantes: TAction;
    ActPasarInventario: TAction;
    ActReservar: TAction;
    ActTomaMuestras: TAction;
    ActReservacionVencidas: TAction;
    ActProductosVencidos: TAction;
    ActTipificacion: TAction;
    ActCuadreCaja: TAction;
    ActCobro: TAction;
    ActReservados: TAction;
    Image1: TImage;
    AcTNCF: TAction;
    ActLastCuadre: TAction;
    ActPendienteDespacho: TAction;
    ActFactura: TAction;
    ActCuadres: TAction;
    AtcInventario: TAction;
    ActVentaProductos: TAction;
    AtcCobros: TAction;
    ActAnticipo: TAction;
    ActDespacho: TAction;
    ActDonaciones: TAction;
    ActDonacionesMes: TAction;
    ActCruce: TAction;
    ActPruebasCruce: TAction;
    ActDatosCruce: TAction;
    ActActualizarDonaciones: TAction;
    ActCausasRechazo: TAction;
    ActListadoOperaciones: TAction;
    ActListadoRechazosMes: TAction;
    AtcEmpresas: TAction;
    ActNotaCredito: TAction;
    EstGeneral: TAction;
    ActProTipos: TAction;
    ActListaRechazos: TAction;
    ActResumenDonaciones: TAction;
    actEstadisticasMeses: TAction;
    acCausasRechazosMeses: TAction;
    acVentasMeses: TAction;
    acConsultaMovimientps: TAction;
    actProductosMeses: TAction;
    ActAnular: TAction;
    acDonantesRecurrentes: TAction;
    acCategoriasPrecios: TAction;
    acFacturasPagadas: TAction;
    ActDonacionSexo: TAction;
    tbCaja: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ActFormasMenu: TActionList;
    MenuDonaciones: TAction;
    MenuCaja: TAction;
    MenuReportes: TAction;
    MenuAdministracion: TAction;
    actCrearCrioprecipitado: TAction;
    actVentaDirecta: TAction;
    acResumenDonaciones: TAction;
    atCrearPlaquetas: TAction;
    acSeparacion: TAction;
    Prueba1: TAction;
    Action1: TAction;
    Actescaneo: TAction;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    ActConsultaProductos: TAction;
    Actprueba: TAction;
    ToolButton1: TToolButton;
    ActListaprecios: TAction;
    ActCxC: TAction;
    actConsultaRechazos: TAction;
    ActTarjeta_Donante: TAction;
    ToolButton2: TToolButton;
    ActClinicas: TAction;
    procedure ActClinicasExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ActTarjeta_DonanteExecute(Sender: TObject);
    procedure actConsultaRechazosExecute(Sender: TObject);
    procedure ActCxCExecute(Sender: TObject);
    procedure ActListapreciosExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ActConsultaProductosExecute(Sender: TObject);
    procedure ActescaneoExecute(Sender: TObject);
    procedure MenuReportesExecute(Sender: TObject);
    procedure MenuAdministracionExecute(Sender: TObject);
    procedure MenuCajaExecute(Sender: TObject);
    procedure MenuDonacionesExecute(Sender: TObject);
    procedure tsVentanasCanClose(Sender: TObject; TabIndex: Integer;
      var CanClose: Boolean);
    procedure tsVentanasChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure tsVentanasTabClose(Sender: TObject; TabIndex: Integer);
    procedure dxBarCompanyExportClick(Sender: TObject);
    procedure dxBarCloseWindowClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UserMenuClick(Sender : TObject);
    procedure miBarraEstadoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure JvAppEventsActiveFormChange(Sender: TObject);
    procedure dxBarRolClick(Sender: TObject);
    procedure dxNavBarLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure dxBarWinListClick(Sender: TObject);
    procedure dxBarWinListGetData(Sender: TObject);
    procedure ConfigurarImpresora1Click(Sender: TObject);
    procedure StatusBarPanels1DblClick(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure JvAppEventsShowHint(var HintStr: String;
      var CanShow: Boolean; var HintInfo: THintInfo);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarToggleNavBarClick(Sender: TObject);
    procedure mmActionExecute(Sender: TObject);
    procedure miDataDictionaryClick(Sender: TObject);
    procedure spAnoDblClick(Sender: TObject);
    procedure dxBarUserScriptsClick(Sender: TObject);
    procedure dxBarQueryBuilderClick(Sender: TObject);
    procedure tvMenuComercioEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure TreeItemDblClick(Sender: TObject);
    procedure dxBarButton115Click(Sender: TObject);
    procedure dxNavBar1CustomDrawNavigationPaneOverflowPanel(
      Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarViewInfo;
      var AHandled: Boolean);
    procedure tvFavoritosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvFavoritosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvFavoritosEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure tvFavoritosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarFavoritosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure deSystemDateChange(Sender: TObject);
    procedure miIDEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarOpenCompanyClick(Sender: TObject);
    procedure dxBarButton118Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarExportDataClick(Sender: TObject);
    procedure dxBarImportDataClick(Sender: TObject);
  private
    TrialStatus: String;
    FileParameter: string;
    { Private declarations }
    ShouldClose : Boolean;
    IsClosing : Boolean;
    IsStarting : Boolean;
    CurWindowTag: Integer;
    function IsWindow(WindowTag: Integer): Integer;
    procedure SetOfficeColor;
  protected
    procedure MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
    procedure MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
    function GetObject: TObject;
  public
    { Public declarations }

    Recibo          : Boolean;
    Exis_Cap        : Boolean;
    Exis_Lab        : Boolean;
    Exis_Adm        : Boolean;
    Exis_Vta        : Boolean;
    Muestra_Unico   : Boolean;
    Muestra_Todos   : Boolean;
    Exis_Muestra    : Boolean;
    Exis_Codigo     : Boolean;
    Exis_RegMuestra : Boolean;
    ImageIndex      : Integer;

    frmTmp          : TfrmPuntoVenta;
    frmTmp1         : TfrmEntradaLaboratorio;
    frmTmpMuestra   : TfrmTomaMuestras;
    frmRegMuestras  : TfrmRegistrarMuestras;
    frmSeguimiento  : TfrmSeguimientoCodigoBarra;
    //    frmCap          : TfrmPuntoVentaCaps;
    //    frmCups         : TfrmDatosCodigosCup;
    //    frmPlanCombo    : TfrmDatosPlanesCombos;
    //    frmCombo        : TfrmDatosCombosPruebas;
    //    frmPlanes       : TfrmDatosPlanesAnuales;
//    frmPlanCliente  : TfrmDatosClientesPlanes;
//    frmLab          : TfrmPuntoVentaLaboratorio;
//    frmAdmin        : TfrmPuntoVentaAdministracion;

    frmCombo : TfrmDatosCombosPruebas;
    procedure BuildMenu;
    procedure CreateMenu;
    procedure CreateMenuTv;
    procedure SetActions;
    procedure ShowForm( frm : TCustomForm; show : boolean = true );
    procedure LanzaConsulta( iConsulta : Integer ; sParam : String; sParamOpcional : String = '');
    procedure LanzaVentana( iOpcion : Integer ; iSec : Integer = -2 );
    procedure SetAnoFiscalPanel;

    procedure Separar;
    procedure ImprimirLabel(EntradaId: String);
    procedure CrearLabels(EntradaId: string; Secuencia: Integer);
    //function  Buscar_Labels(muestra: String; prueba: String): Boolean;

  end;

var
  frmMain: TfrmMain;

implementation

uses DataModule, ActionsDM, DatosModule, CustomModule,
  DatosRoles, DatosUsuario, OpcionesSistema,
  Splash, AboutBox,ConsultaModule, ReportsDM,
  RepExplorer, OpcionesModule, daDataDictionaryBuilder,
  DiccionarioDeDatos, StrUtils, OpcionesEmpresa, DatosUserScripts, ConsultaExplorer,
  ReportExplorer, QueryBuilderModule,dxOffice11, IDEModule,DialogSysOpenCompany,
  DialogDbSetup, JclStrings, DialogSysDataExport,
  SysDocManager, DialogSysCompanyExport,DialogConsultaPaciente,DialogConsultaPruebas,
  DialogConsultaCliente,DialogConsultaEntradas,DatosClientes,
  DatosGrupoClientes,DatosSucursales,DatosFormaPago,DatosProyectos,DatosFlebotomistas,
  DatosDoctor,DatosPacientes,DatosGrupoPrueba,DatosPruebas,OpcionesVenta,DialogImpCobro,
  ConfirmarCobertura,DatosMoneda,DatosAcuerdoPrecio,DialogNC,DialogImpNC,CambioLaboratorio,
  DatosCiudad,DatosDescUsuario,DialogDescUsuario,DatosEpecialidad,DialogCobEspecial,
  DialogImpCuadre,ConsultaTransClientes,DialogBalCliente,DatosUsuarioSuc,DialogDescCobro,
  DatosAcuerdoDescuento,DatosGastosVarios,DatosAcuerdoGastosVarios,DatosGastosVariosTrans,
  DialogGastoExterior,DialogPrecioExterior,Dialog2daMuestra,DialogPrecioSucursal,CuadreCaja,
  DatosCombos, DialogConsultaPruebasCombos, DatosEmpresas, DialogEditarEmpresa, DialogConsultaEmpresas,
  //Units del Banco de Sangre
  DatosBanco, DatosDonaciones, DatosTipoDonacion,
  DatosProductosBanco, DialogConsultaPruebasBanco, DatosPruebasBanco, BancoPasarInventario,
  DialogConsultaProducto, BancoReserva, DialogConsultaReceptor, DatosDonacionesCanceladas,
  DialogConsultaPaciente1, DialogConsultaDoctor, BancoReportes, DatosDonante,
  BancoReservacionesVencidas, BancoProductosvencidos, DialogConsultaDonaciones,
  DialogImprimirLabel, ReporteDonaciones, ReporteProductos, TomaMuestras1,
  DatosTipificacion, BSProductosReservados, DatosNCF, Fechas, DialogTipoNCF,
  DatosVentasPendientes, Factura, DialogConsultaFactura, DatosCuadre, DatosInventario,
  DatosVentasProductos, DatosEfectivo, BancoVentaDirecta, ListaDonaciones, ListaDonacionesMes,
  Cruce, DatosPruebasCruce, DatosCruce, DatosDonaciones1, DatosCausasRechaso,
  ListadoFacturas, EntradasProductosMeses, DialogNC1, ProductosMeses,
  Estadisticas, EstadisticasMeses, CausasRechazosMeses, VentasMeses, ConsultaMovimientos,
  DialogCancelacion, DatosDonantesRecurrentes, DatosCategoriasPrecios, FacturasPagadas,
  DonacionesSexos, ListaCaja, DialogDescuento, VentaDirecta, DatosResumenDonaciones,uActualizaPto,
  //Menu Nuevos
  MenuDonaciones, MenuCaja, MenuAdministracion, MenuReportes,
  CrearCrioprecipitado, CrearPlaquetas, DataBanco, BancoVenta, DCliente,
  Untlistadocruce, Untescaneo, Untconsulta_productos, UntpreciosCategorias,
  ConsultaCxC, UntConsultaRechazos, Unttarjetas, UntMenuProcesos,
  UntAsignarFactura, UntDatosClinicas;

{$R *.dfm}

procedure TfrmMain.Separar;
var
  ClienteId : string;
  Cadena : PAnsiChar;
  Cantidad : Integer;
  strCantidad : string;
begin

  ClienteId:= DMB.BuscarPaciente;

  if (trim(ClienteId) = '') then
    begin
      DM.Mensaje('Debe seleccionar un paciente para este proceso. ', mb_Ok);
      exit;
    end;

  strCantidad:= inputBox('Separacion de productos', 'Digita cantidad de separaciones', '1');

  try
    if (trim(strCantidad) = '') then
      Cantidad:= 1
    else
      Cantidad:= StrToInt(strCantidad);
  except
    DM.Warning('Debe entrar una cantidad numerica');
    exit;
  end;

  //Ultima pregunta por si se cometieron errores
  //Cadena:= 'Desea enviar a caja una separacion de productos a ' + dmCliente.getstringIn(ClienteId, 'NOMBRE');
  if DM.Mensaje('Desea enviar a caja una separacion de productos a ' , mb_yesno) = id_no then
    Exit;

  BV.AddAVenta(ClienteId,'SP',DateToStr(DM.SystemDate));

  BV.AddADetVenta('SP','',Cantidad);

  DMB.AddHistorico('','SP','Separacion de Productos. ');

end;


procedure TfrmMain.ActClinicasExecute(Sender: TObject);
begin
 ImageIndex:= TAction(Sender).ImageIndex;
  LanzaVentana((Sender As TAction).Tag);
end;

procedure TfrmMain.ActConsultaProductosExecute(Sender: TObject);
begin
  ImageIndex:= TAction(Sender).ImageIndex;
  LanzaVentana((Sender As TAction).Tag);

end;

procedure TfrmMain.actConsultaRechazosExecute(Sender: TObject);
begin
ImageIndex:= TAction(Sender).ImageIndex;
LanzaVentana((Sender As TAction).Tag);
end;

procedure TfrmMain.ActescaneoExecute(Sender: TObject);
begin
//LanzaVentana(9601);
end;

procedure TfrmMain.ActCxCExecute(Sender: TObject);
begin
ImageIndex:= TAction(Sender).ImageIndex;
  LanzaVentana((Sender As TAction).Tag);
end;

procedure TfrmMain.ActListapreciosExecute(Sender: TObject);
begin
Application.CreateForm(Tfrmprecioscategorias,frmprecioscategorias);
//TfrmCustomModule(frm).SetSecurity(iParam);
ShowForm(frmprecioscategorias);

end;

procedure TfrmMain.ActTarjeta_DonanteExecute(Sender: TObject);
begin
ImageIndex:= TAction(Sender).ImageIndex;
  LanzaVentana((Sender As TAction).Tag);
end;

procedure TfrmMain.BuildMenu;
begin
  //SetActions;
  //CreateMenu;
  CreateMenuTv;
end;

procedure TfrmMain.Salir1Click(Sender: TObject);
begin
  if MessageDlg('Desea Salir del sistema?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    Close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  //
  Caption := Application.Title;
  deSystemDate.Date := Date;
  Version_App := GetAppInfo(ParamStr(0));
  spFill.Caption := DM.IceLicense.GetOrganisationInfo;
  tvFavoritos.Font.Name := DM.MenuFont;
  nbMainMenu.Font.Name := DM.MenuFont;
  dxToolBar.Font.Name := DM.FormFont;
  //
  dxToolBar.Style := bmsOffice11;
  dxDockingManager.ViewStyle := vsOffice11;
  lnfController.NativeStyle := True;
  dxBarUsuario.Visible := ivNever;
  dxBarRol.Visible := ivNever;
  dxCloseYear.Visible := ivNever;
  miDataDictionary.Visible := ivNever;
  dxBarQueryBuilder.Visible := ivNever;
  dxBarUserScripts.Visible := ivNever;
  miOpciones.Visible := ivNever;
  miDeveloperMenu.Visible := ivNever;
  dxBarCompanyExport.Visible := ivNever;
  //
  //
  dxBarToggleNavBar.Down := not dpMenu.AutoHide;
  miBarraEstado.Down := StatusBar.Visible;
  dxBarFavoritos.Down := spFavoritos.Visible;
  //
  Caption := Application.Title + ' - ' + DM.TituloEmpresa + TrialStatus; //IceLicense.GetOrganisationInfo;
  //
  RootLookAndFeel.AddChangeListener(Self);
  SetOfficeColor;
  //
  IsStarting := True;
  //

end;

procedure TfrmMain.UserMenuClick(Sender: TObject);
begin
  LanzaVentana((Sender as TdxBarItem).Tag);
end;

procedure TfrmMain.LanzaVentana(iOpcion: Integer; iSec : Integer = -2);
var
  iParam : Integer;
  frm: TCustomForm;
begin
  try
    Screen.Cursor := crHourGlass;
    if iSec = -2 then
      iParam := DM.GetSecurity(iOpcion)
    else
      iParam := iSec;
//    if iParam = 0 then begin
//      DM.Error('Usted no esta autorizado para usar este formulario');
//      Exit;
//    end;
    if DM.SingleWindow then
      begin
        if IsWindow(iOpcion) <> 0  then
          exit;
      end;
    CurWindowTag := iOpcion;
    frm := Nil;
    LockWindowUpdate(Handle);
    case iOpcion of
     -1010 : begin
              frm:= TfrmDatosRoles.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
             end;

     -1020 : begin
              frm:= TfrmDatosUsuario.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
             end;

     -1818 : begin
               frm:= TfrmIDEModule.Create(Self);
               ShowForm(frm);
             end;

     -9910 : begin
               try
                 frmQueryBuilderModule:= TfrmQueryBuilderModule.Create(Self);
                 frmQueryBuilderModule.ShowModal;
               finally
                 FreeAndNil(frmQueryBuilderModule);
               end;
             end;

     -9999 : begin
               frm:= TfrmDatosUserScripts.Create(Self);
               TfrmDatosUserScripts(frm).ShowExecuteOnly;
               ShowForm(frm);
             end;

     -1030 : begin
               frm:= TfrmOpcionesEmpresa.Create(Self);
               with TfrmCustomModule(frm) do
                 begin
                   if DM.IsAdmin then
                     SetSecurity(0)
                   else
                     SetSecurity(3);
                 end;
               ShowForm(frm);
             end;

     -1040 : begin
               frm:= TfrmDiccionarioDeDatos.Create(Self);
               ShowForm(frm);
             end;

     -7999 : with TfrmDialogConsultaPaciente.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7998 : with TfrmDialogConsultaPruebas.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7997 : with TfrmDialogCobro.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7996 : with TfrmDialogConsultaCliente.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7995 : with TfrmDialogConsultaEntradas.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7993 : with TfrmConfirmarCobertura.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7992 : with TfrmDialogNC.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7991 : with TfrmCambioLaboratorio.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7989 : with TfrmDialogDescUsuario.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7988 : with TfrmDialogCobEspecial.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7987 : with TfrmDialogImpCuadre.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -7986 : with TfrmDialogDescCobro.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8000 : with TfrmDialog2daMuestra.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8001 : with TfrmDialogPrecioExterior.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8002 : with TfrmDialogGastoExterior.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8003 : with TfrmDialogConsultaPruebasCombos.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8010 : with TfrmDialogCobroPesos.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8011 : with TfrmDialogCobroDolares.Create(Self) do
               begin
                 Run;
                 Free;
              end;

     -8028 : with TfrmDialogImprimirLabel.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8029 : with TfrmDialogEditarEmpresa.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8030 : with TfrmDialogConsultaEmpresas.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8031 : with TfrmDialogNC1.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8032 : with TfrmDialogCancelacion.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -8033 : with TfrmDialogDescuento.Create(Self) do
               begin
                 Run;
                 Free;
               end;

      1001 : begin
               frm:= TfrmListaCaja.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

              //Modulo de Juan Jose de Mostrar Facturas
              {if frmTmp = nil then
                begin
                  frm := TfrmPuntoVenta.Create(Self) ;
                  frmTmp := frm as TfrmPuntoVenta;
                  TFrmCustomModule(frm).SetSecurity(iParam);
                  ShowForm(frm);
                end;
            end;}

      1002 : begin
               frm := TfrmReportExplorer.Create(Self);
               TfrmReportExplorer(frm).ShowModulo(1);
               ShowForm(frm);
             end;

      1003 : begin
               frm := TfrmTomaMuestras.Create(Self) ;
               //frmTmpMuestra := frm as TfrmTomaMuestras;
               TFrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1101 : begin
               frm := TfrmDatosClientes.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1102 : begin
               frm := TfrmDatosPacientes.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1103 : begin
               frm := TfrmDatosDoctor.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1104 : begin
               frm:= TfrmDatosFlebotomistas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1105 : begin
               frm:= TfrmDatosProyectos.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1106 : begin
               frm:= TfrmDatosPruebas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1107 : begin
               frm:= TfrmDatosFormaPago.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1108 : begin
               frm:= TfrmDatosSucursales.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1109 : begin
               frm:= TfrmDatosGrupoClientes.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1110 : begin
               frm:= TfrmDatosGrupoPrueba.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1111 : begin
               frm:= TfrmDatosMoneda.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1112 : begin
               frm:= TfrmDatosCiudad.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1113 : begin
               frm:= TfrmDatosEspecialidad.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1114 : begin
               frm:= TfrmDatosGastosVarios.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1115 : begin
               frm:= TfrmDatosCombos.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1116 : begin
               frm:= TfrmDatosEmpresas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1201 : begin
               frm:= TfrmOpcionesVenta.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1202 : begin
               frm:= TfrmDatosAcuerdoPrecio.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1203 : begin
               frm:= TfrmDatosAcuerdoDescuento.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1204 : begin
               frm:= TfrmDatosAcuerdoGastosVarios.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      1402 : with TfrmCuadreCaja.Create(Self) do
               begin
                 Run;
                 Free;
               end;

      1549 : begin
               frm:= TfrmReportExplorer.Create(Self);
               with TfrmReportExplorer(frm) do
                 begin
                   SetSecurity(iParam);
                   ShowModulo(5, False);
                 end;
               ShowForm(frm);
             end;

      9001 : begin
               frm:= TfrmReportExplorer.Create(Self);
               with TfrmReportExplorer(frm) do
                 begin
                   SetSecurity(iParam);
                   ShowModulo(11, False);
                 end;
               ShowForm(frm);
             end;

      9002 : begin
               frm:= TfrmReportExplorer.Create(Self) ;
               with TfrmReportExplorer(frm) do
                 begin
                   SetSecurity(iParam);
                   ShowModulo(12, False);
                 end;
               ShowForm(frm);
             end;

      9003 : begin
               frm:= TfrmReportExplorer.Create(Self);
               with TfrmReportExplorer(frm) do
                 begin
                   SetSecurity(iParam);
                   ShowModulo(13, False);
                 end;
               ShowForm(frm);
             end;

      9004 : begin
               frm:= TfrmReportExplorer.Create(Self);
               with TfrmReportExplorer(frm) do
                 begin
                   SetSecurity(iParam);
                   ShowModulo(14, False);
                 end;
               ShowForm(frm);
             end;

      9005 : begin
               frm:= TfrmReportExplorer.Create(Self);
               with TfrmReportExplorer(frm) do
                 begin
                   SetSecurity(iParam);
                   ShowModulo(15, False);
                 end;
               ShowForm(frm);
             end;

      9006 : begin
               frm:= TfrmReportExplorer.Create(Self);
               with TfrmReportExplorer(frm) do
                 begin
                   SetSecurity(iParam);
                   ShowModulo(16, False);
                 end;
               ShowForm(frm);
             end;

      9007 : begin
               frm:= TfrmReportExplorer.Create(Self);
               with TfrmReportExplorer(frm) do
                 begin
                   SetSecurity(iParam);
                   ShowModulo(17, False);
                 end;
               ShowForm(frm);
             end;

      9008 : begin
               frm:= TfrmReportExplorer.Create(Self);
               with TfrmReportExplorer(frm) do
               begin
                 SetSecurity(iParam);
                 ShowModulo(18, False);
               end;
               ShowForm(frm);
             end;

      1799 : begin
               frm:= TfrmRepExplorer.Create(Self);
               ShowForm(frm);
             end;

     //Banco de sangre
     -6000 : with TfrmDialogConsultaPruebasBanco.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6001 : with TfrmDialogConsultaProducto.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6002 : with TfrmDialogConsultaReceptor.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6003 : with TfrmDialogConsultaPaciente1.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6004 : with TfrmDialogConsultaProducto.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6500 : with TfrmDialogConsultaDoctor.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6501 : with TfrmDialogConsultaDonaciones.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6503 : with TfrmDialogFechas.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6504 : with TfrmDialogTipoNCF.Create(Self) do
               begin
                 Run;
                 Free;
               end;

     -6505 : with TfrmDialogConsultaFactura.Create(Self) do
               begin
                 Run;
                 Free;
               end;

      6001 : begin
               frm:= TfrmBanco.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6002 : begin      // Donaciones pendientes
               frm:= TfrmDonaciones.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6003 : begin      //Donaciones canceladas
               frm:= TfrmDonacionesCanceladas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6004 : begin      // Crear producto de inventario
               frm:= TfrmPasaraInventario.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6005 : begin      // Reservar productos
               frm:= TfrmBancoReserva.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6006 : begin      // Reservar productos
               frm:= TfrmDatosVentasPendientes.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6007 : begin
               //begin
               frm:= TfrmFactura.Create(Self);
               TFrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
               //end;
             end;

      6008 : begin      // Reservar productos
               frm:= TfrmBancoVentaDirecta.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6010 : begin
               frm:= TfrmTipoDonacion.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6011 : begin
               frm:= TfrmDatosBSProductos.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6012 : begin
               frm:= TfrmDatosPruebasBanco.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6013 : begin
               frm:= TfrmDatosDonante.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6014 : begin
               frm:= TfrmTomaMuestras1.Create(Self) ;
               //frmTmpMuestra := frm as TfrmTomaMuestras;
               TFrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6015 : begin
               frm:= TfrmDatosTipificacion.Create(Self) ;
               TFrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6016 : begin
               if frmTmp = nil then
                 begin
                   frm:= TfrmEntradaLaboratorio.Create(Self);
                   frmTmp:= TfrmPuntoVenta(frm);
                   TFrmCustomModule(frm).SetSecurity(iParam);
                   ShowForm(frm);
                 end;
             end;

      6017 : begin      // Productos reservados
               frm:= TfrmBSProductosReservados.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6018 : begin
               frm:= TfrmDatosNCF.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6019 : begin
               frm:= TfrmCruce.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6020 : begin
               frm:= TfrmDatosPruebasCruce.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6021 : begin
               frm:= TfrmDatosCruce.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6022 : begin
               frm:= TfrmDatosCategoriasPrecios.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6023 : begin
               frm:= TfrmCrearCrioPrecipitado.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6024 : begin
               frm:= TfrmVentaDirecta.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6025 : begin
               frm:= TfrmCrearPlaquetas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6101 : begin
               frm:= TfrmReservacionesVencidas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6102 : begin
               frm:= TfrmproductosVencidos.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6103 : begin //Cuadres de caja
               frm:= TfrmDatosCuadre.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6104 : begin
               frm:= TfrmDatosInventario.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6105 : begin //CConsulta de ventas por porductos
               frm:= TfrmDatosVentasProductos.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6106 : begin //Cobros
               frm:= TfrmDatosEfectivo.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6107 : begin //Consulta de donaciones
               frm:= TfrmListaDonaciones.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6108 : begin //Consulta de donaciones
               frm:= TfrmListaDonacionesMes.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6109 : begin //Consulta de donaciones
               frm:= TfrmDatosDonaciones.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6110 : begin //Consulta de donaciones
               frm:= TfrmDatosCausasRechaso.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6111 : begin //Consulta de donaciones
               frm:= TfrmListadoFacturas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6112 : begin //Consulta de donaciones
              frm:= TfrmEntradasProductosMeses.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
             end;

      6113 : begin //Consulta de donaciones
               frm:= TfrmEstadisticasMeses.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6114 : begin //Consulta de donaciones
               frm:= TfrmCausasRechazosMeses.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6115 : begin //Consulta de donaciones
               frm:= TfrmVentasMeses.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6116 : begin //Consulta de donaciones
               frm:= TfrmConsultaMovimientos.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6117 : begin //Consulta de donaciones
               frm:= TfrmProductosMeses.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6118 : begin //Consulta de numero de donaciones por donantes
               frm:= TfrmDatosDonantesRecurrentes.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6119 : begin //Consulta de donaciones
               frm:= TfrmFacturasPagadas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6120 : begin //Consulta de donaciones por Sexos
               frm:= TfrmDonacionesSexos.Create(Self);
               TfrmDonacionesSexos(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6121 : begin      // Reservar productos
               frm:= TfrmDatosResumendonaciones.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      6122 : begin      // Separacion de sangre
               Separar;
             end;

      6123 : begin      // Cosulta parametrica de productos
               frm:= TFrmconsulta_productos.Create(Self);
              // TFrmconsulta_productos(frm).SetSecurity(iParam);
               ShowForm(frm);
             end;

      //Reportes Banco de sangre
      6601 : with TfrmReporteDonantes.Create(Self) do
               begin
                 Run;
                 Free;
               end;

      6602 : with TfrmReporteDonaciones.Create(Self) do
               begin
                 Run;
                 Free;
               end;

      6603 : with TfrmReporteProductos.Create(Self) do
               begin
                 Run;
                 Free;
               end;

      6604 : BSReportes.Donantes;
      6605 : BSReportes.Operaciones;
      6606 : BSReportes.Vencimientos;
      6607 : BSReportes.Rechasados;
      6060 : BSReportes.UltimoCuadre;
      6061 : BSReportes.VentasPeriodo;
      6062 : BSReportes.DetalleVenta;
      6063 : BSReportes.VentasCobros;

      6701 : dmEstadisticas.general;
      6702 : dmEstadisticas.porTipos;
      6703 : dmEstadisticas.Rechazos;
      6704 : dmEstadisticas.Donaciones;

      //Formas de Menu Nuevas
      9000 : begin //Consulta de donaciones
               frm:= TfrmMenuDonaciones.Create(Self);
               ShowForm(frm);
             end;

      9100 : begin //Consulta de donaciones
               frm:= TfrmMenuCaja.Create(Self);
               ShowForm(frm);
             end;

      9400 : begin //Consulta de donaciones
               frm:= TfrmMenuReportes.Create(Self);
               ShowForm(frm);
             end;

      9500 : begin //Consulta de donaciones
               frm := TfrmMenuAdministracion.Create(Self);
               ShowForm(frm);
             end;
      9600 : begin //Consulta de cruces sanguineos
              frm := TFrmlistadocruce.Create(Self);
               ShowForm(frm);
             end;
      9601 : begin // Consulta Cuentas por Cobrar
               frm:= TfrmConsultacxc.Create(Self);
               ShowForm(frm);
              end;
      9602 : begin
               frm:= TFrmconsultaRechazos.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);

             end;
      9603 : begin
               frm:= TFrmTarjetas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);

             end;
      9604 : begin
               frm:= TFrmmenuProcesos.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
              end;
      9605 : begin
               frm:= TFrmAsignarFactura.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);
              end;
       9606 : begin
               frm:= TFrmDatosClinicas.Create(Self);
               TfrmCustomModule(frm).SetSecurity(iParam);
               ShowForm(frm);

              end;


      end;       


    if Assigned(frm) then
      begin
        (frm as TfrmCustomModule).MyWindowTag:= iOpcion;
        tsVentanas.AdvTabs.Items[tsVentanas.TabIndex ].Tag:= iOpcion;
        (frm as TfrmCustomModule).SetTitleImage(ImageIndex);
        ImageIndex := -1;
      end;
  finally
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
    LockWindowUpdate(0);
    //RedrawWindow(Handle,nil,0,RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  end;
end;

procedure TfrmMain.miBarraEstadoClick(Sender: TObject);
begin
    //miBarraEstado.Checked := not miBarraEstado.Checked;
  StatusBar.Visible := miBarraEstado.Down;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  spTexto.Width:= (self.ClientWidth - (spAno.Width + spUser.Width +
    ksCaps.Width + ksNum.Width + dbState.Width + pbStatusBar.Width )) - 30;
end;

procedure TfrmMain.JvAppEventsActiveFormChange(Sender: TObject);
var
  CurrentForm : TCustomForm;
begin
  if not IsClosing then
    begin
      try
        LockWindowUpdate(Handle);
        //      if MDIChildCount = 0 then begin
        //       dmAppActions.CleanUpActions;
        //       dxBarComando.Enabled := False; // Visible := ivNever;
        //      end else begin
        //       dxBarComando.Enabled := True; //Visible := ivAlways;
        //      end;
        dbState.DataSource:= nil;
        CurrentForm:= lmdForms.ActiveForm;
        if CurrentForm is TfrmCustomModule then
          begin
            (CurrentForm as TfrmCustomModule).UpdateActionsState;
            (CurrentForm as TfrmCustomModule).UpdateActionsVisibility;
            if  CurrentForm is TfrmDatosModule then
              begin
                dbState.DataSource:= (CurrentForm as TfrmDatosModule).dsDatos;
              end;
            if  CurrentForm is TfrmConsultaModule then
              begin
                dbState.DataSource:= (CurrentForm as TfrmConsultaModule).dsDatos;
              end;
            if CurrentForm is TfrmOpcionesModule then
              begin
                dbState.DataSource:= (CurrentForm as TfrmOpcionesModule).dsDatos;
              end;
            if  CurrentForm is TfrmPuntoVenta then
              begin
                dbState.DataSource:= (CurrentForm as TfrmPuntoVenta
                  ).dsEntradaPaciente;
              end;
            (CurrentForm as TfrmCustomModule).SetTitleCaption;
          end;
      finally
        LockWindowUpdate(0);
        RedrawWindow(Handle,nil,0,RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or 
          RDW_ALLCHILDREN);
      end;
    end;
end;

procedure TfrmMain.dxBarRolClick(Sender: TObject);
begin
  LanzaVentana((Sender as TdxBarItem).Tag);
end;

procedure TfrmMain.dxNavBarLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  ImageIndex:= TAction(ALink.Item.Action).ImageIndex;
  LanzaVentana(ALink.Item.Tag);
end;

procedure TfrmMain.dxBarWinListClick(Sender: TObject);
begin
  with dxBarWinList do
    begin
      IsWindow(TfrmCustomModule(Items.Objects[ItemIndex]).MyWindowTag);
    end;
end;

procedure TfrmMain.dxBarWinListGetData(Sender: TObject);
begin
  with dxBarWinList do
    ItemIndex:= Items.IndexOfObject(lmdForms.ActiveForm);
end;

procedure TfrmMain.ConfigurarImpresora1Click(Sender: TObject);
begin
  PSetup.Execute;
end;

procedure TfrmMain.LanzaConsulta(iConsulta: Integer; sParam: string; sParamOpcional : string = '');
var
  iSecurity : Integer;
  frm : TCustomForm;
begin
  try
    Screen.Cursor := crHourGlass;
    LockWindowUpdate(Handle);
    frm := nil;
    case iConsulta of
     -1040 : begin
               frm:=  TfrmDiccionarioDeDatos.Create(Self);
               TfrmDiccionarioDeDatos(frm).ShowTabla(sParam);
               ShowForm(frm);
             end;

    -9910 : with TfrmQueryBuilderModule.Create(Self) do
              begin
                ShowSQl(sParam);
                Free;
              end;

     -9989 : begin
               frm:= TfrmReportExplorer.Create(Self);
               TfrmReportExplorer(frm).LanzaReporte(StrToInt(sParam));
               ShowForm(frm);
             end;    // with

     -9999 : begin
               frm:= TfrmDatosUserScripts.Create(Self);
               TfrmDatosUserScripts(frm).ShowScript(sParam);
               ShowForm(frm);
             end;

     -7994 : with TfrmDialogImpCobro.Create(Self) do
               begin
                 Run(strtoint(sParam));
                 Free;
               end;

     -7991 : with TfrmDialogImpNC.Create(Self) do
               begin
                 Run(strtoint(sParam));
                 Free;
               end;

     -7990 : begin
               frm:= TfrmDatosDescUsuario.Create(Self);
               TfrmDatosDescUsuario(frm).BuscarData(sParam);
               ShowForm(frm);
             end;

     -7989 : begin
               frm:= TfrmConsultaTransClientes.Create(Self);
               TfrmConsultaTransClientes(frm).ShowCliente(sParam);
               ShowForm(frm);
             end;

     -7988 : with TfrmDialogBalCliente.Create(Self) do
               begin
                 Run(sParam);
                 Free;
               end;

     -7987 : begin
               frm:= TfrmDatosUsuarioSuc.Create(Self);
               TfrmDatosUsuarioSuc(frm).BuscarData(sParam);
               ShowForm(frm);
             end;

     -7985 : with TfrmDialogPrecioSucursal.Create(Self) do
               begin
                 Run(sParam);
                 Free;
               end;

     -7984 : begin
               frm:= TfrmDatosGastosVariosTrans.Create(Self);
               TfrmDatosGastosVariosTrans(frm).SetRefrecid(sParam);
               ShowForm(frm);
             end;

     -8004 : begin
               frm:= TfrmDatosCombosPruebas.Create(Self);
               frmCombo:= frm as TfrmDatosCombosPruebas;
               TfrmDatosCombosPruebas(frm).BuscarData(sParam);
               ShowForm(frm);
             end;
    end;

    if frm <> nil then
      begin
        TfrmCustomModule(frm).SetTitleImage(89);
        tsVentanas.AdvTabs.Items[tsVentanas.TabIndex].Tag:= iConsulta;
      end;
  finally
    Screen.Cursor:= crDefault;
    LockWindowUpdate(0);
    RedrawWindow(Handle,nil,0,RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or
      RDW_ALLCHILDREN);
  end;
end;

procedure TfrmMain.StatusBarPanels1DblClick(Sender: TObject);
begin
  LanzaVentana(2090);
end;

procedure TfrmMain.SetAnoFiscalPanel;
begin
  //StatusBar.Panels[1].Text := DM.qrCgParamAnoFiscalBalance.Asstring;
  //StatusBar.Panels[2].Text := DM.CurUser;
  spUser.Caption:= DM.CurUser;
end;

procedure TfrmMain.Calculadora1Click(Sender: TObject);
begin
  jvCalculator.Execute;
end;

procedure TfrmMain.Acercade1Click(Sender: TObject);
begin
  with TFrmAboutBox.Create(Self) do
    ShowModal;
end;

procedure TfrmMain.JvAppEventsShowHint(var HintStr: string;
  var CanShow: Boolean; var HintInfo: THintInfo);
begin
  spTexto.Caption:= HintStr;
end;

procedure TfrmMain.dxBarCloseWindowClick(Sender: TObject);
var
  frm : TCustomForm;
  iCount : Integer;
  AllowChange : Boolean;
begin
  try
    LockWindowUpdate(Handle);
    if lmdForms.FormCount > 0 then
      begin
        iCount := lmdForms.FormCount - 1;
        lmdForms.RemoveForm(lmdForms.ActiveForm,True);
        if iCount > 0 then
          begin
            lmdForms.ActiveFormIndex := lmdForms.FormCount - 1;
            frm:= lmdForms.Forms[ lmdForms.ActiveFormIndex ];
            with TfrmCustomModule(frm) do
              begin
                UpdateActionsState;
                UpdateActionsVisibility;
              end;
            frm.Show;
          end
        else
          begin
            dmAppActions.CleanUpActions;
          end;
      end
    else
      Salir1.Click;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmMain.dxBarCompanyExportClick(Sender: TObject);
begin
  with TfrmDialogSysCompanyExport.Create(Self) do
    try
      ExportCompany;
    finally
      Free;
    end;
end;

procedure TfrmMain.dxBarButton29Click(Sender: TObject);
begin
  DMReports.ppReport.Template.New;
  DMReports.ppReport.Parameters.Clear;
  DMReports.ppReport.Parameters.Add('repTitle',DM.TituloEmpresa);
  DMReports.ppReport.Parameters.Add('repSubTitle',DM.TituloEmpresa);
  DMReports.ppDesigner.ShowModal;
end;

procedure TfrmMain.dxBarButton36Click(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS, HelpContext);
end;

procedure TfrmMain.dxBarToggleNavBarClick(Sender: TObject);
begin
  //  dpMenu.AutoHide := not dpMenu.AutoHide;
  //  dpComercio.AutoHide := not dpComercio.AutoHide;
  dpMenu.AutoHide:= not dpMenu.AutoHide;
  dxBarToggleNavBar.Down:= not dpMenu.AutoHide; // dpMenu.AutoHide;
end;

procedure TfrmMain.mmActionExecute(Sender: TObject);
begin
  ImageIndex:= TAction(Sender).ImageIndex;
  LanzaVentana((Sender As TAction).Tag);
end;

procedure TfrmMain.SetActions;
var
  i : Integer;
begin
  DM.qrUserMenu.Close;
  DM.qrUserMenu.Parameters.ParamByName('pRol').Value:= DM.CurRol;
  DM.qrUserMenu.Open;
  for i:= 0 to alMainMenu.ActionCount -1 do
    begin
      if DM.qrUserMenu.Locate('OpcionID',alMainMenu.Actions[i].Tag,[]) then
        (alMainMenu.Actions[i] As TAction).Visible:= (DM.qrUserMenuNivel.Value >= 0)
      else
        (alMainMenu.Actions[i] As TAction).Visible:= False;
    end;
end;

procedure TfrmMain.miDataDictionaryClick(Sender: TObject);
begin
  LanzaVentana(-1040);
end;

procedure TfrmMain.CreateMenu;
var
  pCount : Integer;
  i : Integer;
  iFin : Integer;
  iCom : Integer;
  x : Integer;
  y : Integer;
  s : string;
  sCat : string;
  sSubCat : string;
  sCurCat : string;
  sCurSubCat : string;
  nbPanel : TdxNavBarGroup;
  gbPanel : TRzGroupBar;
  gbGroup : TRzGroup;
  gbItem : TRzGroupItem;
  CurBarM  : TdxBarSubItem;
  CurBarG  : TdxBarSubItem;
  CurBarS  : TdxBarSubItem;
  CurBarI  : TdxBarButton;
  barLink  : TdxBarItemLink;
  bFirst   : Boolean;
  bClose   : Boolean;
  bActive  : Boolean;
begin
//  try
//    LockWindowUpdate(Handle);
//    dxMemDataMain.Open;
//    DM.qrUserMenu.Close;
//    DM.qrUserMenu.Parameters.ParamByName('pRol').Value := DM.CurRol;
//    DM.qrUserMenu.Open;
//    pCount := 0;
//    sCurCat := '';
//    sCurSubCat := '';
//    bFirst := True;
//    for i := 0 to frmMain.alMainMenu.ActionCount -1 do begin
//      s := frmMain.alMainMenu.Actions[i].Category;
//      x := 1;
//      y := Pos('_', s );
//      sCat := MidStr( s, x, y - 1);
//      sSubCat := MidStr( s, y + 1, 100  );
//      DM.qrUserMenu.Locate('OpcionID',frmMain.alMainMenu.Actions[i].Tag,[]);
//      bActive := True;
//      if ( not il_IsTrial ) and ( dxMemDataMain.Locate('Categoria', sCat, []) ) then begin
//        bActive := (Copy( il_License,dxMemDataMainModuloIdx.Value, 1 ) = '1');
//      end;
//      if (DM.qrUserMenuNivel.Value <> -1) and ( bActive ) then begin
//        if sCurCat <> sCat then begin
//          sCurCat := sCat;
//          sCurSubCat := '';
//          Inc(pCount);
//          if TAction(frmMain.alMainMenu.Actions[i]).HelpKeyword = 'Finanzas' then begin
//            nbPanel := nbMainMenu.Groups.Add;
//            CurBarM := mbFinanzas;
//            Inc(iFin);
//          end else begin
//            Inc(iCom);
//            nbPanel := nbComercio.Groups.Add;
//            CurBarM := mbComercio;
//          end;
//          nbPanel.Caption := sCurCat;
//          nbPanel.ShowControl := True;
//          nbPanel.UseControl := True;
//          nbPanel.UseSmallImages := True;
//          bClose := True;
//          //
//          if dxMemDataMain.Locate('Categoria', sCurCat, []) then begin
//            nbPanel.SmallImageIndex := dxMemDataMainImageID.Value;
//            nbPanel.Caption := dxMemDataMainTexto.Value;
//          end;
//          //
//          gbPanel := TRzGroupBar.Create(Self);
//          gbPanel.Style := gbsCategoryView;// gbsTaskList;
//          gbPanel.Parent := nbPanel.Control;
//          gbPanel.Align := alClient;
//          curBarG := TdxBarSubItem.Create(Self);
//          curBarG.Caption := nbPanel.Caption;
//          barLink := CurBarM.ItemLinks.Add;
//          barLink.Item := curBarG;
//          if bFirst then begin
//            barLink.beginGroup := True;
//            bFirst := false;
//          end;
//        end;
//        if sCurSubCat <> sSubCat then begin
//          sCurSubCat := sSubCat;
//          gbGroup := TRzGroup.Create(Self);
//          gbGroup.Caption := sCurSubCat;
//          gbGroup.SmallImages := ilNavBarSmall;
//          gbGroup.LargeImages := ilNavBarSmall;
//          gbGroup.Close;
//          if bClose then begin
//            gbGroup.Open;
//            bClose := False;
//          end;
//          gbPanel.AddGroup(gbGroup);
//          curBarS := TdxBarSubItem.Create(Self);
//          curBarS.Caption := sCurSubCat;
//          barLink := CurBarG.ItemLinks.Add;
//          barLink.Item := curBarS;
//        end;
//        gbItem := gbGroup.Items.Add;
//        gbItem.Action := frmMain.alMainMenu.Actions[i];
//        curBarI := TdxBarButton.Create(Self);
//        curBarI.Action := frmMain.alMainMenu.Actions[i];
//        curBarI.PaintStyle := psCaption;
//        barLink := curBarS.ItemLinks.Add;
//        barLink.Item := curBarI;
//      end;
//    end;
//    dxMemDataMain.Close;
//    dpComercio.Visible := ( iCom > 0);
//    dpMenu.Visible := ( iFin > 0);
//    if iCom = 0 then begin
//      mbComercio.Visible := ivNever;
//    end;
//    if iFin = 0 then begin
//      mbFinanzas.Visible := ivNever;
//    end;
//    tabMenus.ActiveChildIndex := 0;
//  finally
//    LockWindowUpdate(0);
//  end;
end;

procedure TfrmMain.spAnoDblClick(Sender: TObject);
begin
  //LanzaVentana(2090);
end;

procedure TfrmMain.dxBarUserScriptsClick(Sender: TObject);
begin
  LanzaVentana(-9999);
end;

procedure TfrmMain.dxBarQueryBuilderClick(Sender: TObject);
begin
  LanzaVentana(-9910);
//  with DM  do begin
//    oqbDialog.Execute;
//  end;    // with
end;


procedure TfrmMain.CreateMenuTv;
var
  pCount : Integer;
  iFin, iCom : Integer;
  i : Integer;
  x : Integer;
  y : Integer;
  s : string;
  sCat : string;
  sSubCat : string;
  sCurCat : string;
  sCurSubCat : string;
  bFirst   : Boolean;
  bActive  : Boolean;
  nbPanel : TdxNavBarGroup;
  TvMenuComercio : TTreeView;
  tvCat : TTreeNode;
  tvGroup : TTreeNode;
  tvItem : TTreeNode;
  CurBarM  : TdxBarSubItem;
  CurBarG  : TdxBarSubItem;
  CurBarS  : TdxBarSubItem;
  CurBarI  : TdxBarButton;
  barLink  : TdxBarItemLink;
begin
  try
    LockWindowUpdate(Handle);
    nbMainMenu.Groups.Clear;
    shFavorites.Clear;
    tvFavoritos.Items.Clear;
    mbFinanzas.ItemLinks.Clear;
    dxMemDataMain.Open;
    if DM.IsAdmin then
      begin
        dxBarUsuario.Visible := ivAlways;
        dxBarRol.Visible := ivAlways;
        dxCloseYear.Visible := ivAlways;
        miDataDictionary.Visible := ivAlways;
        dxBarQueryBuilder.Visible := ivAlways;
        dxBarUserScripts.Visible := ivAlways;
        miOpciones.Visible := ivAlways;
        dxBarUtil.Visible := ivAlways;
        dxBarCompanyExport.Visible := ivAlways;
      end;
    if DM.IsDeveloper then
      begin
        miDeveloperMenu.Visible:= ivAlways;
        //miIDE.Visible := ivNever;
      end;

    DM.qrFavoritos.Close;
    DM.qrFavoritos.Parameters.ParamByName('pUser').Value:= DM.CurUser;
    DM.qrFavoritos.Open;
    DM.qrUserMenu.Close;
    DM.qrUserMenu.Parameters.ParamByName('pRol').Value:= DM.CurRol;
    DM.qrUserMenu.Open;
    iFin := 0;
    iCom := 0;
    pCount := 0;
    sCurCat := '';
    sCurSubCat := '';
    bFirst := True;
    for i:= 0 to frmMain.alMainMenu.ActionCount -1 do
      begin
        s:= frmMain.alMainMenu.Actions[i].Category;
        x:= 1;
        y:= Pos('_', s);
        sCat:= MidStr(s, x, y - 1);
        sSubCat:= MidStr(s, y + 1, 100);
        DM.qrUserMenu.Locate('OpcionID',frmMain.alMainMenu.Actions[i].Tag,[]);
        bActive:= True;
        if (not il_IsTrial) and (dxMemDataMain.Locate('Categoria', sCat,[])) then
          begin
            bActive:= (Copy(il_License,dxMemDataMainModuloIdx.Value,1) = '1');
          end;

        if (DM.qrUserMenuNivel.Value <> -1) and (bActive) then
          begin
            if sCurCat <> sCat then
              begin
                sCurCat:= sCat;
                sCurSubCat:= '';
                Inc(pCount);

                if TAction(frmMain.alMainMenu.Actions[i]).HelpKeyword = 'Laboratorio' then
                  begin
                    nbPanel:= nbMainMenu.Groups.Add;
                    CurBarM:= mbFinanzas;
                    Inc(iFin);
                  end
                else
                  begin
                    Inc(iFin); //Inc(iCom);
                    CurBarM:= mbFinanzas; // mbComercio;
                    nbPanel:= nbMainMenu.Groups.Add; //nbComercio.Groups.Add;
                  end;

                nbPanel.Caption:= sCurCat;
                nbPanel.ShowControl:= True;
                nbPanel.UseControl:= True;
                nbPanel.UseSmallImages:= False; //True;

                if dxMemDataMain.Locate('Categoria', sCurCat,[]) then
                  begin
                    nbPanel.SmallImageIndex := dxMemDataMainImageID.Value;
                    nbPanel.LargeImageIndex := dxMemDataMainImageID.Value;
                    nbPanel.Caption := dxMemDataMainTexto.Value;
                  end;

                curBarG:= TdxBarSubItem.Create(Self);
                curBarG.Caption:= nbPanel.Caption;
                barLink:= CurBarM.ItemLinks.Add;
                barLink.Item:= curBarG;
                if bFirst then
                  begin
                    barLink.beginGroup:= True;
                    bFirst:= false;
                  end;

                tvMenuComercio := TTreeView.Create(Self);
                TvMenuComercio.DragMode := dmAutomatic;
                TvMenuComercio.HotTrack := True;
                tvMenuComercio.OnEditing := tvMenuComercioEditing;
                tvMenuComercio.OnDblClick := TreeItemDblClick;
                tvMenuComercio.Parent := nbPanel.Control;
                TvMenuComercio.AutoExpand := True;
                tvMenuComercio.Align := alClient;
                tvMenuComercio.Images := ilNavBarSmall;
              end;
            if sCurSubCat <> sSubCat then
              begin
                sCurSubCat:= sSubCat;
                if TvMenuComercio.Items.Count > 0 then
                  begin
                  tvGroup:= tvMenuComercio.Items.AddChild(tvCat, sCurSubCat);
                  tvGroup.ImageIndex:= 64;
                  tvGroup.SelectedIndex:= 64;
                  end
                else
                  tvGroup:= TvMenuComercio.TopItem;
                  curBarS := TdxBarSubItem.Create(Self);
                  curBarS.Caption := sCurSubCat;
                  barLink := CurBarG.ItemLinks.Add;
                  barLink.Item := curBarS;
              end;
            tvItem:= tvMenuComercio.Items.AddChildObject(tvGroup,TAction(frmMain.alMainMenu.Actions[i]).Caption,frmMain.alMainMenu.Actions[i]);
            tvItem.ImageIndex:= TAction(frmMain.alMainMenu.Actions[i]).ImageIndex;
            tvItem.SelectedIndex := TAction(frmMain.alMainMenu.Actions[i]).ImageIndex;
            // Crear Favoritos
            if  DM.qrFavoritos.Locate('OpcionID',frmMain.alMainMenu.Actions[i].Tag,[]) then
              begin
                if shFavorites.strings.IndexOf(IntToStr(frmMain.alMainMenu.Actions[i].Tag)) = -1 then
                  begin
                    tvItem:= tvFavoritos.Items.AddChildObject(nil,TAction(frmMain.alMainMenu.Actions[i]).Caption,frmMain.alMainMenu.Actions[i]);
                    tvItem.ImageIndex:= TAction(frmMain.alMainMenu.Actions[i]).ImageIndex;
                    tvItem.SelectedIndex:= TAction(frmMain.alMainMenu.Actions[i]).ImageIndex;
                    shFavorites.strings.Add(IntToStr(frmMain.alMainMenu.Actions[i].Tag));
                  end;
              end;
            //
            //tvItem.Tag := frmMain.alMainMenu.Actions[i].Tag;
            curBarI := TdxBarButton.Create(Self);
            curBarI.Action := frmMain.alMainMenu.Actions[i];
            curBarI.PaintStyle := psCaption;
            barLink := curBarS.ItemLinks.Add;
            barLink.Item := curBarI;
          end
        else
          begin
            // Desactivar las acciones sin acceso para desabilitar los botones
            TAction(frmMain.alMainMenu.Actions[i]).Enabled:= false;
          end;
      end;
    dxMemDataMain.Close;
    //dpComercio.Visible := ( iCom > 0);
    dpMenu.Visible := ( iFin + iCom > 0) ;
    //tabMenus.ActiveChildIndex := 0;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmMain.tvMenuComercioEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  AllowEdit:= False;
end;

procedure TfrmMain.ToolButton1Click(Sender: TObject);
var
  iParam : Integer;
  forma: TCustomForm;

begin
//Application.CreateForm(Tfrmprecioscategorias,frmprecioscategorias);
//ShowForm(frmprecioscategorias);


end;

procedure TfrmMain.ToolButton2Click(Sender: TObject);
begin

if DM.CurRol in[7,4] then
  begin
    LanzaVentana(9604);
  end
  else
  ShowMessage('NO POSEE AUTORIZACION PARA ESTE MENU');


end;

procedure TfrmMain.TreeItemDblClick(Sender: TObject);
var
  tNode : TTreeNode;
begin
  tNode:= (Sender AS TTreeView).Selected;
  if assigned(tNode) then
    begin
      if assigned(tNode.Data) then
        begin
          ImageIndex := TAction(tNode.Data).ImageIndex;
          TAction(tNode.Data).Execute;
        end;
    end;
end;

procedure TfrmMain.dxBarButton115Click(Sender: TObject);
var
  frmDataDict : TdaDataDictionaryBuilderForm;
begin
  frmDataDict:= TdaDataDictionaryBuilderForm.Create(self);
  frmDataDict.DataDictionary:= DMReports.ppDataDictionary;
  frmDataDict.ShowModal;
end;

function TfrmMain.IsWindow(WindowTag: Integer): Integer;
var iPrev : Integer;
    iX 		: Integer;
    iTag  : Integer;
begin
  iPrev:= 0;
	Try
    //LockWindowUpdate(GetDesktopWindow);
    for iX:= 0 to lmdForms.FormCount -1 do
      begin
        iTag:= (lmdForms.Forms[iX] as TfrmCustomModule).MyWindowTag;
        if iTag = WindowTag then
          begin
            iPrev:= iX + 1;
            lmdForms.ActiveFormIndex:= iX;
            lmdForms.Forms[iX].Show;
            with TfrmCustomModule(lmdForms.Forms[iX]) do
              begin
                UpdateActionsState;
                UpdateActionsVisibility;
              end;
            Break;
          end;
      end;
	Finally
    //LockWindowUpdate(0);
  end;
  Result:= iPrev;
end;

procedure TfrmMain.dxNavBar1CustomDrawNavigationPaneOverflowPanel(
  Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarViewInfo;
  var AHandled: Boolean);
begin
  AHandled:= True;
end;

procedure TfrmMain.tvFavoritosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source is TTreeNode) then
    begin
      Accept:= Assigned((Source as TTreeNode).Data);
    end;
end;

procedure TfrmMain.tsVentanasCanClose(Sender: TObject; TabIndex: Integer;
  var CanClose: Boolean);
var
  i : Integer;
begin
  try
    CurWindowTag:= tsVentanas.AdvTabs.Items[TabIndex].Tag;
    //    for i := 0 to lmdForms.FormCount - 1 do begin
    //      if TfrmCustomModule( lmdForms.Forms[i] ).MyWindowTag = CurWindowTag then begin
    //        lmdForms.RemoveForm(lmdForms.Forms[i],True);
    //        break;
    //      end;
    //    end;
    lmdForms.RemoveForm(lmdForms.ActiveForm,True);
    CanClose := True;
  except
    CanClose:= False;
    raise;
  end;
end;

procedure TfrmMain.tsVentanasChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
  I : Integer;
begin
  try
    LockWindowUpdate(Handle);
    //IsWindow(TfrmCustomModule( tsVentanas.AdvTabs.Items[NewTab].AObject ).MyWindowTag);
    //IsWindow(tsVentanas.AdvTabs.Items[NewTab].Tag);
    for I := 0 to lmdforms.FormCount - 1 do
      begin
        if lmdForms.Forms[i] = tsVentanas.AdvTabs.Items[NewTab].AObject then
          begin
            lmdForms.ActiveFormIndex := i;
            break;
          end;
      end;
    //lmdForms.ActiveFormIndex := Abs( tsVentanas.TabIndex - ( lmdForms.FormCount - 1 ) );
    CurWindowTag := tsVentanas.AdvTabs.Items[NewTab].Tag;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmMain.tsVentanasTabClose(Sender: TObject; TabIndex: Integer);
begin
  //dxBarCloseWindowClick(Sender);
  try
    LockWindowUpdate(Handle);
    tsVentanas.Visible:= (tsVentanas.AdvTabs.Count > 1);
    if not tsVentanas.Visible then
      dmAppActions.CleanUpActions;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmMain.tvFavoritosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  tvItem : TTreeNode;
  Action : TAction;
begin
  Action:= TAction((Source as TTreeView).Selected.Data);
  DM.DataBase.Execute('INSERT INTO SysMenu (OpcionId,Tipo,Grupo,Titulo,OpcionPadreID) VALUES ( ' +
                        IntToStr(Action.Tag) + ',1,' + #39 + DM.CurUser + #39 + ',' + #39 + Action.Caption  + #39 + ',0)' );
  tvItem:= tvFavoritos.Items.AddChildObject(nil,Action.Caption,Action);
  tvItem.ImageIndex:= Action.ImageIndex;
  tvItem.SelectedIndex:= Action.ImageIndex;
end;

procedure TfrmMain.tvFavoritosEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  AllowEdit:= False;
end;

procedure TfrmMain.tvFavoritosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  actIndex : Integer;
begin
  if (Key = VK_DELETE) and (Shift = []) and (Assigned(tvFavoritos.Selected)) then
    begin
      if MessageDlg('Desea eliminar esta opción de los favoritos?',
         mtConfirmation, [mbYes,mbNo], 0) = mrYes then
        begin
          actIndex:= (TAction(tvFavoritos.Selected.Data).Tag);
          DM.DataBase.Execute('DELETE SysMenu WHERE OpcionId = ' + IntToStr(actIndex) + ' AND Grupo = ' + #39 + DM.CurUser + #39);
          tvFavoritos.Selected.Delete;
        end;
    end;
end;

procedure TfrmMain.dxBarFavoritosClick(Sender: TObject);
begin
  spFavoritos.Visible:= not spFavoritos.Visible;
end;

procedure TfrmMain.MasterLookAndFeelChanged(Sender: TcxLookAndFeel;
  AChangedValues: TcxLookAndFeelValues);
begin
  SetOfficeColor;
end;

procedure TfrmMain.MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
begin
  //TO-DO
end;

procedure TfrmMain.MenuAdministracionExecute(Sender: TObject);
begin
  LanzaVentana(9500);
end;

procedure TfrmMain.MenuCajaExecute(Sender: TObject);
begin
  LanzaVentana(9100);
end;

procedure TfrmMain.MenuDonacionesExecute(Sender: TObject);
begin
  LanzaVentana(9000);
end;

procedure TfrmMain.MenuReportesExecute(Sender: TObject);
begin
  LanzaVentana(9400);
end;

function TfrmMain.GetObject: TObject;
begin
  Result:= Self;
end;

procedure TfrmMain.SetOfficeColor;
begin
  rzBackGround.Color:= dxOffice11NavPaneHeaderColor1;
  rzBackGround.ColorTo:= dxOffice11NavPaneHeaderColor2;
  spFavoritos.Color:= dxOffice11.dxOffice11ToolbarsColor1;
  spFavoritos.BorderColor:= dxOffice11.dxOffice11BarMarkColors2[1];
  spFavoritos.Invalidate;
  //
  dmAppActions.lnfWeb.GroupOptions.Color := dxOffice11.dxOffice11ToolbarsColor1;
  dmAppActions.lnfWeb.GroupOptions.CaptionOptions.Color := dxOffice11.dxOffice11BarMarkColors2[1];
  dmAppActions.lnfWeb.GroupOptions.FrameColor := dxOffice11.dxOffice11ControlBorderColor;
  dmAppActions.lnfWeb.ItemOptions.ControlBorderColor := dxOffice11.dxOffice11ControlBorderColor;
  //
  dmAppActions.lnfButtonGroup.GroupOptions.Color := dxOffice11.dxOffice11BarMarkColors1[1];
  dmAppActions.lnfButtonGroup.GroupOptions.FrameColor := dxOffice11.dxOffice11BarMarkColors1[1];
  dmAppActions.lnfButtonGroup.ItemOptions.ControlBorderColor := dxOffice11.dxOffice11ControlBorderColor;
  //
  dmAppActions.lnfNoBorder.GroupOptions.Color := dxOffice11.dxOffice11BarMarkColors1[1];
  //
  tsVentanas.BackgroundColor := dxOffice11ToolbarsColor1;
  tsVentanas.TabBorderColor := dxOffice11NavPaneBorder;
  tsVentanas.SelectedColor := dxOffice11SelectedColor1;
  tsVentanas.SelectedColorTo := dxOffice11SelectedColor2;
  tsVentanas.UnselectedColor := dxOffice11ToolbarsColor1;
  tsVentanas.UnselectedColorTo := dxOffice11ToolbarsColor2;
end;

procedure TfrmMain.ShowForm(frm: TCustomForm; show: boolean);
begin
  if TfrmCustomModule(frm).MyWindowTag = 0 then
    TfrmCustomModule(frm).MyWindowTag:= CurWindowTag;
  lmdForms.AddForm(frm, show);
  TfrmCustomModule(frm).Visible:= true;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
var
  I : Integer;
begin
  JvAppEvents.OnActiveFormChange:= nil;
  JvAppEvents.OnShowHint:= nil;
  //dxOffice11.CleanUpOffice11Colors;
  RootLookAndFeel.RemoveChangeListener(Self);
end;

procedure TfrmMain.deSystemDateChange(Sender: TObject);
begin
  DM.SystemDate:= deSystemDate.Date;
end;

procedure TfrmMain.miIDEClick(Sender: TObject);
begin
  LanzaVentana(-1818);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I : Integer;
begin
  for I:= 0 to MDIChildCount- 1 do
    begin    // Iterate
      MDIChildren[i].Close;
    end;    // for
  Action:= caFree;
end;

procedure TfrmMain.dxBarOpenCompanyClick(Sender: TObject);
var
  I : Integer;
  FileName : string;
  User : string;
  Clave : string;
begin
  FileName:= '';
  frmDialogSysOpenCompany:= TfrmDialogSysOpenCompany.Create(Self);
  with frmDialogSysOpenCompany do
    begin
      try
        DM.ApplEmpresas.Close;
        DM.ApplEmpresas.Open;
        lcEmpresas.TabOrder:= 2;
        ShowModal;
        if (frmDialogSysOpenCompany.conTest.Connected) then
          begin
            FileName:= DM.ApplEmpresas.FieldByName('Descripcion').Text;//lcEmpresas.EditText;
            User:= edUsuario.Text;
            Clave:= edClave.Text;
            DM.qrSucursal.locate('Nombre',lcEmpresas.text,[]);
            DM.CurSucursal := DM.qrSucursal.FieldByName('SucursalID').Asstring;
          end
        else
          begin
            if IsStarting then
              begin
                Application.Terminate;
              end;
          end;
      finally
        Free;
      end;
    end; // with

  IsStarting:= False;
  if FileName <> '' then
    begin
      while lmdForms.FormCount > 0 do
        begin
          dxBarCloseWindowClick(Sender);
        end;    // while
      for I:= 0 to tsVentanas.AdvTabs.Count - 1 do
      tsVentanas.AdvTabs.Delete(tsVentanas.AdvTabs.Items[0].Index);
      tsVentanas.Visible:= False;
      DM.OpenCompany(FileName);
      DM.CheckUser(User,Clave);
      DM.SetUserOptions;
      DM.qrParam.Close;
      DM.qrParam.Open;
      {DM.qrCgParam.Close;
       DM.qrCgParam.Open;}
      DM.SetCompanyOptions;
      deSystemDate.Date:= DM.SystemDate;
      {SetAnoFiscalPanel;}
      spUser.Caption:= DM.CurUser;
      CreateMenuTv;
      if not DM.qrSucursal.Active then
        DM.qrSucursal.Open;
        DM.qrSucursal.locate('SucursalID',DM.CurSucursal,[]);
      if DM.TituloEmpresa = '' then
        Caption:= Application.Title + TrialStatus
      else
        Caption:= Application.Title + ' - ' + DM.TituloEmpresa + TrialStatus +
        ' - ' + DM.qrSucursal.FieldByName('Nombre').Asstring;
    end;
end;

procedure TfrmMain.dxBarButton118Click(Sender: TObject);
begin
  with TFrmDialogDbSEtup.Create(Self) do
    begin
      ShowModal;
    end;    // with
end;

procedure TfrmMain.FormShow(Sender: TObject);
Var Version   : String;
begin
  Version := dm.Verifica_Version('BANCO');
  If not dm.ApplEmpresas.Active then dm.ApplEmpresas.Open;
  VerificaVersionExec('BANCO',dm.ApplEmpresas.FieldByName('Servidor').Text,dm.ApplEmpresas.FieldByName('sqlUser').Text,dm.ApplEmpresas.FieldByName('sqlPassword').Text,dm.ApplEmpresas.FieldByName('Nombre').Text,Version);
  If bCambio_Ver then Application.Terminate;
  If IsStarting then
  Begin
      FileParameter := ExtractFileName(ParamStr(1));
      dxBarOpenCompany.Click;
      dxBarToggleNavBar.Click;
  End;

  tbCaja.Visible:= True;
  tbCaja.Color:= $00EFD3C6;
  MenuCaja.Enabled:= (DM.CurRol in [8, 5, 9, 7]);
  MenuDonaciones.Enabled:= (DM.CurRol in [8, 7, 5]);
  MenuAdministracion.Enabled:= (DM.CurRol in [7, 5]);
  MenuReportes.Enabled:= (DM.CurRol in [7, 5]);
end;

procedure TfrmMain.dxBarExportDataClick(Sender: TObject);
begin
  with TfrmDialogSysDataExport.Create(Self) do
    begin
      ShowModal;
      if ModalResult = mrOk then
        begin
          try
            spTexto.Caption := 'Exportando datos...';
            ExportDataSet.Close;
            case rgDataSet.ItemIndex of    //
             0 : ExportDataSet.CommandText := 'Select * from CgCuentas' ;
             1 : ExportDataSet.CommandText := 'Select * from CcClientes' ;
             2 : ExportDataSet.CommandText := 'Select * from CpSuplidor' ;
             3 : ExportDataSet.CommandText := 'Select * from IvProductos Where Tipo = 1' ;
             4 : ExportDataSet.CommandText := 'Select * from IvProductos Where Tipo = 2' ;
            end;    // case
            ExportDataSet.Open;
            qExportXML.FileName := edFileName.EditText;
            qExportXML.Execute;
          finally
            spTexto.Caption := '';
          end;
        end;
      Free;
    end; // with
end;

procedure TfrmMain.dxBarImportDataClick(Sender: TObject);
begin
  with TfrmDialogSysDataExport.Create(Self) do
    begin
      SetForImport;
      ShowModal;
      if ModalResult = mrOk then
        begin
          try
            spTexto.Caption:= 'Importando datos...';
            ExportDataSet.Close;
            case rgDataSet.ItemIndex of
              0 : ExportDataSet.CommandText:= 'Select * from CgCuentas';
              1 : ExportDataSet.CommandText:= 'Select * from CcClientes';
              2 : ExportDataSet.CommandText:= 'Select * from CpSuplidor';
              3 : ExportDataSet.CommandText:= 'Select * from IvProductos Where Tipo = 1';
              4 : ExportDataSet.CommandText:= 'Select * from IvProductos Where Tipo = 2';
            end;    // case
            ExportDataSet.Open;
            qImportWizard.FileName:= edFileName.EditText;
            qImportWizard.Execute;
          finally
            spTexto.Caption:= '';
          end;
        end;
      Free;
    end;  // with
end;

//initialization
//  ModuleInfoManager.AddCategory(SContabilidad,6);
//  ModuleInfoManager.AddCategory(SBanco,8);
//  ModuleInfoManager.AddCategory(SCuentasporCobrar,61);
//  ModuleInfoManager.AddCategory(SCuentasporPagar,62);
//  ModuleInfoManager.AddCategory(SVentas,73);
//  ModuleInfoManager.AddCategory(SCompras,72);
//  ModuleInfoManager.AddCategory(SInventario,47);
//  ModuleInfoManager.AddCategory(SServicios,50);
//  ModuleInfoManager.AddCategory(SNomina,84);

{
    procedure InsertarLabel;
    procedure ImprimirLabel;
    procedure CrearLabels(SecActual : integer);
    function  Buscar_Labels(muestra: string; prueba: string): Boolean;
}

//Buscando el Label de la Prueba Registrada.
{function Buscar_Labels(muestra: string; prueba: string): Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTLabel '+
                   'WHERE PruebaId = :prue '+
                   'AND MuestraNo = :mues ';
 qfind.Parameters.ParamByName('prue').Value := prueba;
 qfind.Parameters.ParamByName('mues').Value := muestra;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   result := True
 else
   result := False;

 FreeAndNil(qfind);
end;
}

procedure TfrmMain.CrearLabels(EntradaId: string; Secuencia: Integer);
var
 first,faltanimp  : Boolean;
 secint : integer;
 //secuencia: Integer;
 Descabr,DescLarga : string;
 qfindLb    : TADOQuery;
 Descripcion : string;
 depact : string;
 muestraact : string;
 colact : Integer;

function Buscar_Labels(muestra : string; prueba: string) : Boolean;
Var
 qfind : TADOQuery;
begin
  qfind := DM.NewQuery;
  qfind.Close;
  qfind.SQL.Text:= 'SELECT * FROM PTLabel WHERE PruebaId = :prue '+
                    'AND EntradaId = :mues ';
  qfind.Parameters.ParamByName('prue').Value:= prueba;
  qfind.Parameters.ParamByName('mues').Value:= muestra;
  qfind.Open;

  If (qfind.RecordCount > 0) Then
    result:= True
  else
   result:= False;
   FreeAndNil(qfind);
end;

procedure InsertarLabel;
var
 Qinsert    : TADOQuery;
 labelrecid : Integer;
begin
  if not Buscar_Labels(QfindLb.FieldByName('EntredaId').Value,
    QfindLb.FieldByName('PruebaId').Value) then
    begin
      Qinsert:= DM.NewQuery;
      DM.qrParametro.Close;
      DM.qrParametro.Open;

      labelrecid := 1; //DM.qrParametroSecuenciaLabel.Value;

      DM.qrParametro.Edit;
      //DM.qrParametroSecuenciaLabel.Value := DM.qrParametroSecuenciaLabel.Value + 1;
      DM.qrParametro.Post;

      Qinsert.Close;
      Qinsert.SQL.Text:= ' INSERT INTO PTLabel (MuestraNo, Secuencia, Sucursal, DeptId, PacienteId, '+
                         ' Descripcion, EntradaId, Recid, PruebaId) '+
                         ' VALUES (:,:1,:2,:3,:4,:5,:6,:7,:8)';
      Qinsert.Parameters[0].Value:= muestraact;
      Qinsert.Parameters[1].Value:= secuencia;
      Qinsert.Parameters[2].Value:= QfindLb.FieldByName('SucursalId').Value;
      Qinsert.Parameters[3].Value:= depact;
      Qinsert.Parameters[4].Value:= QfindLb.FieldByName('PacienteId').Value;
      Qinsert.Parameters[5].Value:= Descripcion;
      Qinsert.Parameters[6].Value:= QfindLb.FieldByName('EntredaId').Value;
      Qinsert.Parameters[7].Value:= labelrecid;
      Qinsert.Parameters[8].Value:= QfindLb.FieldByName('PruebaId').Value;
      Qinsert.ExecSQL;

      Qinsert.Close;
      Qinsert.SQL.Clear;
      Qinsert.SQL.Text:= ' INSERT INTO PTLabelseguimiento(RefRecid, Fecha, Hora, UserId, Accion, '+
                         ' Recid, PruebaId) VALUES (:0,:1,:2,:3,:4,:5,:6)';
      Qinsert.Parameters[0].Value:= labelrecid;
      Qinsert.Parameters[1].Value:= DM.SystemDate;
      Qinsert.Parameters[2].Value:= Copy(TimeToStr(Time), 1, 20);
      Qinsert.Parameters[3].Value:= DM.CurUser;
      Qinsert.Parameters[4].Value:= 0; //Entrada
      Qinsert.Parameters[5].Value:= labelrecid;
      Qinsert.Parameters[6].Value:= QfindLb.FieldByName('PruebaId').Value;
      Qinsert.ExecSQL;
      FreeAndNil(Qinsert);
    end;
end;

begin  // CrearLables
  qfindLb:= DM.NewQuery;
  qfindLb.Close;
  qfindLb.SQL.Text:= ' SELECT a.Entredaid, a.pacienteid, a.sucursalid, b.pruebaid, c.Descripcion, '+
                     '        c.alias, c.Departamento, c.Tipo, '+
                     '        RIGHT(' + #39 + '0000' + #39 + ' + LTRIM(STR(DATEPART(year, a.Fecha))), 2) + ' + #39 + '0' + #39 + ' + SUBstring(a.MuestraNo, 4, 2) AS MuestraNo '+
                     ' FROM PTEntradaPaciente a, PTEntradaPacienteDetalle b, ptPrueba c '+
                     ' WHERE a.EntredaId = '+ #39 + EntradaId + #39 +
                     ' AND b.Secuencia = ' + IntToStr(Secuencia) +
                     ' AND a.recid = b.refrecid '+
                     ' AND b.pruebaid = c.pruebaid '+
                     ' ORDER BY  c.Departamento,  b.pruebaid ';
  qfindLb.Open;
  secuencia := 1;
  secint    := 0;
  first     := true;
  faltanimp := false;

  while (not qfindLb.Eof) do
    begin
      //Envase.......
      Descripcion := QfindLb.FieldByName('Descripcion').Asstring;
      depact := QfindLb.FieldByName('Departamento').Asstring;
      muestraact := QfindLb.FieldByName('MuestraNo').Asstring;
      Descabr := Descabr + ' ' + QfindLb.FieldByName('Alias').Asstring;
      DescLarga := QfindLb.FieldByName('Descripcion').Asstring;
      muestraact := QfindLb.FieldByName('MuestraNo').Asstring;
      secint:= secint + 1;
      faltanimp:= true;
      secuencia:= secuencia + 1;
      InsertarLabel;
      qfindLb.Next;
    end;
end;

{procedure TfrmMain.InsertarLabel;
var
 Qinsert    : TADOQuery;
 QfindLb    : TADOQuery;
 labelrecid : Integer;
begin
 If Not Buscar_Labels(QfindLb.FieldByName('EntredaId').Value,
                      QfindLb.FieldByName('PruebaId').Value) Then
   begin
     Qinsert := DM.NewQuery;

     DM.qrParametro.Close;
     DM.qrParametro.Open;

     labelrecid := 1; //DM.qrParametroSecuenciaLabel.Value;

     DM.qrParametro.Edit;
     //DM.qrParametroSecuenciaLabel.Value := DM.qrParametroSecuenciaLabel.Value + 1;
     DM.qrParametro.Post;

     Qinsert.Close;
     Qinsert.SQL.Text := ' INSERT INTO PTLabel (MuestraNo, Secuencia, Sucursal, DeptId, PacienteId, '+
                         ' Descripcion, EntradaId, Recid, PruebaId) '+
                         ' VALUES (:,:1,:2,:3,:4,:5,:6,:7,:8)';
     Qinsert.Parameters[0].Value := muestraact;
     Qinsert.Parameters[1].Value := secuencia;
     Qinsert.Parameters[2].Value := QfindLb.FieldByName('SucursalId').Value;
     Qinsert.Parameters[3].Value := depact;
     Qinsert.Parameters[4].Value := QfindLb.FieldByName('PacienteId').Value;
     Qinsert.Parameters[5].Value := Descripcion;
     Qinsert.Parameters[6].Value := QfindLb.FieldByName('EntredaId').Value;
     Qinsert.Parameters[7].Value := labelrecid;
     Qinsert.Parameters[8].Value := QfindLb.FieldByName('PruebaId').Value;
     Qinsert.ExecSQL;

     Qinsert.Close;
     Qinsert.SQL.Clear;
     Qinsert.SQL.Text := ' INSERT INTO PTLabelseguimiento(RefRecid, Fecha, Hora, UserId, Accion, '+
                         ' Recid, PruebaId) VALUES (:0,:1,:2,:3,:4,:5,:6)';
     Qinsert.Parameters[0].Value := labelrecid;
     Qinsert.Parameters[1].Value := DM.SystemDate;
     Qinsert.Parameters[2].Value := Copy(TimeToStr(Time), 1, 20);
     Qinsert.Parameters[3].Value := DM.CurUser;
     Qinsert.Parameters[4].Value := 0; //Entrada
     Qinsert.Parameters[5].Value := labelrecid;
     Qinsert.Parameters[6].Value := QfindLb.FieldByName('PruebaId').Value;
     Qinsert.ExecSQL;

     FreeAndNil(Qinsert);
   end;
end;}

procedure TfrmMain.ImprimirLabel(EntradaId : string);
var
 qfind  : TADOQuery;
 texto  : TextFile;
 cadena : string;
Const
 LetraSec : array[1..27] of string = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N',
                                      'Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
  qfind:= DM.NewQuery;
  qfind.Close;
  qfind.SQL.Text:= ' SELECT a.*, c.Nombre FROM PTLabel a,  PTCliente c '+
                   ' WHERE a.EntradaId = '+ #39 + EntradaId + #39 +
                   ' AND a.PacienteId = c.ClienteId '+
                   //' AND a.Deptid = b.DepId AND a.PacienteId = c.ClienteId '+
                   ' AND a.PacienteId = c.ClienteId ORDER BY recid, secuencia';
  qfind.Open;
  while not qfind.Eof do
    begin
      cadena := 'c:\Barcode';
      assignfile(texto, cadena);
      rewrite(texto);

      writeln(texto,'N');
      writeln(texto,'N');
      writeln(texto,'q1200');
      writeln(texto,'Q200,30+0');
      writeln(texto,'S2');
      writeln(texto,'D8');
      writeln(texto,'ZT');
      writeln(texto,'B235,15,0,3,2,6,98,N,"' + Qfind.FieldByName('MuestraNo').Asstring+'"');
      writeln(texto,'A220,110,0,3,1,1,N,"' + Qfind.FieldByName('MuestraNo').Asstring + '-' +
                                         FormatFloat('000', Qfind.FieldByName('Sucursal').AsFloat) +
                                         Qfind.FieldByName('Sucursal').Asstring+'"');
      writeln(texto,'A415,110,0,1,1,1,N,"' + Qfind.FieldByName('DeptId').Asstring+'"');
      writeln(texto,'A230,130,0,2,1,1,N,"' + Qfind.FieldByName('Nombre').Asstring+'"');
      writeln(texto,'B500,130,0,3,2,3,50,N,"' + LetraSec[Qfind.FieldByName('Secuencia').AsInteger]+'"');
      writeln(texto,'A590,0,1,1,1,1,N,"' + DM.CurUser+'*"');
      writeln(texto,'A230,150,0,1,1,1,N,"' + Qfind.FieldByName('Descripcion').Asstring+'"');
      writeln(texto,'P1');
      system.closefile(texto);

      cadena := 'c:\barcode.bat';
      assignfile(texto, cadena);
      rewrite(texto);
      writeln(texto,'PRINT /d:lpt1 c:\barcode ');
      system.closefile(texto);
      //winexec('C:\barcode.bat',SW_SHOWNORMAL);
      winexec('print /d:lpt1 c:\barcode ',SW_SHOWNORMAL);
      //CreateProcess(NULL, "print /d:lpt1 c:\barcode ");
      qfind.Next;
    end;
end;

end.
