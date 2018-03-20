unit DataModule;

interface

uses
  ImgList, Controls, Graphics, Winsock,
  JvComponent, JvBaseDlg, JvDesktopAlert, JvMemoryDataset,
  DB, ADODB, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDBExtLookupComboBox, cxEditRepositoryItems, cxDBEditRepository, cxEdit,
  dxmdaset, Atexto, Classes, SysUtils, dxLayoutLookAndFeels,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  StdActns, ActnList, Menus, cxDBLookupComboBox, madExceptVcl,
  Types, Forms, JvPluginManager, JvStringHolder, SplashForm,
  cxExtEditRepositoryItems, JvAppStorage, JvAppXMLStorage, JvComponentBase,
  cxCurrencyEdit, PymeConst, ABSMain, IceLicense, TXComp, ppComm, ppRelatv,
  ppDB, ppDBPipe, cxCheckBox, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppStrtch, ppSubRpt, ppVar, ppMemo, Jpeg, LMDCustomComponent,
  LMDBaseController, LMDCustomContainer, LMDCustomImageList, LMDBitmapList;

type
  TDM = class(TDataModule)
    Database: TADOConnection;
    qrUserMenu: TADOQuery;
    qrParam: TADOQuery;
    qrParamColorConsulta: TIntegerField;
    qrParamColorAgregar: TIntegerField;
    qrParamColorEditar: TIntegerField;
    qrParamColorBorrar: TIntegerField;
    qrParamTituloEmpresa: TStringField;
    qrParamSubTituloEmpresa: TStringField;
    sqlCommand: TADOQuery;
    qrLogin: TADOQuery;
    qrLoginUserId: TStringField;
    qrLoginClave: TStringField;
    qrLoginNombre: TStringField;
    qrLoginRolID: TSmallintField;
    qrUserRol: TADOQuery;
    qrUserRolUserId: TStringField;
    qrUserRolRolID: TSmallintField;
    qrUserRolAdministrador: TBooleanField;
    qrUserRolDescripcion: TStringField;
    qrUserRolNombre: TStringField;
    qrParamSerial: TStringField;
    Letras: TLetras;
    cmdInsertCgTransacciones: TADOCommand;
    qrParamInterface: TIntegerField;
    mdDimensiones: TdxMemData;
    mdDimensionesTipo: TSmallintField;
    mdDimensionesNombre: TStringField;
    cxEditRepository: TcxEditRepository;
    cxTextEdit: TcxEditRepositoryTextItem;
    cxIntEdit: TcxEditRepositorySpinItem;
    cxCalcEdit: TcxEditRepositoryCalcItem;
    cxDateEdit: TcxEditRepositoryDateItem;
    cxComboBoxEdit: TcxEditRepositoryComboBoxItem;
    cxCheckBoxEdit: TcxEditRepositoryImageComboBoxItem;
    cxViewRepository: TcxGridViewRepository;
    qrRol: TADODataSet;
    qrUser: TADODataSet;
    qrRolRolID: TSmallintField;
    qrRolDescripcion: TStringField;
    qrRolAdministrador: TBooleanField;
    qrUserUserId: TStringField;
    qrUserClave: TStringField;
    qrUserNombre: TStringField;
    qrUserRolID: TSmallintField;
    qrMissingRights: TADODataSet;
    qrMissingRightsObjectID: TSmallintField;
    qrPermisos: TADODataSet;
    qrPermisosRolID: TSmallintField;
    qrPermisosOpcionID: TSmallintField;
    qrPermisosNivel: TSmallintField;
    dsDepartamento: TDataSource;
    cxPostadoSiNoAmbos: TcxEditRepositoryImageComboBoxItem;
    qrUserMenuRolId: TSmallintField;
    qrUserMenuOpcionId: TSmallintField;
    qrUserMenuNivel: TSmallintField;
    qrParamMenuFont: TStringField;
    qrParamFormsFont: TStringField;
    qrUserRolInterface: TIntegerField;
    qrUserRolMenuFont: TStringField;
    qrUserRolFormsFont: TStringField;
    cxIcTodoGrupoTabla: TcxEditRepositoryImageComboBoxItem;
    cxIcIvDimField: TcxEditRepositoryImageComboBoxItem;
    memVoucher: TJvMemoryData;
    qrCoGrupoDesc: TADOQuery;
    dsCoGrupoDesc: TDataSource;
    qrCoGrupoPrecio: TADOQuery;
    dsCoGrupoPrecio: TDataSource;
    qrCoGrupoBono: TADOQuery;
    dsCoGrupoBono: TDataSource;
    dsVeSecciones: TDataSource;
    qrZona: TADOQuery;
    dsZona: TDataSource;
    dsSubZona: TDataSource;
    qrSubZona: TADOQuery;
    icTodoTabla: TcxEditRepositoryImageComboBoxItem;
    qrUserInterface: TIntegerField;
    qrUserMenuFont: TStringField;
    qrUserFormsFont: TStringField;
    qrUserMultipleVentanas: TBooleanField;
    qrUserRolDesarrollador: TBooleanField;
    qrUserRolMultipleVentanas: TBooleanField;
    InfoAlert: TJvDesktopAlert;
    ilMessages: TImageList;
    qrFavoritos: TADOQuery;
    qrUserRolDescuentoTope: TFloatField;
    qrUserRolCambiarPrecio: TBooleanField;
    q: TADOQuery;
    cxDateMaskEdit: TcxEditRepositoryMaskItem;
    JvPluginManager: TJvPluginManager;
    SupportInfo: TJvStrHolder;
    qrGrupoEquipo: TADOQuery;
    dsGrupoEquipo: TDataSource;
    qrTecnicos: TADOQuery;
    dsTecnicos: TDataSource;
    qrEquipo: TADOQuery;
    dsEquipo: TDataSource;
    qrConceptoMO: TADOQuery;
    qrConceptoCO: TADOQuery;
    qrConceptoGA: TADOQuery;
    qrConceptoIG: TADOQuery;
    dsConceptoMO: TDataSource;
    dsConceptoCO: TDataSource;
    dsConceptoGA: TDataSource;
    dsConceptoIG: TDataSource;
    qrOrdenesEntrada: TADOQuery;
    dsOrdenesEntrada: TDataSource;
    cxSvProgressBar: TcxEditRepositoryProgressBar;
    conXmlFile: TJvAppXMLFileStorage;
    ApplDb: TABSDatabase;
    IceLicense: TIceLicense;
    ApplInfo: TABSQuery;
    ApplEmpresas: TABSTable;
    qrParamDireccion: TStringField;
    qrParamPais: TStringField;
    qrParamCiudad: TStringField;
    qrParamEstado: TStringField;
    qrParamZipCode: TStringField;
    qrParamDireccionWeb: TStringField;
    qrParameMail: TStringField;
    qrParamTelefono: TStringField;
    qrParamFax: TStringField;
    qrParamRNC: TStringField;
    qrProcesos: TABSQuery;
    qrProcesosProcesoId: TStringField;
    qrProcesosDescripcion: TStringField;
    qrProcesosScript: TMemoField;
    dsProcesos: TDataSource;
    cxLcProcesos: TcxEditRepositoryLookupComboBoxItem;
    qrSucursal: TADOQuery;
    dsSucursal: TDataSource;
    ppSucursal: TppDBPipeline;
    qrDoctor: TADOQuery;
    dsDoctor: TDataSource;
    ExtraOptions1: TExtraOptions;
    qrPacientes: TADOQuery;
    dsPacientes: TDataSource;
    qrProyecto: TADOQuery;
    qrProyectoProyectoID: TStringField;
    qrProyectoDescripcion: TStringField;
    qrProyectoClienteID: TStringField;
    qrProyectoEstatus: TIntegerField;
    dsProyecto: TDataSource;
    qrClientes: TADOQuery;
    dsClientes: TDataSource;
    qrFlebotomistas: TADOQuery;
    dsFlebotomistas: TDataSource;
    qrParametro: TADOQuery;
    qrParametroSecuenciaEntrada: TLargeintField;
    qrParametroSecuencia: TLargeintField;
    qrParametroSecuenciaPaciente: TIntegerField;
    qrParametroRNC: TStringField;
    qrParametroSecuenciaDev: TLargeintField;
    qrParametroSecuenciaCot: TLargeintField;
    qrParametroIndetificadorFactura: TStringField;
    qrParametroIdentificadorDevolucion: TStringField;
    qrParametroIdentificadorCotizacion: TStringField;
    qrParametroImprimirAlGrabar: TBooleanField;
    dsParametro: TDataSource;
    ppParametro: TppDBPipeline;
    icFormaEntregaPruebas: TcxEditRepositoryImageComboBoxItem;
    vwDoctores: TcxGridDBTableView;
    vwDoctoresDoctorID: TcxGridDBColumn;
    vwDoctoresNombre: TcxGridDBColumn;
    vwProyectos: TcxGridDBTableView;
    vwProyectosProyectoID: TcxGridDBColumn;
    vwProyectosDescripcion: TcxGridDBColumn;
    vwProyectosEstatus: TcxGridDBColumn;
    vwFlebotomista: TcxGridDBTableView;
    vwFlebotomistaEstatus: TcxGridDBColumn;
    vwFlebotomistaFlebotomistaID: TcxGridDBColumn;
    vwFlebotomistaDescripcion: TcxGridDBColumn;
    elcDoctores: TcxEditRepositoryExtLookupComboBoxItem;
    elcProyecto: TcxEditRepositoryExtLookupComboBoxItem;
    elcFlebotomista: TcxEditRepositoryExtLookupComboBoxItem;
    qrEntradaPacienteCons: TADOQuery;
    dsEntradaPacienteCons: TDataSource;
    qrParametroIdentificadorMuestra: TStringField;
    qrParametroSecuenciaMuestra: TLargeintField;
    qrGrupoCliente: TADOQuery;
    dsGrupoCliente: TDataSource;
    vwGrupoCliente: TcxGridDBTableView;
    elcGrupoCliente: TcxEditRepositoryExtLookupComboBoxItem;
    vwGrupoClienteGrupoCliente: TcxGridDBColumn;
    vwGrupoClienteDescripcion: TcxGridDBColumn;
    qrParametroAutoNumerarClientes: TBooleanField;
    qrParametroSecuenciaCliente: TLargeintField;
    qrParametroAutoNumerarPacientes: TBooleanField;
    qrParametroAutoNumerarPruebas: TBooleanField;
    qrParametroSecuenciaPruebas: TLargeintField;
    vwClientes: TcxGridDBTableView;
    vwClientesClienteID: TcxGridDBColumn;
    vwClientesNombre: TcxGridDBColumn;
    vwClientesGrupoCliente: TcxGridDBColumn;
    elcClientes: TcxEditRepositoryExtLookupComboBoxItem;
    vwPacientes: TcxGridDBTableView;
    elcPacientes: TcxEditRepositoryExtLookupComboBoxItem;
    qrGrupoPrueba: TADOQuery;
    dsGrupoPrueba: TDataSource;
    vwGrupoPrueba: TcxGridDBTableView;
    vwGrupoPruebaGrupoPruebaID: TcxGridDBColumn;
    vwGrupoPruebaDescripcion: TcxGridDBColumn;
    elcGrupoPrueba: TcxEditRepositoryExtLookupComboBoxItem;
    ppParam: TppDBPipeline;
    dsParam: TDataSource;
    qrParametroImprimirAlGrabarRecibo: TBooleanField;
    qrParametroImprimirAlGrabarFacturaSeg: TBooleanField;
    qrParametroNotaFacturaSeguro: TMemoField;
    qrParametroNotaFacturaPaciente: TMemoField;
    qrParametroNotaFacturaNoSeguro: TMemoField;
    qrParametroIdentificadorRecibo: TStringField;
    qrParametroSecuenciaRecibo: TLargeintField;
    ppImpReciboSinSeguro: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLabel84: TppLabel;
    ppDBText95: TppDBText;
    ppLabel85: TppLabel;
    ppLabel88: TppLabel;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBText100: TppDBText;
    ppLabel91: TppLabel;
    ppDBText101: TppDBText;
    ppLabel92: TppLabel;
    ppDBText102: TppDBText;
    ppLabel93: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel94: TppLabel;
    ppDBText105: TppDBText;
    ppLabel95: TppLabel;
    ppDBText106: TppDBText;
    ppLabel96: TppLabel;
    ppDBText107: TppDBText;
    qrCobro: TADOQuery;
    dsCobro: TDataSource;
    ppCobro: TppDBPipeline;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPacienteDetalle: TDataSource;
    ppEntradaPacienteDetalle: TppDBPipeline;
    qrCobroDetalle: TADOQuery;
    dsCobroDetalle: TDataSource;
    ppCobroDetalle: TppDBPipeline;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    qrCobroDetalleCobroID: TStringField;
    qrCobroDetalleFormaDePagoID: TStringField;
    qrCobroDetalleMonto: TBCDField;
    qrCobroDetalleOrden: TIntegerField;
    qrCobroDetallerecid: TLargeintField;
    qrCobroDetalleRefRecid: TLargeintField;
    qrCobroDetalleFormaDePagoID_1: TStringField;
    qrCobroDetalleOrden_1: TIntegerField;
    qrCobroDetalleDescripcion: TStringField;
    ppImpReciboConSeguro: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel3: TppLabel;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText8: TppDBText;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppLabel10: TppLabel;
    ppDBText13: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppDBText16: TppDBText;
    ppLabel13: TppLabel;
    ppDBText17: TppDBText;
    ppLabel14: TppLabel;
    ppDBText18: TppDBText;
    ppLabel15: TppLabel;
    ppDBText19: TppDBText;
    ppLabel16: TppLabel;
    ppDBText20: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    qrMonedas: TADOQuery;
    dsMonedas: TDataSource;
    qrMonedasMoneadaID: TStringField;
    qrMonedasDescripcion: TStringField;
    qrMonedasSimbolo: TStringField;
    qrMonedasCuentaBeneficio: TStringField;
    qrMonedasCuentaPerdida: TStringField;
    lcMonedas: TcxEditRepositoryLookupComboBoxItem;
    vwPruebas: TcxGridDBTableView;
    vwPruebasPruebaID: TcxGridDBColumn;
    vwPruebasDescripcion: TcxGridDBColumn;
    elcPruebas: TcxEditRepositoryExtLookupComboBoxItem;
    ppLabel99: TppLabel;
    ppDBText110: TppDBText;
    ppLabel11: TppLabel;
    ppDBText15: TppDBText;
    qrParametroIdentificadorNC: TStringField;
    qrParametroSecuenciaNC: TLargeintField;
    qrParametroImprimirAlGrabarNC: TBooleanField;
    ppImpNCSinSeguro: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel17: TppLabel;
    ppDBText25: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText26: TppDBText;
    ppLabel20: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText29: TppDBText;
    ppLabel23: TppLabel;
    ppDBText30: TppDBText;
    ppLabel24: TppLabel;
    ppDBText31: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText32: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel27: TppLabel;
    ppDBText35: TppDBText;
    ppLabel28: TppLabel;
    ppDBText36: TppDBText;
    ppLabel29: TppLabel;
    ppDBText37: TppDBText;
    ppLabel30: TppLabel;
    ppDBText38: TppDBText;
    ppLabel31: TppLabel;
    ppDBText39: TppDBText;
    ppImpNCConSeguro: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLabel32: TppLabel;
    ppDBText44: TppDBText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText45: TppDBText;
    ppShape3: TppShape;
    ppLabel35: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText48: TppDBText;
    ppLabel38: TppLabel;
    ppDBText49: TppDBText;
    ppLabel39: TppLabel;
    ppDBText50: TppDBText;
    ppLabel40: TppLabel;
    ppDBText51: TppDBText;
    ppDetailBand7: TppDetailBand;
    ppDBText52: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel41: TppLabel;
    ppDBText53: TppDBText;
    ppLabel42: TppLabel;
    ppDBText54: TppDBText;
    ppLabel43: TppLabel;
    ppDBText55: TppDBText;
    ppLabel44: TppLabel;
    ppDBText56: TppDBText;
    ppLabel45: TppLabel;
    ppDBText57: TppDBText;
    icTipoCliente: TcxEditRepositoryImageComboBoxItem;
    qrCiudad: TADOQuery;
    dsCiudad: TDataSource;
    qrCiudadCiudadID: TStringField;
    qrCiudadDescripcion: TStringField;
    vwCiudad: TcxGridDBTableView;
    vwCiudadCiudadID: TcxGridDBColumn;
    vwCiudadDescripcion: TcxGridDBColumn;
    elcCiudad: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroPreciosBaseDolares: TBooleanField;
    qrParametroMonedaDolares: TStringField;
    qrParametroMonedaID: TStringField;
    qrEspecialidad: TADOQuery;
    dsEspecialidad: TDataSource;
    qrEspecialidadEspecialidadID: TStringField;
    qrEspecialidadDescripcion: TStringField;
    vwEspecialidad: TcxGridDBTableView;
    vwEspecialidadEspecialidadID: TcxGridDBColumn;
    vwEspecialidadDescripcion: TcxGridDBColumn;
    elcEspecialidad: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroAutoNumerarDoctor: TBooleanField;
    qrParametroSecuenciaDoctor: TIntegerField;
    vwPacientesClienteID: TcxGridDBColumn;
    vwPacientesNombre: TcxGridDBColumn;
    vwPacientesTelefono: TcxGridDBColumn;
    qrSeguros: TADOQuery;
    dsSeguros: TDataSource;
    vwSeguros: TcxGridDBTableView;
    vwSegurosClienteID: TcxGridDBColumn;
    vwSegurosNombre: TcxGridDBColumn;
    elcSeguro: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroSecuenciaCuadre: TLargeintField;
    qrParametroIdentificadorCuadre: TStringField;
    ppCorteCajaDetRep: TppDBPipeline;
    dsCorteCajaDetRep: TDataSource;
    qrCorteCajaDetRep: TADOQuery;
    ppImpCuadreCaja: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel46: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText41: TppDBText;
    ppLabel50: TppLabel;
    ppDBText58: TppDBText;
    ppLabel51: TppLabel;
    ppDBText59: TppDBText;
    ppLabel52: TppLabel;
    ppDBText60: TppDBText;
    ppLine3: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel55: TppLabel;
    lbdiferencia: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    lbtipo: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine5: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLine9: TppLine;
    qrGastosVarios: TADOQuery;
    dsGastosVarios: TDataSource;
    qrGastosVariosGastoVarioId: TStringField;
    qrGastosVariosDescripcion: TStringField;
    vwGastosVarios: TcxGridDBTableView;
    vwGastosVariosGastoVarioId: TcxGridDBColumn;
    vwGastosVariosDescripcion: TcxGridDBColumn;
    elcGastosVarios: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroDiasEntrePruebas: TIntegerField;
    qrParametroAutoNumerarCombos: TBooleanField;
    qrParametroSecuenciaCombos: TLargeintField;
    qrPruebas: TADOQuery;
    dsPruebas: TDataSource;
    qrParamRutaReportes: TStringField;
    qrParametroClienteLaboratorio: TStringField;
    qrParametroAutoNumerarTarjetas: TBooleanField;
    qrParametroSecuenciaTarjetas: TLargeintField;
    cxIcTodoGrupoTablaTarjetaDescuentos: TcxEditRepositoryImageComboBoxItem;
    qrTarjetasDesc: TADOQuery;
    dsTarjetasDesc: TDataSource;
    qrTarjetasDescTarjetaID: TStringField;
    qrTarjetasDescDescripcion: TStringField;
    qrTarjetasDescDigitos: TSmallintField;
    qrTarjetasDescContacto: TStringField;
    qrTarjetasDescTelefono: TStringField;
    qrTarjetasDescInterno: TBooleanField;
    qrTarjetasDescFactorPuntos: TBCDField;
    qrTarjetasDescDescuento: TBCDField;
    vwTarjetaDescuento: TcxGridDBTableView;
    vwTarjetaDescuentoTarjetaID: TcxGridDBColumn;
    vwTarjetaDescuentoDescripcion: TcxGridDBColumn;
    elcTarjetaDescuento: TcxEditRepositoryExtLookupComboBoxItem;
    qrPlanesEmpresa: TADOQuery;
    dsPlanesEmpresa: TDataSource;
    qrClientesPlanes: TADOQuery;
    dsClientesPlanes: TDataSource;
    qrPlanesCombos: TADOQuery;
    dsPlanesCombos: TDataSource;
    qrClientesPlanesPlanId: TStringField;
    qrClientesPlanesEmpresaID: TStringField;
    qrClientesPlanesEmpleadoID: TStringField;
    qrClientesPlanesClienteID: TStringField;
    qrClientesPlanesCodigoAxapta: TStringField;
    qrClientesPlanesIdentificacion: TStringField;
    qrClientesPlanesNombre: TStringField;
    qrClientesPlanesDepartamento: TStringField;
    qrClientesPlanesContacto: TStringField;
    qrClientesPlanesTelefono: TStringField;
    qrClientesPlanesTelefono2: TStringField;
    qrClientesPlanesFax: TStringField;
    qrClientesPlanesDireccion: TMemoField;
    qrClientesPlanesCiudadID: TStringField;
    qrClientesPlanesemail: TStringField;
    qrClientesPlanesSexo: TIntegerField;
    qrClientesPlanesFechaNacimiento: TDateTimeField;
    qrClientesPlanesAlias: TStringField;
    qrClientesPlanesTipoSangre: TStringField;
    qrPlanesEmpresaPlanId: TStringField;
    qrPlanesEmpresaClienteID: TStringField;
    qrPlanesEmpresaCodigoAxapta: TStringField;
    qrPlanesEmpresaIdentificacion: TStringField;
    qrPlanesEmpresaNombre: TStringField;
    qrPlanesEmpresaTelefono: TStringField;
    qrPlanesEmpresaTelefono2: TStringField;
    qrPlanesEmpresaFax: TStringField;
    qrPlanesEmpresaDireccion: TMemoField;
    qrPlanesEmpresaCiudadID: TStringField;
    qrPlanesEmpresaemail: TStringField;
    qrPlanesEmpresaFecha: TDateTimeField;
    qrPlanesEmpresaTotalPacientes: TIntegerField;
    qrPlanesEmpresaAdicionales: TIntegerField;
    qrPlanesCombosPlanId: TStringField;
    qrPlanesCombosCodigoId: TStringField;
    qrPlanesCombosPruebaID: TStringField;
    qrPlanesCombosClienteID: TStringField;
    qrPlanesCombosDescripcion: TStringField;
    qrPlanesCombosNombreCliente: TStringField;
    qrPlanesCombosEstatus: TBooleanField;
    qrPlanesCombosLinea: TIntegerField;
    qrParametroAutoNumerarPlanes: TBooleanField;
    qrParametroSecuenciaPlanes: TLargeintField;
    qrPlanesEmpresaEstatus: TBooleanField;
    qrParametroAutoNumerarPlanCombo: TBooleanField;
    qrParametroSecuenciaPlanCombo: TLargeintField;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    qrParametroClienteCap: TStringField;
    qrParametroClientePlanAnual: TStringField;
    ppDBText40: TppDBText;
    qrDiasProcesamiento: TADOQuery;
    dsDiasProcesamiento: TDataSource;
    qrUnidades: TADOQuery;
    qrUnidadesUnidad: TStringField;
    qrUnidadesDescripcion: TStringField;
    dsUnidades: TDataSource;
    qrMateriales: TADOQuery;
    qrMaterialesMaterialId: TStringField;
    qrMaterialesDescripcion: TStringField;
    dsMateriales: TDataSource;
    qrDepartamentos: TADOQuery;
    dsDepartamentos: TDataSource;
    qrParametroSecuenciaAct: TLargeintField;
    qrParametroSecuenciaLabel: TLargeintField;
    vwDiasProcesamiento: TcxGridDBTableView;
    vwDiasProcesamientoCodDiasProc: TcxGridDBColumn;
    vwDiasProcesamientoDescripcion: TcxGridDBColumn;
    vwUnidades: TcxGridDBTableView;
    vwUnidadesUnidad: TcxGridDBColumn;
    vwUnidadesDescripcion: TcxGridDBColumn;
    vwMateriales: TcxGridDBTableView;
    vwMaterialesMaterialId: TcxGridDBColumn;
    vwMaterialesDescripcion: TcxGridDBColumn;
    vwDepartamento: TcxGridDBTableView;
    vwDepartamentoDepid: TcxGridDBColumn;
    vwDepartamentoDescripcion: TcxGridDBColumn;
    elcDiasProcesamiento: TcxEditRepositoryExtLookupComboBoxItem;
    elcUnidades: TcxEditRepositoryExtLookupComboBoxItem;
    elcMateriales: TcxEditRepositoryExtLookupComboBoxItem;
    elcDepartamento: TcxEditRepositoryExtLookupComboBoxItem;
    ppLabel54: TppLabel;
    ppDBText22: TppDBText;
    ppDBText61: TppDBText;
    ppDBText14: TppDBText;
    ppImpReciboTemp: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDBText21: TppDBText;
    ppDBText62: TppDBText;
    ppLabel56: TppLabel;
    ppDBText65: TppDBText;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDBText66: TppDBText;
    ppShape4: TppShape;
    ppLabel59: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppLabel60: TppLabel;
    ppLabel63: TppLabel;
    ppDBText69: TppDBText;
    ppLabel64: TppLabel;
    ppDBText70: TppDBText;
    ppLabel65: TppLabel;
    ppDBText71: TppDBText;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText72: TppDBText;
    ppDetailBand8: TppDetailBand;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLabel68: TppLabel;
    ppDBText75: TppDBText;
    ppLabel72: TppLabel;
    ppDBText79: TppDBText;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand9: TppDetailBand;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLabel73: TppLabel;
    qrCobroTemp: TADOQuery;
    dsCobroTemp: TDataSource;
    ppCobroTemp: TppDBPipeline;
    qrCobroDetalleMonedaID: TStringField;
    qrCobroDetalleMontoMST: TBCDField;
    qrCobroDetalleMoneda: TStringField;
    qrClientesPlanesComboId: TStringField;
    qrClientesPlanesLinea: TLargeintField;
    qrClientesPlanesSangre: TBooleanField;
    qrClientesPlanesOrina: TBooleanField;
    qrClientesPlanesEsputo: TBooleanField;
    qrClientesPlanesGarganta: TBooleanField;
    qrClientesPlanesNail: TBooleanField;
    qrClientesPlanesFechaSangre: TDateTimeField;
    qrClientesPlanesFechaOrina: TDateTimeField;
    qrClientesPlanesFechaEsputo: TDateTimeField;
    qrClientesPlanesFechaGarganta: TDateTimeField;
    qrClientesPlanesFechaNail: TDateTimeField;
    qrClientesPlanesMuestraId: TStringField;
    qrClientesPlanesEstatus: TStringField;
    qrClientesPlanesCargo: TStringField;
    qrClientesPlanesEdad: TIntegerField;
    qrClientesPlanesSucursal: TStringField;
    qrClientesPlanesPacienteCiaId: TStringField;
    qrClientesPlanesTomado: TBooleanField;
    qrClientesPlanesImpreso: TBooleanField;
    qrClientesPlanesGenerado: TBooleanField;
    qrPlanesEmpresaFechaInicial: TDateTimeField;
    qrPlanesEmpresaFechaFinal: TDateTimeField;
    qrPlanesEmpresaMuestraActual: TIntegerField;
    qrPlanesEmpresaMuestraInicial: TIntegerField;
    qrPlanesEmpresaMuestraFinal: TIntegerField;
    qrPlanesEmpresaAlias: TStringField;
    qrPlanesEmpresaPacienteCiaId: TStringField;
    qrParametroDireccion: TMemoField;
    qrParametroNotaExterior: TStringField;
    qrParametroEmpresa: TStringField;
    ppImpReciboExterior: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppDBText76: TppDBText;
    ppDBText78: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBText82: TppDBText;
    ppShape5: TppShape;
    ppDBText84: TppDBText;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText85: TppDBText;
    ppLabel77: TppLabel;
    ppDBText86: TppDBText;
    ppLabel78: TppLabel;
    ppDBText87: TppDBText;
    ppLabel79: TppLabel;
    ppDBText88: TppDBText;
    ppDetailBand10: TppDetailBand;
    ppDBDescripcion: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLabel82: TppLabel;
    ppDBText92: TppDBText;
    ppLabel83: TppLabel;
    ppDBText97: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand11: TppDetailBand;
    ppLabel97: TppLabel;
    ppDBText109: TppDBText;
    ppDBText111: TppDBText;
    ppDBComentario: TppDBMemo;
    ppShape7: TppShape;
    ppShape8: TppShape;
    dsMuestras: TDataSource;
    qrMuestras: TADOQuery;
    qrMuestrasDescripcion: TStringField;
    qrMuestrasCodigoAxapta: TStringField;
    vwMuestras: TcxGridDBTableView;
    elcMuestras: TcxEditRepositoryExtLookupComboBoxItem;
    qrMuestrasTipoID: TIntegerField;
    vwMuestrasTipoID: TcxGridDBColumn;
    vwMuestrasDescripcion: TcxGridDBColumn;
    ppLabel69: TppLabel;
    ppDBText77: TppDBText;
    ppDBText83: TppDBText;
    ppLabel74: TppLabel;
    ppDBText89: TppDBText;
    qrConceptoNotas: TADOQuery;
    dsConceptoNotas: TDataSource;
    qrConceptoNotasConceptoId: TStringField;
    qrConceptoNotasDescripcion: TStringField;
    vwConceptoNotas: TcxGridDBTableView;
    vwConceptoNotasConceptoId: TcxGridDBColumn;
    vwConceptoNotasDescripcion: TcxGridDBColumn;
    elcConceptoNotas: TcxEditRepositoryExtLookupComboBoxItem;
    ppDBText90: TppDBText;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppDBText91: TppDBText;
    qrParametroNotaFacturaExterior: TMemoField;
    qrClientesPlanesTipoImpresion: TStringField;
    qrPlanesEmpresaTipoImpresion: TStringField;
    qrMuestrasTipoAS400: TStringField;
    qrTarjetasDescBono: TBooleanField;
    qrTarjetasDescNumeroUnico: TBooleanField;
    qrTarjetasDescNumeroObligatorio: TBooleanField;
    qrClientesCLIENTEID: TStringField;
    qrClientesNOMBRE: TStringField;
    qrClientesCONTACTO: TStringField;
    qrClientesTELEFONO: TStringField;
    qrClientesFAX: TStringField;
    qrClientesGRUPOCLIENTE: TStringField;
    qrClientesINCLUIRPRECIOTICKET: TIntegerField;
    qrClientesAUTOCONFIRMAR: TIntegerField;
    qrClientesEMPLEADOID: TStringField;
    qrClientesCODIGOAXAPTA: TStringField;
    qrClientesEMAIL: TStringField;
    qrClientesDIRECCIONWEB: TStringField;
    qrClientesTELEFONO2: TStringField;
    qrClientesMONEDAID: TStringField;
    qrClientesIDENTIFICACION: TStringField;
    qrClientesORIGEN: TIntegerField;
    qrClientesCIUDADID: TStringField;
    qrClientesPRUEBASPORDIA: TIntegerField;
    qrClientesCOBERTURAPORC: TBCDField;
    qrClientesPRINCIPAL: TStringField;
    qrClientesENVIORESULTADO: TIntegerField;
    qrClientesPUBLICARINTERNET: TIntegerField;
    qrClientesSEXO: TIntegerField;
    qrClientesFECHANACIMIENTO: TDateTimeField;
    qrClientesSEGURO: TStringField;
    qrClientesCARNETNUMERO: TStringField;
    qrClientesPOLIZA: TStringField;
    qrClientesCOBRARDIFERENCIA: TIntegerField;
    qrClientesENVIARFAX: TIntegerField;
    qrClientesACTIVARDESCUENTOS: TIntegerField;
    qrClientesUSARALIASNOMBRE: TIntegerField;
    qrClientesUSARALIASPRUEBAS: TIntegerField;
    qrClientesSIEMPREINTERNET: TIntegerField;
    qrClientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrClientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrClientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrClientesUSARACUERDOPROPIO: TIntegerField;
    qrClientesALIAS: TStringField;
    qrClientesQUIENPAGA: TStringField;
    qrClientesTIPOCLIENTE: TStringField;
    qrClientesENTREGARRESULTADOS: TStringField;
    qrClientesTEXTOREFERENCIA: TStringField;
    qrClientesSIEMPREIMPRIMIR: TIntegerField;
    qrClientesTIPOSANGRE: TStringField;
    qrClientesPACIENTECIAID: TStringField;
    qrClientesSECTOR: TStringField;
    qrClientesUSUARIOINTERNET: TStringField;
    qrClientesCLAVEINTERNET: TStringField;
    qrClientesESTATUS: TIntegerField;
    qrClientesTIPOINTERNET: TStringField;
    qrClientesCLASECREDITO: TStringField;
    qrClientesDOCTORID: TStringField;
    qrClientesTIPOCLIENTEAS400: TIntegerField;
    qrClientesDATAAREAID: TStringField;
    qrClientesRECID: TIntegerField;
    qrFlebotomistasFLEBOTOMISTAID: TStringField;
    qrFlebotomistasDESCRIPCION: TStringField;
    qrFlebotomistasESTATUS: TIntegerField;
    qrFlebotomistasCODIGOAXAPTA: TStringField;
    qrFlebotomistasDATAAREAID: TStringField;
    qrFlebotomistasRECID: TIntegerField;
    qrGrupoClienteGRUPOCLIENTE: TStringField;
    qrGrupoClienteDESCRIPCION: TStringField;
    qrGrupoClienteCODIGOAXAPTA: TStringField;
    qrGrupoClienteCOMENTARIO: TMemoField;
    qrGrupoClienteDATAAREAID: TStringField;
    qrGrupoClienteRECID: TIntegerField;
    qrGrupoPruebaGRUPOPRUEBA: TStringField;
    qrGrupoPruebaDESCRIPCION: TStringField;
    qrGrupoPruebaCODIGOAXAPTA: TStringField;
    qrGrupoPruebaCOMENTARIO: TMemoField;
    qrGrupoPruebaDATAAREAID: TStringField;
    qrGrupoPruebaRECID: TIntegerField;
    qrSucursalNOMBRE: TStringField;
    qrSucursalSUCURSALID: TStringField;
    qrSucursalDIRECCION: TMemoField;
    qrSucursalTELEFONO: TStringField;
    qrSucursalFAX: TStringField;
    qrSucursalCLIENTEID: TStringField;
    qrSucursalGRUPOID: TStringField;
    qrSucursalCLIENTE_UNO: TStringField;
    qrSucursalCLIENTE_DOS: TStringField;
    qrSucursalIMPRESIONES: TIntegerField;
    qrSucursalDATAAREAID: TStringField;
    qrSucursalRECID: TIntegerField;
    qrDepartamentosDEPID: TStringField;
    qrDepartamentosDESCRIPCION: TStringField;
    qrDepartamentosDATAAREAID: TStringField;
    qrDepartamentosRECID: TIntegerField;
    qrDoctorDOCTORID: TStringField;
    qrDoctorNOMBRE: TStringField;
    qrDoctorCONTACTO: TStringField;
    qrDoctorTELEFONO: TStringField;
    qrDoctorFAX: TStringField;
    qrDoctorCODIGOAXAPTA: TStringField;
    qrDoctorEMAIL: TStringField;
    qrDoctorCELULAR: TStringField;
    qrDoctorDIRECCION: TMemoField;
    qrDoctorCIUDADID: TStringField;
    qrDoctorRESULTADODOCTOR: TIntegerField;
    qrDoctorESPECIALIDADID: TStringField;
    qrDoctorPUBLICARINTERNET: TIntegerField;
    qrDoctorCODIGORESULTADO: TStringField;
    qrDoctorUSUARIOINTERNET: TStringField;
    qrDoctorCLAVEINTERNET: TStringField;
    qrDoctorCOMISION: TBCDField;
    qrDoctorDIRECCIONCONSULTA2: TMemoField;
    qrDoctorDIRECCIONCONSULTA1: TMemoField;
    qrDoctorESPECIALIDAD: TStringField;
    qrDoctorCODIGOWEB: TStringField;
    qrDoctorDATAAREAID: TStringField;
    qrDoctorRECID: TIntegerField;
    qrSegurosCLIENTEID: TStringField;
    qrSegurosNOMBRE: TStringField;
    qrSegurosCONTACTO: TStringField;
    qrSegurosTELEFONO: TStringField;
    qrSegurosFAX: TStringField;
    qrSegurosGRUPOCLIENTE: TStringField;
    qrSegurosINCLUIRPRECIOTICKET: TIntegerField;
    qrSegurosAUTOCONFIRMAR: TIntegerField;
    qrSegurosEMPLEADOID: TStringField;
    qrSegurosCODIGOAXAPTA: TStringField;
    qrSegurosEMAIL: TStringField;
    qrSegurosDIRECCIONWEB: TStringField;
    qrSegurosTELEFONO2: TStringField;
    qrSegurosMONEDAID: TStringField;
    qrSegurosIDENTIFICACION: TStringField;
    qrSegurosORIGEN: TIntegerField;
    qrSegurosCIUDADID: TStringField;
    qrSegurosPRUEBASPORDIA: TIntegerField;
    qrSegurosCOBERTURAPORC: TBCDField;
    qrSegurosPRINCIPAL: TStringField;
    qrSegurosENVIORESULTADO: TIntegerField;
    qrSegurosPUBLICARINTERNET: TIntegerField;
    qrSegurosSEXO: TIntegerField;
    qrSegurosFECHANACIMIENTO: TDateTimeField;
    qrSegurosSEGURO: TStringField;
    qrSegurosCARNETNUMERO: TStringField;
    qrSegurosPOLIZA: TStringField;
    qrSegurosCOBRARDIFERENCIA: TIntegerField;
    qrSegurosENVIARFAX: TIntegerField;
    qrSegurosACTIVARDESCUENTOS: TIntegerField;
    qrSegurosUSARALIASNOMBRE: TIntegerField;
    qrSegurosUSARALIASPRUEBAS: TIntegerField;
    qrSegurosSIEMPREINTERNET: TIntegerField;
    qrSegurosIMPRIMIRALIASNOMBRE: TIntegerField;
    qrSegurosIMPRIMIRALIASPRUEBA: TIntegerField;
    qrSegurosIMPRIMIRSOLOTOTALES: TIntegerField;
    qrSegurosIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrSegurosUSARACUERDOPROPIO: TIntegerField;
    qrSegurosALIAS: TStringField;
    qrSegurosQUIENPAGA: TStringField;
    qrSegurosTIPOCLIENTE: TStringField;
    qrSegurosENTREGARRESULTADOS: TStringField;
    qrSegurosTEXTOREFERENCIA: TStringField;
    qrSegurosSIEMPREIMPRIMIR: TIntegerField;
    qrSegurosTIPOSANGRE: TStringField;
    qrSegurosPACIENTECIAID: TStringField;
    qrSegurosSECTOR: TStringField;
    qrSegurosUSUARIOINTERNET: TStringField;
    qrSegurosCLAVEINTERNET: TStringField;
    qrSegurosESTATUS: TIntegerField;
    qrSegurosTIPOINTERNET: TStringField;
    qrSegurosCLASECREDITO: TStringField;
    qrSegurosDOCTORID: TStringField;
    qrSegurosTIPOCLIENTEAS400: TIntegerField;
    qrSegurosDATAAREAID: TStringField;
    qrSegurosRECID: TIntegerField;
    qrCobroCobroID: TStringField;
    qrCobroTurnoID: TStringField;
    qrCobroEntradaID: TStringField;
    qrCobroSucursalID: TStringField;
    qrCobroFecha: TDateTimeField;
    qrCobroHora: TStringField;
    qrCobroPacienteID: TStringField;
    qrCobroPacientePrincipalID: TStringField;
    qrCobroUsuarioID: TStringField;
    qrCobroTotalCobrado: TBCDField;
    qrCobrorefRecid: TLargeintField;
    qrCobroTotalFactura: TBCDField;
    qrCobroTotalPagado: TBCDField;
    qrCobroPendienteFactura: TBCDField;
    qrCobroPendienteCobro: TBCDField;
    qrCobroReciboNo: TStringField;
    qrCobroClienteID: TStringField;
    qrCobroAplicado: TBooleanField;
    qrCobroSecuencia: TLargeintField;
    qrCobroMonedaID: TStringField;
    qrCobroTipoDoc: TStringField;
    qrCobroCuadreGlobal: TStringField;
    qrCobroCuadreUsuario: TStringField;
    qrCobroConcepto: TStringField;
    qrCobroTempCobroID: TStringField;
    qrCobroTempTurnoID: TStringField;
    qrCobroTempEntradaID: TStringField;
    qrCobroTempSucursalID: TStringField;
    qrCobroTempFecha: TDateTimeField;
    qrCobroTempHora: TStringField;
    qrCobroTempPacienteID: TStringField;
    qrCobroTempPacientePrincipalID: TStringField;
    qrCobroTempUsuarioID: TStringField;
    qrCobroTempTotalCobrado: TBCDField;
    qrCobroTemprefRecid: TLargeintField;
    qrCobroTempTotalFactura: TBCDField;
    qrCobroTempTotalPagado: TBCDField;
    qrCobroTempPendienteFactura: TBCDField;
    qrCobroTempPendienteCobro: TBCDField;
    qrCobroTempReciboNo: TStringField;
    qrCobroTempClienteID: TStringField;
    qrCobroTempAplicado: TBooleanField;
    qrCobroTempSecuencia: TLargeintField;
    qrCobroTempMonedaID: TStringField;
    qrCobroTempTipoDoc: TStringField;
    qrCobroTempCuadreGlobal: TStringField;
    qrCobroTempCuadreUsuario: TStringField;
    qrCobroTempConcepto: TStringField;
    qrDiasProcesamientoCODDIASPROC: TStringField;
    qrDiasProcesamientoDESCRIPCION: TStringField;
    qrDiasProcesamientoLUNES: TIntegerField;
    qrDiasProcesamientoMARTES: TIntegerField;
    qrDiasProcesamientoMIERCOLES: TIntegerField;
    qrDiasProcesamientoJUEVES: TIntegerField;
    qrDiasProcesamientoVIERNES: TIntegerField;
    qrDiasProcesamientoSABADO: TIntegerField;
    qrDiasProcesamientoDOMINGO: TIntegerField;
    qrDiasProcesamientoDATAAREAID: TStringField;
    qrDiasProcesamientoRECID: TIntegerField;
    qrPruebasPRUEBAID: TStringField;
    qrPruebasALIAS: TStringField;
    qrPruebasDESCRIPCION: TStringField;
    qrPruebasESTATUS: TIntegerField;
    qrPruebasGRUPOPRUEBAID: TStringField;
    qrPruebasDEPARTAMENTO: TStringField;
    qrPruebasPRECIO: TBCDField;
    qrPruebasPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasCODIGOAXAPTA: TStringField;
    qrPruebasPRECIODOLARES: TBCDField;
    qrPruebasCOSTO: TBCDField;
    qrPruebasEXTERIOR: TIntegerField;
    qrPruebasFACTURARCABECERA: TIntegerField;
    qrPruebasPRUEBAS: TIntegerField;
    qrPruebasTIPO: TStringField;
    qrPruebasORINA: TIntegerField;
    qrPruebasSANGRE: TIntegerField;
    qrPruebasCODDIAPROC: TStringField;
    qrPruebasDIASRESULTADO: TIntegerField;
    qrPruebasUNIDAD: TStringField;
    qrPruebasABREVIACION: TStringField;
    qrPruebasTIPOMUESTRA: TIntegerField;
    qrPruebasMEDIO: TIntegerField;
    qrPruebasCOLOR: TIntegerField;
    qrPruebasDEPID: TStringField;
    qrPruebasTIPOAS400: TStringField;
    qrPruebasCODIGOIDAS400: TStringField;
    qrPruebasMEDIOAS400: TStringField;
    qrPruebasNOPROCESAR: TIntegerField;
    qrPruebasDATAAREAID: TStringField;
    qrPruebasRECID: TIntegerField;
    qrPacientesCLIENTEID: TStringField;
    qrPacientesNOMBRE: TStringField;
    qrPacientesCONTACTO: TStringField;
    qrPacientesTELEFONO: TStringField;
    qrPacientesFAX: TStringField;
    qrPacientesGRUPOCLIENTE: TStringField;
    qrPacientesINCLUIRPRECIOTICKET: TIntegerField;
    qrPacientesAUTOCONFIRMAR: TIntegerField;
    qrPacientesEMPLEADOID: TStringField;
    qrPacientesCODIGOAXAPTA: TStringField;
    qrPacientesEMAIL: TStringField;
    qrPacientesDIRECCIONWEB: TStringField;
    qrPacientesTELEFONO2: TStringField;
    qrPacientesMONEDAID: TStringField;
    qrPacientesIDENTIFICACION: TStringField;
    qrPacientesORIGEN: TIntegerField;
    qrPacientesCIUDADID: TStringField;
    qrPacientesPRUEBASPORDIA: TIntegerField;
    qrPacientesCOBERTURAPORC: TBCDField;
    qrPacientesPRINCIPAL: TStringField;
    qrPacientesENVIORESULTADO: TIntegerField;
    qrPacientesPUBLICARINTERNET: TIntegerField;
    qrPacientesSEXO: TIntegerField;
    qrPacientesFECHANACIMIENTO: TDateTimeField;
    qrPacientesSEGURO: TStringField;
    qrPacientesCARNETNUMERO: TStringField;
    qrPacientesPOLIZA: TStringField;
    qrPacientesCOBRARDIFERENCIA: TIntegerField;
    qrPacientesENVIARFAX: TIntegerField;
    qrPacientesACTIVARDESCUENTOS: TIntegerField;
    qrPacientesUSARALIASNOMBRE: TIntegerField;
    qrPacientesUSARALIASPRUEBAS: TIntegerField;
    qrPacientesSIEMPREINTERNET: TIntegerField;
    qrPacientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrPacientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrPacientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrPacientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrPacientesUSARACUERDOPROPIO: TIntegerField;
    qrPacientesALIAS: TStringField;
    qrPacientesQUIENPAGA: TStringField;
    qrPacientesTIPOCLIENTE: TStringField;
    qrPacientesENTREGARRESULTADOS: TStringField;
    qrPacientesTEXTOREFERENCIA: TStringField;
    qrPacientesSIEMPREIMPRIMIR: TIntegerField;
    qrPacientesTIPOSANGRE: TStringField;
    qrPacientesPACIENTECIAID: TStringField;
    qrPacientesSECTOR: TStringField;
    qrPacientesUSUARIOINTERNET: TStringField;
    qrPacientesCLAVEINTERNET: TStringField;
    qrPacientesESTATUS: TIntegerField;
    qrPacientesTIPOINTERNET: TStringField;
    qrPacientesCLASECREDITO: TStringField;
    qrPacientesDOCTORID: TStringField;
    qrPacientesTIPOCLIENTEAS400: TIntegerField;
    qrPacientesDATAAREAID: TStringField;
    qrPacientesRECID: TIntegerField;
    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    qrEntradaPacienteDetalleCODIGOCUPID: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaPacienteDetalleREFRECID: TIntegerField;
    qrEntradaPacienteDetalleSECUENCIA: TIntegerField;
    qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
    qrEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    qrEntradaPacienteDetalleTIPOAS400: TStringField;
    qrEntradaPacienteDetalleCODIGOAS400: TStringField;
    qrEntradaPacienteDetalleMEDIOAS400: TStringField;
    qrEntradaPacienteDetalleDESCPCT: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteDetalleRECID: TIntegerField;
    qrPacientesDIRECCION: TStringField;
    qrPruebasCONDPACIENTE: TStringField;
    qrPruebasCONDMUESTRA: TStringField;
    qrPruebasCOMENTARIONOPROCESAR: TStringField;
    qrClientesDIRECCION: TStringField;
    qrSegurosDIRECCION: TStringField;
    qrParametroGrupoAcc: TStringField;
    qrParametroGrupoCli: TStringField;
    qrParametroGrupoEmp: TStringField;
    qrParametroGrupoLab: TStringField;
    qrParametroGrupoPriv: TStringField;
    qrParametroGrupoSeg: TStringField;
    qrParametroGrupoVip: TStringField;
    qrParametroGrupoCia: TStringField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrCobroENTRADAID_1: TStringField;
    qrCobroFECHA_1: TDateTimeField;
    qrCobroHORAENTRADA: TStringField;
    qrCobroPACIENTEID_1: TStringField;
    qrCobroCLIENTEID_1: TStringField;
    qrCobroDOCTORID: TStringField;
    qrCobroPOLIZAID: TStringField;
    qrCobroENCLINICA: TIntegerField;
    qrCobroRECORDCLINICA: TStringField;
    qrCobroNUMEROHABITACION: TStringField;
    qrCobroFECHAENTRADA: TDateTimeField;
    qrCobroFECHADEALTA: TDateTimeField;
    qrCobroRESULTADOPACIENTE: TIntegerField;
    qrCobroRESULTADODOCTOR: TIntegerField;
    qrCobroFECHAPROMETIDA: TDateTimeField;
    qrCobroHORAPROMETIDA: TStringField;
    qrCobroFLEBOTOMISTAID: TStringField;
    qrCobroNOTA: TStringField;
    qrCobroPROYECTOID: TStringField;
    qrCobroRECORDID: TIntegerField;
    qrCobroBRUTO: TBCDField;
    qrCobroDESCUENTO: TBCDField;
    qrCobroSUBTOTAL: TBCDField;
    qrCobroNETO: TBCDField;
    qrCobroNOMBREPACIENTE: TStringField;
    qrCobroDIRECCION: TStringField;
    qrCobroTELEFONOS: TStringField;
    qrCobroTELEFONO2: TStringField;
    qrCobroEMAIL: TStringField;
    qrCobroCLIENTENOMBRE: TStringField;
    qrCobroSUCURSALID_1: TStringField;
    qrCobroUSERID: TStringField;
    qrCobroCOBROID_1: TStringField;
    qrCobroTOTALPAGADO_1: TBCDField;
    qrCobroPRIORIDAD: TIntegerField;
    qrCobroFAX: TStringField;
    qrCobroTIPODOCUMENTO: TIntegerField;
    qrCobroCOBERTURAPORC: TBCDField;
    qrCobroCOBERTURASEGURO: TBCDField;
    qrCobroCOBERTURAVALOR: TBCDField;
    qrCobroDESCUENTOPORC: TBCDField;
    qrCobroDESCUENTOVALOR: TBCDField;
    qrCobroDESCUENTOBONO: TBCDField;
    qrCobroORIGEN: TStringField;
    qrCobroAPROBACIONNO: TStringField;
    qrCobroAPROBACIONPOR: TStringField;
    qrCobroCOBERTURARECHAZADA: TIntegerField;
    qrCobroCOBERTURACONFIRMADA: TIntegerField;
    qrCobroFECHAASEGURADORA: TDateTimeField;
    qrCobroMUESTRANO: TStringField;
    qrCobroMONEDAID_1: TStringField;
    qrCobroCOBERTURAEXPPORC: TIntegerField;
    qrCobroEDADPACIENTE: TIntegerField;
    qrCobroSEXO: TIntegerField;
    qrCobroNOMBREDOCTOR: TStringField;
    qrCobroPUBLICARINTERNET: TIntegerField;
    qrCobroCARNET: TStringField;
    qrCobroPUBLICARINTERNETDOCTOR: TIntegerField;
    qrCobroCUADREGLOBAL_1: TStringField;
    qrCobroCUADREUSUARIO_1: TStringField;
    qrCobroDESCAUTORIZADOPOR: TStringField;
    qrCobroGASTOSVARIOS: TBCDField;
    qrCobroNOAS400: TIntegerField;
    qrCobroNOAXAPTA: TIntegerField;
    qrCobroNOFACTURA: TIntegerField;
    qrCobroFACTEXTERIOR: TIntegerField;
    qrCobroHOLD: TIntegerField;
    qrCobroREPMUESTRA: TIntegerField;
    qrCobroENTRADAIDANT: TStringField;
    qrCobroTIPOENTRADA: TStringField;
    qrCobroFORMADEPAGO: TStringField;
    qrCobroDESCUENTOCARD: TStringField;
    qrCobroDESCUENTOTEXTO: TStringField;
    qrCobroACUERDOPROPIO: TIntegerField;
    qrCobroCLIENTEPADRE: TStringField;
    qrCobroDESCUENTOPLANID: TStringField;
    qrCobroFECHAREGISTRO: TDateTimeField;
    qrCobroHORAREGISTRO: TStringField;
    qrCobroTASA: TBCDField;
    qrCobroESTATUS: TIntegerField;
    qrCobroTIPOCLIENTEAS400: TIntegerField;
    qrCobroCLASECREDITO: TStringField;
    qrCobroCARNETNUMERO: TStringField;
    qrCobroCLIENTEPADREAXAPTA: TStringField;
    qrCobroPACIENTEIDAXAPTA: TStringField;
    qrCobroCLIENTEIDAXAPTA: TStringField;
    qrCobroDOCTORIDAXAPTA: TStringField;
    qrCobroDATAAREAID: TStringField;
    qrCobroRECID: TIntegerField;
    qrCobroTempCLIENTEID_1: TStringField;
    qrCobroTempNOMBRE: TStringField;
    qrCobroTempCONTACTO: TStringField;
    qrCobroTempTELEFONO: TStringField;
    qrCobroTempFAX: TStringField;
    qrCobroTempGRUPOCLIENTE: TStringField;
    qrCobroTempINCLUIRPRECIOTICKET: TIntegerField;
    qrCobroTempAUTOCONFIRMAR: TIntegerField;
    qrCobroTempEMPLEADOID: TStringField;
    qrCobroTempCODIGOAXAPTA: TStringField;
    qrCobroTempEMAIL: TStringField;
    qrCobroTempDIRECCIONWEB: TStringField;
    qrCobroTempTELEFONO2: TStringField;
    qrCobroTempMONEDAID_1: TStringField;
    qrCobroTempIDENTIFICACION: TStringField;
    qrCobroTempORIGEN: TIntegerField;
    qrCobroTempDIRECCION: TStringField;
    qrCobroTempCIUDADID: TStringField;
    qrCobroTempPRUEBASPORDIA: TIntegerField;
    qrCobroTempCOBERTURAPORC: TBCDField;
    qrCobroTempPRINCIPAL: TStringField;
    qrCobroTempENVIORESULTADO: TIntegerField;
    qrCobroTempPUBLICARINTERNET: TIntegerField;
    qrCobroTempSEXO: TIntegerField;
    qrCobroTempFECHANACIMIENTO: TDateTimeField;
    qrCobroTempSEGURO: TStringField;
    qrCobroTempCARNETNUMERO: TStringField;
    qrCobroTempPOLIZA: TStringField;
    qrCobroTempCOBRARDIFERENCIA: TIntegerField;
    qrCobroTempENVIARFAX: TIntegerField;
    qrCobroTempACTIVARDESCUENTOS: TIntegerField;
    qrCobroTempUSARALIASNOMBRE: TIntegerField;
    qrCobroTempUSARALIASPRUEBAS: TIntegerField;
    qrCobroTempSIEMPREINTERNET: TIntegerField;
    qrCobroTempIMPRIMIRALIASNOMBRE: TIntegerField;
    qrCobroTempIMPRIMIRALIASPRUEBA: TIntegerField;
    qrCobroTempIMPRIMIRSOLOTOTALES: TIntegerField;
    qrCobroTempIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrCobroTempUSARACUERDOPROPIO: TIntegerField;
    qrCobroTempALIAS: TStringField;
    qrCobroTempQUIENPAGA: TStringField;
    qrCobroTempTIPOCLIENTE: TStringField;
    qrCobroTempENTREGARRESULTADOS: TStringField;
    qrCobroTempTEXTOREFERENCIA: TStringField;
    qrCobroTempSIEMPREIMPRIMIR: TIntegerField;
    qrCobroTempTIPOSANGRE: TStringField;
    qrCobroTempPACIENTECIAID: TStringField;
    qrCobroTempSECTOR: TStringField;
    qrCobroTempUSUARIOINTERNET: TStringField;
    qrCobroTempCLAVEINTERNET: TStringField;
    qrCobroTempESTATUS: TIntegerField;
    qrCobroTempTIPOINTERNET: TStringField;
    qrCobroTempCLASECREDITO: TStringField;
    qrCobroTempDOCTORID: TStringField;
    qrCobroTempTIPOCLIENTEAS400: TIntegerField;
    qrCobroTempDATAAREAID: TStringField;
    qrCobroTempRECID: TIntegerField;
    qrEntradaPacienteConsENTRADAID: TStringField;
    qrEntradaPacienteConsFECHA: TDateTimeField;
    qrEntradaPacienteConsHORAENTRADA: TStringField;
    qrEntradaPacienteConsPACIENTEID: TStringField;
    qrEntradaPacienteConsCLIENTEID: TStringField;
    qrEntradaPacienteConsDOCTORID: TStringField;
    qrEntradaPacienteConsPOLIZAID: TStringField;
    qrEntradaPacienteConsENCLINICA: TIntegerField;
    qrEntradaPacienteConsRECORDCLINICA: TStringField;
    qrEntradaPacienteConsNUMEROHABITACION: TStringField;
    qrEntradaPacienteConsFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteConsFECHADEALTA: TDateTimeField;
    qrEntradaPacienteConsRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteConsRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteConsFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteConsHORAPROMETIDA: TStringField;
    qrEntradaPacienteConsFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteConsNOTA: TStringField;
    qrEntradaPacienteConsPROYECTOID: TStringField;
    qrEntradaPacienteConsRECORDID: TIntegerField;
    qrEntradaPacienteConsBRUTO: TBCDField;
    qrEntradaPacienteConsDESCUENTO: TBCDField;
    qrEntradaPacienteConsSUBTOTAL: TBCDField;
    qrEntradaPacienteConsNETO: TBCDField;
    qrEntradaPacienteConsNOMBREPACIENTE: TStringField;
    qrEntradaPacienteConsDIRECCION: TStringField;
    qrEntradaPacienteConsTELEFONOS: TStringField;
    qrEntradaPacienteConsTELEFONO2: TStringField;
    qrEntradaPacienteConsEMAIL: TStringField;
    qrEntradaPacienteConsCLIENTENOMBRE: TStringField;
    qrEntradaPacienteConsSUCURSALID: TStringField;
    qrEntradaPacienteConsUSERID: TStringField;
    qrEntradaPacienteConsCOBROID: TStringField;
    qrEntradaPacienteConsTOTALPAGADO: TBCDField;
    qrEntradaPacienteConsPRIORIDAD: TIntegerField;
    qrEntradaPacienteConsFAX: TStringField;
    qrEntradaPacienteConsTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteConsCOBERTURAPORC: TBCDField;
    qrEntradaPacienteConsCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteConsCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteConsDESCUENTOPORC: TBCDField;
    qrEntradaPacienteConsDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteConsDESCUENTOBONO: TBCDField;
    qrEntradaPacienteConsORIGEN: TStringField;
    qrEntradaPacienteConsAPROBACIONNO: TStringField;
    qrEntradaPacienteConsAPROBACIONPOR: TStringField;
    qrEntradaPacienteConsCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteConsCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteConsFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteConsMUESTRANO: TStringField;
    qrEntradaPacienteConsMONEDAID: TStringField;
    qrEntradaPacienteConsCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteConsEDADPACIENTE: TIntegerField;
    qrEntradaPacienteConsSEXO: TIntegerField;
    qrEntradaPacienteConsNOMBREDOCTOR: TStringField;
    qrEntradaPacienteConsPUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteConsCARNET: TStringField;
    qrEntradaPacienteConsPUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteConsCUADREGLOBAL: TStringField;
    qrEntradaPacienteConsCUADREUSUARIO: TStringField;
    qrEntradaPacienteConsDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteConsGASTOSVARIOS: TBCDField;
    qrEntradaPacienteConsNOAS400: TIntegerField;
    qrEntradaPacienteConsNOAXAPTA: TIntegerField;
    qrEntradaPacienteConsNOFACTURA: TIntegerField;
    qrEntradaPacienteConsFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteConsHOLD: TIntegerField;
    qrEntradaPacienteConsREPMUESTRA: TIntegerField;
    qrEntradaPacienteConsENTRADAIDANT: TStringField;
    qrEntradaPacienteConsTIPOENTRADA: TStringField;
    qrEntradaPacienteConsFORMADEPAGO: TStringField;
    qrEntradaPacienteConsDESCUENTOCARD: TStringField;
    qrEntradaPacienteConsDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteConsACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteConsCLIENTEPADRE: TStringField;
    qrEntradaPacienteConsDESCUENTOPLANID: TStringField;
    qrEntradaPacienteConsFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteConsHORAREGISTRO: TStringField;
    qrEntradaPacienteConsTASA: TBCDField;
    qrEntradaPacienteConsESTATUS: TIntegerField;
    qrEntradaPacienteConsTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteConsCLASECREDITO: TStringField;
    qrEntradaPacienteConsCARNETNUMERO: TStringField;
    qrEntradaPacienteConsCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacienteConsPACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteConsCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteConsDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteConsDATAAREAID: TStringField;
    qrEntradaPacienteConsRECID: TIntegerField;
    qrCorteCajaDetRepCorteID: TStringField;
    qrCorteCajaDetRepTipo: TStringField;
    qrCorteCajaDetRepFormaDePagoId: TStringField;
    qrCorteCajaDetRepValor: TBCDField;
    qrCorteCajaDetRepFormaDePagoID_1: TStringField;
    qrCorteCajaDetRepOrden: TIntegerField;
    qrCorteCajaDetRepDescripcion: TStringField;
    qrCorteCajaDetRepMoneda: TStringField;
    qrCorteCajaDetRepCorteId_1: TStringField;
    qrCorteCajaDetRepFecha: TDateTimeField;
    qrCorteCajaDetRepHora: TStringField;
    qrCorteCajaDetRepUsuario: TStringField;
    qrCorteCajaDetRepSucursalId: TStringField;
    ppLabel53: TppLabel;
    qrClientesAPELLIDOS: TStringField;
    qrClientesSEX: TStringField;
    qrClientesEdad: TIntegerField;
    qrClientesNOMBRE1: TStringField;
    qrTiposDocumentos: TADOQuery;
    dsTiposDocumentos: TDataSource;
    qrClientesTipoDocumentoId: TIntegerField;
    qrClientesUserIdCrea: TStringField;
    qrClientesUserIdModifica: TStringField;
    qrClientesFechaModifica: TDateTimeField;
    Qutilitario: TADOQuery;
    Imagenes: TLMDBitmapList;
    Qdatosdonacion: TADOQuery;
    DSdatosdonacion: TDataSource;
    qrClientesFechaRegistro: TDateTimeField;
    QdatosdonacionDonacionID: TStringField;
    QdatosdonacionMuestraNo: TStringField;
    QdatosdonacionFecha: TDateTimeField;
    QdatosdonacionPacienteID: TStringField;
    QdatosdonacionNOMBRE: TStringField;
    QdatosdonacionNOMBRE1: TStringField;
    QdatosdonacionAPELLIDOS: TStringField;
    QdatosdonacionTipoDonante: TWideStringField;
    QdatosdonacionTipoSangre: TWideStringField;
    QdatosdonacionDonanteActivo: TSmallintField;
    QdatosdonacionRH: TWideStringField;
    QdatosdonacionISTBDonacion: TStringField;
    QdatosdonacionREACTIVO: TStringField;
    ADOQuery1: TADOQuery;
    qrPreciosCategorias: TADOQuery;
    qrPreciosCategoriasSECUENCIA: TAutoIncField;
    qrPreciosCategoriasPRODUCTOID: TStringField;
    qrPreciosCategoriasGRUPOCLIENTE: TStringField;
    qrPreciosCategoriasTIPOCLIENTE: TStringField;
    qrPreciosCategoriasPRECIO: TFloatField;
    qrPreciosCategoriasESTATUS: TStringField;
    dsPreciosCategorias: TDataSource;
    qrTipoCliente: TADOQuery;
    qrClientesSUCURSALID: TStringField;
    qrCobroSUCURSAL: TStringField;
    ppLabel86: TppLabel;
    ppDBText96: TppDBText;
    ppLabel87: TppLabel;
    ppDBText108: TppDBText;
    qrClientesCOLECTA_MOVIL: TStringField;
    Qclinicas: TADOQuery;
    dsClinicas: TDataSource;
    qrClientesCLINICA_CODIGO: TIntegerField;
    procedure qrClientesNewRecord(DataSet: TDataSet);
    procedure QdatosdonacionCalcFields(DataSet: TDataSet);
    procedure ppDetailBand10BeforePrint(Sender: TObject);

    procedure ppSummaryBand5BeforePrint(Sender: TObject);
    procedure ppImpCuadreCajaBeforePrint(Sender: TObject);
    procedure ppDetailBand5AfterPrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure elcDoctoresPropertiesInitPopup(Sender: TObject);
    procedure qrEntradaPacienteConsCalcFields(DataSet: TDataSet);
    procedure ApplDbChangeDatabaseSettingsProgress(Sender: TObject;
      PercentDone: Integer; var Continue: Boolean);
    procedure ApplDbAfterChangeDatabaseSettings(Sender: TObject);
    procedure ApplDbBeforeChangeDatabaseSettings(Sender: TObject);
    procedure ApplEmpresasNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure LookUpEditInitPopup(Sender: TObject);
    procedure qrParamNewRecord(DataSet: TDataSet);
    procedure ExceptionAlertMessageClick(Sender: TObject);
    procedure DatabaseWillExecute(Connection: TADOConnection;
      var CommandText: WideString; var CursorType: TCursorType;
      var LockType: TADOLockType; var CommandType: TCommandType;
      var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
      const Command: _Command; const Recordset: _Recordset);
    procedure DatabaseExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure JvPluginManagerNewCommand(Sender: TObject; ACaption, AHint,
      AData: String; AShortCut: TShortCut; ABitmap: TBitmap;
      AEvent: TNotifyEvent);
    procedure DataModuleDestroy(Sender: TObject);
    procedure IceLicenseAppKeyIncorrect(Sender: TObject);
    procedure IceLicenseCheckError(Sender: TObject);
    procedure IceLicenseClockMovedBack(Sender: TObject);
    procedure IceLicenseExeModified(Sender: TObject);
    procedure IceLicenseLicenseExpired(Sender: TObject);
    procedure IceLicenseLicenseFileError(Sender: TObject);
    procedure IceLicenseLicenseInfo(UserName, UserCompanyName, Software, Vendor,
      DateCreation, Expiration, HardwareLocked, NetworkControl,
      NetworkUser: String);
    procedure IceLicenseLicenseInvalid(Sender: TObject);
    procedure IceLicenseNetworkError(Sender: TObject);
    procedure IceLicenseNetworkMaxUser(Sender: TObject);
    procedure IceLicenseNetworkReject(Sender: TObject);
    procedure IceLicenseRegistered(LicenseActivKey: String);
    procedure IceLicenseTrial(Sender: TObject);
    procedure IceLicenseTrialExpired(Sender: TObject);
    procedure IceLicenseTrialProgress(Status: String);
  private
    { Private declarations }
   _frozen          : boolean;
   _exceptObject    : TObject;
   _exceptAddr      : pointer;
   _crashedThreadId : dword;
   _bugReport   : string;
   _screenShot  : string;
   _canContinue : boolean;
   _handled     : boolean;
