object dmFactura: TdmFactura
  OldCreateOrder = False
  Height = 449
  Width = 709
  object qrEntradaPaciente: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EntradaId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSVEnta'
      'Where (EntradaId = :EntradaId)')
    Left = 112
    Top = 16
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacienteFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaPacienteFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaPacienteRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      FieldName = 'BRUTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacientePRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaPacienteMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaPacienteHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacientePACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      Precision = 19
    end
    object qrEntradaPacienteSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 10
    end
    object qrEntradaPacienteOrigenId: TStringField
      FieldName = 'OrigenId'
    end
    object qrEntradaPacienteNCF: TStringField
      FieldName = 'NCF'
      FixedChar = True
    end
    object qrEntradaPacienteNCFOrigen: TStringField
      FieldName = 'NCFOrigen'
      FixedChar = True
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 272
    Top = 16
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 272
    Top = 72
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'RecId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSVENTADetalle'
      'Where RecId = :RecId')
    Left = 112
    Top = 80
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaPacienteDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object qrEntradaPacienteDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object qrEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object qrEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object qrEntradaPacienteDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object qrEntradaPacienteDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object qrEntradaPacienteDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object qrEntradaPacienteDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object qrEntradaPacienteDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object qrEntradaPacienteDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object qrEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 2
    end
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteDetalleResultado: TStringField
      FieldName = 'Resultado'
      Size = 15
    end
  end
  object qrProducto: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductoId'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         BSProductos '
      'WHERE     (ProductoId = :ProductoId)')
    Left = 112
    Top = 200
    object qrProductoProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrProductoProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrProductoPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrProductoPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrProductoDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrProductoPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object qrProductoCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrProductoCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object qrProductoExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrProductoFacturarCabecera: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object qrProductoTipo: TBooleanField
      FieldName = 'Tipo'
    end
    object qrProductoNecesitaCruce: TBooleanField
      FieldName = 'NecesitaCruce'
    end
    object qrProductoServicio: TBooleanField
      FieldName = 'Servicio'
    end
    object qrProductoInicial: TBooleanField
      FieldName = 'Inicial'
    end
  end
  object dsProducto: TDataSource
    AutoEdit = False
    DataSet = qrProducto
    Left = 272
    Top = 200
  end
  object qrPrecio: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     RECID, SUM(PRECIO) AS PRECIO, SUM(TOTALLINEA) AS TOTA' +
        'LLINEA'
      'FROM         dbo.BSVENTADETALLE'
      'GROUP BY RECID'
      'HAVING      (RECID =  :rec)')
    Left = 112
    Top = 136
    object qrPrecioRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPrecioPRECIO: TBCDField
      FieldName = 'PRECIO'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrPrecioTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
  end
  object dsPrecio: TDataSource
    DataSet = qrPrecio
    Left = 272
    Top = 128
  end
  object qrInventario: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSInventario'
      'Where (CodigoId = :CodigoId)'
      '')
    Left = 208
    Top = 168
    object qrInventarioCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrInventarioCaja: TBooleanField
      FieldName = 'Caja'
    end
    object qrInventarioDonacionId: TStringField
      FieldName = 'DonacionId'
    end
  end
  object qrAnticipo: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSAnticipo'
      '')
    Left = 200
    Top = 240
    object qrAnticipoId: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrAnticipoPacienteId: TStringField
      FieldName = 'PacienteId'
      Size = 10
    end
    object qrAnticipoProductoId: TStringField
      FieldName = 'ProductoId'
      Size = 50
    end
    object qrAnticipoMonto: TBCDField
      FieldName = 'Monto'
      Precision = 19
    end
  end
  object qrFactura: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EntradaId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select'
      '  *'
      'From'
      '  BSVenta'
      'Where'
      '  EntradaId = :EntradaId')
    Left = 104
    Top = 296
    object qrFacturaENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrFacturaBRUTO: TBCDField
      FieldName = 'BRUTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrFacturaDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrFacturaSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrFacturaNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrFacturaNCF: TStringField
      FieldName = 'NCF'
      FixedChar = True
    end
    object qrFacturaPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrFacturaCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrFacturaNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrFacturaCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrFacturaFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrFacturaTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      Precision = 19
    end
    object qrFacturaTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrFacturaRECID: TIntegerField
      FieldName = 'RECID'
    end
  end
  object qrNota: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select'
      '  *'
      'From'
      '  BSVenta'
      '')
    Left = 216
    Top = 312
    object qrNotaENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrNotaOrigenId: TStringField
      FieldName = 'OrigenId'
    end
    object qrNotaFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrNotaHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrNotaPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrNotaCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrNotaDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrNotaFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrNotaNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrNotaRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrNotaBRUTO: TBCDField
      FieldName = 'BRUTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrNotaDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrNotaSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrNotaNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrNotaNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrNotaCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrNotaSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrNotaUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrNotaCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrNotaTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrNotaFAX: TStringField
      FieldName = 'FAX'
    end
    object qrNotaTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrNotaCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrNotaCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrNotaCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrNotaDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrNotaDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrNotaDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrNotaORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrNotaAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrNotaAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrNotaCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrNotaCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrNotaFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrNotaMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrNotaMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrNotaCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrNotaEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrNotaSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrNotaNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrNotaPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrNotaCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrNotaPUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrNotaCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrNotaCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrNotaDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrNotaGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrNotaNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrNotaNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrNotaNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrNotaFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrNotaHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrNotaREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrNotaENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrNotaTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrNotaFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrNotaDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrNotaDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrNotaACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrNotaCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrNotaDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrNotaFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrNotaHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrNotaTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrNotaESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrNotaTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrNotaCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrNotaCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrNotaCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrNotaPACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrNotaCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrNotaDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrNotaDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrNotaRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrNotaTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      Precision = 19
    end
    object qrNotaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 10
    end
    object qrNotaNCF: TStringField
      FieldName = 'NCF'
      FixedChar = True
    end
    object qrNotaNCFOrigen: TStringField
      FieldName = 'NCFOrigen'
      FixedChar = True
    end
    object qrNotaRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrNotaNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrNotaPOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrNotaENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrNotaFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrNotaFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrNotaRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrNotaRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrNotaHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrNotaFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrNotaPROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrNotaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrNotaTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrNotaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrNotaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrNotaPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
  end
  object qrCobros: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'RecId'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.PTCobro.CobroID, dbo.PTCobro.Fecha, dbo.PTCobroDe' +
        'talle.FormaDePagoID, dbo.PTCobroDetalle.Monto, dbo.PTCobroDetall' +
        'e.MonedaID, '
      
        '                      dbo.PTCobro.UsuarioID, dbo.PTCobro.refReci' +
        'd'
      'FROM         dbo.PTCobro INNER JOIN'
      
        '                      dbo.PTCobroDetalle ON dbo.PTCobro.CobroID ' +
        '= dbo.PTCobroDetalle.CobroID'
      'WHERE     (dbo.PTCobro.refRecid = :RecId)')
    Left = 104
    Top = 360
    object qrCobrosCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrCobrosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrCobrosFormaDePagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 10
    end
    object qrCobrosMonto: TBCDField
      FieldName = 'Monto'
      Precision = 19
    end
    object qrCobrosMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrCobrosUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrCobrosrefRecid: TLargeintField
      FieldName = 'refRecid'
    end
  end
  object qrDetalleCobro: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT   *'
      'FROM       PTCobroDetalle '
      '')
    Left = 216
    Top = 376
    object qrDetalleCobroCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrDetalleCobroFormaDePagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 10
    end
    object qrDetalleCobroMonto: TBCDField
      FieldName = 'Monto'
      Precision = 19
    end
    object qrDetalleCobroOrden: TIntegerField
      FieldName = 'Orden'
    end
    object qrDetalleCobrorecid: TLargeintField
      FieldName = 'recid'
    end
    object qrDetalleCobroRefRecid: TLargeintField
      FieldName = 'RefRecid'
    end
    object qrDetalleCobroMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrDetalleCobroMontoMST: TBCDField
      FieldName = 'MontoMST'
      Precision = 19
    end
  end
  object qrTotal: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'RecId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     RECID, SUM(PRECIO) AS PRECIO, SUM(TOTALLINEA) AS TOTA' +
        'LLINEA'
      'FROM         dbo.BSVENTADETALLE'
      'GROUP BY RECID'
      'HAVING      (RECID = :RecId)')
    Left = 328
    Top = 368
    object qrTotalRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrTotalPRECIO: TBCDField
      FieldName = 'PRECIO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 12
    end
    object qrTotalTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 12
    end
  end
  object dsCobro: TDataSource
    AutoEdit = False
    DataSet = qrCobros
    Left = 32
    Top = 384
  end
  object qrPendientesCobros: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSVEnta'
      'Where ( TotalPendiente <> 0 )')
    Left = 448
    Top = 352
    object qrPendientesCobrosENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrPendientesCobrosFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrPendientesCobrosRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPendientesCobrosPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrPendientesCobrosNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrPendientesCobrosCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrPendientesCobrosCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrPendientesCobrosBRUTO: TBCDField
      FieldName = 'BRUTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPendientesCobrosDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPendientesCobrosSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPendientesCobrosNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPendientesCobrosTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPendientesCobrosTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrPendientesCobrosNCF: TStringField
      FieldName = 'NCF'
      FixedChar = True
    end
    object qrPendientesCobrosNCFOrigen: TStringField
      FieldName = 'NCFOrigen'
      FixedChar = True
    end
    object qrPendientesCobrosFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrPendientesCobrosINV_CODIGO: TIntegerField
      FieldName = 'INV_CODIGO'
    end
  end
  object ppEntradaPaciente: TppDBPipeline
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 448
    Top = 16
    object ppEntradaPacienteppField1: TppField
      FieldAlias = 'ENTRADAID'
      FieldName = 'ENTRADAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteppField2: TppField
      FieldAlias = 'FECHA'
      FieldName = 'FECHA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object ppEntradaPacienteppField3: TppField
      FieldAlias = 'HORAENTRADA'
      FieldName = 'HORAENTRADA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppEntradaPacienteppField4: TppField
      FieldAlias = 'PACIENTEID'
      FieldName = 'PACIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppEntradaPacienteppField5: TppField
      FieldAlias = 'CLIENTEID'
      FieldName = 'CLIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppEntradaPacienteppField6: TppField
      FieldAlias = 'DOCTORID'
      FieldName = 'DOCTORID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppEntradaPacienteppField7: TppField
      FieldAlias = 'POLIZAID'
      FieldName = 'POLIZAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppEntradaPacienteppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENCLINICA'
      FieldName = 'ENCLINICA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppEntradaPacienteppField9: TppField
      FieldAlias = 'RECORDCLINICA'
      FieldName = 'RECORDCLINICA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppEntradaPacienteppField10: TppField
      FieldAlias = 'NUMEROHABITACION'
      FieldName = 'NUMEROHABITACION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppEntradaPacienteppField11: TppField
      FieldAlias = 'FECHAENTRADA'
      FieldName = 'FECHAENTRADA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object ppEntradaPacienteppField12: TppField
      FieldAlias = 'FECHADEALTA'
      FieldName = 'FECHADEALTA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object ppEntradaPacienteppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADOPACIENTE'
      FieldName = 'RESULTADOPACIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppEntradaPacienteppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADODOCTOR'
      FieldName = 'RESULTADODOCTOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppEntradaPacienteppField15: TppField
      FieldAlias = 'FECHAPROMETIDA'
      FieldName = 'FECHAPROMETIDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object ppEntradaPacienteppField16: TppField
      FieldAlias = 'HORAPROMETIDA'
      FieldName = 'HORAPROMETIDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object ppEntradaPacienteppField17: TppField
      FieldAlias = 'FLEBOTOMISTAID'
      FieldName = 'FLEBOTOMISTAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object ppEntradaPacienteppField18: TppField
      FieldAlias = 'NOTA'
      FieldName = 'NOTA'
      FieldLength = 255
      DisplayWidth = 255
      Position = 17
    end
    object ppEntradaPacienteppField19: TppField
      FieldAlias = 'PROYECTOID'
      FieldName = 'PROYECTOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object ppEntradaPacienteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECORDID'
      FieldName = 'RECORDID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppEntradaPacienteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'BRUTO'
      FieldName = 'BRUTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 20
    end
    object ppEntradaPacienteppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTO'
      FieldName = 'DESCUENTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 21
    end
    object ppEntradaPacienteppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBTOTAL'
      FieldName = 'SUBTOTAL'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 22
    end
    object ppEntradaPacienteppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'NETO'
      FieldName = 'NETO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 23
    end
    object ppEntradaPacienteppField25: TppField
      FieldAlias = 'NOMBREPACIENTE'
      FieldName = 'NOMBREPACIENTE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 24
    end
    object ppEntradaPacienteppField26: TppField
      FieldAlias = 'DIRECCION'
      FieldName = 'DIRECCION'
      FieldLength = 255
      DisplayWidth = 255
      Position = 25
    end
    object ppEntradaPacienteppField27: TppField
      FieldAlias = 'TELEFONOS'
      FieldName = 'TELEFONOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppEntradaPacienteppField28: TppField
      FieldAlias = 'TELEFONO2'
      FieldName = 'TELEFONO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppEntradaPacienteppField29: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppEntradaPacienteppField30: TppField
      FieldAlias = 'CLIENTENOMBRE'
      FieldName = 'CLIENTENOMBRE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 29
    end
    object ppEntradaPacienteppField31: TppField
      FieldAlias = 'SUCURSALID'
      FieldName = 'SUCURSALID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 30
    end
    object ppEntradaPacienteppField32: TppField
      FieldAlias = 'USERID'
      FieldName = 'USERID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 31
    end
    object ppEntradaPacienteppField33: TppField
      FieldAlias = 'COBROID'
      FieldName = 'COBROID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object ppEntradaPacienteppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALPAGADO'
      FieldName = 'TOTALPAGADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 33
    end
    object ppEntradaPacienteppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRIORIDAD'
      FieldName = 'PRIORIDAD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppEntradaPacienteppField36: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppEntradaPacienteppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPODOCUMENTO'
      FieldName = 'TIPODOCUMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppEntradaPacienteppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAPORC'
      FieldName = 'COBERTURAPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 37
    end
    object ppEntradaPacienteppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURASEGURO'
      FieldName = 'COBERTURASEGURO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 38
    end
    object ppEntradaPacienteppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAVALOR'
      FieldName = 'COBERTURAVALOR'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 39
    end
    object ppEntradaPacienteppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOPORC'
      FieldName = 'DESCUENTOPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 40
    end
    object ppEntradaPacienteppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOVALOR'
      FieldName = 'DESCUENTOVALOR'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 41
    end
    object ppEntradaPacienteppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOBONO'
      FieldName = 'DESCUENTOBONO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 42
    end
    object ppEntradaPacienteppField44: TppField
      FieldAlias = 'ORIGEN'
      FieldName = 'ORIGEN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 43
    end
    object ppEntradaPacienteppField45: TppField
      FieldAlias = 'APROBACIONNO'
      FieldName = 'APROBACIONNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 44
    end
    object ppEntradaPacienteppField46: TppField
      FieldAlias = 'APROBACIONPOR'
      FieldName = 'APROBACIONPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 45
    end
    object ppEntradaPacienteppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURARECHAZADA'
      FieldName = 'COBERTURARECHAZADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 46
    end
    object ppEntradaPacienteppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURACONFIRMADA'
      FieldName = 'COBERTURACONFIRMADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 47
    end
    object ppEntradaPacienteppField49: TppField
      FieldAlias = 'FECHAASEGURADORA'
      FieldName = 'FECHAASEGURADORA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 48
    end
    object ppEntradaPacienteppField50: TppField
      FieldAlias = 'MUESTRANO'
      FieldName = 'MUESTRANO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object ppEntradaPacienteppField51: TppField
      FieldAlias = 'MONEDAID'
      FieldName = 'MONEDAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 50
    end
    object ppEntradaPacienteppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAEXPPORC'
      FieldName = 'COBERTURAEXPPORC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 51
    end
    object ppEntradaPacienteppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'EDADPACIENTE'
      FieldName = 'EDADPACIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppEntradaPacienteppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEXO'
      FieldName = 'SEXO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppEntradaPacienteppField55: TppField
      FieldAlias = 'NOMBREDOCTOR'
      FieldName = 'NOMBREDOCTOR'
      FieldLength = 80
      DisplayWidth = 80
      Position = 54
    end
    object ppEntradaPacienteppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNET'
      FieldName = 'PUBLICARINTERNET'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object ppEntradaPacienteppField57: TppField
      FieldAlias = 'CARNET'
      FieldName = 'CARNET'
      FieldLength = 20
      DisplayWidth = 20
      Position = 56
    end
    object ppEntradaPacienteppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNETDOCTOR'
      FieldName = 'PUBLICARINTERNETDOCTOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppEntradaPacienteppField59: TppField
      FieldAlias = 'CUADREGLOBAL'
      FieldName = 'CUADREGLOBAL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 58
    end
    object ppEntradaPacienteppField60: TppField
      FieldAlias = 'CUADREUSUARIO'
      FieldName = 'CUADREUSUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 59
    end
    object ppEntradaPacienteppField61: TppField
      FieldAlias = 'DESCAUTORIZADOPOR'
      FieldName = 'DESCAUTORIZADOPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 60
    end
    object ppEntradaPacienteppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'GASTOSVARIOS'
      FieldName = 'GASTOSVARIOS'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 61
    end
    object ppEntradaPacienteppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOAS400'
      FieldName = 'NOAS400'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppEntradaPacienteppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOAXAPTA'
      FieldName = 'NOAXAPTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppEntradaPacienteppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOFACTURA'
      FieldName = 'NOFACTURA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 64
    end
    object ppEntradaPacienteppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'FACTEXTERIOR'
      FieldName = 'FACTEXTERIOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 65
    end
    object ppEntradaPacienteppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOLD'
      FieldName = 'HOLD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object ppEntradaPacienteppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPMUESTRA'
      FieldName = 'REPMUESTRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object ppEntradaPacienteppField69: TppField
      FieldAlias = 'ENTRADAIDANT'
      FieldName = 'ENTRADAIDANT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 68
    end
    object ppEntradaPacienteppField70: TppField
      FieldAlias = 'TIPOENTRADA'
      FieldName = 'TIPOENTRADA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 69
    end
    object ppEntradaPacienteppField71: TppField
      FieldAlias = 'FORMADEPAGO'
      FieldName = 'FORMADEPAGO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 70
    end
    object ppEntradaPacienteppField72: TppField
      FieldAlias = 'DESCUENTOCARD'
      FieldName = 'DESCUENTOCARD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 71
    end
    object ppEntradaPacienteppField73: TppField
      FieldAlias = 'DESCUENTOTEXTO'
      FieldName = 'DESCUENTOTEXTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 72
    end
    object ppEntradaPacienteppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACUERDOPROPIO'
      FieldName = 'ACUERDOPROPIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object ppEntradaPacienteppField75: TppField
      FieldAlias = 'CLIENTEPADRE'
      FieldName = 'CLIENTEPADRE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 74
    end
    object ppEntradaPacienteppField76: TppField
      FieldAlias = 'DESCUENTOPLANID'
      FieldName = 'DESCUENTOPLANID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object ppEntradaPacienteppField77: TppField
      FieldAlias = 'FECHAREGISTRO'
      FieldName = 'FECHAREGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 76
    end
    object ppEntradaPacienteppField78: TppField
      FieldAlias = 'HORAREGISTRO'
      FieldName = 'HORAREGISTRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 77
    end
    object ppEntradaPacienteppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASA'
      FieldName = 'TASA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 78
    end
    object ppEntradaPacienteppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTATUS'
      FieldName = 'ESTATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 79
    end
    object ppEntradaPacienteppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOCLIENTEAS400'
      FieldName = 'TIPOCLIENTEAS400'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 80
    end
    object ppEntradaPacienteppField82: TppField
      FieldAlias = 'CLASECREDITO'
      FieldName = 'CLASECREDITO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 81
    end
    object ppEntradaPacienteppField83: TppField
      FieldAlias = 'CARNETNUMERO'
      FieldName = 'CARNETNUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 82
    end
    object ppEntradaPacienteppField84: TppField
      FieldAlias = 'CLIENTEPADREAXAPTA'
      FieldName = 'CLIENTEPADREAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 83
    end
    object ppEntradaPacienteppField85: TppField
      FieldAlias = 'PACIENTEIDAXAPTA'
      FieldName = 'PACIENTEIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 84
    end
    object ppEntradaPacienteppField86: TppField
      FieldAlias = 'CLIENTEIDAXAPTA'
      FieldName = 'CLIENTEIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 85
    end
    object ppEntradaPacienteppField87: TppField
      FieldAlias = 'DOCTORIDAXAPTA'
      FieldName = 'DOCTORIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 86
    end
    object ppEntradaPacienteppField88: TppField
      FieldAlias = 'DATAAREAID'
      FieldName = 'DATAAREAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 87
    end
    object ppEntradaPacienteppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECID'
      FieldName = 'RECID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object ppEntradaPacienteppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalPendiente'
      FieldName = 'TotalPendiente'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 89
    end
    object ppEntradaPacienteppField91: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 10
      DisplayWidth = 10
      Position = 90
    end
    object ppEntradaPacienteppField92: TppField
      FieldAlias = 'NCF'
      FieldName = 'NCF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 91
    end
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 440
    Top = 88
    object ppEntradaPacienteDetalleppField1: TppField
      FieldAlias = 'PRUEBAID'
      FieldName = 'PRUEBAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteDetalleppField2: TppField
      FieldAlias = 'CodigoId'
      FieldName = 'CodigoId'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppEntradaPacienteDetalleppField3: TppField
      FieldAlias = 'DESCRIPCION'
      FieldName = 'DESCRIPCION'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object ppEntradaPacienteDetalleppField4: TppField
      FieldAlias = 'MUESTRAANT'
      FieldName = 'MUESTRAANT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppEntradaPacienteDetalleppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAAPLICA'
      FieldName = 'COBERTURAAPLICA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppEntradaPacienteDetalleppField6: TppField
      FieldAlias = 'DESCRIPCIONCUP'
      FieldName = 'DESCRIPCIONCUP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 5
    end
    object ppEntradaPacienteDetalleppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFRECID'
      FieldName = 'REFRECID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppEntradaPacienteDetalleppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'SECUENCIA'
      FieldName = 'SECUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppEntradaPacienteDetalleppField9: TppField
      FieldAlias = 'FLEBOTOMISTAID'
      FieldName = 'FLEBOTOMISTAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppEntradaPacienteDetalleppField10: TppField
      FieldAlias = 'COMENTARIOMUESTRA'
      FieldName = 'COMENTARIOMUESTRA'
      FieldLength = 255
      DisplayWidth = 255
      Position = 9
    end
    object ppEntradaPacienteDetalleppField11: TppField
      FieldAlias = 'UNIDADMUESTRA'
      FieldName = 'UNIDADMUESTRA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object ppEntradaPacienteDetalleppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'SECUENCIAACT'
      FieldName = 'SECUENCIAACT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppEntradaPacienteDetalleppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECIO'
      FieldName = 'PRECIO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 12
    end
    object ppEntradaPacienteDetalleppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTO'
      FieldName = 'DESCUENTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 13
    end
    object ppEntradaPacienteDetalleppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOEXTRA'
      FieldName = 'DESCUENTOEXTRA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 14
    end
    object ppEntradaPacienteDetalleppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALLINEA'
      FieldName = 'TOTALLINEA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 15
    end
    object ppEntradaPacienteDetalleppField17: TppField
      FieldAlias = 'COMENTARIO'
      FieldName = 'COMENTARIO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 16
    end
    object ppEntradaPacienteDetalleppField18: TppField
      FieldAlias = 'TIPOPRUEBA'
      FieldName = 'TIPOPRUEBA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 17
    end
    object ppEntradaPacienteDetalleppField19: TppField
      FieldAlias = 'TIPOAS400'
      FieldName = 'TIPOAS400'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppEntradaPacienteDetalleppField20: TppField
      FieldAlias = 'CODIGOAS400'
      FieldName = 'CODIGOAS400'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object ppEntradaPacienteDetalleppField21: TppField
      FieldAlias = 'MEDIOAS400'
      FieldName = 'MEDIOAS400'
      FieldLength = 2
      DisplayWidth = 2
      Position = 20
    end
    object ppEntradaPacienteDetalleppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCPCT'
      FieldName = 'DESCPCT'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 21
    end
    object ppEntradaPacienteDetalleppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAESPECIAL'
      FieldName = 'COBERTURAESPECIAL'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 22
    end
    object ppEntradaPacienteDetalleppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAESPECIALPORC'
      FieldName = 'COBERTURAESPECIALPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 23
    end
    object ppEntradaPacienteDetalleppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAAPLICADA'
      FieldName = 'COBERTURAAPLICADA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 24
    end
    object ppEntradaPacienteDetalleppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOAPLICADO'
      FieldName = 'DESCUENTOAPLICADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 25
    end
    object ppEntradaPacienteDetalleppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOLINEAAPLICADO'
      FieldName = 'DESCUENTOLINEAAPLICADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 26
    end
    object ppEntradaPacienteDetalleppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'FACTURAR'
      FieldName = 'FACTURAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppEntradaPacienteDetalleppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'SELECCIONAR'
      FieldName = 'SELECCIONAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppEntradaPacienteDetalleppField30: TppField
      FieldAlias = 'MUESTRANO'
      FieldName = 'MUESTRANO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 29
    end
    object ppEntradaPacienteDetalleppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAEXPPORC'
      FieldName = 'COBERTURAEXPPORC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppEntradaPacienteDetalleppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'URGENTE'
      FieldName = 'URGENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object ppEntradaPacienteDetalleppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPMUESTRA'
      FieldName = 'REPMUESTRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppEntradaPacienteDetalleppField34: TppField
      FieldAlias = 'FECHAENTREGA'
      FieldName = 'FECHAENTREGA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 33
    end
    object ppEntradaPacienteDetalleppField35: TppField
      FieldAlias = 'HORAENTREGA'
      FieldName = 'HORAENTREGA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppEntradaPacienteDetalleppField36: TppField
      FieldAlias = 'ESTATUS'
      FieldName = 'ESTATUS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 35
    end
    object ppEntradaPacienteDetalleppField37: TppField
      FieldAlias = 'DATAAREAID'
      FieldName = 'DATAAREAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 36
    end
    object ppEntradaPacienteDetalleppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECID'
      FieldName = 'RECID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppEntradaPacienteDetalleppField39: TppField
      FieldAlias = 'Resultado'
      FieldName = 'Resultado'
      FieldLength = 15
      DisplayWidth = 15
      Position = 38
    end
    object ppEntradaPacienteDetalleppField40: TppField
      FieldAlias = 'COMBOPRUEBAID'
      FieldName = 'COMBOPRUEBAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 39
    end
    object ppEntradaPacienteDetalleppField41: TppField
      FieldAlias = 'CODIGOAUTORIZACION'
      FieldName = 'CODIGOAUTORIZACION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppEntradaPacienteDetalleppField42: TppField
      FieldAlias = 'CODIGOCUPID'
      FieldName = 'CODIGOCUPID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
  end
  object ppImpFactPacienteConSeguro: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '16K, 197x273 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 574
    Top = 84
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 82550
      mmPrintPosition = 0
      object ppDBText51: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : (809) 221-5545'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 12435
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 26723
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 26723
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 36513
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText63: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 36513
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entrega        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 65088
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaPrometida'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 65088
        mmWidth = 31750
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2646
        mmTop = 75142
        mmWidth = 84402
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 76200
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4191
        mmLeft = 2116
        mmTop = 17198
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntradaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 46038
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 46038
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 55563
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 55563
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora             : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 60325
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 60325
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 69586
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 69586
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 69586
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText108: TppDBText
        UserName = 'DBText601'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 78581
        mmTop = 69321
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad            :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 31485
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EdadPaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 31485
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreDoctor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 41275
        mmWidth = 61119
        BandType = 0
      end
      object LbCobertura: TppLabel
        UserName = 'LbCobertura'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'No Se Ha Solicitado La Cobertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2380
        mmTop = 50800
        mmWidth = 85461
        BandType = 0
      end
    end
    object ppDetailBandConSeguro: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText74: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 265
        mmWidth = 79640
        BandType = 4
      end
    end
    object ppSummaryFactPacienteConSeguro: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppLabel69: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Neto a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 2910
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText76: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Neto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 2910
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel70: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pagado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 7673
        mmWidth = 29369
        BandType = 7
      end
      object ppDBText77: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPagado'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 7673
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel71: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pendiente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 12435
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText78: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPendiente'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 12435
        mmWidth = 21167
        BandType = 7
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
      object ppMemoFactConSeg: TppMemo
        UserName = 'ppMemoFactConSeg'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppMemoFactConSeg'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 18521
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object ppImpFactPacienteSinSeguro: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '16K, 197x273 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 572
    Top = 12
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 82550
      mmPrintPosition = 0
      object ppDBText75: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 0
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText79: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4022
        mmLeft = 0
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : (809) 221-5545'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 12435
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 31750
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 36830
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText81: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 29718
        mmTop = 36830
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Determinacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 76200
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText84: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntradaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 29718
        mmTop = 41910
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 41910
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 46990
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 29718
        mmTop = 46990
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora             : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 52070
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText86: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 29718
        mmTop = 52070
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 63500
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText87: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 29718
        mmTop = 63500
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 57150
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 29718
        mmTop = 57150
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 76200
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 29718
        mmTop = 31750
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 23813
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NCF'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4763
        mmLeft = 13758
        mmTop = 23813
        mmWidth = 64558
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RNC : 1-30-40672-3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 16933
        mmWidth = 84931
        BandType = 0
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBandSinSeguro: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRECIO'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4763
        mmLeft = 50800
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DESCRIPCION'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 39688
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryFactPacienteSinSeguro: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object LbPagadoTit: TppLabel
        UserName = 'Label61'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'A pagar : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 15240
        mmWidth = 20638
        BandType = 7
      end
      object LbBrutoTit: TppLabel
        UserName = 'Label203'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SubTotal : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 5080
        mmWidth = 21960
        BandType = 7
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRECIO'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 5080
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRECIO'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 15240
        mmWidth = 25400
        BandType = 7
      end
    end
  end
  object alEdit: TActionList
    Images = frmMain.ilNavBarSmall
    Left = 372
    Top = 160
    object Cobrar: TAction
      Category = 'Botones'
      Caption = 'F5 = Cobrar'
      ImageIndex = 14
      ShortCut = 116
    end
    object Descuento: TAction
      Category = 'Botones'
      Caption = 'F6 = Descuento'
      ImageIndex = 15
      ShortCut = 117
    end
    object Mostrar: TAction
      Category = 'Botones'
      Caption = 'F7 = Mostrar'
      ImageIndex = 89
      ShortCut = 118
    end
    object Imprimir: TAction
      Category = 'Botones'
      Caption = 'F8 = Imprimir'
      ImageIndex = 3
      ShortCut = 119
    end
  end
end
