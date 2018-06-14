object DMB: TDMB
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 697
  Width = 805
  object qrBancoInventario: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.ProductoID, dbo.BSProductos.Producto' +
        'Des, SUM(dbo.BSInventario.Cantidad) AS Cantidad, dbo.BSProductos' +
        '.Precio, '
      
        '                      dbo.BSProductos.PrecioDolares, dbo.BSProdu' +
        'ctos.Dias, dbo.BSProductos.PermiteCambioPrecio, dbo.BSProductos.' +
        'CodigoAxapta, '
      
        '                      dbo.BSProductos.Costo, dbo.BSProductos.Ext' +
        'erior, dbo.BSProductos.FacturarCabecera, dbo.BSProductos.Tipo'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      'WHERE     (dbo.BSProductos.Servicio = 0)'
      
        'GROUP BY dbo.BSInventario.ProductoID, dbo.BSProductos.ProductoDe' +
        's, dbo.BSProductos.Precio, dbo.BSProductos.PrecioDolares, dbo.BS' +
        'Productos.Dias, '
      
        '                      dbo.BSProductos.CodigoAxapta, dbo.BSProduc' +
        'tos.Costo, dbo.BSProductos.PermiteCambioPrecio, dbo.BSProductos.' +
        'Exterior, '
      
        '                      dbo.BSProductos.FacturarCabecera, dbo.BSPr' +
        'oductos.Tipo')
    Left = 48
    Top = 155
    object qrBancoInventarioProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrBancoInventarioProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrBancoInventarioCantidad: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 19
    end
    object qrBancoInventarioPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrBancoInventarioPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrBancoInventarioDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrBancoInventarioPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object qrBancoInventarioCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrBancoInventarioCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object qrBancoInventarioExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrBancoInventarioFacturarCabecera: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object qrBancoInventarioTipo: TBooleanField
      FieldName = 'Tipo'
    end
  end
  object qrDonacionesAprobadas: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.DonacionID, dbo.BSDonacion.Fecha, dbo.' +
        'BSDonacion.PacienteID, dbo.PTCLIENTE.IDENTIFICACION, dbo.PTCLIEN' +
        'TE.NOMBRE, '
      
        '                      dbo.PTCLIENTE.DIRECCION, dbo.PTCLIENTE.TEL' +
        'EFONO, dbo.PTCLIENTE.EMAIL, dbo.PTCLIENTE.FECHANACIMIENTO, dbo.P' +
        'TCLIENTE.SEXO, '
      
        '                      dbo.PTCLIENTE.CIUDADID, dbo.BSDonacion.Not' +
        'aEntrevista, dbo.BSDonacion.DonacionStatus, dbo.PTENTRADAPACIENT' +
        'E.MUESTRANO, '
      
        '                      dbo.BSDonacion.DirigidoPacienteId,  dbo.BS' +
        'Donacion.MuestraNoLargo, dbo.BSDonacion.MuestraNoAS, dbo.BSDonac' +
        'ion.ProductoID, dbo.BSTipoFunda.Dias, BSDonacion.TipoFundaId, db' +
        'o.BSDonacion.DonacionTipo,'
      '                    ISTBDonacion'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCLIENTE.CLIENTEID INNER JOIN'
      
        '                      dbo.PTENTRADAPACIENTE ON dbo.BSDonacion.Do' +
        'nacionID = dbo.PTENTRADAPACIENTE.ENTRADAID LEFT OUTER JOIN'
      
        '                      dbo.BSTipoFunda ON dbo.BSDonacion.TipoFund' +
        'aID = dbo.BSTipoFunda.TipoFundaID'
      
        'WHERE     dbo.BSDonacion.DonacionStatus in('#39'Aprobada'#39','#39'Pendiente' +
        #39','#39'Ok'#39')')
    Left = 48
    Top = 107
    object qrDonacionesAprobadasDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionesAprobadasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionesAprobadasPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionesAprobadasIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrDonacionesAprobadasNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDonacionesAprobadasDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrDonacionesAprobadasTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrDonacionesAprobadasemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object qrDonacionesAprobadasFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrDonacionesAprobadasSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrDonacionesAprobadasCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrDonacionesAprobadasNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionesAprobadasDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionesAprobadasMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDonacionesAprobadasDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrDonacionesAprobadasMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDonacionesAprobadasProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDonacionesAprobadasDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrDonacionesAprobadasTipoFundaId: TWideStringField
      FieldName = 'TipoFundaId'
      FixedChar = True
      Size = 2
    end
    object qrDonacionesAprobadasMuestraNoLargo: TStringField
      FieldName = 'MuestraNoLargo'
      ReadOnly = True
      Size = 54
    end
    object qrDonacionesAprobadasISTBDonacion: TStringField
      FieldName = 'ISTBDonacion'
      ReadOnly = True
      Size = 15
    end
  end
  object qrPruebasBanco: TADOQuery
    AutoCalcFields = False
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM BSPrueba')
    Left = 48
    Top = 59
    object qrPruebasBancoPRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrPruebasBancoALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 80
    end
    object qrPruebasBancoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrPruebasBancoESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPruebasBancoGRUPOPRUEBAID: TStringField
      FieldName = 'GRUPOPRUEBAID'
      Size = 10
    end
    object qrPruebasBancoDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 10
    end
    object qrPruebasBancoPRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrPruebasBancoPERMITECAMBIOPRECIO: TIntegerField
      FieldName = 'PERMITECAMBIOPRECIO'
    end
    object qrPruebasBancoCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
    end
    object qrPruebasBancoPRECIODOLARES: TBCDField
      FieldName = 'PRECIODOLARES'
      Precision = 28
      Size = 12
    end
    object qrPruebasBancoCOSTO: TBCDField
      FieldName = 'COSTO'
      Precision = 28
      Size = 12
    end
    object qrPruebasBancoEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrPruebasBancoFACTURARCABECERA: TIntegerField
      FieldName = 'FACTURARCABECERA'
    end
    object qrPruebasBancoPRUEBAS: TIntegerField
      FieldName = 'PRUEBAS'
    end
    object qrPruebasBancoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
    object qrPruebasBancoORINA: TIntegerField
      FieldName = 'ORINA'
    end
    object qrPruebasBancoSANGRE: TIntegerField
      FieldName = 'SANGRE'
    end
    object qrPruebasBancoCONDPACIENTE: TStringField
      FieldName = 'CONDPACIENTE'
      Size = 255
    end
    object qrPruebasBancoCONDMUESTRA: TStringField
      FieldName = 'CONDMUESTRA'
      Size = 255
    end
    object qrPruebasBancoCODDIAPROC: TStringField
      FieldName = 'CODDIAPROC'
      Size = 5
    end
    object qrPruebasBancoDIASRESULTADO: TIntegerField
      FieldName = 'DIASRESULTADO'
    end
    object qrPruebasBancoUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object qrPruebasBancoABREVIACION: TStringField
      FieldName = 'ABREVIACION'
    end
    object qrPruebasBancoTIPOMUESTRA: TIntegerField
      FieldName = 'TIPOMUESTRA'
    end
    object qrPruebasBancoMEDIO: TIntegerField
      FieldName = 'MEDIO'
    end
    object qrPruebasBancoCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object qrPruebasBancoDEPID: TStringField
      FieldName = 'DEPID'
      Size = 10
    end
    object qrPruebasBancoTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrPruebasBancoCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
    end
    object qrPruebasBancoMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrPruebasBancoNOPROCESAR: TIntegerField
      FieldName = 'NOPROCESAR'
    end
    object qrPruebasBancoCOMENTARIONOPROCESAR: TStringField
      FieldName = 'COMENTARIONOPROCESAR'
      Size = 255
    end
    object qrPruebasBancoDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPruebasBancoRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPruebasBancomsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
  end
  object qrDonaciones: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    OnNewRecord = qrDonacionesNewRecord
    Parameters = <
      item
        Name = 'SUC'
        DataType = ftString
        Size = 2
        Value = '01'
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.*, dbo.PTCliente.Identificacion, dbo.P' +
        'TCliente.Nombre, '
      
        '                      dbo.PTCliente.Direccion, dbo.PTCliente.Tel' +
        'efono, dbo.PTCliente.email, dbo.PTCliente.FechaNacimiento, dbo.P' +
        'TCliente.Sexo, dbo.PTCliente.CiudadID, '
      
        '                      dbo.BSDonacion.NotaEntrevista, dbo.BSDonac' +
        'ion.DonacionStatus, dbo.BSDonacion.sucursalid'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCliente.ClienteID'
      'WHERE (DonacionStatus <> '#39'Rechazado'#39') '
      'AND  (DonacionStatus <> '#39'Pendiente'#39')'
      'AND  (DonacionStatus <> '#39'Aprobada'#39')'
      'AND  (DonacionStatus <> '#39'Procesada'#39')'
      'AND dbo.BSDonacion.SUCURSALID =:SUC'
      'ORDER BY dbo.BSDonacion.DonacionID DESC')
    Left = 48
    Top = 11
    object qrDonacionesDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionesMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDonacionesMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDonacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionesNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionesDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionesDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrDonacionesComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrDonacionesCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrDonacionesTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrDonacionesPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrDonacionesPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrDonacionesPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrDonacionesTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrDonacionesHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrDonacionesHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrDonacionesDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrDonacionesDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrDonacionesHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrDonacionesFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrDonacionesMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrDonacionesTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDonacionesTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrDonacionesDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrDonacionesPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrDonacionesTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrDonacionesHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrDonacionesHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrDonacionesGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrDonacionesPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrDonacionesNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrDonacionesProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDonacionesReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDonacionesDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrDonacionesDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrDonacionesUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object qrDonacionesUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object qrDonacionesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrDonacionesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDonacionesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrDonacionesTelefono_1: TStringField
      FieldName = 'Telefono_1'
    end
    object qrDonacionesemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object qrDonacionesFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrDonacionesSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrDonacionesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrDonacionesNotaEntrevista_1: TMemoField
      FieldName = 'NotaEntrevista_1'
      BlobType = ftMemo
    end
    object qrDonacionesDonacionStatus_1: TWideStringField
      FieldName = 'DonacionStatus_1'
      FixedChar = True
    end
    object qrDonacionesNoAsCorto: TStringField
      FieldName = 'NoAsCorto'
      ReadOnly = True
      Size = 8
    end
    object qrDonacionesUsuarioAS: TStringField
      FieldName = 'UsuarioAS'
      FixedChar = True
      Size = 15
    end
    object qrDonacionesUserIdHemograma: TStringField
      FieldName = 'UserIdHemograma'
      Size = 50
    end
    object qrDonacionesDoctorIdAutoriza: TStringField
      FieldName = 'DoctorIdAutoriza'
      Size = 10
    end
    object qrDonacionesObservacionAutoriza: TMemoField
      FieldName = 'ObservacionAutoriza'
      BlobType = ftMemo
    end
    object qrDonacionesUserIdRechaza: TStringField
      FieldName = 'UserIdRechaza'
      Size = 50
    end
    object qrDonacionesFechaRechaza: TDateTimeField
      FieldName = 'FechaRechaza'
    end
    object qrDonacionesRechazoNota: TStringField
      FieldName = 'RechazoNota'
      Size = 1000
    end
    object qrDonacionesISTBDonacion: TStringField
      FieldName = 'ISTBDonacion'
      ReadOnly = True
      Size = 15
    end
    object qrDonacionesSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
  end
  object qrEsDonante: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSDonante'
      'where PacienteID = :PacienteID')
    Left = 240
    Top = 313
  end
  object qrReservar: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSInventario'
      'Where CodigoId = :CodigoID')
    Left = 168
    Top = 112
    object qrReservarReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrReservarReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrReservarCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrReservarCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object qrReservarReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrReservarDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
  end
  object dsReservar: TDataSource
    DataSet = qrReservar
    Left = 248
    Top = 112
  end
  object qrEsServicio: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoId'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     dbo.BSProductos.Servicio'
      'FROM         dbo.BSProductos'
      'WHERE     (ProductoId = :CodigoId)')
    Left = 128
    Top = 313
    object qrEsServicioServicio: TBooleanField
      FieldName = 'Servicio'
    end
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPacienteDetalle'
      'Where MuestraNo = :rec')
    Left = 64
    Top = 232
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaPacienteDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
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
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
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
  end
  object qrProductosBanco: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM BSProductos')
    Left = 176
    Top = 48
    object qrProductosBancoProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrProductosBancoProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrProductosBancoPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrProductosBancoPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrProductosBancoDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrProductosBancoPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object qrProductosBancoCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrProductosBancoCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object qrProductosBancoExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrProductosBancoFacturarCabecera: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object qrProductosBancoTipo: TBooleanField
      FieldName = 'Tipo'
    end
    object qrProductosBancoNecesitaCruce: TBooleanField
      FieldName = 'NecesitaCruce'
    end
    object qrProductosBancoServicio: TBooleanField
      FieldName = 'Servicio'
    end
    object qrProductosBancoInicial: TBooleanField
      FieldName = 'Inicial'
    end
  end
  object qrASHemograma: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM QS36F.LAP04801'
      'WHERE L48MUE = :MuestraNo')
    Left = 480
    Top = 91
    object qrASHemogramaL48MUE: TBCDField
      FieldName = 'L48MUE'
      Precision = 11
      Size = 0
    end
    object qrASHemogramaL48PRU: TIntegerField
      FieldName = 'L48PRU'
    end
    object qrASHemogramaL48HGN: TStringField
      FieldName = 'L48HGN'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48HTT: TStringField
      FieldName = 'L48HTT'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48GLB: TStringField
      FieldName = 'L48GLB'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48PLA: TStringField
      FieldName = 'L48PLA'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48USU: TStringField
      FieldName = 'L48USU'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48FEC: TIntegerField
      FieldName = 'L48FEC'
    end
    object qrASHemogramaL48HOR: TIntegerField
      FieldName = 'L48HOR'
    end
    object qrASHemogramaL48DIS: TStringField
      FieldName = 'L48DIS'
      FixedChar = True
      Size = 15
    end
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPaciente'
      'Where MuestraNo = :MuestraNo')
    Left = 64
    Top = 288
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
    object qrEntradaPacienteENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
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
    object qrEntradaPacienteFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacientePROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
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
    object qrEntradaPacienteEsCruce: TBooleanField
      FieldName = 'EsCruce'
    end
  end
  object qrSQLEncabezado: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.MuestraNoAS AS Muestra, dbo.PTCLIENTE.' +
        'NOMBRE, ISNULL(SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRADA, 1, 2' +
        ') '
      
        '                      + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTR' +
        'ADA, 4, 2) + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRADA, 7, 2),' +
        ' '#39'000000'#39') AS Hora, '
      
        '                      dbo.PTCLIENTE.DIRECCION, DATEDIFF(year, db' +
        'o.PTCLIENTE.FECHANACIMIENTO, dbo.PTENTRADAPACIENTE.FECHA) AS Eda' +
        'd, '
      
        '                      dbo.PTCLIENTE.FECHANACIMIENTO AS FechaNaci' +
        'miento, ISNULL(dbo.PTCLIENTE.TELEFONO, '#39'0'#39') AS Telefono, '#39'PRIVAD' +
        'O'#39' AS Categoria, '
      
        '                      dbo.PTENTRADAPACIENTE.FECHA AS FechaEntrad' +
        'a, dbo.PTENTRADAPACIENTE.USERID, dbo.PTCLIENTE.SEXO, '
      
        '                      case when dbo.PTCLIENTE.tipodocumentoid = ' +
        '1 then REPLACE(dbo.PTCLIENTE.IDENTIFICACION, '#39'-'#39', '#39#39') else '#39'0000' +
        '0000000'#39' end AS Cedula, '
      
        '                      dbo.PTENTRADAPACIENTE.SUCURSALID, ISNULL(d' +
        'bo.PTENTRADAPACIENTE.DOCTORID, '
      
        '                      '#39'0'#39') AS DoctorId, '#39#39' AS Doctor, REPLACE(db' +
        'o.PTENTRADAPACIENTE.PACIENTEID, '#39'-'#39', '#39#39') AS Cliente, 0 AS Factur' +
        'ado, 0 AS Pagado, 0 AS Resto, '
      
        '                      1 AS TipResPaciente, 0 AS Internet, 0 AS T' +
        'ipResDoctor, 0 AS InternetDoctor, 1 AS TipResCliente, 0 AS Inter' +
        'netCliente, '
      
        '                      '#39'BANCO DE SANGRE'#39' AS Comentario, TIPOCLIEN' +
        'TE'
      'FROM         dbo.PTENTRADAPACIENTE INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.PTENTRADAPACIENTE.PAC' +
        'IENTEID = dbo.PTCLIENTE.CLIENTEID INNER JOIN'
      
        '                      dbo.BSDonacion ON dbo.PTENTRADAPACIENTE.EN' +
        'TRADAID = dbo.BSDonacion.DonacionID'
      'WHERE dbo.BSDonacion.MuestraNoAS = :MuestraNo')
    Left = 376
    Top = 155
    object qrSQLEncabezadoMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLEncabezadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrSQLEncabezadoHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLEncabezadoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrSQLEncabezadoEdad: TIntegerField
      FieldName = 'Edad'
      ReadOnly = True
    end
    object qrSQLEncabezadoFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrSQLEncabezadoTelefono: TStringField
      FieldName = 'Telefono'
      ReadOnly = True
    end
    object qrSQLEncabezadoCategoria: TStringField
      FieldName = 'Categoria'
      ReadOnly = True
      Size = 9
    end
    object qrSQLEncabezadoFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLEncabezadoUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrSQLEncabezadoSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrSQLEncabezadoCedula: TStringField
      FieldName = 'Cedula'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrSQLEncabezadoDoctorId: TStringField
      FieldName = 'DoctorId'
      ReadOnly = True
      Size = 10
    end
    object qrSQLEncabezadoDoctor: TStringField
      FieldName = 'Doctor'
      ReadOnly = True
      Size = 1
    end
    object qrSQLEncabezadoCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoFacturado: TIntegerField
      FieldName = 'Facturado'
      ReadOnly = True
    end
    object qrSQLEncabezadoPagado: TIntegerField
      FieldName = 'Pagado'
      ReadOnly = True
    end
    object qrSQLEncabezadoResto: TIntegerField
      FieldName = 'Resto'
      ReadOnly = True
    end
    object qrSQLEncabezadoTipResPaciente: TIntegerField
      FieldName = 'TipResPaciente'
      ReadOnly = True
    end
    object qrSQLEncabezadoInternet: TIntegerField
      FieldName = 'Internet'
      ReadOnly = True
    end
    object qrSQLEncabezadoTipResDoctor: TIntegerField
      FieldName = 'TipResDoctor'
      ReadOnly = True
    end
    object qrSQLEncabezadoInternetDoctor: TIntegerField
      FieldName = 'InternetDoctor'
      ReadOnly = True
    end
    object qrSQLEncabezadoTipResCliente: TIntegerField
      FieldName = 'TipResCliente'
      ReadOnly = True
    end
    object qrSQLEncabezadoInternetCliente: TIntegerField
      FieldName = 'InternetCliente'
      ReadOnly = True
    end
    object qrSQLEncabezadoComentario: TStringField
      FieldName = 'Comentario'
      ReadOnly = True
      Size = 15
    end
    object qrSQLEncabezadoTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
  end
  object qrSQLDetalle: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.MuestraNoAS AS Muestra, dbo.PTPRUEBA.C' +
        'ODIGOIDAS400 AS PruebaID, dbo.PTPRUEBA.DESCRIPCION, '#39'C'#39' AS Statu' +
        's, '
      
        '                      ISNULL(dbo.PTPRUEBA.DEPARTAMENTO, '#39'0'#39') AS ' +
        'Departamento, dbo.PTENTRADAPACIENTE.FECHA AS FechaEntrada, '
      
        '                      SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRAD' +
        'A, 1, 2) + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRADA, 4, 2) '
      
        '                      + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTR' +
        'ADA, 7, 2) AS Hora, dbo.PTENTRADAPACIENTE.USERID, '#39'BANCO DE SANG' +
        'RE'#39' AS Comentario, '
      
        '                      0 AS Peticion2, 0 AS MuestraAnterior, dbo.' +
        'PTENTRADAPACIENTEDETALLE.PRECIO'
      'FROM         dbo.PTENTRADAPACIENTEDETALLE INNER JOIN'
      
        '                      dbo.PTPRUEBA ON dbo.PTENTRADAPACIENTEDETAL' +
        'LE.PRUEBAID = dbo.PTPRUEBA.PRUEBAID INNER JOIN'
      
        '                      dbo.PTENTRADAPACIENTE ON dbo.PTENTRADAPACI' +
        'ENTEDETALLE.MUESTRANO = dbo.PTENTRADAPACIENTE.MUESTRANO INNER JO' +
        'IN'
      
        '                      dbo.BSDonacion ON dbo.PTENTRADAPACIENTE.EN' +
        'TRADAID = dbo.BSDonacion.DonacionID'
      'WHERE dbo.PTEntradaPacienteDetalle.MuestraNo = :MuestraNo')
    Left = 376
    Top = 211
    object qrSQLDetalleMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLDetallePruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrSQLDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrSQLDetalleStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 1
    end
    object qrSQLDetalleDepartamento: TStringField
      FieldName = 'Departamento'
      ReadOnly = True
      Size = 10
    end
    object qrSQLDetalleFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLDetalleHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLDetalleUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrSQLDetalleComentario: TStringField
      FieldName = 'Comentario'
      ReadOnly = True
      Size = 15
    end
    object qrSQLDetallePeticion2: TIntegerField
      FieldName = 'Peticion2'
      ReadOnly = True
    end
    object qrSQLDetalleMuestraAnterior: TIntegerField
      FieldName = 'MuestraAnterior'
      ReadOnly = True
    end
    object qrSQLDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
  end
  object qrDonacion: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DonacionId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   *'
      'FROM       BSDonacion '
      'WHERE DonacionId = :DonacionId')
    Left = 376
    Top = 35
    object qrDonacionDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrDonacionComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrDonacionCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrDonacionTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrDonacionPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrDonacionPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrDonacionPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrDonacionTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrDonacionHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrDonacionHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrDonacionDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrDonacionHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrDonacionFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrDonacionMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrDonacionTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDonacionTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrDonacionDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrDonacionPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrDonacionTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrDonacionHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrDonacionHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrDonacionGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrDonacionPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrDonacionNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrDonacionProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDonacionReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDonacionDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrDonacionDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrDonacionDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrDonacionUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object qrDonacionUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object qrDonacionMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDonacionMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDonacionUsuarioAS: TStringField
      FieldName = 'UsuarioAS'
      FixedChar = True
      Size = 15
    end
    object qrDonacionUserIdHemograma: TStringField
      FieldName = 'UserIdHemograma'
      Size = 50
    end
    object qrDonacionCausaRechazoId: TIntegerField
      FieldName = 'CausaRechazoId'
    end
    object qrDonacionTensionArteriar2: TStringField
      FieldName = 'TensionArteriar2'
      Size = 10
    end
    object qrDonacionDoctorIdAutoriza: TStringField
      FieldName = 'DoctorIdAutoriza'
      Size = 10
    end
    object qrDonacionObservacionAutoriza: TMemoField
      FieldName = 'ObservacionAutoriza'
      BlobType = ftMemo
    end
    object qrDonacionUserIdRechaza: TStringField
      FieldName = 'UserIdRechaza'
      Size = 50
    end
    object qrDonacionFechaRechaza: TDateTimeField
      FieldName = 'FechaRechaza'
    end
    object qrDonacionRechazoNota: TStringField
      FieldName = 'RechazoNota'
      Size = 1000
    end
    object qrDonacionLugar_colecta: TStringField
      FieldName = 'Lugar_colecta'
      Size = 50
    end
    object qrDonacionUSUARIOMOD: TStringField
      FieldName = 'USUARIOMOD'
    end
    object qrDonacionFECHAMODIFICACION: TDateTimeField
      FieldName = 'FECHAMODIFICACION'
    end
    object qrDonacionISTBDonacion: TStringField
      FieldName = 'ISTBDonacion'
      ReadOnly = True
      Size = 15
    end
    object qrDonacionSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
  end
  object qrDoctor: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from PTDoctor')
    Left = 176
    Top = 200
    object qrDoctorDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrDoctorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrDoctorCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrDoctorTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrDoctorFAX: TStringField
      FieldName = 'FAX'
    end
    object qrDoctorCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrDoctorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrDoctorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrDoctorDIRECCION: TMemoField
      FieldName = 'DIRECCION'
      BlobType = ftMemo
    end
    object qrDoctorCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrDoctorRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrDoctorESPECIALIDADID: TStringField
      FieldName = 'ESPECIALIDADID'
      Size = 10
    end
    object qrDoctorPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrDoctorCODIGORESULTADO: TStringField
      FieldName = 'CODIGORESULTADO'
      Size = 10
    end
    object qrDoctorUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrDoctorCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrDoctorCOMISION: TBCDField
      FieldName = 'COMISION'
      Precision = 28
      Size = 12
    end
    object qrDoctorDIRECCIONCONSULTA2: TMemoField
      FieldName = 'DIRECCIONCONSULTA2'
      BlobType = ftMemo
    end
    object qrDoctorDIRECCIONCONSULTA1: TMemoField
      FieldName = 'DIRECCIONCONSULTA1'
      BlobType = ftMemo
    end
    object qrDoctorESPECIALIDAD: TStringField
      FieldName = 'ESPECIALIDAD'
      Size = 80
    end
    object qrDoctorCODIGOWEB: TStringField
      FieldName = 'CODIGOWEB'
      Size = 10
    end
    object qrDoctorDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrDoctorRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrDoctormsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
  end
  object qrHemograma: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   *'
      'FROM       BSDonacion'
      'WHERE MuestraNoAS = :MuestraNo')
    Left = 376
    Top = 99
    object qrHemogramaDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrHemogramaMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrHemogramaHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrHemogramaHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrHemogramaGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrHemogramaPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrHemogramaMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrHemogramaUsuarioAS: TStringField
      FieldName = 'UsuarioAS'
      FixedChar = True
      Size = 15
    end
  end
  object plDonacion: TppDBPipeline
    DataSource = dsDomaciones
    UserName = 'Donacion'
    Left = 464
    Top = 281
  end
  object dsDomaciones: TDataSource
    AutoEdit = False
    DataSet = qrDonaciones
    Left = 372
    Top = 276
  end
  object dsDatosEtiqutaGrance: TDataSource
    AutoEdit = False
    DataSet = qFind
    Left = 668
    Top = 292
  end
  object qFind: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.*, dbo.BSTipoFunda.TipoFundaDes, dbo.B' +
        'STipoFunda.Dias, DATEADD(day, dbo.BSTipoFunda.Dias, dbo.BSDonaci' +
        'on.Fecha) '
      
        '                      AS FechaCaducidad, dbo.BSInventario.Produc' +
        'toID AS Expr1, dbo.BSInventario.CodigoId, dbo.BSInventario.Canti' +
        'dad, dbo.BSInventario.Fecha AS Expr2, '
      
        '                      dbo.BSInventario.Hora, dbo.BSProductos.Pro' +
        'ductoDes, dbo.BSDonante.TipoSangre, dbo.BSDonante.RH'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.BSTipoFunda ON dbo.BSDonacion.TipoFund' +
        'aID = dbo.BSTipoFunda.TipoFundaID INNER JOIN'
      
        '                      dbo.BSInventario ON dbo.BSDonacion.Donacio' +
        'nID = dbo.BSInventario.DonacionId INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID INNER JOIN'
      
        '                      dbo.BSDonante ON dbo.BSDonacion.PacienteID' +
        ' = dbo.BSDonante.PacienteID'
      'WHERE     (dbo.BSInventario.CodigoId = :CodigoId)')
    Left = 536
    Top = 308
  end
  object qrDonantes: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonante.PacienteID, dbo.PTCliente.Nombre, dbo.P' +
        'TCliente.Telefono, dbo.PTCliente.Telefono2, dbo.PTCliente.Direcc' +
        'ion, dbo.PTCliente.CiudadID,'
      
        '                       dbo.BSDonante.TipoDonante, dbo.BSDonante.' +
        'Estado, dbo.BSDonante.Rechaso, dbo.BSDonante.RechasoNota, dbo.BS' +
        'Donante.DonanteActivo, '
      
        '                      dbo.BSDonante.TipoSangre, dbo.BSDonante.RH' +
        ', dbo.BSDonante.UltimaDonacionId, dbo.BSDonante.FechaUltimaDon'
      'FROM         dbo.BSDonante INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonante.PacienteID ' +
        '= dbo.PTCliente.ClienteID')
    Left = 344
    Top = 348
    object qrDonantesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonantesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDonantesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrDonantesTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object qrDonantesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrDonantesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrDonantesTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object qrDonantesEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object qrDonantesRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object qrDonantesDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object qrDonantesTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDonantesRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDonantesUltimaDonacionId: TStringField
      FieldName = 'UltimaDonacionId'
    end
    object qrDonantesFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
    object qrDonantesRechasoNota: TMemoField
      FieldName = 'RechasoNota'
      BlobType = ftMemo
    end
  end
  object dsDonantes: TDataSource
    AutoEdit = False
    DataSet = qrDonantes
    Left = 436
    Top = 340
  end
  object qrReservacionesVencidas: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.CodigoId, dbo.BSInventario.DonacionI' +
        'd, dbo.BSInventario.ProductoID, dbo.BSProductos.ProductoDes, dbo' +
        '.BSInventario.Cantidad, '
      
        '                      dbo.BSInventario.Fecha, dbo.BSInventario.H' +
        'ora, dbo.BSInventario.Reservado, dbo.BSInventario.ReservadoHasta' +
        ', dbo.BSInventario.Dias, '
      
        '                      dbo.BSInventario.Vence, dbo.BSInventario.C' +
        'ruce, dbo.BSInventario.ReceptorId, dbo.BSInventario.DoctorId'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      'WHERE     (dbo.BSInventario.ReservadoHasta < :Fecha)')
    Left = 616
    Top = 19
    object qrReservacionesVencidasCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrReservacionesVencidasDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrReservacionesVencidasProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrReservacionesVencidasProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrReservacionesVencidasCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrReservacionesVencidasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrReservacionesVencidasHora: TStringField
      FieldName = 'Hora'
    end
    object qrReservacionesVencidasReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrReservacionesVencidasReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrReservacionesVencidasDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrReservacionesVencidasVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object qrReservacionesVencidasCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrReservacionesVencidasReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrReservacionesVencidasDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
  end
  object qrProductosVencidos: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.CodigoId, dbo.BSInventario.DonacionI' +
        'd, dbo.BSInventario.ProductoID, dbo.BSProductos.ProductoDes, dbo' +
        '.BSInventario.Cantidad, '
      
        '                      dbo.BSInventario.Fecha, dbo.BSInventario.H' +
        'ora, dbo.BSInventario.Reservado, dbo.BSInventario.ReservadoHasta' +
        ', dbo.BSInventario.Dias, '
      
        '                      dbo.BSInventario.Vence, dbo.BSInventario.C' +
        'ruce, dbo.BSInventario.ReceptorId, dbo.BSInventario.DoctorId'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      'WHERE     (dbo.BSInventario.Vence < :Fecha)')
    Left = 624
    Top = 75
    object qrProductosVencidosCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrProductosVencidosDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrProductosVencidosProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrProductosVencidosProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrProductosVencidosCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrProductosVencidosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrProductosVencidosHora: TStringField
      FieldName = 'Hora'
    end
    object qrProductosVencidosReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrProductosVencidosReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrProductosVencidosDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrProductosVencidosVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object qrProductosVencidosCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrProductosVencidosReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrProductosVencidosDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
  end
  object qrDatosProducto: TADOQuery
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
      'SELECT     *'
      'FROM BSInventario'
      'WHERE CodigoId = :CodigoId')
    Left = 56
    Top = 363
    object qrDatosProductoCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrDatosProductoReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrDatosProductoDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrDatosProductoReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDatosProductoReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrDatosProductoCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrDatosProductoCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object qrDatosProductoDisponible: TBooleanField
      FieldName = 'Disponible'
    end
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.ProductoID, dbo.BSProductos.Producto' +
        'Des, SUM(dbo.BSInventario.Cantidad) AS Cantidad, dbo.BSProductos' +
        '.Precio, '
      
        '                      dbo.BSProductos.PrecioDolares, dbo.BSProdu' +
        'ctos.Dias, dbo.BSProductos.PermiteCambioPrecio, dbo.BSProductos.' +
        'CodigoAxapta, '
      
        '                      dbo.BSProductos.Costo, dbo.BSProductos.Ext' +
        'erior, dbo.BSProductos.FacturarCabecera, dbo.BSProductos.Tipo'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      
        'GROUP BY dbo.BSInventario.ProductoID,  dbo.BSProductos.ProductoD' +
        'es, dbo.BSProductos.Precio, dbo.BSProductos.PrecioDolares, dbo.B' +
        'SProductos.Dias, '
      
        '                      dbo.BSProductos.CodigoAxapta, dbo.BSProduc' +
        'tos.Costo, dbo.BSProductos.PermiteCambioPrecio, dbo.BSProductos.' +
        'Exterior, '
      
        '                      dbo.BSProductos.FacturarCabecera, dbo.BSPr' +
        'oductos.Tipo')
    Left = 256
    Top = 35
    object WideStringField1: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object WideStringField2: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object BCDField1: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 19
    end
    object BCDField2: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object BCDField3: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object IntegerField1: TIntegerField
      FieldName = 'Dias'
    end
    object BooleanField1: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object StringField1: TStringField
      FieldName = 'CodigoAxapta'
    end
    object BCDField4: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object BooleanField2: TBooleanField
      FieldName = 'Exterior'
    end
    object BooleanField3: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object BooleanField4: TBooleanField
      FieldName = 'Tipo'
    end
  end
  object qrClientes: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         PTCliente'
      'WHERE ClienteId = :PacienteId')
    Left = 216
    Top = 259
    object qrClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrClientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrClientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
  end
  object qrEntradaPacienteCons: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select * from dbo.PTENTRADAPACIENTE INNER JOIN dbo.BSDonacion ON' +
        ' dbo.PTENTRADAPACIENTE.ENTRADAID = dbo.BSDonacion.DonacionID')
    Left = 624
    Top = 145
    object qrEntradaPacienteConsENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteConsFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteConsHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacienteConsPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteConsCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteConsDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacienteConsPOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacienteConsENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteConsRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteConsNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaPacienteConsFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaPacienteConsFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaPacienteConsRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteConsRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteConsFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteConsHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteConsFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteConsNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacienteConsPROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteConsRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteConsBRUTO: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteConsDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteConsTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteConsTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteConsEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteConsCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteConsSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteConsUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteConsCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacienteConsTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteConsFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteConsTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteConsCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteConsAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteConsAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaPacienteConsCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteConsCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteConsFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaPacienteConsMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteConsMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteConsCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteConsEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteConsSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteConsNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacienteConsPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteConsCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacienteConsPUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteConsCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteConsCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteConsDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteConsGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteConsNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteConsNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteConsFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteConsHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteConsREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteConsENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteConsTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteConsFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteConsDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteConsDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteConsACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteConsCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteConsDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteConsFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaPacienteConsHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteConsTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteConsTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteConsCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteConsCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteConsCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteConsPACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteConsCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteConsDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteConsDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteConsRECID: TIntegerField
      FieldName = 'RECID'
    end
  end
  object ASConnection: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=interfase;Persist Security Info=True' +
      ';User ID=INTERFASE;Data Source=Laboratorio;Initial Catalog=QS36F'
    DefaultDatabase = 'S10D7471'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'MSDASQL.1'
    Left = 448
    Top = 16
  end
  object qrExistePrueba: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'PruebaId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPacienteDetalle'
      'Where MuestraNo = :MuestraNo'
      'AND PruebaId = :PruebaId')
    Left = 168
    Top = 392
  end
  object qrEntradaVentaDetalle: TADOQuery
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
      'Select *  from BSVentaDetalle'
      'Where RecId = :rec')
    Left = 552
    Top = 384
    object qrEntradaVentaDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaVentaDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaVentaDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaVentaDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaVentaDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
    end
    object qrEntradaVentaDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object qrEntradaVentaDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object qrEntradaVentaDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object qrEntradaVentaDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object qrEntradaVentaDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaVentaDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaVentaDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object qrEntradaVentaDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object qrEntradaVentaDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object qrEntradaVentaDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object qrEntradaVentaDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object qrEntradaVentaDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrEntradaVentaDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object qrEntradaVentaDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrEntradaVentaDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object qrEntradaVentaDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object qrEntradaVentaDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaVentaDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaVentaDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object qrEntradaVentaDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaVentaDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object qrEntradaVentaDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaVentaDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 2
    end
    object qrEntradaVentaDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaVentaDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaVentaDetalleResultado: TStringField
      FieldName = 'Resultado'
      Size = 15
    end
    object qrEntradaVentaDetalleCODIGOID: TStringField
      FieldName = 'CODIGOID'
    end
  end
  object qrConsultaProducto: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP (100) PERCENT dbo.BSInventario.CodigoId, dbo.BSIn' +
        'ventario.DonacionId, dbo.BSInventario.ProductoID, dbo.BSInventar' +
        'io.Cantidad, '
      
        '                      dbo.BSInventario.Fecha, dbo.BSInventario.H' +
        'ora, dbo.BSInventario.ProcesoID, dbo.BSInventario.Reservado, dbo' +
        '.BSInventario.ReservadoHasta, '
      
        '                      dbo.BSInventario.Dias, dbo.BSInventario.Ve' +
        'nce, dbo.BSInventario.Cruce, dbo.BSInventario.CrucePacienteId, d' +
        'bo.BSInventario.Disponible, '
      
        '                      dbo.BSInventario.ReceptorId, dbo.BSInventa' +
        'rio.DoctorId, dbo.BSProductos.ProductoDes, dbo.BSProductos.Preci' +
        'o, dbo.BSDonante.TipoSangre, '
      
        '                      dbo.BSDonante.RH, dbo.BSDonacion.PacienteI' +
        'D'
      'FROM         dbo.BSDonante INNER JOIN'
      
        '                      dbo.BSDonacion ON dbo.BSDonante.PacienteID' +
        ' = dbo.BSDonacion.PacienteID RIGHT OUTER JOIN'
      '                      dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID ON '
      
        '                      dbo.BSDonacion.DonacionID = dbo.BSInventar' +
        'io.DonacionId'
      
        'WHERE     (dbo.BSInventario.Disponible = 1) AND (dbo.BSProductos' +
        '.Servicio = 0)'
      'ORDER BY dbo.BSInventario.Fecha, dbo.BSInventario.Hora')
    Left = 272
    Top = 400
    object qrConsultaProductoCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrConsultaProductoDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrConsultaProductoProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrConsultaProductoCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrConsultaProductoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrConsultaProductoHora: TStringField
      FieldName = 'Hora'
    end
    object qrConsultaProductoProcesoID: TWideStringField
      FieldName = 'ProcesoID'
      FixedChar = True
      Size = 10
    end
    object qrConsultaProductoReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrConsultaProductoReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrConsultaProductoDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrConsultaProductoVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object qrConsultaProductoCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrConsultaProductoCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object qrConsultaProductoDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrConsultaProductoReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrConsultaProductoDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrConsultaProductoProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrConsultaProductoPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrConsultaProductoTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrConsultaProductoRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrConsultaProductoPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
  end
  object qrEntradaVenta: TADOQuery
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
      'Select *  from BSVenta'
      'Where RecId = :rec')
    Left = 664
    Top = 384
    object qrEntradaVentaENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaVentaFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaVentaHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaVentaPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaVentaCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaVentaDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaVentaPOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaVentaENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaVentaRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaVentaNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaVentaFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaVentaFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaVentaRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaVentaRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaVentaFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaVentaHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaVentaFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaVentaNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaVentaPROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaVentaRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaVentaBRUTO: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaVentaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaVentaTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaVentaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaVentaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaVentaCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaVentaSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaVentaUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaVentaCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaVentaTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaVentaFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaVentaTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaVentaCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaVentaAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaVentaAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaVentaCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaVentaCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaVentaFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaVentaMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaVentaMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaVentaCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaVentaEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaVentaSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaVentaNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaVentaPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaVentaCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaVentaPUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaVentaCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaVentaCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaVentaDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaVentaGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaVentaNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaVentaNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaVentaFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaVentaHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaVentaREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaVentaENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaVentaTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaVentaFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaVentaDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaVentaDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaVentaACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaVentaCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaVentaDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaVentaFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaVentaHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaVentaTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaVentaESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaVentaTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaVentaCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaVentaCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaVentaCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaVentaPACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaVentaCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaVentaDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaVentaDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaVentaRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaVentaTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      Precision = 19
    end
    object qrEntradaVentaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 10
    end
  end
  object qrNCF: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Tipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select * from BSNCF '
      'WHERE Tipo = :Tipo')
    Left = 128
    Top = 16
    object qrNCFTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrNCFConsecutivo: TIntegerField
      FieldName = 'Consecutivo'
    end
    object qrNCFInicial: TIntegerField
      FieldName = 'Inicial'
    end
    object qrNCFFinal: TIntegerField
      FieldName = 'Final'
    end
    object qrNCFDiario: TBooleanField
      FieldName = 'Diario'
    end
    object qrNCFFijo: TStringField
      FieldName = 'Fijo'
      FixedChar = True
      Size = 11
    end
    object qrNCFDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object qrDespacho: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSVEnta'
      'Where STATUS = '#39'Vendido'#39)
    Left = 408
    Top = 432
    object StringField2: TStringField
      FieldName = 'ENTRADAID'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'FECHA'
    end
    object StringField3: TStringField
      FieldName = 'HORAENTRADA'
    end
    object StringField4: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object IntegerField2: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object StringField8: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object StringField9: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object IntegerField4: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object StringField10: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object StringField11: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object StringField12: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object StringField13: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object IntegerField5: TIntegerField
      FieldName = 'RECORDID'
    end
    object BCDField5: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object BCDField6: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object BCDField7: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object BCDField8: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object StringField14: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object StringField15: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object StringField16: TStringField
      FieldName = 'TELEFONOS'
    end
    object StringField17: TStringField
      FieldName = 'TELEFONO2'
    end
    object StringField18: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object StringField19: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object StringField20: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object StringField21: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object StringField22: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object BCDField9: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object IntegerField6: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object StringField23: TStringField
      FieldName = 'FAX'
    end
    object IntegerField7: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object BCDField10: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object BCDField11: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object BCDField12: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object BCDField13: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object BCDField14: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object BCDField15: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object StringField24: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object StringField25: TStringField
      FieldName = 'APROBACIONNO'
    end
    object StringField26: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object IntegerField8: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object IntegerField9: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object StringField27: TStringField
      FieldName = 'MUESTRANO'
    end
    object StringField28: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object IntegerField10: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object IntegerField11: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object IntegerField12: TIntegerField
      FieldName = 'SEXO'
    end
    object StringField29: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object IntegerField13: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object StringField30: TStringField
      FieldName = 'CARNET'
    end
    object IntegerField14: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object StringField31: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object StringField32: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object StringField33: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object BCDField16: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object IntegerField15: TIntegerField
      FieldName = 'NOAS400'
    end
    object IntegerField16: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object IntegerField17: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object IntegerField18: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object IntegerField19: TIntegerField
      FieldName = 'HOLD'
    end
    object IntegerField20: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object StringField34: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object StringField35: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object StringField36: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object StringField37: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object StringField38: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object IntegerField21: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object StringField39: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object StringField40: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object StringField41: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object BCDField17: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object IntegerField22: TIntegerField
      FieldName = 'ESTATUS'
    end
    object IntegerField23: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object StringField42: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object StringField43: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object StringField44: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object StringField45: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object StringField46: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object StringField47: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object StringField48: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object IntegerField24: TIntegerField
      FieldName = 'RECID'
    end
    object qrDespachoTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      Precision = 19
    end
    object qrDespachoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 10
    end
    object qrDespachoNCF: TStringField
      FieldName = 'NCF'
      FixedChar = True
    end
  end
  object dsDonante: TDataSource
    DataSet = qrDonante
    Left = 592
    Top = 208
  end
  object qrDonante: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       BSDonante'
      'WHERE     (PacienteID = :PacienteID)')
    Left = 536
    Top = 211
    object qrDonantePacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonanteTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object qrDonanteEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object qrDonanteRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object qrDonanteRechasoNota: TWideStringField
      FieldName = 'RechasoNota'
      Size = 100
    end
    object qrDonanteDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object qrDonanteTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDonanteRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDonanteDu: TWideStringField
      FieldName = 'Du'
      FixedChar = True
      Size = 10
    end
    object qrDonanteUltimaDonacionId: TStringField
      FieldName = 'UltimaDonacionId'
    end
    object qrDonanteFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
  end
  object qrCuadres: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  PTCorteCajaCab.CorteId,'
      '  PTCorteCajaCab.Fecha,'
      '  PTCorteCajaCab.Hora,'
      '  PTCorteCajaCab.Usuario,'
      '  PTCorteCajaCab.SucursalId,'
      '  SUM(PTCorteCajaDet.Valor) AS Valor'
      'FROM'
      '  PTCorteCajaCab INNER JOIN'
      
        '  PTCorteCajaDet ON PTCorteCajaCab.CorteId = PTCorteCajaDet.Cort' +
        'eID'
      'GROUP BY'
      '  PTCorteCajaCab.CorteId,'
      '  PTCorteCajaCab.Fecha,'
      '  PTCorteCajaCab.Hora,'
      '  PTCorteCajaCab.Usuario,'
      '  PTCorteCajaCab.SucursalId')
    Left = 272
    Top = 195
    object qrCuadresCorteId: TStringField
      FieldName = 'CorteId'
    end
    object qrCuadresFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrCuadresHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object qrCuadresUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object qrCuadresSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrCuadresValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
  object qrInventario: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.CodigoId, dbo.BSInventario.ProductoI' +
        'D, dbo.BSInventario.DonacionId, dbo.BSInventario.Cantidad, dbo.B' +
        'SInventario.Fecha, '
      
        '                      dbo.BSInventario.Hora, dbo.BSInventario.Re' +
        'servado, dbo.BSInventario.Vence, dbo.BSInventario.Disponible, db' +
        'o.BSProductos.Precio, '
      
        '                      dbo.BSProductos.ProductoDes, dbo.BSDonante' +
        '.TipoSangre, dbo.BSDonante.RH'
      'FROM         dbo.BSDonante INNER JOIN'
      
        '                      dbo.BSDonacion ON dbo.BSDonante.PacienteID' +
        ' = dbo.BSDonacion.PacienteID INNER JOIN'
      '                      dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID ON dbo.BSDonacion.DonacionID =' +
        ' dbo.BSInventario.DonacionId'
      'where isnull(status,'#39'A'#39') = '#39'A'#39
      'and (BSInventario.Reservado = 0) AND (Caja = 0)')
    Left = 296
    Top = 267
    object qrInventarioDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrInventarioCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrInventarioProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrInventarioCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrInventarioFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrInventarioHora: TStringField
      FieldName = 'Hora'
    end
    object qrInventarioReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrInventarioVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object qrInventarioDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrInventarioPrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrInventarioProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrInventarioTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrInventarioRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
  end
  object qrListaDonaciones: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.DonacionID, dbo.BSDonacion.MuestraNo, ' +
        'dbo.BSDonacion.MuestraNoAS, dbo.BSDonacion.NoAsCorto, dbo.BSDona' +
        'cion.Fecha,'
      
        '                      dbo.BSDonacion.PacienteID, dbo.BSDonacion.' +
        'NotaEntrevista, dbo.BSDonacion.DonacionStatus, dbo.BSDonacion.Do' +
        'nacionTipo,'
      
        '                      dbo.BSDonacion.Comentario, dbo.BSDonacion.' +
        'CantidadRecogida, dbo.BSDonacion.Temperatura, dbo.BSDonacion.Pes' +
        'o,'
      
        '                      dbo.BSDonacion.PulsoMinimo, dbo.BSDonacion' +
        '.PulsoEstado, dbo.BSDonacion.TensionArteriar, dbo.BSDonacion.Hor' +
        'aInicio, dbo.BSDonacion.HoraFin,'
      
        '                      dbo.BSDonacion.DirigidoPacienteId, dbo.BSD' +
        'onacion.DirigidoNombre, dbo.BSDonacion.Hospital, dbo.BSDonacion.' +
        'FechaTranfusion,'
      
        '                      dbo.BSDonacion.Medico, dbo.BSDonacion.Tele' +
        'fono, dbo.BSDonacion.Telefono2, dbo.BSDonacion.DireccionMedico, ' +
        'dbo.BSDonacion.Pagina,'
      
        '                      dbo.BSDonacion.TipoFundaID, dbo.BSDonacion' +
        '.Hemoglobina, dbo.BSDonacion.Hematocito, dbo.BSDonacion.Globulos' +
        'Blancos,'
      
        '                      dbo.BSDonacion.Plaquetas, dbo.BSDonacion.U' +
        'suarioAS, dbo.BSDonacion.NotasCuestionario, dbo.BSDonacion.Produ' +
        'ctoID,'
      
        '                      dbo.BSDonacion.Reservado, dbo.BSDonacion.D' +
        'isponible, dbo.BSDonacion.DoctorId, dbo.BSDonacion.UserIdCuestio' +
        'nario,'
      
        '                      dbo.BSDonacion.UserIdMuestra, dbo.BSDonaci' +
        'on.UserIdHemograma, dbo.BSDonacion.CausaRechazoId,'
      
        '                      dbo.PTENTRADAPACIENTE.NOMBREPACIENTE, dbo.' +
        'PTENTRADAPACIENTE.RECID, dbo.BSCausasRechazo.Causa AS CausaRecha' +
        'zo'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTENTRADAPACIENTE ON dbo.BSDonacion.Do' +
        'nacionID = dbo.PTENTRADAPACIENTE.ENTRADAID LEFT OUTER JOIN'
      
        '                      dbo.BSCausasRechazo ON dbo.BSDonacion.Caus' +
        'aRechazoId = dbo.BSCausasRechazo.Id'
      '')
    Left = 384
    Top = 611
    object qrListaDonacionesDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrListaDonacionesMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrListaDonacionesMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrListaDonacionesNoAsCorto: TStringField
      FieldName = 'NoAsCorto'
      ReadOnly = True
      Size = 11
    end
    object qrListaDonacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrListaDonacionesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrListaDonacionesNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrListaDonacionesDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrListaDonacionesDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrListaDonacionesComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrListaDonacionesCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrListaDonacionesTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrListaDonacionesPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrListaDonacionesPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrListaDonacionesPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrListaDonacionesTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrListaDonacionesHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrListaDonacionesHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrListaDonacionesDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrListaDonacionesDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrListaDonacionesHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrListaDonacionesFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrListaDonacionesMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrListaDonacionesTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrListaDonacionesTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrListaDonacionesDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrListaDonacionesPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrListaDonacionesTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrListaDonacionesHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrListaDonacionesHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrListaDonacionesGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrListaDonacionesPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrListaDonacionesUsuarioAS: TStringField
      FieldName = 'UsuarioAS'
      FixedChar = True
      Size = 15
    end
    object qrListaDonacionesNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrListaDonacionesProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrListaDonacionesReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrListaDonacionesDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrListaDonacionesDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrListaDonacionesUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object qrListaDonacionesUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object qrListaDonacionesUserIdHemograma: TStringField
      FieldName = 'UserIdHemograma'
      Size = 50
    end
    object qrListaDonacionesCausaRechazoId: TIntegerField
      FieldName = 'CausaRechazoId'
    end
    object qrListaDonacionesNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrListaDonacionesRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrListaDonacionesCausaRechazo: TStringField
      FieldName = 'CausaRechazo'
      Size = 50
    end
  end
  object dsListaDonaciones: TDataSource
    DataSet = qrListaDonaciones
    Left = 480
    Top = 608
  end
  object tbDonante: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    IndexFieldNames = 'PacienteID'
    MasterFields = 'PacienteID'
    MasterSource = dsListaDonaciones
    TableName = 'BSDonante'
    Left = 56
    Top = 616
    object tbDonantePacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object tbDonanteTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object tbDonanteEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object tbDonanteRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object tbDonanteDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object tbDonanteTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object tbDonanteRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object tbDonanteDu: TWideStringField
      FieldName = 'Du'
      FixedChar = True
      Size = 10
    end
    object tbDonanteUltimaDonacionId: TStringField
      FieldName = 'UltimaDonacionId'
    end
    object tbDonanteFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
    object tbDonanteRechasoNota: TMemoField
      FieldName = 'RechasoNota'
      BlobType = ftMemo
    end
  end
  object qrCausasRechaso: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM BSCausasRechazo')
    Left = 152
    Top = 459
    object qrCausasRechasoId: TIntegerField
      FieldName = 'Id'
    end
    object qrCausasRechasoOrden: TIntegerField
      FieldName = 'Orden'
    end
    object qrCausasRechasoCausa: TStringField
      FieldName = 'Causa'
      Size = 50
    end
  end
  object dsCausasRechaso: TDataSource
    DataSet = qrCausasRechaso
    Left = 312
    Top = 472
  end
  object qrProductosIniciales: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSProductos'
      'where Inicial = 1')
    Left = 120
    Top = 528
  end
  object dsProductosIniciales: TDataSource
    AutoEdit = False
    DataSet = qrProductosIniciales
    Left = 248
    Top = 536
  end
  object qrEntrada: TADOQuery
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
      'Select *  from PTEntradaPaciente'
      'Where EntradaId = :EntradaId')
    Left = 192
    Top = 608
    object qrEntradaENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaRECID: TIntegerField
      FieldName = 'RECID'
    end
  end
  object qrEmpresas: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'RNC'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From PTEmpresa'
      'WHERE RNC like :RNC')
    Left = 648
    Top = 456
    object qrEmpresasEmpresaId: TAutoIncField
      FieldName = 'EmpresaId'
      ReadOnly = True
    end
    object qrEmpresasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object qrEmpresasNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrEmpresasRNC: TStringField
      FieldName = 'RNC'
    end
    object qrEmpresasTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrEmpresasTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object qrEmpresasFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEmpresasNCFTipo: TStringField
      FieldName = 'NCFTipo'
      FixedChar = True
      Size = 2
    end
  end
  object qrBuscarEmpresa: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From PTEmpresa')
    Left = 648
    Top = 528
    object AutoIncField1: TAutoIncField
      FieldName = 'EmpresaId'
      ReadOnly = True
    end
    object StringField49: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object StringField50: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object StringField51: TStringField
      FieldName = 'RNC'
    end
    object StringField52: TStringField
      FieldName = 'Telefono'
    end
    object StringField53: TStringField
      FieldName = 'Telefono1'
    end
    object StringField54: TStringField
      FieldName = 'FAX'
    end
    object StringField55: TStringField
      FieldName = 'NCFTipo'
      FixedChar = True
      Size = 2
    end
  end
  object qrCategorias: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM   PTTipoCliente')
    Left = 648
    Top = 603
    object qrCategoriasTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrCategoriasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object qrCategoriasDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrCategoriasRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrCategoriasmsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
  end
  object qrPrecios: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductoId'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'TipoCliente'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSPrecio'
      'WHERE ( ProductoId = :ProductoId)'
      'AND (TIPOCLIENTE = :TipoCliente)')
    Left = 472
    Top = 520
    object qrPreciosProductoId: TWideStringField
      FieldName = 'ProductoId'
      FixedChar = True
      Size = 10
    end
    object qrPreciosTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      FixedChar = True
      Size = 5
    end
    object qrPreciosPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
  end
  object dsCategorias: TDataSource
    DataSet = qrCategorias
    Left = 712
    Top = 600
  end
  object dsTipoBolsa: TDataSource
    AutoEdit = False
    DataSet = qrTipoBolsa
    Left = 568
    Top = 464
  end
  object qrTipoBolsa: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSTipoFunda')
    Left = 496
    Top = 464
    object qrTipoBolsaTipoFundaDes: TWideStringField
      FieldName = 'TipoFundaDes'
      Size = 50
    end
    object qrTipoBolsaDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrTipoBolsaTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 3
    end
  end
  object qrSQLEncabezadocruce: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.PTENTRADAPACIENTE.MuestraNoAS AS Muestra, dbo.PTC' +
        'LIENTE.NOMBRE, ISNULL(SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRAD' +
        'A, 1, 2) '
      
        '                      + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTR' +
        'ADA, 4, 2) + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRADA, 7, 2),' +
        ' '#39'000000'#39') AS Hora, '
      
        '                      dbo.PTCLIENTE.DIRECCION, DATEDIFF(year, db' +
        'o.PTCLIENTE.FECHANACIMIENTO, dbo.PTENTRADAPACIENTE.FECHA) AS Eda' +
        'd, '
      
        '                      dbo.PTCLIENTE.FECHANACIMIENTO AS FechaNaci' +
        'miento, ISNULL(dbo.PTCLIENTE.TELEFONO, '#39'0'#39') AS Telefono, '#39'PRIVAD' +
        'O'#39' AS Categoria, '
      
        '                      dbo.PTENTRADAPACIENTE.FECHA AS FechaEntrad' +
        'a, dbo.PTENTRADAPACIENTE.USERID, dbo.PTCLIENTE.SEXO, '
      
        '                      case when dbo.PTCLIENTE.tipodocumentoid = ' +
        '1 then REPLACE(dbo.PTCLIENTE.IDENTIFICACION, '#39'-'#39', '#39#39') else '#39'0000' +
        '0000000'#39' end AS Cedula, '
      
        '                      dbo.PTENTRADAPACIENTE.SUCURSALID, ISNULL(d' +
        'bo.PTENTRADAPACIENTE.DOCTORID, '
      
        '                      '#39'0'#39') AS DoctorId, '#39#39' AS Doctor, REPLACE(db' +
        'o.PTENTRADAPACIENTE.PACIENTEID, '#39'-'#39', '#39#39') AS Cliente, 0 AS Factur' +
        'ado, 0 AS Pagado, 0 AS Resto, '
      
        '                      1 AS TipResPaciente, 0 AS Internet, 0 AS T' +
        'ipResDoctor, 0 AS InternetDoctor, 1 AS TipResCliente, 0 AS Inter' +
        'netCliente, '
      
        '                      '#39'BANCO DE SANGRE'#39' AS Comentario, TIPOCLIEN' +
        'TE'
      'FROM  dbo.PTENTRADAPACIENTE INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.PTENTRADAPACIENTE.PAC' +
        'IENTEID = dbo.PTCLIENTE.CLIENTEID '
      'WHERE dbo.PTENTRADAPACIENTE.MuestraNoAS = :MuestraNo')
    Left = 496
    Top = 155
    object qrSQLEncabezadocruceMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLEncabezadocruceNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object qrSQLEncabezadocruceHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLEncabezadocruceDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrSQLEncabezadocruceEdad: TIntegerField
      FieldName = 'Edad'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrSQLEncabezadocruceTelefono: TStringField
      FieldName = 'Telefono'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceCategoria: TStringField
      FieldName = 'Categoria'
      ReadOnly = True
      Size = 7
    end
    object qrSQLEncabezadocruceFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLEncabezadocruceUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrSQLEncabezadocruceSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrSQLEncabezadocruceCedula: TStringField
      FieldName = 'Cedula'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadocruceSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrSQLEncabezadocruceDoctorId: TStringField
      FieldName = 'DoctorId'
      ReadOnly = True
      Size = 10
    end
    object qrSQLEncabezadocruceDoctor: TStringField
      FieldName = 'Doctor'
      ReadOnly = True
      Size = 1
    end
    object qrSQLEncabezadocruceCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadocruceFacturado: TIntegerField
      FieldName = 'Facturado'
      ReadOnly = True
    end
    object qrSQLEncabezadocrucePagado: TIntegerField
      FieldName = 'Pagado'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceResto: TIntegerField
      FieldName = 'Resto'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceTipResPaciente: TIntegerField
      FieldName = 'TipResPaciente'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceInternet: TIntegerField
      FieldName = 'Internet'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceTipResDoctor: TIntegerField
      FieldName = 'TipResDoctor'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceInternetDoctor: TIntegerField
      FieldName = 'InternetDoctor'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceTipResCliente: TIntegerField
      FieldName = 'TipResCliente'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceInternetCliente: TIntegerField
      FieldName = 'InternetCliente'
      ReadOnly = True
    end
    object qrSQLEncabezadocruceComentario: TStringField
      FieldName = 'Comentario'
      ReadOnly = True
      Size = 15
    end
    object qrSQLEncabezadocruceTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
  end
  object qrSQLDetalleCruce: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.PTENTRADAPACIENTE.MuestraNoAS AS Muestra, dbo.PTP' +
        'RUEBA.CODIGOIDAS400 AS PruebaID, dbo.PTPRUEBA.DESCRIPCION, '#39'C'#39' A' +
        'S Status, '
      
        '                      ISNULL(dbo.PTPRUEBA.DEPARTAMENTO, '#39'0'#39') AS ' +
        'Departamento, dbo.PTENTRADAPACIENTE.FECHA AS FechaEntrada, '
      
        '                      SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRAD' +
        'A, 1, 2) + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRADA, 4, 2) '
      
        '                      + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTR' +
        'ADA, 7, 2) AS Hora, dbo.PTENTRADAPACIENTE.USERID, '#39'BANCO DE SANG' +
        'RE'#39' AS Comentario, '
      
        '                      0 AS Peticion2, 0 AS MuestraAnterior, dbo.' +
        'PTENTRADAPACIENTEDETALLE.PRECIO'
      'FROM         dbo.PTENTRADAPACIENTEDETALLE INNER JOIN'
      
        '                      dbo.PTPRUEBA ON dbo.PTENTRADAPACIENTEDETAL' +
        'LE.PRUEBAID = dbo.PTPRUEBA.PRUEBAID INNER JOIN'
      
        '                      dbo.PTENTRADAPACIENTE ON dbo.PTENTRADAPACI' +
        'ENTEDETALLE.MUESTRANO = dbo.PTENTRADAPACIENTE.MUESTRANO'
      'WHERE  dbo.PTEntradaPacienteDetalle.MuestraNo = :MuestraNo')
    Left = 464
    Top = 219
    object qrSQLDetalleCruceMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLDetalleCrucePruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrSQLDetalleCruceDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrSQLDetalleCruceStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 1
    end
    object qrSQLDetalleCruceDepartamento: TStringField
      FieldName = 'Departamento'
      ReadOnly = True
      Size = 10
    end
    object qrSQLDetalleCruceFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLDetalleCruceHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLDetalleCruceUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrSQLDetalleCruceComentario: TStringField
      FieldName = 'Comentario'
      ReadOnly = True
      Size = 15
    end
    object qrSQLDetalleCrucePeticion2: TIntegerField
      FieldName = 'Peticion2'
      ReadOnly = True
    end
    object qrSQLDetalleCruceMuestraAnterior: TIntegerField
      FieldName = 'MuestraAnterior'
      ReadOnly = True
    end
    object qrSQLDetalleCrucePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
  end
  object Qutilitario: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    Left = 312
    Top = 19
    object WideStringField3: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object WideStringField4: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object BCDField18: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 19
    end
    object BCDField19: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object BCDField20: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object IntegerField25: TIntegerField
      FieldName = 'Dias'
    end
    object BooleanField5: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object StringField56: TStringField
      FieldName = 'CodigoAxapta'
    end
    object BCDField21: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object BooleanField6: TBooleanField
      FieldName = 'Exterior'
    end
    object BooleanField7: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object BooleanField8: TBooleanField
      FieldName = 'Tipo'
    end
  end
end