//OJO - JUAN JOSE   FSystemDate  : TDateTime;
   FSystemDate  : TDate;
   frmSplashForm : TfrmSplashForm;
    procedure LicenseError(Texto: String; Terminate: Boolean);
    procedure SetIsAdmin;
    procedure SyncMenuRights;
    procedure ApplyLicenseFile;
  published
    procedure OpenCompany(FileName: String); virtual;
//OJO - JUAN JOSE    property  SystemDate : TDateTime read FSystemDate write FSystemDate;
    property  SystemDate : TDate read FSystemDate write FSystemDate;
    procedure SetCompanyOptions;//Created with Castalia Extract Method Refactoring
  public
    Autorizado: boolean;
    CambiarPrecio: boolean;
    DescuentoTope: Real;
    { Public declarations }
    ColorConsulta : Integer;
    ColorAgrega : Integer;
    ColorModifica : Integer;
    ColorBorra : Integer;
    ColorReady : Integer;
    ColorUrgente : Integer;
    CurInterface : Integer;
    CurCompanyFile : String;
    SupportURL : String;
    SupporteMail : String;
    MenuFont : String;
    FormFont : String;
    IsActivated : Boolean;
    IsLogged   : Boolean;
    IsAdmin    : Boolean;
    IsDeveloper : Boolean;
    CurUser    : String;
    CurSucursal : String;
    CurRol     : Integer;
    SingleWindow : Boolean;
    TituloEmpresa : String;
    SubTituloEmpresa : String;
    RncEmpresa : String;
    DireciconEmpresa : String;
    TelefonoEmprea : String;
    FaxEmpresa : String;
    eMailEmpresa : String;
    urlEmpresa : String;
    SysApplFolder: string;
    CurCompany: string;
    ValorAbonar : Double;
    TipoPago    : String;
    CodigoClinica : integer;
    NombreClinica : String;
    NombAplicacion,NombreExe, tipoproducto : String;
    NumeroSucursar : integer;
    NombreSucursal : String;
    Function FindConceptoCuenta(Concepto: String): String;
    Function FindConceptoImpuesto(Concepto: String): String;
    Function GetLookupFormTag( sName : String ) : Integer;
    Function GetSecurity( iOpcion  : Integer ) : Integer;
    function CheckUser(UserId, Clave: string): Boolean;
    Function HashString( Texto : String ) : String;
    Function Verifica_Version(App : String) : String;
    procedure SplitCalc(aText: string; aList: TStringList);
    procedure SetInfoPosition;
    procedure Info( Texto : String );
    procedure Warning( Texto : String );
    procedure Error(Texto: String);
    procedure ListErrors(Texto: TStrings);
    function il_Cg : Boolean;
    function il_Bc : Boolean;
    function il_Cc : Boolean;
    function il_Cp : Boolean;
    function il_In : Boolean;
    function il_Fa : Boolean;
    function il_Co : Boolean;
    function il_No : Boolean;
    function il_Sv : Boolean;
    procedure SetUserOptions;
    procedure CheckOrSetCompanyName( Name : String );
    function  NewQuery: TAdoQuery; overload;
    function  Find(Sql : String; Params : String) : TADOQuery;
    function Redondeo(valor: double):double;
    function CalcMora(_prestamoNo,_cuotaNo : integer) : Double;
    function Mensaje(mensg : pchar;botones : word) : integer;
    function Tasa(fecha : TDAteTime; moneda : string) : Double;
    function ValorMoneda(valor: Double; frommoneda : string; tomoneda : string; fecha : TDateTime) : Double;
    function PrecioPrueba(prueba, cliente, moneda: string) : Double;
    function PrecioPruebaCosto(prueba, cliente, moneda: string) : Double;
    function PrecioPruebaMoneda(prueba, cliente, moneda: string) : Double;
    function CoberturaPrueba(prueba,cliente,moneda : string) : Double;
    function CoberturaPruebaMoneda(prueba: string; cliente: string; moneda: string) : Double;
    function CoberturaPruebaPorc(prueba,cliente,moneda : string) : Integer;
    function CoberturaPruebaMonedaPorc(prueba: string; cliente: string; moneda: string) : Integer;
    function DescuentoUsuario(_user : string) : Double;
    function CoberturaAplica(cliente : String ;paciente : String;curaplicada : Integer; refrecid : integer) : Integer;
    function CoberturaPermitida(cliente : string) : integer;
    function CurCoberturaAplicada(refrecid : integer) : Integer;
    function DescTarjetaBono(tarjeta, numero : String) : double;
    function DescCliente(cliente: string) : Double;
    function TotalGastosVarios(_refrecid : integer) : Double;
    function TotalGastosVariosUsa(_refrecid : integer) : Double;
    function Rellenar(valor :string; cantidad :integer; clave :string; posicion  :string):String;
    function CodigoProducto(nombre : string) : string;
    procedure VerificarGastosVarios(cliente: string;_refrecid : Integer);
    Procedure NewQuery( var qrAdo : TADOQuery ); overload;
    function BuscarFotoCedulado(qryFind:TAdoQuery;MunCed,SeqCed,VerCed:String):TJPEGImage;
    function BuscarSecuenciaSucursal(id : string) : integer;
    procedure AppError(Texto: String;
                       frozen          : boolean;
                       exceptObject    : TObject;
                       exceptAddr      : pointer;
                       crashedThreadId : dword;
                       var bugReport   : string;
                       var screenShot  : string;
                       var canContinue : boolean;
                       var handled     : boolean);
