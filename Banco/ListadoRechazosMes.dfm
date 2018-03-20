inherited frmListadoRechazosMes: TfrmListadoRechazosMes
  Caption = 'Entrada de Productos por Meses'
  ClientWidth = 741
  ExplicitWidth = 749
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
        ExplicitHeight = 314
        inherited lcGrid: TdxLayoutControl
          Width = 717
          Height = 493
          ExplicitWidth = 717
          ExplicitHeight = 314
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
        ExplicitWidth = 717
        ExplicitHeight = 314
        inherited lcDatos: TdxLayoutControl
          Width = 717
          Height = 493
          ExplicitWidth = 717
          ExplicitHeight = 314
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
      #9'Producto,'
      
        '    [Enero], [Febrero], [Marzo], [Abril], [Mayo], [Junio], [Juli' +
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
      
        'GROUP BY DATEPART(Year, dbo.BSDonacion.Fecha), DATENAME(month, d' +
        'bo.BSDonacion.Fecha), '
      '                      dbo.BSProductos.ProductoDes'
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
    object qrDatosProducto: TWideStringField
      FieldName = 'Producto'
      FixedChar = True
      Size = 30
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
