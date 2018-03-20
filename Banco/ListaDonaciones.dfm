inherited frmListaDonaciones: TfrmListaDonaciones
  Caption = 'Donaciones'
  ClientWidth = 707
  ExplicitWidth = 723
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
                  Kind = skCount
                  FieldName = 'DonacionTipo'
                  Column = tvDatosDonacionTipo
                end
                item
                  FieldName = 'NOMBRE'
                  Column = tvDatosNOMBRE
                end>
              OptionsView.Footer = True
              object tvDatosMuestraNo: TcxGridDBColumn
                Caption = 'Muestra'
                DataBinding.FieldName = 'MuestraNo'
              end
              object tvDatosNOMBRE: TcxGridDBColumn
                Caption = 'Nombre'
                DataBinding.FieldName = 'NOMBRE'
              end
              object tvDatosDonacionTipo: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'DonacionTipo'
              end
              object tvDatosTipoSangre: TcxGridDBColumn
                Caption = 'Grupo'
                DataBinding.FieldName = 'TipoSangre'
              end
              object tvDatosRH: TcxGridDBColumn
                DataBinding.FieldName = 'RH'
              end
              object tvDatosDu: TcxGridDBColumn
                DataBinding.FieldName = 'Du'
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
              end
              object tvDatosDonacionStatus: TcxGridDBColumn
                Caption = 'Estado'
                DataBinding.FieldName = 'DonacionStatus'
              end
              object tvDatosCausa: TcxGridDBColumn
                Caption = 'Rechazo'
                DataBinding.FieldName = 'Causa'
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
    Connection = DM.Database
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
      end
      item
        Name = 'SUC'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  BSDonacion.DonacionID,'
      '  BSDonacion.MuestraNo,'
      '  BSDonacion.MuestraNoAS,'
      '  BSDonacion.Fecha,'
      '  BSDonante.PacienteID,'
      '  BSDonante.TipoDonante,'
      '  BSDonante.TipoSangre,'
      '  BSDonante.RH,'
      '  BSDonante.Du,'
      '  BSDonante.FechaUltimaDon,'
      '  PTCLIENTE.NOMBRE,'
      '  PTCLIENTE.TELEFONO,'
      '  BSCausasRechazo.Causa,'
      '  BSDonacion.DonacionStatus,'
      '  BSDonacion.DonacionTipo'
      'FROM'
      '  BSDonacion INNER JOIN'
      
        '  BSDonante ON BSDonacion.PacienteID = BSDonante.PacienteID INNE' +
        'R JOIN'
      
        '  PTCLIENTE ON BSDonante.PacienteID = PTCLIENTE.CLIENTEID LEFT O' +
        'UTER JOIN'
      
        '  BSCausasRechazo ON BSDonacion.CausaRechazoId = BSCausasRechazo' +
        '.Id'
      'WHERE'
      '  (FECHA BETWEEN :Desde AND :Hasta)'
      'AND BSDonacion.SUCURSALID =:SUC')
    Left = 440
    Top = 87
    object qrDatosDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDatosMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDatosMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDatosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDatosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDatosTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
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
    object qrDatosDu: TWideStringField
      FieldName = 'Du'
      FixedChar = True
      Size = 10
    end
    object qrDatosFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
    object qrDatosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object qrDatosTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrDatosCausa: TStringField
      FieldName = 'Causa'
      Size = 50
    end
    object qrDatosDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDatosDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
  end
end