end;

function EncryptKey(sKey: String): String;
Function GetTableNameByDataSet(ADataSet: TDataSet) : String;
function DecryptKey(sKey: String): String;


const
  ColorInfoFrom       =  $00FADAC4;
  ColorInfoTo         =  $00F5BFA0;
  ColorWarningFrom    = $00C5F9FA;
  ColorWarningTo      = $00A2F4F2;
  ColorErrorFrom      = $00C5C5FA;
  ColorErrorTo        = $00A2A4F4;


var
  DM                  : TDM;
  il_UserName         : String;
  il_UserCompanyName  : String;
  il_Software         : String;
  il_Vendor           : String;
  il_DateCreation     : String;
  il_Expiration       : String;
  il_HardwareLocked   : String;
  il_ProgramState     : String;
  il_License          : String;
  il_PcID             : String;
  il_NetworkControl   : String;
  il_NetworkUser      : String;
  il_IsTrial          : Boolean;
  il_TrialDays        : Integer;
  ValorFormaPagoE     : Double;
  ValorFormaPagoI     : Double;
  Version_App         : String;
  findAcuerdoCom,bCambio_Ver : Boolean;
implementation

uses StrUtils, Dialogs, JclStrings, Main, Math, madExcept, DateUtils,
  ReportsDM, Splash, ActionsDM, DialogDbSetup, ApplDbChangeSettings;

