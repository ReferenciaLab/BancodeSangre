inherited frmDialogConsultaFactura: TfrmDialogConsultaFactura
  Caption = 'Consulta de facturas'
  ClientHeight = 551
  ClientWidth = 956
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 964
  ExplicitHeight = 585
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 956
    Height = 551
    ExplicitWidth = 956
    ExplicitHeight = 551
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Registro No.'
        'Paciente'
        'Nombre del Paciente'
        'Cliente'
        'Nombre del Cliente'
        'Telefono')
    end
    inherited edbuscar: TcxTextEdit
      RepositoryItem = DM.cxTextEdit
      Properties.OnChange = edbuscarPropertiesChange
    end
    inherited cgDatos: TcxGrid
      Width = 934
      Height = 439
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 934
      ExplicitHeight = 439
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'ENTRADAID'
        object dbDatosEntredaID: TcxGridDBColumn
          Caption = 'Registro No.'
          DataBinding.FieldName = 'ENTRADAID'
          Width = 68
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 61
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'Paciente'
          DataBinding.FieldName = 'PacienteID'
          Width = 76
        end
        object dbDatosNombrePaciente: TcxGridDBColumn
          Caption = 'Nombre Paciente'
          DataBinding.FieldName = 'NombrePaciente'
          Width = 223
        end
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'ClienteID'
          Width = 61
        end
        object dbDatosClienteNombre: TcxGridDBColumn
          Caption = 'Nombre Cliente'
          DataBinding.FieldName = 'ClienteNombre'
          Width = 158
        end
        object dbDatosNeto: TcxGridDBColumn
          DataBinding.FieldName = 'Neto'
          Width = 82
        end
        object dbDatosTotalPagado: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'TotalPagado'
          Width = 76
        end
        object dbDatosTotalPendiente: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'TotalPendiente'
          Width = 69
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 870
      Top = 515
      ExplicitLeft = 870
      ExplicitTop = 515
    end
    inherited btaceptar: TcxButton
      Left = 789
      Top = 515
      ExplicitLeft = 789
      ExplicitTop = 515
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrFacturas
  end
  object qrFacturas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSVEnta')
    Left = 400
    Top = 7
    object qrFacturasENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrFacturasFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrFacturasHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrFacturasPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrFacturasCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrFacturasDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrFacturasPOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrFacturasENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrFacturasRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrFacturasNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrFacturasFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrFacturasFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrFacturasRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrFacturasRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrFacturasFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrFacturasHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrFacturasFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrFacturasNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrFacturasPROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrFacturasRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrFacturasBRUTO: TBCDField
      FieldName = 'BRUTO'
      DisplayFormat = '#,##0.00;(#,##0.00);#'
      currency = True
      Precision = 28
      Size = 12
    end
    object qrFacturasDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '#,##0.00;(#,##0.00);#'
      currency = True
      Precision = 28
      Size = 12
    end
    object qrFacturasSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00;(#,##0.00);#'
      currency = True
      Precision = 28
      Size = 12
    end
    object qrFacturasNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '#,##0.00;(#,##0.00);#'
      currency = True
      Precision = 28
      Size = 12
    end
    object qrFacturasNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrFacturasDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrFacturasTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrFacturasTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrFacturasEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrFacturasCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrFacturasSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrFacturasUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrFacturasCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrFacturasTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrFacturasPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrFacturasFAX: TStringField
      FieldName = 'FAX'
    end
    object qrFacturasTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrFacturasCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrFacturasCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrFacturasCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrFacturasDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrFacturasDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrFacturasDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrFacturasORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrFacturasAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrFacturasAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrFacturasCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrFacturasCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrFacturasFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrFacturasMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrFacturasMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrFacturasCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrFacturasEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrFacturasSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrFacturasNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrFacturasPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrFacturasCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrFacturasPUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrFacturasCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrFacturasCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrFacturasDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrFacturasGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrFacturasNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrFacturasNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrFacturasNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrFacturasFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrFacturasHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrFacturasREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrFacturasENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrFacturasTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrFacturasFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrFacturasDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrFacturasDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrFacturasACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrFacturasCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrFacturasDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrFacturasFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrFacturasHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrFacturasTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrFacturasESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrFacturasTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrFacturasCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrFacturasCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrFacturasCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrFacturasPACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrFacturasCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrFacturasDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrFacturasDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrFacturasRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrFacturasTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      DisplayFormat = '#,##0.00;(#,##0.00);#'
      currency = True
      Precision = 19
    end
    object qrFacturasSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 10
    end
    object qrFacturasNCF: TStringField
      FieldName = 'NCF'
      FixedChar = True
    end
  end
end
