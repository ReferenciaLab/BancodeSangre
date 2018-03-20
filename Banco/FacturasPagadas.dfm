inherited frmFacturasPagadas: TfrmFacturasPagadas
  Caption = 'Facturas Pagadas'
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
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'Total'
                  Column = tvDatosTotal
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'Cobrado'
                  Column = tvDatosCobrado
                end>
              OptionsView.Footer = True
              object tvDatosEntrada: TcxGridDBColumn
                DataBinding.FieldName = 'Entrada'
                Width = 75
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                Width = 68
              end
              object tvDatosTotal: TcxGridDBColumn
                DataBinding.FieldName = 'Total'
                Visible = False
              end
              object tvDatosPagado: TcxGridDBColumn
                DataBinding.FieldName = 'Pagado'
                Visible = False
              end
              object tvDatosUsuario: TcxGridDBColumn
                DataBinding.FieldName = 'Usuario'
                Width = 39
              end
              object tvDatosFechaPago: TcxGridDBColumn
                DataBinding.FieldName = 'FechaPago'
                Width = 68
              end
              object tvDatosHoraPago: TcxGridDBColumn
                DataBinding.FieldName = 'HoraPago'
                Width = 76
              end
              object tvDatosCobrador: TcxGridDBColumn
                DataBinding.FieldName = 'Cobrador'
                Width = 38
              end
              object tvDatosFormaPago: TcxGridDBColumn
                DataBinding.FieldName = 'FormaPago'
                Width = 109
              end
              object tvDatosMoneda: TcxGridDBColumn
                DataBinding.FieldName = 'Moneda'
                Width = 57
              end
              object tvDatosCobrado: TcxGridDBColumn
                DataBinding.FieldName = 'Cobrado'
                Width = 115
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
      'Declare @Desde DateTime'
      'Declare @Hasta DateTime'
      ''
      'Set @Desde = :Desde'
      'Set @Hasta = :Hasta'
      ''
      ''
      'SELECT'
      '  BSVenta.ENTRADAID AS Entrada,'
      '  BSVenta.FECHA AS Fecha,'
      '  BSVenta.NETO AS Total,'
      '  BSVenta.TOTALPAGADO AS Pagado,'
      '  BSVenta.USERID AS Usuario,'
      '  PTCobro.Fecha AS FechaPago,'
      '  PTCobro.Hora AS HoraPago,'
      '  PTCobro.UsuarioID AS Cobrador,'
      '  PTFormaDePago.Descripcion AS FormaPago,'
      '  PTFormaDePago.Moneda,'
      '  PTCobroDetalle.Monto AS Cobrado'
      'FROM'
      '  PTCobroDetalle INNER JOIN'
      '  PTCobro ON PTCobroDetalle.CobroID = PTCobro.CobroID INNER JOIN'
      '  BSVenta ON PTCobro.refRecid = BSVenta.RECID INNER JOIN'
      
        '  PTFormaDePago ON PTCobroDetalle.FormaDePagoID = PTFormaDePago.' +
        'FormaDePagoID'
      'WHERE'
      '    (BSVenta.Fecha >= @Desde)'
      '  And'
      '    (BSVenta.Fecha <= @Hasta)'
      '')
    Left = 400
    Top = 15
    object qrDatosEntrada: TStringField
      FieldName = 'Entrada'
    end
    object qrDatosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDatosTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrDatosPagado: TBCDField
      FieldName = 'Pagado'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrDatosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object qrDatosFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object qrDatosHoraPago: TStringField
      FieldName = 'HoraPago'
    end
    object qrDatosCobrador: TStringField
      FieldName = 'Cobrador'
      Size = 10
    end
    object qrDatosFormaPago: TStringField
      FieldName = 'FormaPago'
      Size = 50
    end
    object qrDatosMoneda: TStringField
      FieldName = 'Moneda'
      Size = 5
    end
    object qrDatosCobrado: TBCDField
      FieldName = 'Cobrado'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
end
