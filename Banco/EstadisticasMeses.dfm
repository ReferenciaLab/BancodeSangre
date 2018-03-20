inherited frmEstadisticasMeses: TfrmEstadisticasMeses
  Caption = 'Estadisticas por meses'
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
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Enero'
                  Column = tvDatosEnero
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Febrero'
                  Column = tvDatosFebrero
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Marzo'
                  Column = tvDatosMarzo
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Abril'
                  Column = tvDatosAbril
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Mayo'
                  Column = tvDatosMayo
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Junio'
                  Column = tvDatosJunio
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Julio'
                  Column = tvDatosJulio
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Agosto'
                  Column = tvDatosAgosto
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Septiembre'
                  Column = tvDatosSeptiembre
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Octubre'
                  Column = tvDatosOctubre
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Noviembre'
                  Column = tvDatosNoviembre
                end
                item
                  Format = '#'
                  Kind = skSum
                  FieldName = 'Diciembre'
                  Column = tvDatosDiciembre
                end>
              OptionsView.Footer = True
              object tvDatosProducto: TcxGridDBColumn
                Caption = 'Tipo Donacion'
                DataBinding.FieldName = 'DonacionTipo'
              end
              object tvDatosEnero: TcxGridDBColumn
                DataBinding.FieldName = 'Enero'
              end
              object tvDatosFebrero: TcxGridDBColumn
                DataBinding.FieldName = 'Febrero'
              end
              object tvDatosMarzo: TcxGridDBColumn
                DataBinding.FieldName = 'Marzo'
              end
              object tvDatosAbril: TcxGridDBColumn
                DataBinding.FieldName = 'Abril'
              end
              object tvDatosMayo: TcxGridDBColumn
                DataBinding.FieldName = 'Mayo'
              end
              object tvDatosJunio: TcxGridDBColumn
                DataBinding.FieldName = 'Junio'
              end
              object tvDatosJulio: TcxGridDBColumn
                DataBinding.FieldName = 'Julio'
              end
              object tvDatosAgosto: TcxGridDBColumn
                DataBinding.FieldName = 'Agosto'
              end
              object tvDatosSeptiembre: TcxGridDBColumn
                DataBinding.FieldName = 'Septiembre'
              end
              object tvDatosOctubre: TcxGridDBColumn
                DataBinding.FieldName = 'Octubre'
              end
              object tvDatosNoviembre: TcxGridDBColumn
                DataBinding.FieldName = 'Noviembre'
              end
              object tvDatosDiciembre: TcxGridDBColumn
                DataBinding.FieldName = 'Diciembre'
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
        Value = Null
      end
      item
        Name = 'Hasta'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @Desde DateTime'
      'DECLARE @Hasta DateTime'
      ''
      'SET @Desde = :Desde'
      'SET @Hasta = :Hasta'
      ''
      'SELECT'
      #9'DonacionTipo,'
      
        '  [Enero], [Febrero], [Marzo], [Abril], [Mayo], [Junio], [Julio]' +
        ', [Agosto], [Septiembre], [Octubre], [Noviembre], [Diciembre]'
      ''
      'FROM'
      '('
      '  SELECT'
      '    datePart(Year, Fecha) as Periodo,'
      '    datename(month, Fecha) as Mes,'
      '    DonacionTipo as DonacionTipo,'
      '    COUNT(*) AS Cantidad'
      '  FROM'
      '    dbo.BSDonacion'
      '  Where'
      '    (Fecha >= @Desde)'
      '  And'
      '    (Fecha <= @Hasta)'
      '  GROUP BY'
      '  '#9'datePart(Year, Fecha),'
      '  '#9'datename(month, Fecha),'
      '    DonacionTipo'
      ') AS T'
      'PIVOT'
      '('
      #9'Sum(Cantidad)'
      #9'FOR Mes IN'
      #9'('
      
        '    [Enero], [Febrero], [Marzo], [Abril], [Mayo], [Junio], [Juli' +
        'o], [Agosto], [Septiembre], [Octubre], [Noviembre], [Diciembre]'
      #9')'
      ') AS PVT'
      'ORDER BY'
      #9'DonacionTipo')
    Left = 432
    Top = 7
    object qrVentasDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrVentasEnero: TIntegerField
      FieldName = 'Enero'
      ReadOnly = True
    end
    object qrVentasFebrero: TIntegerField
      FieldName = 'Febrero'
      ReadOnly = True
    end
    object qrVentasMarzo: TIntegerField
      FieldName = 'Marzo'
      ReadOnly = True
    end
    object qrVentasAbril: TIntegerField
      FieldName = 'Abril'
      ReadOnly = True
    end
    object qrVentasMayo: TIntegerField
      FieldName = 'Mayo'
      ReadOnly = True
    end
    object qrVentasJunio: TIntegerField
      FieldName = 'Junio'
      ReadOnly = True
    end
    object qrVentasJulio: TIntegerField
      FieldName = 'Julio'
      ReadOnly = True
    end
    object qrVentasAgosto: TIntegerField
      FieldName = 'Agosto'
      ReadOnly = True
    end
    object qrVentasSeptiembre: TIntegerField
      FieldName = 'Septiembre'
      ReadOnly = True
    end
    object qrVentasOctubre: TIntegerField
      FieldName = 'Octubre'
      ReadOnly = True
    end
    object qrVentasNoviembre: TIntegerField
      FieldName = 'Noviembre'
      ReadOnly = True
    end
    object qrVentasDiciembre: TIntegerField
      FieldName = 'Diciembre'
      ReadOnly = True
    end
  end
end
