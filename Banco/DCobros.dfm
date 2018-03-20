object dmCobros: TdmCobros
  OldCreateOrder = False
  Height = 457
  Width = 605
  object mdPago: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'Orden'
    Left = 21
    Top = 108
    object mdPagoFormaDePago: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object mdPagoOrden: TSmallintField
      FieldName = 'Orden'
    end
    object mdPagoPagado: TCurrencyField
      FieldName = 'Pagado'
      DisplayFormat = '##,###,##0.00'
    end
    object mdPagoFormaPagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 15
    end
    object mdPagorefrecid: TLargeintField
      FieldName = 'refrecid'
    end
    object mdPagoMoneda: TStringField
      FieldName = 'Moneda'
      Size = 5
    end
  end
  object dsPago: TDataSource
    DataSet = mdPago
    Left = 97
    Top = 112
  end
  object qrCobro: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CobroId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTCobro'
      'Where CobroId = :CobroId;')
    Left = 24
    Top = 32
    object qrCobroCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrCobroTurnoID: TStringField
      FieldName = 'TurnoID'
      Size = 10
    end
    object qrCobroEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object qrCobroPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrCobroSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object qrCobroFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrCobroHora: TStringField
      FieldName = 'Hora'
    end
    object qrCobroPacientePrincipalID: TStringField
      FieldName = 'PacientePrincipalID'
      Size = 10
    end
    object qrCobroUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrCobroTotalCobrado: TBCDField
      FieldName = 'TotalCobrado'
      Precision = 19
    end
    object qrCobrorefRecid: TLargeintField
      FieldName = 'refRecid'
    end
    object qrCobroTotalFactura: TBCDField
      FieldName = 'TotalFactura'
      Precision = 19
    end
    object qrCobroTotalPagado: TBCDField
      FieldName = 'TotalPagado'
      Precision = 19
    end
    object qrCobroPendienteFactura: TBCDField
      FieldName = 'PendienteFactura'
      Precision = 19
    end
    object qrCobroPendienteCobro: TBCDField
      FieldName = 'PendienteCobro'
      Precision = 19
    end
    object qrCobroReciboNo: TStringField
      FieldName = 'ReciboNo'
    end
    object qrCobroClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrCobroAplicado: TBooleanField
      FieldName = 'Aplicado'
    end
    object qrCobroSecuencia: TLargeintField
      FieldName = 'Secuencia'
    end
    object qrCobroMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrCobroTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object qrCobroCuadreGlobal: TStringField
      FieldName = 'CuadreGlobal'
    end
    object qrCobroCuadreUsuario: TStringField
      FieldName = 'CuadreUsuario'
    end
    object qrCobroConcepto: TStringField
      FieldName = 'Concepto'
      Size = 50
    end
  end
  object qrCobroDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CobroId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTCobroDetalle'
      'Where CobroId = :CobroId')
    Left = 112
    Top = 32
    object qrCobroDetalleCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrCobroDetalleFormaDePagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 10
    end
    object qrCobroDetalleMonto: TBCDField
      FieldName = 'Monto'
      Precision = 19
    end
    object qrCobroDetalleOrden: TIntegerField
      FieldName = 'Orden'
    end
    object qrCobroDetallerecid: TLargeintField
      FieldName = 'recid'
    end
    object qrCobroDetalleRefRecid: TLargeintField
      FieldName = 'RefRecid'
    end
    object qrCobroDetalleMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrCobroDetalleMontoMST: TBCDField
      FieldName = 'MontoMST'
      Precision = 19
    end
  end
  object tbFormaPago: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'FormaDePagoID'
    TableName = 'PTFormaDePago'
    Left = 328
    Top = 32
    object tbFormaPagoFormaDePagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 10
    end
    object tbFormaPagoOrden: TIntegerField
      FieldName = 'Orden'
    end
    object tbFormaPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object tbFormaPagoMoneda: TStringField
      FieldName = 'Moneda'
      Size = 5
    end
  end
  object dsCobroDetalle: TDataSource
    DataSet = qrCobroDetalle
    Left = 201
    Top = 32
  end
  object qrTotal: TADOQuery
    Connection = DM.DataBase
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
      'Select sum(Monto) as Monto from PTCobroDetalle'
      'Where refrecId = :RecId')
    Left = 328
    Top = 104
    object qrTotalMonto: TBCDField
      FieldName = 'Monto'
      ReadOnly = True
      Precision = 19
    end
  end
  object cmdInsertarFormasCobros: TADOCommand
    CommandText = 
      'DECLARE @Id INT'#13#10'DECLARE @CorteId VARCHAR(20)'#13#10#13#10'SET @Id = :Id'#13#10 +
      'SET @CorteId = :CorteId'#13#10#13#10'INSERT INTO PTCorteCajaDet1 ( Id, Cor' +
      'teId, Forma, Tipo, Denominacion )'#13#10'SELECT @Id, @CorteId, Forma, ' +
      'Tipo, Denominacion'#13#10'FROM BSFormasPagos'
    Connection = DM.DataBase
    Parameters = <
      item
        Name = 'Id'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CorteId'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 424
    Top = 232
  end
  object qrCuadreGlobal: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     COUNT(*) AS Numero'
      'FROM         PTCobro'
      'WHERE     (CuadreGlobal IS NULL)')
    Left = 232
    Top = 200
    object qrCuadreGlobalNumero: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object qrCuadreUsuario: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UserId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     COUNT(*) AS Numero'
      'FROM         PTCobro'
      'WHERE     (CuadreUsuario IS NULL) AND (UsuarioID = :UserId)')
    Left = 352
    Top = 200
    object qrCuadreUsuarioNumero: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object qrTemporalCorte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     MAX(Id) as Ultimo'
      'FROM         PTCorteCajaDet1')
    Left = 232
    Top = 264
    object qrTemporalCorteUltimo: TIntegerField
      FieldName = 'Ultimo'
      ReadOnly = True
    end
  end
  object qrSumaCorte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CorteId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     SUM(Total) AS Total'
      'FROM         PTCorteCajaDet1'
      'WHERE     (CorteId = :CorteId)')
    Left = 136
    Top = 200
    object qrSumaCorteTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 19
    end
  end
  object qrCorteEfectivo: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrCorteEfectivoBeforePost
    Parameters = <
      item
        Name = 'IdCorte'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         PTCorteCajaDet1'
      'WHERE     (Id = :IdCorte) '
      'AND (Forma = '#39'Efectivo'#39')')
    Left = 128
    Top = 272
    object qrCorteEfectivoId: TIntegerField
      FieldName = 'Id'
    end
    object qrCorteEfectivoCorteId: TStringField
      FieldName = 'CorteId'
    end
    object qrCorteEfectivoForma: TStringField
      FieldName = 'Forma'
      FixedChar = True
      Size = 10
    end
    object qrCorteEfectivoTipo: TStringField
      FieldName = 'Tipo'
    end
    object qrCorteEfectivoDenominacion: TBCDField
      FieldName = 'Denominacion'
      Precision = 19
    end
    object qrCorteEfectivoCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object qrCorteEfectivoTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
  object qrCorteOtros: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCorte'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         PTCorteCajaDet1'
      'WHERE     (Id = :IdCorte) '
      'AND (Forma <> '#39'Efectivo'#39')')
    Left = 24
    Top = 224
    object IntegerField1: TIntegerField
      FieldName = 'Id'
    end
    object StringField1: TStringField
      FieldName = 'CorteId'
    end
    object StringField2: TStringField
      FieldName = 'Forma'
      FixedChar = True
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'Tipo'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Cantidad'
    end
    object BCDField1: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
  object rvCorte: TRvProject
    ProjectFile = '.\Reportes\Corte.rav'
    Left = 512
    Top = 400
  end
  object qrListaCorteEfectivo: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CorteId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  BSFormasPagos.OrdenImpresion,'
      '  PTCorteCajaDet1.CorteId,'
      '  PTCorteCajaCab.Fecha,'
      '  PTCorteCajaCab.Hora,'
      '  PTCorteCajaCab.Usuario,'
      
        '  ISNULL(PTCorteCajaDet.FormaDePagoId, PTCorteCajaDet1.Forma) AS' +
        ' Pago,'
      '  PTCorteCajaCab.SucursalId,'
      '  ISNULL(PTCobro.TotalCobrado, 0) AS Venta,'
      '  ISNULL(PTCorteCajaDet1.Total, 0) AS Caja,'
      
        '  ISNULL(isnull(PTCorteCajaDet1.Total,0) - isnull(PTCobro.TotalC' +
        'obrado,0), 0) AS Diferencia'
      'FROM'
      '  PTCorteCajaCab LEFT JOIN'
      
        '  PTCorteCajaDet ON PTCorteCajaCab.CorteId = PTCorteCajaDet.Cort' +
        'eID '
      #9'right JOIN'
      '  ( SELECT     CorteId, Forma, SUM(Total) AS Total'
      '      FROM         dbo.PTCorteCajaDet1'
      
        '      GROUP BY CorteId, Forma ) PTCorteCajaDet1 ON PTCorteCajaDe' +
        't1.CorteId = PTCorteCajaDet.CorteID'
      '  AND PTCorteCajaDet1.Forma = PTCorteCajaDet.FormaDePagoId'
      
        '  join dbo.BSFormasPagos on BSFormasPagos.forma = PTCorteCajaDet' +
        '1.forma'
      
        '  join (select case when isnull(a.CuadreGlobal,'#39#39') <> '#39#39' then a.' +
        'CuadreGlobal else a.CuadreUsuario end as CuadreId, b.formadepago' +
        'id,'
      
        '          sum(case when a.totalcobrado < b.monto then a.totalcob' +
        'rado else b.monto end) as TotalCobrado'
      
        '          from PTCobro a join dbo.PTCobroDetalle b on (b.cobroid' +
        ' = a.cobroid)'
      
        '        group by case when isnull(a.CuadreGlobal,'#39#39') <> '#39#39' then ' +
        'a.CuadreGlobal else CuadreUsuario end, b.formadepagoid) as PTCob' +
        'ro on (PTCobro.CuadreId =  PTCorteCajaCab.CorteId and PTCobro.fo' +
        'rmadepagoid = PTCorteCajaDet1.forma)'
      'WHERE'
      '  PTCorteCajaDet1.CorteId = :CorteId'
      'GROUP BY'
      '  BSFormasPagos.OrdenImpresion,'
      '  PTCorteCajaDet1.CorteId,'
      '  PTCorteCajaCab.Fecha,'
      '  PTCorteCajaCab.Hora,'
      '  PTCorteCajaCab.Usuario,'
      '  ISNULL(PTCorteCajaDet.FormaDePagoId, PTCorteCajaDet1.Forma),'
      '  PTCorteCajaCab.SucursalId,'
      '  ISNULL(PTCobro.TotalCobrado, 0),'
      '  ISNULL(PTCorteCajaDet1.Total, 0) '
      'order by BSFormasPagos.OrdenImpresion'
      '')
    Left = 56
    Top = 320
    object qrListaCorteEfectivoCorteId: TStringField
      FieldName = 'CorteId'
    end
    object qrListaCorteEfectivoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrListaCorteEfectivoHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object qrListaCorteEfectivoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object qrListaCorteEfectivoPago: TStringField
      FieldName = 'Pago'
      ReadOnly = True
      Size = 10
    end
    object qrListaCorteEfectivoSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrListaCorteEfectivoVenta: TBCDField
      FieldName = 'Venta'
      ReadOnly = True
      DisplayFormat = '#,##0.#0'
      Precision = 19
    end
    object qrListaCorteEfectivoCaja: TBCDField
      FieldName = 'Caja'
      ReadOnly = True
      DisplayFormat = '#,##0.#0'
      Precision = 19
    end
    object qrListaCorteEfectivoDiferencia: TBCDField
      FieldName = 'Diferencia'
      ReadOnly = True
      DisplayFormat = '#,##0.#0'
      Precision = 19
    end
  end
  object rvListaCorteEfectivo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrListaCorteEfectivo
    Left = 48
    Top = 384
  end
  object qrListaOperaciones: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CorteId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  PTCorteCajaDet.Tipo,'
      '  PTCorteCajaDet.FormaDePagoId,'
      '  SUM(PTCorteCajaDet.Valor) AS Valor'
      'FROM'
      '  PTCorteCajaCab LEFT JOIN'
      
        '  PTCorteCajaDet ON PTCorteCajaCab.CorteId = PTCorteCajaDet.Cort' +
        'eID'
      'WHERE'
      '  (PTCorteCajaCab.CorteId = :CorteId)'
      'GROUP BY'
      '  PTCorteCajaDet.Tipo,'
      '  PTCorteCajaDet.FormaDePagoId')
    Left = 184
    Top = 328
    object qrListaOperacionesTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object qrListaOperacionesFormaDePagoId: TStringField
      FieldName = 'FormaDePagoId'
      Size = 10
    end
    object qrListaOperacionesValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
  object rvListaOperaciones: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrListaOperaciones
    Left = 176
    Top = 384
  end
  object qrCobrosUsuarios: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CorteId'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'Usuario,'
      '  isnull([Cheque], 0) +'
      '  isnull([Efectivo], 0) +'
      '  isnull([Tarjeta], 0) +'
      '  isnull([Transferencia], 0) +'
      '  isnull([Nota de Credito], 0) as Total,'
      #9'[Cheque],  [Efectivo],  [Tarjeta],'
      '  isnull([Transferencia], 0) +'
      '  isnull([Nota de Credito], 0) as Otros'
      'FROM'
      '('
      '  SELECT'
      '    PTCobro.UsuarioID AS Usuario,'
      '    PTFormaDePago.Descripcion AS Descripcion,'
      '    SUM(PTCobroDetalle.Monto) AS Valor'
      '  FROM PTCorteCajaCab'
      
        '    INNER JOIN PTCobro ON PTCorteCajaCab.CorteId = PTCobro.Cuadr' +
        'eGlobal'
      
        '      INNER JOIN PTCobroDetalle ON PTCobro.CobroID = PTCobroDeta' +
        'lle.CobroID'
      
        '        INNER JOIN PTFormaDePago ON PTCobroDetalle.FormaDePagoID' +
        ' = PTFormaDePago.FormaDePagoID'
      '  WHERE  (PTCorteCajaCab.CorteId LIKE :CorteId)'
      '  GROUP BY PTCobro.UsuarioID, PTFormaDePago.Descripcion'
      ') p'
      'PIVOT'
      '('#9'SUM(Valor)'
      'FOR'
      #9'Descripcion'
      
        'IN ([Cheque], [Efectivo], [Nota de Credito], [Tarjeta], [Transfe' +
        'rencia]) ) pvt')
    Left = 296
    Top = 328
    object qrCobrosUsuariosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object qrCobrosUsuariosTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrCobrosUsuariosCheque: TBCDField
      FieldName = 'Cheque'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrCobrosUsuariosEfectivo: TBCDField
      FieldName = 'Efectivo'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrCobrosUsuariosTarjeta: TBCDField
      FieldName = 'Tarjeta'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrCobrosUsuariosOtros: TBCDField
      FieldName = 'Otros'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
  object rvCobrosUsuarios: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrCobrosUsuarios
    Left = 296
    Top = 376
  end
  object qrDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Corte'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @Corte VARCHAR(20)'
      ''
      'SET @Corte = :Corte'
      ''
      'SELECT'
      '  BSVENTADETALLE.PRUEBAID,'
      '  BSVENTADETALLE.DESCRIPCION,'
      '  COUNT(*) AS Cantidad,'
      '  SUM(BSVENTADETALLE.TOTALlINEA) AS Total'
      'FROM'
      '--si quieres romper por el codigo solamente se debe de poner'
      '--el campo  codigoid en la lista'
      '  (select refrecid, cuadreusuario,CuadreGlobal  from dbo.PTCobro'
      '      WHERE'
      '          (CuadreGlobal = @Corte )'
      '      OR'
      '         (CuadreUsuario = @Corte) ) as PTCobro'
      'INNER JOIN'
      '  BSVENTADETALLE ON PTCobro.refRecid = BSVENTADETALLE.RECID'
      'WHERE'
      '  (PTCobro.CuadreGlobal = @Corte )'
      'OR'
      '  (PTCobro.CuadreUsuario = @Corte)'
      'GROUP BY'
      '  BSVENTADETALLE.PRUEBAID,'
      '  BSVENTADETALLE.DESCRIPCION'
      '')
    Left = 376
    Top = 328
    object qrDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrDetalleCantidad: TIntegerField
      FieldName = 'Cantidad'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object qrDetalleTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,##0.#0'
      Precision = 32
      Size = 12
    end
  end
  object rvDetalle: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrDetalle
    Left = 376
    Top = 376
  end
  object qrDescuento: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Corte'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @Corte VARCHAR(20)'
      ''
      'SET @Corte = :Corte'
      ''
      'SELECT SUM(dbo.BSVenta.Bruto) AS Total,    '
      'SUM(dbo.BSVenta.DESCUENTO) AS Descuento,'
      '           SUM(dbo.BSVenta.Neto) AS Neto,'
      '           SUM(dbo.BSVenta.TotalPagado) AS Pagado,'
      '           SUM(dbo.BSVenta.TotalPendiente) AS pendiente'
      'FROM         dbo.PTCobro INNER JOIN'
      
        '                      dbo.BSVenta ON dbo.PTCobro.refRecid = dbo.' +
        'BSVenta.RECID'
      'WHERE'
      '  (PTCobro.CuadreGlobal = @Corte )'
      'OR'
      '  (PTCobro.CuadreUsuario = @Corte)'
      ''
      '')
    Left = 488
    Top = 288
    object qrDescuentoDescuento: TBCDField
      FieldName = 'Descuento'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 12
    end
    object qrDescuentoNeto: TBCDField
      FieldName = 'Neto'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 12
    end
    object qrDescuentoPagado: TBCDField
      FieldName = 'Pagado'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 12
    end
    object qrDescuentopendiente: TBCDField
      FieldName = 'pendiente'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrDescuentoTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 12
    end
  end
  object rvDescuento: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrDescuento
    Left = 488
    Top = 336
  end
end
