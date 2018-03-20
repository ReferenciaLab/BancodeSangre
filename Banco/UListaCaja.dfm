inherited frmListaCaja: TfrmListaCaja
  Caption = 'PENDIENTE DE COBRO EN CAJA'
  ExplicitLeft = -40
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    ExplicitWidth = 626
    ExplicitHeight = 351
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
        end
      end
    end
    object cxButton1: TcxButton [1]
      Left = 539
      Top = 7
      Width = 75
      Height = 25
      Caption = 'cxButton1'
      TabOrder = 1
    end
    object cxButton2: TcxButton [2]
      Left = 539
      Top = 38
      Width = 75
      Height = 25
      Caption = 'cxButton2'
      TabOrder = 2
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
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = cxButton2
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    ExplicitWidth = 626
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39907.430613564810000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39907.430613738430000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited alEdit: TActionList
    object Cobrar: TAction
      Category = 'Botones'
      Caption = 'F5 = Cobrar'
    end
    object Descuento: TAction
      Category = 'Botones'
      Caption = 'F6 = Descuento'
    end
    object Mostrar: TAction
      Category = 'Botones'
      Caption = 'F7 = Mostrar'
    end
  end
end
