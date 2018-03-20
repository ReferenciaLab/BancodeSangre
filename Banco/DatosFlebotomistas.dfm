inherited frmDatosFlebotomistas: TfrmDatosFlebotomistas
  Caption = 'Flebotomistas'
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
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'FlebotomistaID'
              object tvDatosFlebotomistaID: TcxGridDBColumn
                DataBinding.FieldName = 'FlebotomistaID'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
              end
              object tvDatosEstatus: TcxGridDBColumn
                Caption = 'Activo'
                DataBinding.FieldName = 'Estatus'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo Axapta'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 87
            Top = 36
            DataBinding.DataField = 'FlebotomistaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 87
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 478
          end
          object cxDBCheckBox1: TcxDBCheckBox [2]
            Left = 87
            Top = 90
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Flebotomista'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrFlebotomista
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.421843530090000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.421843703710000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Top = 2
  end
  inherited qrDefaultView: TADOQuery
    Left = 385
    Top = 2
  end
  object qrFlebotomista: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrFlebotomistaNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTFlebotomista')
    Left = 144
    Top = 3
    object qrFlebotomistaFlebotomistaID: TStringField
      DisplayLabel = 'Flebotomista'
      FieldName = 'FlebotomistaID'
      Required = True
      Size = 10
    end
    object qrFlebotomistaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object qrFlebotomistaEstatus: TIntegerField
      FieldName = 'Estatus'
    end
    object qrFlebotomistaCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
  end
end