{$R *.dfm}

{ TDM }

function TDM.BuscarFotoCedulado(qryFind:TAdoQuery;MunCed,SeqCed,VerCed:String):TJPEGImage;
var
  vFotoJpeg:TADOBlobStream;
  vFoto: TJPEGImage;
begin
  Result := nil;
  with qryfind, sql do
  begin
    close;
    clear;
    add('select * from dbo.vwCeduladosFotos');
    add('where mun_ced = '+QuotedStr(MunCed));
    add('and seq_ced   = '+QuotedStr(SeqCed));
    add('and ver_ced   = '+QuotedStr(VerCed));
    open;
    if not IsEmpty then
    begin
      vFotoJpeg := TADOBlobStream.Create(TBlobField(FieldByName('Imagen')),bmRead);
      vFotoJpeg.Position := 0;
      vFoto := TJPEGImage.Create;
      vFoto.LoadFromStream(vFotoJpeg);
      Result := vFoto;
      FreeAndNil(vFotoJpeg);
    end;
  end;
end;

function TDM.BuscarSecuenciaSucursal(id: string): integer;
begin
  With Qutilitario Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT ISNULL(SUCURSAL,50) As suc FROM PTSUCURSAL');
     Sql.Add('where sucursalid = ' + #39 + id + #39 );
     Open;
     if Qutilitario.RecordCount > 0 then
       Result:= Qutilitario.Fieldbyname('suc').AsInteger
       else
        Result:= 50;

     end;
end;

function TDM.CoberturaPermitida(cliente: string) : integer;
var
 qfindpermitido : TADOQuery;
begin
 qfindpermitido := DM.Find('Select * from PTCliente Where ClienteID = :cli',cliente);
 result := qfindpermitido.FieldByName('PruebasPorDia').AsInteger;
 FreeAndNil(qfindpermitido);
end;

function TDM.CoberturaAplica(cliente : String ;paciente : String; curaplicada : Integer; refrecid : integer) : Integer;
var
 qfind : TADOQuery;
 permitido : integer;
begin
 qfind := DM.NewQuery;
 permitido := CoberturaPermitida(cliente);

 if permitido > 0 then
 begin
  qfind.Close;
  qfind.SQL.Text := ' Select recid from ptEntradaPaciente c,ptEntradaPacienteDetalle d '+
                    ' where c.recid = d.refrecid '+
                    ' and c.pacienteid = '+#39+paciente+#39+
                    ' and c.clienteid = '+#39+cliente+#39+
                    ' and c.fecha = :fech '+
                    ' and d.coberturaaplica = 1'+
                    ' and c.recid <> :rec';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := refrecid;
  qfind.Open;

  if ( (qfind.RecordCount + curaplicada) < permitido) then
     result := 1
  else
     result := 0;

  FreeAndNil(qfind);
 end
 else
  result := 1;
end;

function TDM.CurCoberturaAplicada(refrecid : integer) : Integer;
var
 qfind : TADOQuery;
 permitido : integer;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT c.recid FROM ptEntradaPaciente c, ptEntradaPacienteDetalle d '+
                   ' WHERE c.recid = d.refrecid '+
                   ' AND c.fecha = :fech '+
                   ' AND d.coberturaaplica = 1 '+
                   ' AND c.recid = :rec';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := refrecid;
 qfind.Open;

 result := qfind.RecordCount;

 FreeAndNil(qfind);
end;

function TDM.DescuentoUsuario(_user : string) : Double;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'Select * from PTUsuarioDescuento Where UserId = '+#39+_user+#39+' and SucursalID = '+
                   #39+DM.CurSucursal+#39;
 qfind.Open;

 if (qfind.RecordCount > 0) then
   result := DM.Redondeo(qfind.FieldByName('Descuento').AsFloat)
 Else
   result := 0;

 FreeAndNil(qfind);
end;

procedure TDM.elcDoctoresPropertiesInitPopup(Sender: TObject);
begin
 qrDoctor.close;
 qrDoctor.Open;
end;

function TDM.GetSecurity(iOpcion : Integer): Integer;
begin
  qrUserMenu.Close;
  qrUserMenu.Parameters.ParamByName('pRol').Value := CurRol;
  qrUserMenu.Open;
  if qrUserMenu.Locate('OpcionID',iOpcion,[]) then begin
    Result := qrUserMenuNivel.Value;
  end else
    Result := -1;
end;


//Created with Castalia Extract Method Refactoring
procedure TDM.SetCompanyOptions;
begin
  ColorConsulta := qrParamColorConsulta.Value;
  ColorAgrega := qrParamColorAgregar.Value;
  ColorModifica := qrParamColorEditar.Value;
  ColorBorra := qrParamColorBorrar.Value;
  ColorUrgente := $0047D5FE;
  ColorReady := ColorBorra;

  TituloEmpresa := qrParamTituloEmpresa.Text;
  SubTituloEmpresa := qrParamSubTituloEmpresa.Text;
  RncEmpresa := qrParamRNC.Text;
  TelefonoEmprea := qrParamTelefono.Text;
  FaxEmpresa := qrParamFax.Text;
  eMailEmpresa := qrParameMail.Text;
  urlEmpresa := qrParamDireccionWeb.Text;
  DireciconEmpresa := qrParamDireccion.Text;
  CurInterface := qrParamInterface.Value;

  if Assigned(DMReports) then
    DMReports.SetReportTitles;
end;

procedure TDM.FormCreate(Sender: TObject);
  var
            wVersionRequested : WORD;
            wsaData : TWSAData;

  function CheckApplicationFiles( Folder : String ) : Boolean;
  var
    curFile : String;
  begin
    Result := True;
    // - Application DataBase
    curFile := Folder + '\Laboratorio.abs';
    Result := ( (Result) and (FileExists(curFile) ) );
    // - Archivo de Licencia
    curFile := Folder + '\Laboratorio.key';
    Result := ( (Result) and (FileExists(curFile) ) );
  end
  ;
var
 FileName : String;
begin
  ApplDb.Connected := False;
  // Buscar arhcivo de configuracion del cliente
  if ParamStr(1) = '' then
    FileName := ExtractFilePath(ParamStr(0)) + '\Banco.ini'
  else
    FileName := ParamStr(1);
  if not FileExists(FileName) then
  begin
    raise Exception.Create(SIniFileNotFound);
  end;
  conXmlFile.FileName := FileName;
  conXmlFile.Reload;
  // Buscar el folder de la aplicacion
  CurUser := conXmlFile.ReadString('Usuario');
  SysApplFolder := conXmlFile.ReadString('Aplicacion');
  CurCompany := conXmlFile.ReadString('Empresa');
  if not CheckApplicationFiles(SysApplFolder) then
    raise Exception.Create(SAppFolderNoValido);
  //
  try
    FileName := SysApplFolder + '\Laboratorio.abs';
    ApplDb.Connected := False;
    ApplDb.DatabaseFileName := FileName;
    ApplDb.Connected := True;
  except
    raise;
    Application.Terminate;
  end;
  //
  ApplyLicenseFile;
  //
  ApplInfo.Close;
  ApplInfo.Open;
  Application.Title := ApplInfo.FieldByName('Description').Text;
  if ApplInfo.FieldByName('Vendor_URL').Text = '' then
    SupportURL := ApplInfo.FieldByName('Developer_URL').Text
  else
    SupportURL := ApplInfo.FieldByName('Vendor_URL').Text;
  if ApplInfo.FieldByName('Vendor_SupportEmail').Text = '' then
    SupporteMail := ApplInfo.FieldByName('Developer_SupportEmail').Text
  else  
    SupporteMail := ApplInfo.FieldByName('Vendor_SupportEmail').Text;
  NombAplicacion := 'Banco de Sangre';
  NombreExe        := 'Banco';
  // JvPluginManager.LoadPlugins; // - Comentado para futuro uso

end;

function EncryptKey(sKey: String): String;
var
  i, j : Integer;
begin
  result := '';
  j := 5 * length(sKey);
  for i := 1 to length(sKey) do begin
    result := result + Chr( Ord(sKey[i]) + j );
  end;
end;

function DecryptKey(sKey: String): String;
var
  i, j : Integer;
begin
  result := '';
  j := 5 * length(sKey);
  for i := 1 to length(sKey) do begin
    result := result + Chr( Ord(sKey[i]) - j );
  end;
end;

Function TDM.CheckUser(UserId, Clave: string) : Boolean;
begin
  qrLogin.close;
  qrLogin.Parameters.ParamByName('pUser').Value := UserId;
  qrLogin.Open;

  curUser := UserId;

  Result := (not qrLogin.Eof and (DecryptKey(qrLoginClave.Text) = Clave) );

  if Result then begin
    SetIsAdmin;
  end;

end;

procedure TDM.SetIsAdmin;
begin
  qrUserRol.Close;
  qrUserRol.Parameters.ParamByName('pUser').Value := CurUser;
  qrUserRol.Open;
  IsAdmin := qrUserRolAdministrador.Value;
  IsDeveloper := qrUserRolDesarrollador.Value;
  CurRol  := qrUserRolRolID.Value;
  qrUserRol.Close;
end;

function TDM.HashString(Texto: String): String;
var
  iL : Integer;
  iC : Integer;
begin
  if Texto = '' then Texto := TimeToStr(Now);
  for iL := 1 to Length(Texto) do begin
    iC := Trunc( ( Ord(Texto[iL]) * iL ) / 7 );
    Result := Result + IntToStr(iC);
  end;
  Result := ReverseString(Result);
  Result := StrLeft(Result,4) + StrRight(Result,4);
end;

procedure TDM.SplitCalc(aText: string; aList: TStringList);
var
  p: Integer;
begin
  aList.Clear;
  if aText = '' then Exit;
  aText := trim(aText);
  while aText <> '' do
  begin
    if aText[1] = '|' then
    begin
      delete(aText, 1, 1);
      p := pos('|', aText);
      if p <> 0 then
      begin
        aList.append(copy(aText, 1, p - 1));
        delete(aText, 1, p);
      end;
    end
    else
    begin
      p := pos('|', atext);
      if p = 0 then
      begin
        aList.Append(aText);
        atext := '';
      end
      else
      begin
        aList.append(copy(aText, 1, p - 1));
        delete(aText, 1, p);
      end;
    end;
    aText := trim(aText);
  end;
end;

procedure TDM.LookUpEditInitPopup(Sender: TObject);
var
  lcDataSet : TDataSet;
begin
  if ( Sender is TcxDBLookupComboBox ) then
    lcDataSet := (( Sender as TcxDBLookupComboBox ).RepositoryItem As TcxEditRepositoryLookupComboBoxItem).Properties.ListSource.DataSet
  else begin
    if ( Sender is TcxDBExtLookupComboBox ) then
      lcDataSet := ( ( ( Sender as TcxDBExtLookupComboBox ).RepositoryItem As TcxEditRepositoryExtLookupComboBoxItem).Properties.View as TcxGridDBTableView ).DataController.DataSource.DataSet;
  end;
  if qrRol.IsEmpty then begin
    qrRol.Append;
    qrRolDescripcion.Text := 'Adminstrador';
    qrRolAdministrador.Value := True;
    qrRol.Post;
    qrRol.Close;
    qrRol.Open;
  end;
  // Verificar que exista al menos un usuario
  qrUser.Close;
  qrUser.Open;
  if qrUser.IsEmpty then begin
    qrUser.Append;
    qrUserUserId.Text := 'ADMIN';
    qrUserRolID.Value := qrRolRolID.Value;
    qrUserNombre.Text := 'Adminstrador';
    qrUserClave.Text := '';
    qrUser.Post;
    qrUser.Close;  //
  end;
  if Assigned(lcDataSet) then begin
    try
      lcDataSet.Close;
      lcDataSet.Open;
    except
      //
    end;
  end;
end;

procedure TDM.SyncMenuRights;
begin
  qrRol.Close;
  qrRol.CommandText := 'SELECT * FROM SysRoles WHERE Administrador = 1';
  qrRol.Open;
end;

Function GetTableNameByDataSet(ADataSet: TDataSet) : String;
var
  qrDataSet : TAdoQuery;
  sql       : String;
begin
  if ( ADataSet is TAdoQuery ) then begin
    qrDataSet := ( ADataSet as TAdoQuery );
    sql := qrDataSet.SQL.Text;
    sql := Copy( sql, Pos('FROM', sql) + 5, Length(sql) );
    sql := TrimLeft(sql);
    if Pos(' ', sql) > 0 then
      sql := Copy( sql, 1, Pos(' ',sql)-1);
  end;
  sql := TrimRight(sql);
  Result := sql;
end;


procedure TDM.Info(Texto: String);
var
  IAlert: TJvDesktopAlert;
  bmp: TBitmap;
Begin
  //MessageDlg(Texto, mtInformation, [mbOK], 0);
  IAlert := TJvDesktopAlert.Create(Self);
  IAlert.AutoFocus := True;
  IAlert.AutoFree := True;
  IAlert.Colors.WindowFrom := ColorInfoFrom;
  IAlert.Colors.WindowTo := ColorInfoTo;
  IAlert.HeaderText := 'Informaci�n';
  IAlert.MessageText := Texto;
  bmp := TBitmap.Create;
  ilMessages.GetBitmap(0,bmp);
  IAlert.Options := IAlert.Options - [daoCanClick];
  IAlert.Image.Assign(bmp);
  IAlert.Location.Position := dapOwnerFormCenter;
  IAlert.Location.Height := Max(76,IAlert.Form.lblText.Height + 10);
  IAlert.Execute;
end;

procedure TDM.Warning(Texto: String);
var
  IAlert: TJvDesktopAlert;
  bmp: TBitmap;
begin
  //MessageDlg(Texto, mtWarning, [mbOK], 0);
  IAlert := TJvDesktopAlert.Create(Self);
  IAlert.AutoFocus := True;
  IAlert.AutoFree := True;
  IAlert.Colors.WindowFrom := ColorWarningFrom;
  IAlert.Colors.WindowTo := ColorWarningTo;
  IAlert.HeaderText := 'Aviso';
  IAlert.MessageText := Texto;
  bmp := TBitmap.Create;
  ilMessages.GetBitmap(1,bmp);
  IAlert.Options := IAlert.Options - [daoCanClick];
  IAlert.Image.Assign(bmp);
  IAlert.Location.Position := dapOwnerFormCenter;
  IAlert.Location.Height := Max(76,IAlert.Form.lblText.Height + 10);
  IAlert.Execute;
end;

procedure TDM.Error(Texto: String);
var
  IAlert: TJvDesktopAlert;
  bmp: TBitmap;
begin
  Beep;
  //MessageDlg(Texto, mtError, [mbOK], 0);
  IAlert := TJvDesktopAlert.Create(Self);
  IAlert.AutoFocus := True;
  IAlert.AutoFree := True;
  IAlert.Colors.WindowFrom := ColorErrorFrom;
  IAlert.Colors.WindowTo := ColorErrorTo;
  IAlert.HeaderText := 'Error';
  IAlert.MessageText := Texto;
  bmp := TBitmap.Create;
  ilMessages.GetBitmap(2,bmp);
  IAlert.Options := IAlert.Options - [daoCanClick];
  IAlert.Image.Assign(bmp);
  IAlert.Location.Position := dapOwnerFormCenter;
  IAlert.Location.Height := Max(76,IAlert.Form.lblText.Height + 10);
  IAlert.Execute;
end;

procedure TDM.ListErrors(Texto: TStrings);
var
  i : Integer;
  txt : String;
begin
  for i := 0 to Texto.Count-1 do begin
    txt := txt + Texto.Strings[i] + #13#10;
  end;
  Error(txt);
end;

procedure TDM.SetInfoPosition;
var
  p : TPoint;
begin
  p.X := 0;
  p.Y := 0;
  p := frmMain.ClientToScreen(p);
end;

function TDM.GetLookupFormTag(sName: String): Integer;
var
  i : Integer;
begin
  Result := -1;
  for i := 0 to cxEditRepository.Count-1 do begin
    if UpperCase( cxEditRepository.Items[i].Name ) = sName then begin
      Result := cxEditRepository.Items[i].Tag;
      break;
    end;
  end;
end;

function TDM.il_Cg: Boolean;
begin
  Result := ( Copy(il_License,1,1 ) = '1' );
end;

function TDM.il_Bc: Boolean;
begin
  Result := ( Copy(il_License,2,1 ) = '1' );
end;

function TDM.il_Cc: Boolean;
begin
  Result := ( Copy(il_License,3,1 ) = '1' );
end;

function TDM.il_Cp: Boolean;
begin
  Result := ( Copy(il_License,4,1 ) = '1' );
end;

function TDM.il_In: Boolean;
begin
  Result := ( Copy(il_License,5,1 ) = '1' );
end;

function TDM.il_Co: Boolean;
begin
  Result := ( Copy(il_License,6,1 ) = '1' );
end;

function TDM.il_Fa: Boolean;
begin
  Result := ( Copy(il_License,7,1 ) = '1' );
end;


procedure TDM.SetUserOptions;
begin
  qrParam.Close;
  qrParam.Open;
  //
  qrUserRol.Close;
  qrUserRol.Parameters.ParamByName('pUser').Value := CurUser;
  qrUserRol.Open;

 { DescuentoTope := qrUserRolDescuentoTope.AsFloat;
  CambiarPrecio := qrUserRolCambiarPrecio.Value; }

  if qrUserRolInterface.AsString <> '' then
    CurInterface := qrUserRolInterface.Value
  else
    CurInterface := qrParamInterface.Value;
  //
  SingleWindow := (not qrUserRolMultipleVentanas.Value);
  //
  if qrUserRolMenuFont.AsString <> '' then
    MenuFont := qrUserRolMenuFont.Text
  else
    MenuFont := qrParamMenuFont.Text;
  //
  if qrUserRolFormsFont.AsString <> '' then
    FormFont := qrUserRolFormsFont.Text
  else
    FormFont := qrParamFormsFont.Text;
end;

procedure TDM.qrClientesNewRecord(DataSet: TDataSet);
begin
  qrClientesSUCURSALID.Value := DM.qrSucursal.FieldByName('SUCURSALID').Value;
end;

procedure TDM.qrEntradaPacienteConsCalcFields(DataSet: TDataSet);
begin
 //DM.qrEntradaPacienteConsTotalPendiente.Value := DM.qrEntradaPacienteConsNeto.Value - DM.qrEntradaPacienteConsTotalPagado.Value;
end;

procedure TDM.qrParamNewRecord(DataSet: TDataSet);
begin
  qrParamInterface.Value := 0;
  qrParamMenuFont.Text := 'Tahoma';
  qrParamFormsFont.Text := 'Tahoma';
end;

procedure TDM.CheckOrSetCompanyName(Name : String);
begin
  qrParam.Close;
  qrParam.Open;
  if qrParamTituloEmpresa.Text <> Name then begin
    qrParam.Edit;
    qrParamTituloEmpresa.Text := Name;
    qrParam.Post;
  end;
end;

function TDM.NewQuery: TAdoQuery;
begin
  Result := TADOQuery.Create(Self);
  Result.Connection := DataBase;
end;

function TDM.il_No: Boolean;
begin
  Result := ( Copy(il_License,8,1 ) = '1' );
end;

procedure TDM.AppError(Texto: String;
                       frozen          : boolean;
                       exceptObject    : TObject;
                       exceptAddr      : pointer;
                       crashedThreadId : dword;
                       var bugReport   : string;
                       var screenShot  : string;
                       var canContinue : boolean;
                       var handled     : boolean);
var
  bmp: TBitmap;
  EAlert: TJvDesktopAlert;
begin
  _frozen          := frozen;
  _exceptObject    := exceptObject;
  _exceptAddr      := exceptAddr;
  _crashedThreadId := crashedThreadId;
  _bugReport       := bugReport;
  _screenShot      := screenShot;
  _canContinue     := canContinue;
  _handled         := handled;
  EAlert := TJvDesktopAlert.Create(Self);
  EAlert.AutoFocus := True;
  EAlert.AutoFree := True;
  EAlert.Colors.CaptionFrom := $008080FF;
  EAlert.Colors.CaptionTo := clRed;
  EAlert.Colors.Frame := clMaroon;
  EAlert.Colors.WindowFrom := ColorErrorFrom;
  EAlert.Colors.WindowTo := ColorErrorTo;
  bmp := TBitmap.Create;
  ilMessages.GetBitmap(2,bmp);
  EAlert.Image.Assign(bmp);
  EAlert.HeaderText := 'Error de Excepci�n';
  EAlert.MessageText := Texto;
  EAlert.StyleOptions.DisplayDuration := 2800;
  EAlert.Location.Position := dapOwnerFormCenter;
  EAlert.Location.Height := Max(76,EAlert.Form.lblText.Height + 40);
  EAlert.OnMessageClick := ExceptionAlertMessageClick;
  EAlert.Execute;
  Beep;
end;

procedure TDM.ApplDbAfterChangeDatabaseSettings(Sender: TObject);
begin
  FreeAndNil( frmApplDBChangeSettings );
end;

procedure TDM.ApplDbBeforeChangeDatabaseSettings(Sender: TObject);
begin
  frmApplDBChangeSettings := TfrmApplDBChangeSettings.Create(Self);
  frmApplDbChangeSettings.Show;
end;

procedure TDM.ApplDbChangeDatabaseSettingsProgress(Sender: TObject;
  PercentDone: Integer; var Continue: Boolean);
begin
  frmApplDBChangeSettings.pbProgress.Position := PercentDone;
  frmApplDBChangeSettings.Update;
end;

procedure TDM.ApplEmpresasNewRecord(DataSet: TDataSet);
begin
  ApplEmpresas.FieldByName('AccesoNT').Value := False;
end;

procedure TDM.ApplyLicenseFile;
var
  Log : String;
begin
  // Abrir archivo de licencia
  IceLicense.LicenseFile := SysApplFolder + '\Laboratorio.key';
  IceLicense.LicenseCode.LoadFromFile(iceLicense.LicenseFile);
  IceLicense.Run;
  //
  if StrToInt(IceLicense.UserName) <> ApplDb.MaxConnections then begin
    ApplDb.Close;
    ApplDb.ChangeDatabaseSettings( Log, True, ApplDb.Password, ApplDb.CryptoAlgorithm, ApplDb.PageSize,
                                    ApplDb.PageCountInExtent, StrToInt( IceLicense.UserName ) );
    ApplDb.Open;
  end;
end;

procedure TDM.ExceptionAlertMessageClick(Sender: TObject);
begin
  // ShowException( _frozen, _exceptObject, _exceptAddr, _bugReport, _screenShot);
  ShowException( _exceptObject, _exceptAddr );
end;


procedure TDM.DatabaseWillExecute(Connection: TADOConnection;
  var CommandText: WideString; var CursorType: TCursorType;
  var LockType: TADOLockType; var CommandType: TCommandType;
  var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
  const Command: _Command; const Recordset: _Recordset);
begin
  Screen.Cursor := crSQLWait;
end;

procedure TDM.DatabaseExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  Screen.Cursor := crDefault;
end;

procedure TDM.JvPluginManagerNewCommand(Sender: TObject; ACaption, AHint,
  AData: String; AShortCut: TShortCut; ABitmap: TBitmap;
  AEvent: TNotifyEvent);
begin
  if UpperCase(ACaption) = UpperCase('SendSupportURL') then
    SupportURL := AData;
  if UpperCase(ACaption) = UpperCase('SendSupporteMail') then
    SupporteMail := AData;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
var
  I: Integer;
begin
  Application.Icon := nil;
  for I := 0 to JvPluginManager.PluginCount - 1 do begin    // Iterate
    JvPluginManager.UnloadPlugin(i);
  end;    // for

end;

function TDM.il_Sv: Boolean;
begin
  Result := ( Copy(il_License,9,1 ) = '1' );
end;

function TDM.FindConceptoImpuesto(Concepto: String): String;
begin
  Result := DM.DataBase.Execute('Select CodImpuesto from SvConceptos Where ConceptoId = ' + #39 + Concepto + #39).Fields[0].Value;
end;

function TDM.FindConceptoCuenta(Concepto: String): String;
begin
  Result := DM.DataBase.Execute('Select CuentaContable from SvConceptos Where ConceptoId = ' + #39 + Concepto + #39).Fields[0].Value;
end;


procedure TDM.NewQuery(var qrAdo: TADOQuery);
begin
  qrAdo := TADOQuery.Create(Self);
  qrAdo.Connection := DataBase;
end;

procedure TDM.OpenCompany(FileName: String);
begin
   FSystemDate := Date;
   ApplEmpresas.Close;
   ApplEmpresas.Open;
   ApplEmpresas.Locate('Descripcion',FileName,[]);
   DataBase.Close;
   DataBase.DefaultDatabase := '';
   DataBase.ConnectionString := 'Data Source=' + ApplEmpresas.FieldByName('Servidor').Text;
   DataBase.ConnectionString := DataBase.ConnectionString + ';Initial Catalog=' + ApplEmpresas.FieldByName('Nombre').Text;
   DataBase.ConnectionString := DataBase.ConnectionString + ';User ID=' + ApplEmpresas.FieldByName('sqlUser').Text;
   DataBase.ConnectionString := DataBase.ConnectionString + ';Password=' +  ApplEmpresas.FieldByName('sqlPassword').Text;
   DataBase.Open;
   qrRol.Close;
   qrRol.Open;
   CurCompany := FileName;
   //
  { if not Assigned(SysMoneda) then
    SysMoneda := TSysCurrency.Create;
   if not Assigned(SysProduct) then
    SysProduct := TProduct.Create; }
end;


procedure TDM.ppDetailBand10BeforePrint(Sender: TObject);
begin
  If (qrEntradaPacienteDetalleComentario.Value <> '') then
    Begin
      ppDBComentario.Visible := True;
      ppDBDescripcion.Visible := False;
    End
  Else
    Begin
      ppDBComentario.Visible := False;
      ppDBDescripcion.Visible := True;
    End;
end;

procedure TDM.ppDetailBand5AfterPrint(Sender: TObject);
begin
 if (qrCorteCajaDetRep.FieldByName('Tipo').Value = '0') then
     ValorFormaPagoE := ValorFormaPagoE + qrCorteCajaDetRep.FieldByName('Valor').Value
 else
     ValorFormaPagoI:= ValorFormaPagoI + qrCorteCajaDetRep.FieldByName('Valor').Value;
end;

procedure TDM.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
 if (qrCorteCajaDetRep.FieldByName('Tipo').Value = '0') then
  lbtipo.Caption := 'Entregado'
 else
  lbtipo.Caption := 'Ingresos';
end;

procedure TDM.ppImpCuadreCajaBeforePrint(Sender: TObject);
begin
 ValorFormaPagoE := 0;
 ValorFormaPagoI := 0;
end;

procedure TDM.ppSummaryBand5BeforePrint(Sender: TObject);
begin
 lbdiferencia.Caption := formatfloat('##,###,##0.00',ValorFormaPagoE - ValorFormaPagoI);
end;

procedure TDM.LicenseError( Texto : String; Terminate : Boolean );
begin
  if Terminate then begin
    raise Exception.Create(Texto);
    Application.Terminate;
  end else
    MessageDlg(Texto, mtWarning, [mbOK], 0);
end;

procedure TDM.IceLicenseAppKeyIncorrect(Sender: TObject);
begin
  LicenseError('Clave incorrecta!', true);
end;

procedure TDM.IceLicenseCheckError(Sender: TObject);
begin
  LicenseError('Error de inicializaci�n',True);
end;

procedure TDM.IceLicenseClockMovedBack(Sender: TObject);
begin
  LicenseError('ADVERTENCIA: La fecha del PC ha sido atrasada!',True);
end;

procedure TDM.IceLicenseExeModified(Sender: TObject);
begin
  LicenseError('El ejecutable ha sido alterado, verifique por virus � reinstale',True);
end;

procedure TDM.IceLicenseLicenseExpired(Sender: TObject);
begin
  LicenseError('Su licencia de uso ha expirado, favor de renovar.',True);
end;

procedure TDM.IceLicenseLicenseFileError(Sender: TObject);
begin
  LicenseError('Error abriendo archivo de licencia.',True);
end;

procedure TDM.IceLicenseLicenseInfo(UserName, UserCompanyName,
  Software, Vendor, DateCreation, Expiration, HardwareLocked,
  NetworkControl, NetworkUser: String);
begin
  il_UserName := UserName;
  il_UserCompanyName := UserCompanyName;
  il_Software := SoftWare;
  il_Vendor := Vendor;
  il_DateCreation := DateCreation;
  il_Expiration := Expiration;
  il_HardwareLocked := HardwareLocked;
  il_NetworkControl := NetworkControl;
  il_NetworkUser := IntToStr( StrToInt( il_UserName ) );
end;

procedure TDM.IceLicenseLicenseInvalid(Sender: TObject);
begin
  LicenseError('C�digo de  licencia invalido, favor de verificar.',True);
end;

procedure TDM.IceLicenseNetworkError(Sender: TObject);
begin
  LicenseError('Error leyendo archivo de licencia en la red.',True);
end;

procedure TDM.IceLicenseNetworkMaxUser(Sender: TObject);
begin
  LicenseError('Cantidad m�xima de usuarios excedida.',True);
end;

procedure TDM.IceLicenseNetworkReject(Sender: TObject);
begin
  LicenseError('Esta PC no esta autorizada en la red para usar la aplicaci�n.',True);
end;

procedure TDM.IceLicenseRegistered(LicenseActivKey: String);
begin
  il_ProgramState := 'Registrado';
  il_License := LicenseActivKey;
  il_IsTrial := False;
end;

procedure TDM.IceLicenseTrial(Sender: TObject);
begin
  il_ProgramState := 'Trial';
  il_IsTrial := True;
end;

procedure TDM.IceLicenseTrialExpired(Sender: TObject);
begin
  LicenseError('El perido de prueba ha expirado.',True);
end;

procedure TDM.IceLicenseTrialProgress(Status: String);
begin
  il_TrialDays := StrToInt(Status);
  il_ProgramState := 'Quedan ' + Status + ' dias';
  //TrialStatus := ' - TRIAL: ' + Status  + ' dias';
end;

//Funcion para retornar el registro de una tabla
function TDM.Find(Sql : String; Params : String) : TADOQuery;
Var
 Query : TADOQuery;
begin
 Query := NewQuery;

 Query.Active := False;
 Query.sql.Text := Sql;
 if (Params <> '') then
    Query.Parameters[0].Value := Params;
 Query.Active := True;

 result := Query;
end;


function TDM.CalcMora(_prestamoNo,_cuotaNo : integer) : Double;
Var
 Qprestamo,QprestamoLineas : TADOQuery;
 Dias : Integer;
 Pendiente,diaspagar,montopagar : Double;
begin
 Qprestamo := find('Select * from CoopPrestamo Where PrestamoNo = :pre',inttostr(_prestamoNo));

 QprestamoLineas := NewQuery;
 QprestamoLineas.close;
 QprestamoLineas.SQL.Text := 'Select * from CoopPrestamoLineas Where PrestamoNo = :pre and CuotaNo = :cuo';
 QprestamoLineas.Parameters[0].Value := _prestamoNo;
 QprestamoLineas.Parameters[1].Value := _cuotaNo;
 QprestamoLineas.Open;

 Dias := SystemDate - QprestamoLineas.FieldByName('FechaVencimiento').Value;

 if (Dias > Qprestamo.FieldByName('DiasGracia').Value) and
    (QprestamoLineas.FieldByName('MoraBloqueada').Value = 0) and
    (QprestamoLineas.FieldByName('Estatus').Value = 0) then begin

    Pendiente := DM.Redondeo(QprestamoLineas.FieldByName('Capital').Value + QprestamoLineas.FieldByName('Interes').Value -
                             QprestamoLineas.FieldByName('CapitalPagado').Value - QprestamoLineas.FieldByName('InteresPagado').Value);

    diaspagar := DM.Redondeo((Pendiente * (Qprestamo.FieldByName('TasaMora').Value / 100)) / 30);
    montopagar := DM.Redondeo(diaspagar * Dias);

    result := DM.Redondeo(montopagar);

 end
 else
  result := 0;

 FreeAndNil(Qprestamo);
 FreeAndNil(QprestamoLineas);  

end;

function TDM.Redondeo(valor: double):double;
var valtext: string;
begin
//altext := formatfloat('########0.0000',valor);
 valtext := formatfloat('########0.00', valor);
 result := strtofloat(valtext);
end;

function TDM.Mensaje(mensg : pchar; botones : word) : integer;
begin
 Result := Application.MessageBox(mensg, 'Sistema de Laboratorio', botones);
end;

function TDM.Tasa(fecha: TDateTime; moneda: string) : Double;
Var
 qfindTasa : TADOQuery;
begin
 qfindTasa := NewQuery;
 qfindTasa.Close;
 qfindTasa.SQL.Text := 'Select * from SysTasas Where Fecha = :fech and MonedaID = :mon';
 qfindTasa.Parameters.ParamByName('fech').Value := fecha;
 qfindTasa.Parameters.ParamByName('mon').Value := moneda;
 qfindTasa.Open;

 result := qfindTasa.FieldByName('Tasa').Value;

 FreeAndNil(qfindTasa);

end;

function TDM.ValorMoneda(valor: Double; frommoneda : string; tomoneda : string; fecha : TDateTime) : Double;
Var
 qfindfecha : TADOQuery;
begin
 qrParametro.close;
 qrParametro.Open;

 qfindfecha := NewQuery;
 qfindfecha.Close;
 qfindfecha.SQL.Text := 'SELECT MAX(fecha) FROM SysTasas WHERE MonedaId = :mon AND Fecha <= :fech';

 if (qrParametroMonedaID.Value = frommoneda) then
     qfindfecha.Parameters.ParamByName('mon').Value := tomoneda
 else
     qfindfecha.Parameters.ParamByName('mon').Value := frommoneda;
 qfindfecha.Parameters.ParamByName('fech').Value := fecha;
 qfindfecha.Open;

 if frommoneda = tomoneda then
    result := DM.Redondeo(valor)
 else
  if (qrParametroMonedaID.Value = frommoneda) then
      result := DM.Redondeo(valor / tasa(qfindfecha.Fields[0].AsDateTime,tomoneda) * 100)
  else
      result := DM.Redondeo(valor * tasa(qfindfecha.Fields[0].AsDateTime,frommoneda) / 100);

 FreeAndNil(qfindfecha);
end;


function TDM.CoberturaPruebaMoneda(prueba: string; cliente: string; moneda: string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
begin
 qfind := Newquery;

 //Buscar Prueba - Cliente
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
    result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
 else
 begin
  qfindDato := find('Select * from PTCliente Where ClienteID = :cli',cliente);

  //Buscar Prueba - GrupoCliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoCliente').AsString+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat);
   FreeAndNil(qfindDato);
  end
  else
  begin
   //Buscar Prueba - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'2'+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
      result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat);
  end;
 end;

 FreeAndNil(qfind);
end;


function TDM.CoberturaPruebaMonedaPorc(prueba: string; cliente: string; moneda: string) : Integer;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
begin
 qfind := Newquery;

 //Buscar Prueba - Cliente
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
    result := qfind.FieldByName('CoberturaExpPorc').AsInteger
 else
 begin
  qfindDato := find('Select * from PTCliente Where ClienteID = :cli',cliente);

  //Buscar Prueba - GrupoCliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoCliente').AsString+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
   FreeAndNil(qfindDato);
  end
  else
  begin
   //Buscar Prueba - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'2'+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
      result := qfind.FieldByName('CoberturaExpPorc').AsInteger
   else
      result := 0;
  end;
 end;

 FreeAndNil(qfind);
end;


function TDM.CoberturaPruebaPorc(prueba: string; cliente: string; moneda: string) : Integer;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 cobertura : Integer;
begin
 cobertura := CoberturaPruebaMonedaPorc(prueba,cliente,moneda);

// if not cobertura then
 if (cobertura = 0) then
 begin
  qfind := Newquery;

  //Buscar Prueba - Cliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
  end
  else
  begin
   qfindDato := find('Select * from PTCliente Where ClienteID = :cli',cliente);

   //Buscar Prueba - GrupoCliente
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoCliente').AsString+#39+
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
    FreeAndNil(qfindDato);
   end
   else
   begin
    //Buscar Prueba - Todos
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'2'+#39+
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    if qfind.RecordCount > 0 then
    begin
     result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
    end
    else
     result := 0;
   end;
  end;

  FreeAndNil(qfind);
 end
 else
  result := cobertura;
end;


function TDM.CodigoProducto(nombre: string): string;
begin
  With Qutilitario do
   begin
     Close;
     Sql.clear;
     Sql.Add('select PRODUCTOID from BSPRODUCTOS');
     Sql.Add('WHERE LTRIM(RTRIM(PRODUCTODES)) ='+ #39 + nombre +#39);
     Open
   end;
   if  Qutilitario.RecordCount > 0 Then
      result := Qutilitario.fieldbyname('').Value
      else
      result := 'ND';
end;

function TDM.CoberturaPrueba(prueba: string; cliente: string; moneda: string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 cobertura : Double;
begin
 cobertura := CoberturaPruebaMoneda(prueba, cliente, moneda);

 if cobertura = 0 then
 begin
  qfind := Newquery;

  //Buscar Prueba - Cliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
   else
      result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda, DM.SystemDate));
  end
  else
  begin
   qfindDato := find('Select * from PTCliente Where ClienteID = :cli',cliente);

   //Buscar Prueba - GrupoCliente
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoCliente').AsString+#39+
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
       result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
    else
       result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                         qfind.FieldByName('MonedaId').AsString,
                                         moneda,DM.SystemDate));
    FreeAndNil(qfindDato);
   end
   else
   begin
    //Buscar Prueba - Todos
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'2'+#39+
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    if qfind.RecordCount > 0 then
    begin
     if moneda = qfind.FieldByName('MonedaId').AsString then
        result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
     else
        result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                          qfind.FieldByName('MonedaId').AsString,
                                          moneda,DM.SystemDate));
    end;
   end;
  end;

  FreeAndNil(qfind);
 end
 else
  result := DM.Redondeo(cobertura);
