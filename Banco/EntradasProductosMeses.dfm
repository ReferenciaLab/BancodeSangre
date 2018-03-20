inherited frmEntradasProductosMeses: TfrmEntradasProductosMeses
  Caption = 'TIPO DONACION'
  ClientWidth = 741
  ExplicitWidth = 757
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 741
    ExplicitWidth = 741
    inherited pcDatos: TcxPageControl
      Width = 717
      Height = 517
      ExplicitWidth = 717
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 717
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 717
        ExplicitHeight = 327
        inherited lcGrid: TdxLayoutControl
          Width = 717
          Height = 493
          ExplicitWidth = 717
          ExplicitHeight = 327
          inherited dgDatos: TcxGrid
            Width = 693
            Height = 240
            TabOrder = 3
            ExplicitWidth = 693
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'DonacionID'
              DataController.KeyFieldNames = 'DonacionID'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'Causa'
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'January'
                  Column = tvDatosEnero
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'February'
                  Column = tvDatosFebrero
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'March'
                  Column = tvDatosMarzo
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'April'
                  Column = tvDatosAbril
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'May'
                  Column = tvDatosMayo
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'June'
                  Column = tvDatosJunio
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'July'
                  Column = tvDatosJulio
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'August'
                  Column = tvDatosAgosto
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'September'
                  Column = tvDatosSeptiembre
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'October'
                  Column = tvDatosOctubre
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'November'
                  Column = tvDatosNoviembre
                end
                item
                  Format = '#'
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
              end
              object tvDatosEnero: TcxGridDBColumn
                Caption = 'Enero'
                DataBinding.FieldName = 'January'
              end
              object tvDatosFebrero: TcxGridDBColumn
                Caption = 'Febrero'
                DataBinding.FieldName = 'February'
              end
              object tvDatosMarzo: TcxGridDBColumn
                Caption = 'Marzo'
                DataBinding.FieldName = 'March'
              end
              object tvDatosAbril: TcxGridDBColumn
                Caption = 'Abril'
                DataBinding.FieldName = 'April'
              end
              object tvDatosMayo: TcxGridDBColumn
                Caption = 'Mayo'
                DataBinding.FieldName = 'May'
              end
              object tvDatosJunio: TcxGridDBColumn
                Caption = 'Junio'
                DataBinding.FieldName = 'June'
              end
              object tvDatosJulio: TcxGridDBColumn
                Caption = 'Julio'
                DataBinding.FieldName = 'July'
              end
              object tvDatosAgosto: TcxGridDBColumn
                Caption = 'Agosto'
                DataBinding.FieldName = 'August'
              end
              object tvDatosSeptiembre: TcxGridDBColumn
                Caption = 'Septiembre'
                DataBinding.FieldName = 'September'
              end
              object tvDatosOctubre: TcxGridDBColumn
                Caption = 'Octubre'
                DataBinding.FieldName = 'October'
              end
              object tvDatosNoviembre: TcxGridDBColumn
                Caption = 'Noviembre'
                DataBinding.FieldName = 'November'
              end
              object tvDatosDiciembre: TcxGridDBColumn
                Caption = 'Diciembre'
                DataBinding.FieldName = 'December'
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
        ExplicitWidth = 717
        ExplicitHeight = 327
        inherited lcDatos: TdxLayoutControl
          Width = 717
          Height = 493
          ExplicitWidth = 717
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
  inherited pnCaption: TPanel
    Width = 741
    ExplicitWidth = 741
  end
  inherited dsDatos: TDataSource
    DataSet = qrDatos
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
  inherited cxStyleRepository1: TcxStyleRepository
    Top = 196
  end
  inherited qrVistas: TABSQuery
    Left = 260
    Top = 160
  end
  object qrDatos: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 42736d
      end
      item
        Name = 'Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 42747d
      end
      item
        Name = 'suc'
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
      'Declare @suc varchar(5)'
      ''
      ''
      'Set @Desde = :Desde'
      'Set @Hasta = :Hasta'
      'Set @suc     =:suc '
      ''
      'select @TotalDonantes = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And  BSDonacion.SUCURSALID = @suc'
      ''
      'select @TotalAprobados = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus = '#39'Procesada'#39')'
      'And  BSDonacion.SUCURSALID = @suc'
      ''
      'select @TotalRechazados = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus = '#39'Rechazado'#39')'
      'And  BSDonacion.SUCURSALID = @suc'
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
      'And  BSDonacion.SUCURSALID = @suc'
      ''
      ''
      'SELECT'
      #9'@TotalDonantes as TotalDonantes,'
      #9'@TotalAprobados as Aprobados,'
      #9'@TotalRechazados as Rechazados,'
      #9'@TotalProceso as EnProceso,'
      #9'Producto,'
      
        '     [January], [February], [March], [April], [May], [June], [Ju' +
        'ly], [August], [September], [October], [November], [December]  '
      
        '--  [Enero], [Febrero], [Marzo], [Abril], [Mayo], [Junio], [Juli' +
        'o], [Agosto], [Septiembre], [Octubre], [Noviembre], [Diciembre]'
      ''
      'FROM'
      '('
      
        'SELECT     dbo.BSProductos.ProductoDes as Producto, DATEPART(Yea' +
        'r, dbo.BSDonacion.Fecha) AS Periodo, '
      
        '                      DATENAME(month, dbo.BSDonacion.Fecha) AS M' +
        'es, COUNT(*) AS Cantidad'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSDonacion.Producto' +
        'ID = dbo.BSProductos.ProductoID'
      'WHERE '
      '    (Fecha >= @Desde)'
      '  And'
      '    (Fecha <= @Hasta)'
      '  And  BSDonacion.SUCURSALID = @suc'
      ''
      
        'GROUP BY DATEPART(Year, dbo.BSDonacion.Fecha), DATENAME(month, d' +
        'bo.BSDonacion.Fecha), '
      '                      dbo.BSProductos.ProductoDes'
      ') AS T'
      'PIVOT'
      '('
      #9'Sum(Cantidad)'
      #9'FOR Mes IN'
      #9'('
      
        '[January], [February], [March], [April], [May], [June], [July], ' +
        '[August], [September], [October], [November], [December] '
      
        '--   [Enero], [Febrero], [Marzo], [Abril], [Mayo], [Junio], [Jul' +
        'io], [Agosto], [Septiembre], [Octubre], [Noviembre], [Diciembre]'
      #9')'
      ') AS PVT'
      '')
    Left = 400
    Top = 15
    object qrDatosTotalDonantes: TIntegerField
      FieldName = 'TotalDonantes'
      ReadOnly = True
    end
    object qrDatosAprobados: TIntegerField
      FieldName = 'Aprobados'
      ReadOnly = True
    end
    object qrDatosRechazados: TIntegerField
      FieldName = 'Rechazados'
      ReadOnly = True
    end
    object qrDatosEnProceso: TIntegerField
      FieldName = 'EnProceso'
      ReadOnly = True
    end
    object qrDatosProducto: TWideStringField
      FieldName = 'Producto'
      FixedChar = True
      Size = 30
    end
    object qrDatosJanuary: TIntegerField
      FieldName = 'January'
      ReadOnly = True
    end
    object qrDatosFebruary: TIntegerField
      FieldName = 'February'
      ReadOnly = True
    end
    object qrDatosMarch: TIntegerField
      FieldName = 'March'
      ReadOnly = True
    end
    object qrDatosApril: TIntegerField
      FieldName = 'April'
      ReadOnly = True
    end
    object qrDatosMay: TIntegerField
      FieldName = 'May'
      ReadOnly = True
    end
    object qrDatosJune: TIntegerField
      FieldName = 'June'
      ReadOnly = True
    end
    object qrDatosJuly: TIntegerField
      FieldName = 'July'
      ReadOnly = True
    end
    object qrDatosAugust: TIntegerField
      FieldName = 'August'
      ReadOnly = True
    end
    object qrDatosSeptember: TIntegerField
      FieldName = 'September'
      ReadOnly = True
    end
    object qrDatosOctober: TIntegerField
      FieldName = 'October'
      ReadOnly = True
    end
    object qrDatosNovember: TIntegerField
      FieldName = 'November'
      ReadOnly = True
    end
    object qrDatosDecember: TIntegerField
      FieldName = 'December'
      ReadOnly = True
    end
  end
end
