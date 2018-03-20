inherited frmDatosPruebasBanco1: TfrmDatosPruebasBanco1
  Caption = 'Prubas asociadas a las donaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    ExplicitWidth = 608
    ExplicitHeight = 338
    inherited pcDatos: TcxPageControl
      Width = 509
      Height = 517
      ExplicitWidth = 509
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 509
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 509
        ExplicitHeight = 314
        inherited lcGrid: TdxLayoutControl
          Width = 509
          Height = 493
          ExplicitWidth = 509
          ExplicitHeight = 314
          inherited dgDatos: TcxGrid
            Width = 485
            Height = 240
            ExplicitWidth = 485
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              object tvDatosPruebaID: TcxGridDBColumn
                Caption = 'Prueba'
                DataBinding.FieldName = 'PruebaID'
              end
              object tvDatosalias: TcxGridDBColumn
                DataBinding.FieldName = 'alias'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 509
        ExplicitHeight = 314
        inherited lcDatos: TdxLayoutControl
          Width = 509
          Height = 493
          ExplicitWidth = 509
          ExplicitHeight = 314
        end
      end
    end
    object cxButton1: TcxButton [1]
      Left = 521
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Pruebas'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    ExplicitWidth = 608
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrPruebasBanco
    Left = 236
    Top = 7
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39129.388147500000000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39129.388147673610000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from BSPrueba')
    Left = 4
    Top = 3
    object qrPruebasPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrPruebasalias: TStringField
      FieldName = 'alias'
      Size = 80
    end
    object qrPruebasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
end