end;


function TDM.PrecioPrueba(prueba: string; cliente: string; moneda: string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 precio    : Double;
 grupocliente : string;

begin
 //Buscando El Costo Como Acuerdo Comercial.
 precio := PrecioPruebaCosto(prueba,cliente,moneda);
////////////////////////////////////////////////////////////////////////////////
 If (Precio > 0) then
   Begin
    qrParametro.close;
    qrParametro.Open;

    If qrParametroPreciosBaseDolares.Value then
     begin
      precio := ValorMoneda(Precio, qrParametroMonedaDolares.Value,
                            qrParametroMonedaID.Value, DM.SystemDate);

      if moneda = qrParametroMonedaID.Value then
       result := DM.Redondeo(precio)
      else
//       qfindDato.FieldByName('PrecioDolares').AsFloat;
       result := DM.Redondeo(ValorMoneda(Precio, qrParametroMonedaID.Value,
                             moneda, DM.SystemDate));
     end
    Else
     Begin
      if moneda = qrParametroMonedaID.Value then
       result := DM.Redondeo(Precio)
      else
       result := DM.Redondeo(ValorMoneda(Precio, qrParametroMonedaID.Value,
                             moneda, DM.SystemDate));
     end;
    FreeAndNil(qfindDato);
   End
////////////////////////////////////////////////////////////////////////////////
 Else
  precio := DM.Redondeo(PrecioPruebaMoneda(prueba,cliente,moneda));

 if (precio = 0) and (not findAcuerdoCom) then
 begin

 qfind := DM.NewQuery;

 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := 'SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   '   AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   '   AND Relacion = '+#39+'P'+#39+
                   '   AND Costo = 0 '+
                   '   AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,DM.SystemDate));
 end
 else
 begin
  qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 0 '+
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,DM.SystemDate));
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := 'SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     '   AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     '   AND Relacion = '+#39+'P'+#39+
                     '   AND Costo = 0 '+
                     '   AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,DM.SystemDate));
   end
   else
   begin
    qfindDato := find('Select * from PTCliente Where ClienteID = :pru',cliente);
    grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := 'SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      '   AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      '   AND Relacion = '+#39+'P'+#39+
                      '   AND Costo = 0 '+
                      '   AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
     if moneda = qfind.FieldByName('MonedaId').AsString then
       result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
     else
       result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                         qfind.FieldByName('MonedaId').AsString,
                                         moneda,DM.SystemDate));
    end
    else
    begin
     qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := 'SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       '   AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       '   AND Relacion = '+#39+'P'+#39+
                       '   AND Costo = 0 '+
                       '   AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
      else
         result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                           qfind.FieldByName('MonedaId').AsString,
                                           moneda,DM.SystemDate));
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
      qfind.Parameters[0].Value := DM.SystemDate;
      qfind.Parameters[1].Value := DM.SystemDate;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
      else
         result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                           qfind.FieldByName('MonedaId').AsString,
                                           moneda,DM.SystemDate));
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 0 '+
                         ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
       qfind.Parameters[0].Value := DM.SystemDate;
       qfind.Parameters[1].Value := DM.SystemDate;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
       if moneda = qfind.FieldByName('MonedaId').AsString then
          result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
       else
          result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                qfind.FieldByName('MonedaId').AsString,
                                moneda,DM.SystemDate));
       end
       else
       begin

        qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := 'SELECT * FROM PTAcuerdoComercial '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          '   AND ClienteCode = '+#39+'2'+#39+
                          '   AND Relacion = '+#39+'P'+#39+
                          '   AND Costo = 0 '+
                          '   AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
        qfind.Parameters[0].Value := DM.SystemDate;
        qfind.Parameters[1].Value := DM.SystemDate;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
         if moneda = qfind.FieldByName('MonedaId').AsString then
            result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
         else
            result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                  qfind.FieldByName('MonedaId').AsString,
                                  moneda,DM.SystemDate));
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := 'SELECT * FROM PTAcuerdoComercial '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           '   AND ClienteCode = '+#39+'2'+#39+
                           '   AND Relacion = '+#39+'P'+#39+
                           '   AND Costo = 0 '+
                           '   AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
         qfind.Parameters[0].Value := DM.SystemDate;
         qfind.Parameters[1].Value := DM.SystemDate;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
          if moneda = qfind.FieldByName('MonedaId').AsString then
             result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
          else
             result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                   qfind.FieldByName('MonedaId').AsString,
                                   moneda,DM.SystemDate));
         end
         else
         begin
          qfindDato := DM.NewQuery;

          qfindDato.Close;
          qfindDato.SQL.Text := ' Select * from PTPrecioAlternativo Where PruebaId = '+#39+prueba+#39+
                                ' and SucursalId = '+#39+DM.CurSucursal+#39+' and Activo = 1';
          qfindDato.Open;

          if qfindDato.RecordCount > 0 then
          begin
           qrParametro.close;
           qrParametro.Open;

           if qrParametroPreciosBaseDolares.Value then
           begin
            precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                  qrParametroMonedaID.Value,DM.SystemDate);
            if moneda = qrParametroMonedaID.Value then
              result := DM.Redondeo(precio)
            else
              qfindDato.FieldByName('PrecioDolares').AsFloat;
           end
           else
           begin
            if moneda = qrParametroMonedaID.Value then
               result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
            else
               result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                     qrParametroMonedaID.Value ,
                                     moneda,DM.SystemDate));
           end;
           FreeAndNil(qfindDato);
          end
          else
          begin
           qrParametro.close;
           qrParametro.Open;

           FreeAndNil(qfindDato);
           qfindDato := find('Select * from PTPrueba Where PruebaID = :pur',prueba);

           if qrParametroPreciosBaseDolares.Value then
           begin
            precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                  qrParametroMonedaID.Value,DM.SystemDate);
            if moneda = qrParametroMonedaID.Value then
              result := DM.Redondeo(precio)
            else
              qfindDato.FieldByName('PrecioDolares').AsFloat;
           end
           else
           begin
            if moneda = qrParametroMonedaID.Value then
               result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
            else
               result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                                 qrParametroMonedaID.Value ,
                                                 moneda,DM.SystemDate));
           end;
           FreeAndNil(qfindDato);
          end;
         end;


        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;

 end
 else
  result := DM.Redondeo(precio);
