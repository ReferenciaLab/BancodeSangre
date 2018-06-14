inherited frmVentasMeses: TfrmVentasMeses
  Caption = 'Ventas por meses'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 602
        ExplicitHeight = 327
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 602
          ExplicitHeight = 327
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            TabOrder = 3
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'Causa'
              DataController.KeyFieldNames = 'Causa'
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'January'
                  Column = tvDatosEnero
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'February'
                  Column = tvDatosFebrero
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'March'
                  Column = tvDatosMarzo
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'April'
                  Column = tvDatosAbril
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'May'
                  Column = tvDatosMayo
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'June'
                  Column = tvDatosJunio
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'July'
                  Column = tvDatosJulio
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'August'
                  Column = tvDatosAgosto
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'September'
                  Column = tvDatosSeptiembre
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'October'
                  Column = tvDatosOctubre
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'November'
                  Column = tvDatosNoviembre
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'December'
                  Column = tvDatosDiciembre
                end>
              OptionsView.Footer = True
              object tvDatosTotalDonantes: TcxGridDBColumn
                DataBinding.FieldName = 'TotalDonantes'
                Visible = False
              end
              object tvDatosColumn1: TcxGridDBColumn
                Caption = 'Cantidad'
                Width = 71
              end
              object tvDatosAprobados: TcxGridDBColumn
                DataBinding.FieldName = 'Aprobados'
                Visible = False
              end
              object tvDatosRechazados: TcxGridDBColumn
                DataBinding.FieldName = 'Rechazados'
                Visible = False
              end
              object tvDatosEnProceso: TcxGridDBColumn
                DataBinding.FieldName = 'EnProceso'
                Visible = False
              end
              object tvDatosProducto: TcxGridDBColumn
                DataBinding.FieldName = 'Producto'
                Width = 86
              end
              object tvDatosEnero: TcxGridDBColumn
                DataBinding.FieldName = 'January'
                Width = 35
              end
              object tvDatosFebrero: TcxGridDBColumn
                DataBinding.FieldName = 'February'
                Width = 33
              end
              object tvDatosMarzo: TcxGridDBColumn
                DataBinding.FieldName = 'March'
                Width = 34
              end
              object tvDatosAbril: TcxGridDBColumn
                DataBinding.FieldName = 'April'
                Width = 35
              end
              object tvDatosMayo: TcxGridDBColumn
                DataBinding.FieldName = 'May'
                Width = 33
              end
              object tvDatosJunio: TcxGridDBColumn
                DataBinding.FieldName = 'June'
                Width = 34
              end
              object tvDatosJulio: TcxGridDBColumn
                DataBinding.FieldName = 'July'
                Width = 33
              end
              object tvDatosAgosto: TcxGridDBColumn
                DataBinding.FieldName = 'August'
                Width = 34
              end
              object tvDatosSeptiembre: TcxGridDBColumn
                DataBinding.FieldName = 'September'
                Width = 35
              end
              object tvDatosOctubre: TcxGridDBColumn
                DataBinding.FieldName = 'October'
                Width = 33
              end
              object tvDatosNoviembre: TcxGridDBColumn
                DataBinding.FieldName = 'November'
                Width = 34
              end
              object tvDatosDiciembre: TcxGridDBColumn
                DataBinding.FieldName = 'December'
                Width = 34
              end
            end
          end
          inherited btBuscar: TcxButton
            Left = 346
            TabOrder = 2
            OnClick = btBuscarClick
            ExplicitLeft = 346
          end
          object desde: TcxDateEdit [2]
            Left = 59
            Top = 36
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 121
          end
          object hasta: TcxDateEdit [3]
            Left = 219
            Top = 36
            Properties.OnChange = hastaPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 121
          end
          inherited dxLayoutGroup1: TdxLayoutGroup
            inherited lcGrupoBuscar: TdxLayoutGroup
              Visible = True
              object lcGridItem3: TdxLayoutItem [0]
                Caption = 'Desde'
                Control = desde
                ControlOptions.ShowBorder = False
              end
              object lcGridItem2: TdxLayoutItem [1]
                Caption = 'Hasta'
                Control = hasta
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 602
        ExplicitHeight = 327
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 602
          ExplicitHeight = 327
          object cxDateEdit1: TcxDateEdit [0]
            Left = 10000
            Top = 10000
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Visible = False
            Width = 121
          end
          object lcDatosItem1: TdxLayoutItem
            Caption = 'cxDateEdit1'
            Control = cxDateEdit1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrVentas
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 204
    inherited dxPrintGridLink: TdxGridReportLink
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4240
      PrinterPage.Margins.Right = 20320
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      ReportDocument.CreationDate = 39385.797214513890000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39385.797214513890000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 104
    Top = 136
  end
  inherited alEdit: TActionList
    Top = 112
    object Open: TAction
      Caption = 'Open'
      OnExecute = OpenExecute
    end
  end
  inherited qrDefaultView: TADOQuery
    Left = 176
    Top = 159
  end
  inherited qrVistas: TABSQuery
    Left = 260
    Top = 160
  end
  object qrVentas: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    OnCalcFields = qrVentasCalcFields
    Parameters = <
      item
        Name = 'Desde'
        DataType = ftDateTime
        Size = -1
        Value = 42005d
      end
      item
        Name = 'Hasta'
        DataType = ftDateTime
        Size = -1
        Value = 42370d
      end
      item
        Name = 'Sucursal'
        DataType = ftString
        Size = 2
        Value = 'AH'
      end>
    SQL.Strings = (
      ''
      ''
      'set dateformat dmy'
      ''
      'Declare @TotalDonantes INT'
      'Declare @TotalAprobados INT'
      'Declare @TotalRechazados INT'
      'Declare @TotalProceso INT'
      'Declare @Desde DateTime'
      'Declare @Hasta DateTime'
      'Declare @Susursal varchar(5)'
      ''
      'Set @Desde =:Desde'
      'Set @Hasta  =:Hasta'
      'Set @Susursal =:Sucursal'
      ''
      'select @TotalDonantes = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'and (isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      'select @TotalAprobados = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus = '#39'Procesada'#39')'
      'and (isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      'select @TotalRechazados = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus = '#39'Rechazado'#39')'
      'and (isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      'select @TotalProceso = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus <> '#39'Procesada'#39')'
      'And'
      #9'(DonacionStatus <> '#39'Rechazado'#39')'
      ''
      'and (isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      'SELECT'
      #9'@TotalDonantes as TotalDonantes,'
      #9'@TotalAprobados as Aprobados,'
      #9'@TotalRechazados as Rechazados,'
      #9'@TotalProceso as EnProceso,'
      '  Producto,  '
      
        ' [January], [February], [March], [April], [May], [June], [July],' +
        ' [August], [September], [October], [November], [December]'
      ''
      'FROM'
      '('
      'SELECT     TOP (100) PERCENT'
      '  DATEPART(Year, Fecha) AS Periodo,'
      '  DATENAME(month, Fecha) AS Mes,'
      #9'BSProductos.ProductoDes AS Producto,'
      #9' '
      '    SUM(dbo.BSVENTADETALLE.PRECIO) AS Precio'
      '  '
      'FROM         dbo.BSVenta INNER JOIN'
      
        '                      dbo.BSVENTADETALLE ON dbo.BSVenta.RECID = ' +
        'dbo.BSVENTADETALLE.RECID INNER JOIN'
      
        #9'                     dbo.BSProductos ON dbo.BSVENTADETALLE.PRUE' +
        'BAID = dbo.BSProductos.ProductoID'
      'Where'
      '    (Fecha >= @Desde)'
      '  And'
      '    (Fecha <= @Hasta)'
      '  And'
      '    (isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      'GROUP BY '
      '  DATEPART(Year, Fecha),'
      '  DATENAME(month, Fecha),'
      '  BSProductos.ProductoDes '
      ') AS T'
      'PIVOT'
      '('
      #9'Sum(Precio)'
      #9'FOR Mes IN'
      #9'('
      
        '   [January], [February], [March], [April], [May], [June], [July' +
        '], [August], [September], [October], [November], [December]'
      #9')'
      ') AS PVT'
      'ORDER BY'
      #9'Producto'
      '')
    Left = 432
    Top = 7
    object qrVentasTotalDonantes: TIntegerField
      FieldName = 'TotalDonantes'
      ReadOnly = True
    end
    object qrVentasAprobados: TIntegerField
      FieldName = 'Aprobados'
      ReadOnly = True
    end
    object qrVentasRechazados: TIntegerField
      FieldName = 'Rechazados'
      ReadOnly = True
    end
    object qrVentasEnProceso: TIntegerField
      FieldName = 'EnProceso'
      ReadOnly = True
    end
    object qrVentasProducto: TWideStringField
      FieldName = 'Producto'
      FixedChar = True
      Size = 30
    end
    object qrVentasJanuary: TBCDField
      FieldName = 'January'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasFebruary: TBCDField
      FieldName = 'February'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasMarch: TBCDField
      FieldName = 'March'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasApril: TBCDField
      FieldName = 'April'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasMay: TBCDField
      FieldName = 'May'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasJune: TBCDField
      FieldName = 'June'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasJuly: TBCDField
      FieldName = 'July'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasAugust: TBCDField
      FieldName = 'August'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasSeptember: TBCDField
      FieldName = 'September'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasNovember: TBCDField
      FieldName = 'November'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasDecember: TBCDField
      FieldName = 'December'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasOctober: TBCDField
      FieldName = 'October'
      ReadOnly = True
      Precision = 32
      Size = 12
    end
    object qrVentasCantidad: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cantidad'
      Calculated = True
    end
  end
  object Qcantidades: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRODUCTO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = 'ST'
      end
      item
        Name = 'ANO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2015
      end
      item
        Name = 'MES'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end>
    SQL.Strings = (
      
        'select COUNT(PRUEBAID) AS CANTIDAD from BSVENTADETALLE A, BSVENT' +
        'A B '
      'where A.RECID = B.RECID'
      'AND A.PRUEBAID =:PRODUCTO'
      'AND DATEPART(YEAR, B.FECHA) =:ANO'
      'AND DATEPART(MONTH, B.FECHA) =:MES')
    Left = 360
    Top = 272
    object QcantidadesCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      ReadOnly = True
    end
  end
end
