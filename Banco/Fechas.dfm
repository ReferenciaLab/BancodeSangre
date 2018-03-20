inherited frmDialogFechas: TfrmDialogFechas
  Caption = 'Fechas'
  ClientHeight = 151
  ClientWidth = 243
  ExplicitWidth = 249
  ExplicitHeight = 183
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 243
    Height = 151
    ExplicitWidth = 243
    ExplicitHeight = 158
    inherited btCancelar: TcxButton
      Top = 115
      TabOrder = 3
      ExplicitTop = 115
    end
    inherited btAceptar: TcxButton
      Top = 115
      TabOrder = 2
      ExplicitTop = 115
    end
    object cxDateEdit1: TcxDateEdit [2]
      Left = 87
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit [3]
      Left = 87
      Top = 63
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Fecha inicial'
          Control = cxDateEdit1
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Fecha final'
          Control = cxDateEdit2
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
