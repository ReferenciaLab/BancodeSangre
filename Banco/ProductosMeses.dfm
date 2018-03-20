inherited frmProductosMeses: TfrmProductosMeses
  Caption = 'Productos despachados por meses'
  ExplicitWidth = 642
  ExplicitHeight = 422
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
                Width = 96
              end
              object tvDatosEnero: TcxGridDBColumn
                Caption = 'Enero'
                DataBinding.FieldName = 'January'
                Width = 38
              end
              object tvDatosFebrero: TcxGridDBColumn
                Caption = 'Febrero'
                DataBinding.FieldName = 'February'
                Width = 37
              end
              object tvDatosMarzo: TcxGridDBColumn
                Caption = 'Marzo'
                DataBinding.FieldName = 'March'
                Width = 37
              end
              object tvDatosAbril: TcxGridDBColumn
                Caption = 'Abril'
                DataBinding.FieldName = 'April'
                Width = 38
              end
              object tvDatosMayo: TcxGridDBColumn
                Caption = 'Mayo'
                DataBinding.FieldName = 'May'
                Width = 38
              end
              object tvDatosJunio: TcxGridDBColumn
                Caption = 'Junio'
                DataBinding.FieldName = 'June'
                Width = 37
              end
              object tvDatosJulio: TcxGridDBColumn
                Caption = 'Julio'
                DataBinding.FieldName = 'July'
                Width = 37
              end
              object tvDatosAgosto: TcxGridDBColumn
                Caption = 'Agosto'
                DataBinding.FieldName = 'August'
                Width = 38
              end
              object tvDatosSeptiembre: TcxGridDBColumn
                Caption = 'Septiembre'
                DataBinding.FieldName = 'September'
                Width = 38
              end
              object tvDatosOctubre: TcxGridDBColumn
                Caption = 'Octubre'
                DataBinding.FieldName = 'October'
                Width = 37
              end
              object tvDatosNoviembre: TcxGridDBColumn
                Caption = 'Noviembre'
                DataBinding.FieldName = 'November'
                Width = 37
              end
              object tvDatosDiciembre: TcxGridDBColumn
                Caption = 'Deciembre'
                DataBinding.FieldName = 'December'
                Width = 38
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
            Enabled = False
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
  inherited alEdit: TActionList
    Top = 112
    object Open: TAction
      Caption = 'Open'
      OnExecute = OpenExecute
    end
  end
  inherited qrVistas: TABSQuery
    Left = 260
    Top = 160
  end
  object qrVentas: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
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
        Value = '01'
      end>
    SQL.Strings = (
      'Declare @TotalDonantes INT'
      'Declare @TotalAprobados INT'
      'Declare @TotalRechazados INT'
      'Declare @TotalProceso INT'
      'Declare @Desde DateTime'
      'Declare @Hasta DateTime'
      'Declare @Susursal varchar(5)'
      ''
      'Set @Desde = :Desde'
      'Set @Hasta = :Hasta'
      'Set @Susursal =:Sucursal'
      ''
      'select @TotalDonantes = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'and '
      '(isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      ''
      'select @TotalAprobados = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus = '#39'Procesada'#39')'
      'and '
      '(isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      'select @TotalRechazados = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus = '#39'Rechazado'#39')'
      'and '
      '(isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
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
      'and '
      '(isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      ''
      'SELECT'
      #9'@TotalDonantes as TotalDonantes,'
      #9'@TotalAprobados as Aprobados,'
      #9'@TotalRechazados as Rechazados,'
      #9'@TotalProceso as EnProceso,'
      '  Producto,'
      
        '  [January], [February], [March], [April], [May], [June], [July]' +
        ', [August], [September], [October], [November], [December]'
      ''
      'FROM'
      '('
      'SELECT     TOP (100) PERCENT'
      '  DATEPART(Year, Fecha) AS Periodo,'
      '  DATENAME(month, Fecha) AS Mes,'
      #9'BSProductos.ProductoDes AS Producto, '
      '  Count(*) AS Cantidad'
      'FROM         dbo.BSVenta INNER JOIN'
      
        '                      dbo.BSVENTADETALLE ON dbo.BSVenta.RECID = ' +
        'dbo.BSVENTADETALLE.RECID INNER JOIN'
      
        #9'                     dbo.BSProductos ON dbo.BSVENTADETALLE.PRUE' +
        'BAID = dbo.BSProductos.ProductoID'
      'Where'
      '    (Fecha >= @Desde)'
      '  And'
      '    (Fecha <= @Hasta)'
      ' And '
      '(isnull(SUCURSALID,'#39'01'#39') = @Susursal)'
      ''
      'GROUP BY'
      '  DATEPART(Year, Fecha),'
      '  DATENAME(month, Fecha),'
      #9'BSProductos.ProductoDes'
      ') AS T'
      'PIVOT'
      '('
      #9'Sum(Cantidad)'
      #9'FOR Mes IN'
      #9'('
      
        '   [January], [February], [March], [April], [May], [June], [July' +
        '], [August], [September], [October], [November], [December]'
      #9')'
      ') AS PVT'
      'ORDER BY'
      #9'Producto')
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
    object qrVentasJanuary: TIntegerField
      FieldName = 'January'
      ReadOnly = True
    end
    object qrVentasFebruary: TIntegerField
      FieldName = 'February'
      ReadOnly = True
    end
    object qrVentasMarch: TIntegerField
      FieldName = 'March'
      ReadOnly = True
    end
    object qrVentasApril: TIntegerField
      FieldName = 'April'
      ReadOnly = True
    end
    object qrVentasMay: TIntegerField
      FieldName = 'May'
      ReadOnly = True
    end
    object qrVentasJune: TIntegerField
      FieldName = 'June'
      ReadOnly = True
    end
    object qrVentasJuly: TIntegerField
      FieldName = 'July'
      ReadOnly = True
    end
    object qrVentasAugust: TIntegerField
      FieldName = 'August'
      ReadOnly = True
    end
    object qrVentasSeptember: TIntegerField
      FieldName = 'September'
      ReadOnly = True
    end
    object qrVentasOctober: TIntegerField
      FieldName = 'October'
      ReadOnly = True
    end
    object qrVentasNovember: TIntegerField
      FieldName = 'November'
      ReadOnly = True
    end
    object qrVentasDecember: TIntegerField
      FieldName = 'December'
      ReadOnly = True
    end
  end
end
