inherited frmDatosGrupoPrueba: TfrmDatosGrupoPrueba
  Caption = 'Grupo de Pruebas'
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
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'GRUPOPRUEBA'
              DataController.KeyFieldNames = 'GRUPOPRUEBA'
              object tvDatosGRUPOPRUEBA: TcxGridDBColumn
                Caption = 'Grupo'
                DataBinding.FieldName = 'GRUPOPRUEBA'
              end
              object tvDatosDESCRIPCION: TcxGridDBColumn
                Caption = 'Decsripcion'
                DataBinding.FieldName = 'DESCRIPCION'
              end
              object tvDatosCODIGOAXAPTA: TcxGridDBColumn
                Caption = 'Axapta'
                DataBinding.FieldName = 'CODIGOAXAPTA'
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
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 84
            Top = 36
            DataBinding.DataField = 'GRUPOPRUEBA'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 84
            Top = 63
            DataBinding.DataField = 'DESCRIPCION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Grupo'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    ExplicitWidth = 626
  end
  inherited dsDatos: TDataSource
    DataSet = qrGrupoPrueba
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.594865451390000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.594866168990000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Left = 423
    Top = 2
  end
  inherited qrDefaultView: TADOQuery
    Left = 184
    Top = 2
  end
  object qrGrupoPrueba: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTGrupoPrueba')
    Left = 136
    Top = 3
    object qrGrupoPruebaGRUPOPRUEBA: TStringField
      FieldName = 'GRUPOPRUEBA'
      Size = 10
    end
    object qrGrupoPruebaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object qrGrupoPruebaCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrGrupoPruebaCOMENTARIO: TMemoField
      FieldName = 'COMENTARIO'
      BlobType = ftMemo
    end
    object qrGrupoPruebaDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrGrupoPruebaRECID: TIntegerField
      FieldName = 'RECID'
    end
  end
end
