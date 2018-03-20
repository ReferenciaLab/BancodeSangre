inherited frmListaDonacionesMes: TfrmListaDonacionesMes
  Caption = 'Tipo da Sangre por Meses'
  ClientWidth = 707
  ExplicitWidth = 715
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 707
    ExplicitWidth = 707
    inherited pcDatos: TcxPageControl
      Width = 683
      Height = 517
      ExplicitWidth = 683
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 683
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 683
        ExplicitHeight = 327
        inherited lcGrid: TdxLayoutControl
          Width = 683
          Height = 493
          ExplicitWidth = 683
          ExplicitHeight = 327
          inherited dgDatos: TcxGrid
            Width = 659
            Height = 240
            TabOrder = 3
            ExplicitWidth = 659
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Enero'
                  Column = tvDatosEnero
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Febrero'
                  Column = tvDatosFebrero
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Marzo'
                  Column = tvDatosMarzo
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Abril'
                  Column = tvDatosAbril
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Mayo'
                  Column = tvDatosMayo
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Junio'
                  Column = tvDatosJunio
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Julio'
                  Column = tvDatosJulio
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Agosto'
                  Column = tvDatosAgosto
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Septiembre'
                  Column = tvDatosSeptiembre
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Octubre'
                  Column = tvDatosOctubre
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Noviembre'
                  Column = tvDatosNoviembre
                end
                item
                  Format = '0.0'
                  Kind = skSum
                  FieldName = 'Diciembre'
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
              object tvDatosTipoSangre: TcxGridDBColumn
                DataBinding.FieldName = 'TipoSangre'
              end
              object tvDatosRH: TcxGridDBColumn
                DataBinding.FieldName = 'RH'
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
        ExplicitWidth = 683
        ExplicitHeight = 327
        inherited lcDatos: TdxLayoutControl
          Width = 683
          Height = 493
          ExplicitWidth = 683
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
    Width = 707
    ExplicitWidth = 707
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
  inherited qrVistas: TABSQuery
    Left = 260
    Top = 160
  end
  object qrDatos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'Declare @TotalDonantes INT'
      'Declare @TotalAprobados INT'
      'Declare @TotalRechazados INT'
      'Declare @TotalProceso INT'
      'Declare @Desde DateTime'
      'Declare @Hasta DateTime'
      ''
      'Set @Desde = :Desde'
      'Set @Hasta = :Hasta'
      ''
      'select @TotalDonantes = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      ''
      ''
      'select @TotalAprobados = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus = '#39'Procesada'#39')'
      ''
      'select @TotalRechazados = count(*) from BsDonacion'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'And'
      #9'(DonacionStatus = '#39'Rechazado'#39')'
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
      ''
      ''
      'SELECT'
      #9'@TotalDonantes as TotalDonantes,'
      #9'@TotalAprobados as Aprobados,'
      #9'@TotalRechazados as Rechazados,'
      #9'@TotalProceso as EnProceso,'
      #9'TipoSangre,'
      #9'RH,'
      
        '  [Enero], [Febrero], [Marzo], [Abril], [Mayo], [Junio], [Julio]' +
        ', [Agosto], [Septiembre], [Octubre], [Noviembre], [Diciembre]'
      ''
      'FROM'
      '('
      
        'SELECT     TOP (100) PERCENT dbo.BSDonante.TipoSangre, dbo.BSDon' +
        'ante.RH, DATEPART(Year, dbo.BSDonacion.Fecha) AS Periodo, DATENA' +
        'ME(month, '
      
        '                      dbo.BSDonacion.Fecha) AS Mes, COUNT(*) AS ' +
        'Cantidad'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.BSDonante ON dbo.BSDonacion.PacienteID' +
        ' = dbo.BSDonante.PacienteID'
      'WHERE '
      '    (Fecha >= @Desde)'
      '  And'
      '    (Fecha <= @Hasta)'
      
        'GROUP BY dbo.BSDonante.TipoSangre, dbo.BSDonante.RH, DATEPART(Ye' +
        'ar, dbo.BSDonacion.Fecha), DATENAME(month, dbo.BSDonacion.Fecha)'
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
    object qrDatosTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDatosRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDatosEnero: TIntegerField
      FieldName = 'Enero'
      ReadOnly = True
    end
    object qrDatosFebrero: TIntegerField
      FieldName = 'Febrero'
      ReadOnly = True
    end
    object qrDatosMarzo: TIntegerField
      FieldName = 'Marzo'
      ReadOnly = True
    end
    object qrDatosAbril: TIntegerField
      FieldName = 'Abril'
      ReadOnly = True
    end
    object qrDatosMayo: TIntegerField
      FieldName = 'Mayo'
      ReadOnly = True
    end
    object qrDatosJunio: TIntegerField
      FieldName = 'Junio'
      ReadOnly = True
    end
    object qrDatosJulio: TIntegerField
      FieldName = 'Julio'
      ReadOnly = True
    end
    object qrDatosAgosto: TIntegerField
      FieldName = 'Agosto'
      ReadOnly = True
    end
    object qrDatosSeptiembre: TIntegerField
      FieldName = 'Septiembre'
      ReadOnly = True
    end
    object qrDatosOctubre: TIntegerField
      FieldName = 'Octubre'
      ReadOnly = True
    end
    object qrDatosNoviembre: TIntegerField
      FieldName = 'Noviembre'
      ReadOnly = True
    end
    object qrDatosDiciembre: TIntegerField
      FieldName = 'Diciembre'
      ReadOnly = True
    end
  end
end
