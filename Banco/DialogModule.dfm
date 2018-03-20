object frmDialogModule: TfrmDialogModule
  Left = 534
  Top = 246
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'PyMESol Accounting'
  ClientHeight = 220
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lcDialog: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 425
    Height = 220
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = True
    ParentFont = False
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object btCancelar: TcxButton
      Left = 92
      Top = 184
      Width = 75
      Height = 25
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object btAceptar: TcxButton
      Left = 11
      Top = 184
      Width = 75
      Height = 25
      BiDiMode = bdLeftToRight
      Caption = 'Aceptar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object lcDialogGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object lcDialogGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'General'
      end
      object lcDialogGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object liBtAceptar: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btAceptar
          ControlOptions.ShowBorder = False
        end
        object liBtCancelar: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btCancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
