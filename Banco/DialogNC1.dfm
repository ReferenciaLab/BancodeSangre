object frmDialogNC1: TfrmDialogNC1
  Left = 0
  Top = 0
  Caption = 'Nota de Credito'
  ClientHeight = 255
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 481
    Height = 255
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object btcancelar: TcxButton
      Left = 395
      Top = 219
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 8
    end
    object btaceptar: TcxButton
      Left = 314
      Top = 219
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 7
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 70
      Top = 36
      DataBinding.DataField = 'ENTRADAID'
      DataBinding.DataSource = dsFactura
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 70
      Top = 63
      DataBinding.DataField = 'NOMBREPACIENTE'
      DataBinding.DataSource = dsFactura
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 197
      Top = 36
      Width = 75
      Height = 21
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 70
      Top = 90
      DataBinding.DataField = 'CLIENTENOMBRE'
      DataBinding.DataSource = dsFactura
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 70
      Top = 117
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = dsFactura
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 337
      Top = 117
      DataBinding.DataField = 'NETO'
      DataBinding.DataSource = dsFactura
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object edvalor: TcxCurrencyEdit
      Left = 70
      Top = 176
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '0.00;(0.00)'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group3: TdxLayoutGroup
        Caption = 'Factura de origen'
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Entrada'
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Paciente'
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'Cliente'
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item8: TdxLayoutItem
            Caption = 'Fecha'
            Control = cxDBTextEdit4
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'Monto'
            Control = cxDBTextEdit5
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Valor Nota de Credito'
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Monto'
          Control = edvalor
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btaceptar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btcancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = frmPuntoVenta.mdPago
    Left = 236
    Top = 183
  end
  object dsFactura: TDataSource
    DataSet = BV.qrFactura
    Left = 288
    Top = 32
  end
end
