object frmCustomModule: TfrmCustomModule
  Left = 751
  Top = 288
  BiDiMode = bdLeftToRight
  Caption = 'PyMESol Accounting'
  ClientHeight = 219
  ClientWidth = 499
  Color = 16311249
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000700000000000000078888888888888007877777870000800788
    888887FFF0800787777787777780078888888888888007888888888888800787
    7777870000800788888887FFF080078777778777778007888888888888800CCC
    CCCCCCCCCCCC0C8CCCCCCCCC8C8C0CCCCCCCCCCCCCCC0000000000000000FFFF
    0000800000008000000080000000800000008000000080000000800000008000
    0000800000008000000080000000800000008000000080000000FFFF0000}
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 48
    Top = 92
    Width = 28
    Height = 28
  end
  object pnCaption: TPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    BorderWidth = 3
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 398
  end
  object formStorage: TJvFormStorage
    AppStorage = frmMain.JvAppRegistryStorage
    AppStoragePath = 'frmCustomModule\'
    Options = [fpSize, fpLocation]
    OnRestorePlacement = formStorageRestorePlacement
    StoredValues = <>
    Left = 136
    Top = 90
  end
  object alEdit: TActionList
    Left = 364
    Top = 120
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cor&tar'
      ImageIndex = 0
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copiar'
      ImageIndex = 1
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Seleccionar T&odo'
    end
  end
  object pmCustom: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmCustomPopup
    Left = 252
    Top = 52
    object miJumpToTable: TMenuItem
      Caption = 'Ir al Formulario...'
      OnClick = miJumpToTableClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object pmCopyToClipboard: TMenuItem
      Action = EditCopy1
    end
    object pmCutToClipboard: TMenuItem
      Action = EditCut1
    end
    object pmSelectAllText: TMenuItem
      Action = EditSelectAll1
    end
  end
end