end;


function TDM.PrecioPruebaMoneda(prueba: string; cliente: string; moneda:
  string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 grupocliente : String;
begin
 qfind := Newquery;
 findAcuerdoCom := false;
 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND Relacion = '+#39+'P'+#39+
                   ' AND Costo = 0 '+
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
  findAcuerdoCom := true;
  result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
 end
 else
 begin
  qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 0 '+
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
   findAcuerdoCom := true;
   result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND Relacion = '+#39+'P'+#39+
                     ' AND Costo = 0 '+
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    findAcuerdoCom := true;
    result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
   end
   else
   begin
    qfindDato := find('Select * from PTCliente Where ClienteID = :pru',cliente);
    grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      ' AND MonedaID = '+#39+moneda+#39+
                      ' AND Relacion = '+#39+'P'+#39+
                      ' AND Costo = 0 '+
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
     findAcuerdoCom := true;
     result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
    end
    else
    begin
     qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       ' AND MonedaID = '+#39+moneda+#39+
                       ' AND Relacion = '+#39+'P'+#39+
                       ' AND Costo = 0 '+
                       ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
      findAcuerdoCom := true;
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND MonedaID = '+#39+moneda+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
      qfind.Parameters[0].Value := DM.SystemDate;
      qfind.Parameters[1].Value := DM.SystemDate;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
       findAcuerdoCom := true;
       result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND MonedaID = '+#39+moneda+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 0 '+
                         ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
       qfind.Parameters[0].Value := DM.SystemDate;
       qfind.Parameters[1].Value := DM.SystemDate;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
        findAcuerdoCom := true;
        result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
       end
       else
       begin

        qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          ' AND ClienteCode = '+#39+'2'+#39+
                          ' AND MonedaID = '+#39+moneda+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 0 '+
                          ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
        qfind.Parameters[0].Value := DM.SystemDate;
        qfind.Parameters[1].Value := DM.SystemDate;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
         findAcuerdoCom := true;
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           ' AND ClienteCode = '+#39+'2'+#39+
                           ' AND MonedaID = '+#39+moneda+#39+
                           ' AND Relacion = '+#39+'P'+#39+
                           ' AND Costo = 0 '+
                           ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
         qfind.Parameters[0].Value := DM.SystemDate;
         qfind.Parameters[1].Value := DM.SystemDate;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
          findAcuerdoCom := true;
          result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
         end
         else
          result := 0;
        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;
end;



procedure TDM.QdatosdonacionCalcFields(DataSet: TDataSet);
begin
 QdatosdonacionREACTIVO.Value := QdatosdonacionTipoSangre.Value + '' + QdatosdonacionRH.Value;
end;

function TDM.PrecioPruebaCosto(prueba: string; cliente: string; moneda:
  string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 qfindPrueba : TADOQuery;
 grupocliente : String;
begin
 qfind := Newquery;
 findAcuerdoCom := false;

 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND Relacion = '+#39+'P'+#39+
                   ' AND Costo = 1 '+
                   ' AND Activo = 1 '+
                   ' AND Desde <= :fech1 '+
                   ' AND Hasta >= :fech2';

 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
   findAcuerdoCom := true;
   qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
   result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
 end
 else
 begin
  qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 1 '+
                    ' AND Activo = 1 '+
                    ' AND Desde <= :fech1 '+
                    ' AND Hasta >= :fech2';

  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
    findAcuerdoCom := true;
    qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
    result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     ' AND Relacion = '+#39+'P'+#39+
                     ' AND Costo = 1 '+
                     ' AND Activo = 1 '+
                     ' AND Desde <= :fech1 '+
                     ' AND Hasta >= :fech2';

   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
     findAcuerdoCom := true;
     qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
     result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
   end
   else
   begin
    qfindDato := find('Select * from PTCliente Where ClienteID = :pru',cliente);
    grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      ' AND Relacion = '+#39+'P'+#39+
                      ' AND Costo = 1 '+
                      ' AND Activo = 1 '+
                      ' AND Desde <= :fech1 '+
                      ' AND Hasta >= :fech2';

    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
      findAcuerdoCom := true;
      qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
      result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
    end
    else
    begin
     qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       ' AND Relacion = '+#39+'P'+#39+
                       ' AND Costo = 1 '+
                       ' AND Activo = 1 '+
                       ' AND Desde <= :fech1 '+
                       ' AND Hasta >= :fech2';

     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
       findAcuerdoCom := true;
       qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
       result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 1 '+
                        ' AND Activo = 1 '+
                        ' AND Desde <= :fech1 '+
                        ' AND Hasta >= :fech2';

      qfind.Parameters[0].Value := DM.SystemDate;
      qfind.Parameters[1].Value := DM.SystemDate;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
        findAcuerdoCom := true;
        qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
        result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 1 '+
                         ' AND Activo = 1 '+
                         ' AND Desde <= :fech1 '+
                         ' AND Hasta >= :fech2';

       qfind.Parameters[0].Value := DM.SystemDate;
       qfind.Parameters[1].Value := DM.SystemDate;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
         findAcuerdoCom := true;
         qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
         result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
       end
       else
       begin
        qfindDato := find('Select * from PTPrueba Where PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          ' AND ClienteCode = '+#39+'2'+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 1 '+
                          ' AND Activo = 1 '+
                          ' AND Desde <= :fech1 '+
                          ' AND Hasta >= :fech2';

        qfind.Parameters[0].Value := DM.SystemDate;
        qfind.Parameters[1].Value := DM.SystemDate;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
          findAcuerdoCom := true;
          qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
          result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           ' AND ClienteCode = '+#39+'2'+#39+
                           ' AND Relacion = '+#39+'P'+#39+
                           ' AND Costo = 1 '+
                           ' AND Activo = 1 '+
                           ' AND Desde <= :fech1 '+
                           ' AND Hasta >= :fech2';

         qfind.Parameters[0].Value := DM.SystemDate;
         qfind.Parameters[1].Value := DM.SystemDate;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
           findAcuerdoCom := true;
           qfindPrueba := find('Select * from PTPrueba Where PruebaID = :pru', prueba);
           result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
         end
         else
          result := 0;
        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;
end;


function TDM.DescCliente(cliente: string) : Double;
Var
 qfind        : TADOQuery;
 qfindDato    : TADOQuery;
 precio       : Double;
 grupocliente : string;
begin
 qfind := DM.NewQuery;

 //Buscar Cliente - Desc
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND PruebaCode = '+#39+'2'+#39+
                   ' AND Relacion = '+#39+'D'+#39+
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
 else
  begin
   qfindDato := find('Select * from PTCliente Where ClienteID = :pru', cliente);
   grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;

   //Buscar Grupo Cliente - Prueba
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                     ' AND Relacion = '+#39+'D'+#39+
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   FreeAndNil(qfindDato);

   if qfind.RecordCount > 0 then
     result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
   else
    begin
     //Buscar Todos - prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'2'+#39+
                       ' AND ClienteCode = '+#39+'2'+#39+
                       ' AND Relacion = '+#39+'D'+#39+
                       ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     if qfind.RecordCount > 0 then
        result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
     else
        result := 0;
    end;
  end;
end;


function TDM.DescTarjetaBono(tarjeta, numero: String) : Double;
var
 Texto  : String;
 qfind  : TADOQuery;
 qdesc  : TADOQuery;
 qcard  : TADOQuery;
begin
 qfind := DM.NewQuery;
 qdesc := DM.NewQuery;
 qcard := DM.NewQuery;

//Buscando el Numero de la Tarjeta de Descuento.
qdesc := DM.NewQuery;
qdesc.Close;

qcard := DM.Find('SELECT * FROM PTTarjetaDescuento WHERE TarjetaId = :tar', UpperCase(tarjeta));

Texto := ' SELECT * FROM PTTarjetaDescuento WHERE TarjetaID = :tar ';

//Validando el Numero Obligatorio de la Tarjeta de Descuento.
If (qcard.FieldByName('NumeroObligatorio').AsBoolean = True) Or
   (qcard.FieldByName('Bono').AsBoolean = True) then
  Texto := Texto + ' AND TarjetaNumero = :num ';

qdesc.SQL.Text := Texto;
qdesc.Parameters.ParamByName('tar').Value := UpperCase(tarjeta);

//Validando el Numero Obligatorio de la Tarjeta de Descuento.
If (qcard.FieldByName('NumeroObligatorio').AsBoolean = True) Or
   (qcard.FieldByName('Bono').AsBoolean = True) then
  qdesc.Parameters.ParamByName('num').Value := UpperCase(numero);

 qdesc.Open;

 If (qdesc.RecordCount > 0) Then
  Begin
   //Buscar Tarjeta - Descuento.
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE ClienteCode = '+#39+'3'+#39+' AND ClienteRelation = '+#39+tarjeta+#39+
                     ' AND PruebaCode = '+#39+'2'+#39+
                     ' AND Relacion = '+#39+'D'+#39+
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
     Result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
   else
     Result := 0;
  End
 Else
   Result := 0;

 FreeAndNil(qfind);
 FreeAndNil(qdesc);
 FreeAndNil(qcard);
end;


function TDM.TotalGastosVarios(_refrecid : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT SUM(valor) FROM PTGastosVarioTrans WHERE Refrecid = :rec';
 qfind.Parameters[0].Value := _refrecid;
 qfind.Open;

 result := DM.Redondeo(qfind.fields[0].asfloat);

 FreeAndNil(qfind);
end;



function TDM.TotalGastosVariosUsa(_refrecid : integer) : Double;
var
 qfind : TADOQuery;
 valor : double;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT SUM(Valor) FROM PTGastosVarioTrans WHERE Refrecid = :rec';
 qfind.Parameters[0].Value := _refrecid;
 qfind.Open;

 valor := DM.Redondeo(qfind.fields[0].AsFloat);

 If (valor > 0.01) Then
   Begin
     qrParametro.close;
     qrParametro.open;

     Result := DM.Redondeo(ValorMoneda(valor,
                           qrparametroMonedaID.Value,
                           qrParametroMonedaDolares.Value,
                           frmMain.frmTmp.qrEntradaPacienteFecha.Value));
   End
 Else
   Result := 0;

 FreeAndNil(qfind);
end;


procedure TDM.VerificarGastosVarios(cliente: string;_refrecid : Integer);
var
 qfind        : TADOQuery;
 qinsert      : TADOquery;
 qdelete      : TADOQuery;
 qfindDato    : TADOQuery;
 grupocliente : string;
begin
 qdelete := DM.NewQuery;
 qdelete.Close;
 qdelete.sql.Text := 'Delete from PTGastosVarioTrans where refrecid = :ref and Generada = 1';
 qdelete.Parameters[0].Value := _refrecid;
 qdelete.ExecSQL;

 FreeAndNil(qdelete);

 qfind := DM.NewQuery;

 //Buscar Cliente - Desc
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND PruebaCode = '+#39+'2'+#39+
                   ' AND Relacion = '+#39+'G'+#39+
                   ' AND Activo = 1 ';
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
  qinsert := DM.NewQuery;
  qinsert.Close;
  qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                      ' Values(:0,:1,:2,:3)';
  while not qfind.Eof do
  begin
    qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
    qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
    qinsert.Parameters[2].Value := _refrecid;
    qinsert.Parameters[3].Value := true;
    qinsert.ExecSQL;
    qfind.Next;
  end;
  FreeAndNil(qinsert);
 end
 else
 begin
   qfindDato := find('Select * from PTCliente Where ClienteID = :pru',cliente);
   grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;

   //Buscar Grupo Cliente - Prueba
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                     ' AND Relacion = '+#39+'G'+#39+
                     ' AND Activo = 1';
   qfind.Open;

   FreeAndNil(qfindDato);

   if qfind.RecordCount > 0 then
   begin
    qinsert := DM.NewQuery;
    qinsert.Close;
    qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                        ' Values(:0,:1,:2,:3)';
    while not qfind.Eof do
    begin
     qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
     qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
     qinsert.Parameters[2].Value := _refrecid;
     qinsert.Parameters[3].Value := true;
     qinsert.ExecSQL;
     qfind.Next;
    end;
    FreeAndNil(qinsert);
   end
   else
   begin
     //Buscar Todos - prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'2'+#39+
                       ' AND ClienteCode = '+#39+'2'+#39+
                       ' AND Relacion = '+#39+'G'+#39+
                       ' AND Activo = 1 ';
     qfind.Open;

     if qfind.RecordCount > 0 then
     begin
      qinsert := DM.NewQuery;
      qinsert.Close;
      qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                          ' Values(:0,:1,:2,:3)';
      while not qfind.Eof do
      begin
       qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
       qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
       qinsert.Parameters[2].Value := _refrecid;
       qinsert.Parameters[3].Value := true;
       qinsert.ExecSQL;
       qfind.Next;
      end;
      FreeAndNil(qinsert);
     end;

   end;
 end;
end;



//Rellena El Texto Con el Caracter Proporcionado en el Lado Que Se Quiera Rellenar.
Function TDM.Rellenar(valor: string; cantidad: integer; clave: string; posicion: string): string;
var tot,tot1,idx: integer; k: string;
begin
 if length(valor) < cantidad then
  begin
   tot := (length(valor) + 1);
   tot1 := cantidad - tot;
   k := clave;
   for idx := 1 to tot1 do
    begin
     k := k + clave;
   end;
   if posicion = 'I' then
    result := k + valor
   else
    result := valor + k;
  end
 else
  result := valor;
end;
function TDM.Verifica_Version(App : String) : String;
begin
  With sqlCommand, sql do
  begin
      Close;
      SQL.Text :='SELECT VERSION+'+#39+','+#39+'+Nombre_Corto As Version FROM Aplicaciones (nolock) ' +
                  'WHERE Nombre_Corto='+#39+App+#39+
                  ' or Nombre_Corto='+#39+'NEWVER'+#39;
      Open;
  end;
  if sqlCommand.RecordCount > 0 then
      result := sqlCommand.FieldByName('Version').AsString
  else
      result := EmptyStr;
end;

end.

