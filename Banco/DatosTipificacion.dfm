inherited frmDatosTipificacion: TfrmDatosTipificacion
  Caption = 'Tipificaciones pendientes'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            inherited tvDatos: TcxGridDBTableView
              object tvDatosL57MUE: TcxGridDBColumn
                Caption = 'Muestra'
                DataBinding.FieldName = 'L57MUE'
              end
              object tvDatosL57PRU: TcxGridDBColumn
                Caption = 'Prueba'
                DataBinding.FieldName = 'L57PRU'
              end
              object tvDatosL57NOM: TcxGridDBColumn
                Caption = 'Paciente'
                DataBinding.FieldName = 'L57NOM'
              end
              object tvDatosL57GRU: TcxGridDBColumn
                Caption = 'Grupo'
                DataBinding.FieldName = 'L57GRU'
              end
              object tvDatosL57FAC: TcxGridDBColumn
                Caption = 'RH'
                DataBinding.FieldName = 'L57FAC'
              end
              object tvDatosL57VAD: TcxGridDBColumn
                Caption = 'DU'
                DataBinding.FieldName = 'L57VAD'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          OnEnter = lcDatosEnter
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Left = 126
            Top = 122
            DataBinding.DataField = 'L57MUE'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 163
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 358
            Top = 122
            AutoSize = False
            DataBinding.DataField = 'L57PRU'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Height = 21
            Width = 163
          end
          object cxDBComboBox1: TcxDBComboBox [2]
            Left = 126
            Top = 149
            DataBinding.DataField = 'L57GRU'
            DataBinding.DataSource = dsDatos
            Properties.Items.Strings = (
              'A'
              'B'
              'AB'
              'O')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 163
          end
          object cxDBTextEdit5: TcxDBTextEdit [3]
            Left = 126
            Top = 36
            DataBinding.DataField = 'L57NOM'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 319
          end
          object cxDBComboBox2: TcxDBComboBox [4]
            Left = 126
            Top = 176
            DataBinding.DataField = 'L57FAC'
            DataBinding.DataSource = dsDatos
            Properties.Items.Strings = (
              'POSITIVO'
              'NEGATIVO')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 5
            Width = 163
          end
          object cxDBComboBox3: TcxDBComboBox [5]
            Left = 358
            Top = 176
            AutoSize = False
            DataBinding.DataField = 'L57VAD'
            DataBinding.DataSource = dsDatos
            Properties.Items.Strings = (
              'POSITIVO'
              'NEGATIVO')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Height = 21
            Width = 178
          end
          object cxDBTextEdit3: TcxDBTextEdit [6]
            Left = 126
            Top = 63
            DataBinding.DataField = 'L57USU'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 123
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup4: TdxLayoutGroup
              Caption = 'Paciente'
              object lcDatosItem6: TdxLayoutItem
                Caption = 'Nombre del paciente'
                Control = cxDBTextEdit5
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Usuario'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'Tipificacion'
              object lcDatosGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Muestra'
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Prueba'
                  Control = cxDBTextEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Grupo sanguineo'
                Control = cxDBComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem5: TdxLayoutItem
                  Caption = 'RH'
                  Control = cxDBComboBox2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Variante DU'
                  Control = cxDBComboBox3
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 232
    Top = 246
  end
  inherited dsDatos: TDataSource
    DataSet = InterfaseAS.qrTipificacion
    Left = 244
    Top = 303
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 188
    Top = 244
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39293.392402523160000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39293.392402523160000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 24
    Top = 248
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 408
    Top = 276
  end
  inherited SaveDialog: TSaveDialog
    Top = 248
  end
  inherited qryHelper: TADOQuery
    Left = 452
    Top = 243
  end
  inherited alEdit: TActionList
    Left = 508
    Top = 272
  end
  inherited qrDefaultView: TADOQuery
    Left = 272
    Top = 263
  end
  inherited strView: TJvStrHolder
    Left = 508
    Top = 228
  end
  inherited strTableNames: TJvStrHolder
    Left = 136
    Top = 252
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 64
    Top = 252
  end
  inherited qrVistas: TABSQuery
    Left = 356
    Top = 256
  end
end
