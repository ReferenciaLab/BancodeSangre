inherited frmDatosNCF: TfrmDatosNCF
  Caption = 'NCF'
  ClientHeight = 367
  ClientWidth = 664
  ExplicitWidth = 672
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 664
    Height = 334
    ExplicitWidth = 664
    ExplicitHeight = 334
    inherited pcDatos: TcxPageControl
      Width = 640
      Height = 517
      ExplicitWidth = 640
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 640
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 640
        ExplicitHeight = 310
        inherited lcGrid: TdxLayoutControl
          Width = 640
          Height = 493
          ExplicitWidth = 640
          ExplicitHeight = 310
          inherited dgDatos: TcxGrid
            Width = 616
            Height = 240
            ExplicitWidth = 616
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'Tipo'
              object tvDatosTipo: TcxGridDBColumn
                DataBinding.FieldName = 'Tipo'
                Width = 23
              end
              object tvDatosFijo: TcxGridDBColumn
                DataBinding.FieldName = 'Fijo'
                Width = 71
              end
              object tvDatosConsecutivo: TcxGridDBColumn
                DataBinding.FieldName = 'Consecutivo'
                Width = 65
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
                Width = 312
              end
              object tvDatosInicial: TcxGridDBColumn
                DataBinding.FieldName = 'Inicial'
                Width = 64
              end
              object tvDatosFinal: TcxGridDBColumn
                DataBinding.FieldName = 'Final'
                Width = 66
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 640
        ExplicitHeight = 310
        inherited lcDatos: TdxLayoutControl
          Width = 640
          Height = 493
          ExplicitWidth = 640
          ExplicitHeight = 310
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Left = 110
            Top = 36
            DataBinding.DataField = 'Fijo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 163
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 110
            Top = 117
            DataBinding.DataField = 'Consecutivo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 163
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 330
            Top = 90
            DataBinding.DataField = 'Final'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 183
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 110
            Top = 90
            DataBinding.DataField = 'Inicial'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 163
          end
          object cxDBTextEdit5: TcxDBTextEdit [4]
            Left = 110
            Top = 63
            DataBinding.DataField = 'Tipo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 163
          end
          object cxDBTextEdit6: TcxDBTextEdit [5]
            Left = 110
            Top = 144
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 451
          end
          object cxDBCheckBox1: TcxDBCheckBox [6]
            Left = 23
            Top = 171
            Caption = 'Usar el mismo numero para el dia entero'
            DataBinding.DataField = 'Diario'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 617
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'Datos'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Parte fija del NCF'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo'
                Control = cxDBTextEdit5
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Valor inicial'
                  Control = cxDBTextEdit4
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Valor final'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Consecutivo'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                Caption = 'Descripcion'
                Control = cxDBTextEdit6
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 664
    ExplicitWidth = 664
  end
  inherited formStorage: TJvFormStorage
    Left = 368
    Top = 262
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrNCF
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Top = 260
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39339.359863101850000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39339.359863645830000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 312
    Top = 272
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 488
    Top = 260
  end
  inherited qryHelper: TADOQuery
    Left = 484
    Top = 307
  end
  inherited alEdit: TActionList
    Left = 420
    Top = 312
  end
  inherited pmCustom: TPopupMenu
    Left = 344
    Top = 308
  end
  inherited qrDefaultView: TADOQuery
    Left = 272
    Top = 279
  end
  inherited strView: TJvStrHolder
    Left = 364
    Top = 308
  end
  inherited strTableNames: TJvStrHolder
    Left = 144
    Top = 284
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 8
    Top = 276
  end
  inherited qrVistas: TABSQuery
    Left = 436
    Top = 256
  end
end
