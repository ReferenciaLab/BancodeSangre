inherited frmDialogDescCobro: TfrmDialogDescCobro
  Caption = 'Descuento Autorizado por Cobros'
  ClientHeight = 198
  ClientWidth = 270
  ExplicitWidth = 276
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 270
    Height = 198
    ExplicitWidth = 270
    ExplicitHeight = 198
    inherited btCancelar: TcxButton
      Top = 162
      TabOrder = 4
      ExplicitTop = 162
    end
    inherited btAceptar: TcxButton
      Top = 162
      TabOrder = 3
      OnClick = btAceptarClick
      ExplicitTop = 162
    end
    object eddescuento: TcxCurrencyEdit [2]
      Left = 91
      Top = 122
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      OnExit = eddescuentoExit
      Width = 121
    end
    object edusuario: TcxTextEdit [3]
      Left = 91
      Top = 36
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edclave: TcxMaskEdit [4]
      Left = 91
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      OnExit = edclaveExit
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      object lcDialogGroup3: TdxLayoutGroup [0]
        Caption = 'Usuario'
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Usuario'
          Control = edusuario
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Clave'
          Control = edclave
          ControlOptions.ShowBorder = False
        end
      end
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Descuento'
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Descuento %'
          Control = eddescuento
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
