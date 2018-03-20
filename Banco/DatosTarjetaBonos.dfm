inherited frmDatosTarjetaBonos: TfrmDatosTarjetaBonos
  Caption = 'Registrar Bonos'
  ClientHeight = 244
  ClientWidth = 450
  ExplicitWidth = 458
  ExplicitHeight = 278
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 450
    Height = 211
    ExplicitWidth = 450
    ExplicitHeight = 211
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ActivePage = tsDatos
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 426
        ExplicitHeight = 187
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 426
          ExplicitHeight = 187
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'TarjetaNumero'
              object tvDatosTarjetaID: TcxGridDBColumn
                Caption = 'Tarjeta Id'
                DataBinding.FieldName = 'TarjetaID'
                Options.Editing = False
                Width = 100
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Numero'
                DataBinding.FieldName = 'TarjetaNumero'
                Options.Editing = False
                Width = 200
              end
              object tvDatosActivo: TcxGridDBColumn
                DataBinding.FieldName = 'Activo'
                Options.Editing = False
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 426
        ExplicitHeight = 187
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 426
          ExplicitHeight = 187
          object EdTarjeta: TcxDBTextEdit [0]
            Tag = 99
            Left = 101
            Top = 36
            DataBinding.DataField = 'TarjetaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 140
          end
          object EdDescripcion: TcxDBTextEdit [1]
            Left = 101
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 300
          end
          object CbEstatus: TcxDBCheckBox [2]
            Left = 101
            Top = 117
            DataBinding.DataField = 'Activo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ReadOnly = True
            Properties.ValueChecked = 'True'
            Properties.ValueUnchecked = 'False'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object EdNumero: TcxDBTextEdit [3]
            Left = 101
            Top = 90
            DataBinding.DataField = 'TarjetaNumero'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 300
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tarjeta Id'
                Control = EdTarjeta
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descripci'#243'n'
                Control = EdDescripcion
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tarjeta Numero'
                Control = EdNumero
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = CbEstatus
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 450
    ExplicitWidth = 450
  end
  inherited dsDatos: TDataSource
    DataSet = qrTarjetaBonos
    Left = 260
    Top = 7
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Top = 180
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 144
    Top = 48
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 256
    Top = 212
  end
  inherited SaveDialog: TSaveDialog
    Left = 337
    Top = 208
  end
  inherited qryHelper: TADOQuery
    Connection = nil
    Left = 68
    Top = 195
  end
  inherited alEdit: TActionList
    Left = 284
    Top = 56
  end
  inherited pmCustom: TPopupMenu
    Left = 224
    Top = 52
  end
  inherited qrDefaultView: TADOQuery
    Connection = nil
    Left = 16
    Top = 191
  end
  inherited strView: TJvStrHolder
    Left = 332
    Top = 52
  end
  inherited strTableNames: TJvStrHolder
    Left = 336
    Top = 180
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 212
  end
  inherited qrUserFields: TABSQuery
    Left = 136
    Top = 180
  end
  object qrTarjetaBonos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrTarjetaBonosBeforePost
    OnNewRecord = qrTarjetaBonosNewRecord
    Parameters = <
      item
        Name = 'tar'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = ''
      end>
    SQL.Strings = (
      'Select * From PTTarjetaBono'
      'Where TarjetaId = :tar')
    Left = 344
    Top = 8
    object qrTarjetaBonosTarjetaID: TStringField
      FieldName = 'TarjetaID'
      Size = 10
    end
    object qrTarjetaBonosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 85
    end
    object qrTarjetaBonosTarjetaNumero: TStringField
      FieldName = 'TarjetaNumero'
      Size = 25
    end
    object qrTarjetaBonosActivo: TBooleanField
      FieldName = 'Activo'
    end
  end
end
