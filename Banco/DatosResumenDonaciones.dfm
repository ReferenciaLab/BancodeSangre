inherited frmDatosResumenDonaciones: TfrmDatosResumenDonaciones
  Caption = 'RESUMEN'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 602
        ExplicitHeight = 327
        inherited lcGrid: TdxLayoutControl
          ExplicitWidth = 602
          ExplicitHeight = 327
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 3
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'CANTIDAD'
                  Column = tvDatosCANTIDAD
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'CANTIDAD'
                  Column = tvDatosCANTIDAD
                end>
              OptionsView.Footer = True
              object tvDatosESTADO: TcxGridDBColumn
                DataBinding.FieldName = 'ESTADO'
                Visible = False
                GroupIndex = 0
                SortIndex = 0
                SortOrder = soAscending
                IsCaptionAssigned = True
              end
              object tvDatosDONACIONES: TcxGridDBColumn
                DataBinding.FieldName = 'DONACIONES'
              end
              object tvDatosCANTIDAD: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD'
              end
            end
          end
          inherited btBuscar: TcxButton
            Left = 360
            TabOrder = 2
            OnClick = btBuscarClick
            ExplicitLeft = 360
          end
          object desde: TcxDateEdit [2]
            Left = 65
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
            Left = 233
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
              object lcGridItem1: TdxLayoutItem [0]
                Caption = 'DESDE'
                Control = desde
                ControlOptions.ShowBorder = False
              end
              object lcGridItem2: TdxLayoutItem [1]
                Caption = 'HASTA'
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
          ExplicitWidth = 602
          ExplicitHeight = 327
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = Query
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4240
      PrinterPage.Margins.Right = 20320
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      ReportDocument.CreationDate = 39946.804544814810000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39946.804544814810000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited alEdit: TActionList
    object Datos: TAction
      Caption = 'Datos'
      OnExecute = DatosExecute
    end
  end
  object Query: TADOQuery
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
        Name = 'suc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  BSDonacion.DonacionStatus AS ESTADO,'
      
        '  ISNULL(BSCausasRechazo.Causa, BSDonacion.DonacionStatus) AS DO' +
        'NACIONES,'
      '  COUNT(*) AS CANTIDAD'
      'FROM'
      '  BSDonacion LEFT OUTER JOIN'
      
        '  BSCausasRechazo ON BSDonacion.CausaRechazoId = BSCausasRechazo' +
        '.Id'
      'WHERE'
      '  (BSDonacion.Fecha BETWEEN :Desde AND :Hasta)'
      ' And BSDonacion.SUCURSALID =:suc'
      'GROUP BY'
      '  BSDonacion.DonacionStatus,'
      '  BSCausasRechazo.Causa,'
      '  BSCausasRechazo.Orden'
      'ORDER BY'
      '  ESTADO,'
      '  BSCausasRechazo.Orden')
    Left = 56
    Top = 231
    object QueryESTADO: TWideStringField
      FieldName = 'ESTADO'
      FixedChar = True
    end
    object QueryDONACIONES: TStringField
      FieldName = 'DONACIONES'
      ReadOnly = True
      Size = 50
    end
    object QueryCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      ReadOnly = True
    end
  end
end
