inherited frmDatosTarjetaDescuento: TfrmDatosTarjetaDescuento
  Caption = 'Tarjetas de Descuento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
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
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'TarjetaID'
              object tvDatosTarjetaID: TcxGridDBColumn
                Caption = 'Tarjeta No'
                DataBinding.FieldName = 'TarjetaID'
                Width = 75
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 250
              end
              object tvDatosDigitos: TcxGridDBColumn
                DataBinding.FieldName = 'Digitos'
                Width = 60
              end
              object tvDatosNumeroUnico: TcxGridDBColumn
                Caption = 'Unico'
                DataBinding.FieldName = 'NumeroUnico'
                Width = 60
              end
              object tvDatosNumeroObligatorio: TcxGridDBColumn
                Caption = 'Capturar'
                DataBinding.FieldName = 'NumeroObligatorio'
                Width = 60
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object EdTarjetaId: TcxDBTextEdit [0]
            Tag = 99
            Left = 115
            Top = 36
            DataBinding.DataField = 'TarjetaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 115
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBSpinEdit1: TcxDBSpinEdit [2]
            Left = 115
            Top = 90
            DataBinding.DataField = 'Digitos'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 2
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox [3]
            Left = 115
            Top = 117
            DataBinding.DataField = 'NumeroObligatorio'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxDBCheckBox2: TcxDBCheckBox [4]
            Left = 115
            Top = 144
            DataBinding.DataField = 'NumeroUnico'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object cxDBCheckBox3: TcxDBCheckBox [5]
            Left = 115
            Top = 171
            DataBinding.DataField = 'Bono'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tarjeta Id'
                Control = EdTarjetaId
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Numero de Digitos'
                Control = cxDBSpinEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Capturar Numero'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Unico por Cliente'
                Control = cxDBCheckBox2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Bono Doctor'
                Control = cxDBCheckBox3
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object BtBonos: TcxButton [1]
      Left = 510
      Top = 7
      Width = 90
      Height = 25
      Caption = 'Registrar Bonos'
      TabOrder = 1
      OnClick = BtBonosClick
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtBonos
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrTarjetaDescuento
    Left = 276
    Top = 7
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.351883680550000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.351883854160000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 392
    Top = 268
  end
  inherited qrDefaultView: TADOQuery
    Left = 360
  end
  inherited strView: TJvStrHolder
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 248
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 216
    Top = 292
  end
  object qrTarjetaDescuento: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrTarjetaDescuentoBeforePost
    OnNewRecord = qrTarjetaDescuentoNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  From PTTarjetaDescuento')
    Left = 376
    Top = 8
    object qrTarjetaDescuentoTarjetaID: TStringField
      FieldName = 'TarjetaID'
      Size = 10
    end
    object qrTarjetaDescuentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 85
    end
    object qrTarjetaDescuentoDigitos: TSmallintField
      FieldName = 'Digitos'
    end
    object qrTarjetaDescuentoContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object qrTarjetaDescuentoTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrTarjetaDescuentoInterno: TBooleanField
      FieldName = 'Interno'
    end
    object qrTarjetaDescuentoFactorPuntos: TBCDField
      FieldName = 'FactorPuntos'
      Precision = 19
    end
    object qrTarjetaDescuentoDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
    end
    object qrTarjetaDescuentoNumeroUnico: TBooleanField
      FieldName = 'NumeroUnico'
    end
    object qrTarjetaDescuentoNumeroObligatorio: TBooleanField
      FieldName = 'NumeroObligatorio'
    end
    object qrTarjetaDescuentoBono: TBooleanField
      FieldName = 'Bono'
    end
  end
end
