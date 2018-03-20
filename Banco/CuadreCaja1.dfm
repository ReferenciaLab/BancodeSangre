object frmCuadreCaja1: TfrmCuadreCaja1
  Left = 0
  Top = 0
  Caption = 'Cuadre de Caja'
  ClientHeight = 484
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 373
    Top = 233
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 16311249
    ParentColor = False
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 424
    Height = 484
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object lbvalor2000: TLabel
      Left = 133
      Top = 156
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor1000: TLabel
      Left = 133
      Top = 183
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor500: TLabel
      Left = 133
      Top = 210
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor100: TLabel
      Left = 133
      Top = 237
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor50: TLabel
      Left = 133
      Top = 264
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor20: TLabel
      Left = 133
      Top = 318
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor10: TLabel
      Left = 133
      Top = 345
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor5: TLabel
      Left = 336
      Top = 156
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor1: TLabel
      Left = 336
      Top = 183
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor50c: TLabel
      Left = 336
      Top = 210
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor25c: TLabel
      Left = 336
      Top = 237
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor10c: TLabel
      Left = 336
      Top = 264
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor5c: TLabel
      Left = 336
      Top = 291
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object lbvalor25: TLabel
      Left = 133
      Top = 291
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16311249
      ParentColor = False
    end
    object rgTipoCorte: TcxRadioGroup
      Left = 11
      Top = 11
      Caption = 'Tipo de Corte'
      ItemIndex = 3
      Properties.Columns = 2
      Properties.DefaultValue = 'U'
      Properties.Items = <
        item
          Caption = 'Global'
          Value = 'G'
        end
        item
          Caption = 'Sucursal'
          Value = 'S'
        end
        item
          Caption = 'Turno'
          Value = 'T'
        end
        item
          Caption = 'Usuario'
          Value = 'U'
        end>
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 0
      Transparent = True
      Height = 105
      Width = 185
    end
    object edfechacorte: TcxDateEdit
      Left = 89
      Top = 122
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    object ed2000: TcxTextEdit
      Left = 52
      Top = 156
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed2000PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed1000: TcxTextEdit
      Left = 52
      Top = 183
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed1000PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed500: TcxTextEdit
      Left = 52
      Top = 210
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed500PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed100: TcxTextEdit
      Left = 52
      Top = 237
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed100PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed50: TcxTextEdit
      Left = 52
      Top = 264
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed50PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed20: TcxTextEdit
      Left = 52
      Top = 318
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed20PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 8
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed10: TcxTextEdit
      Left = 52
      Top = 345
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed10PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 9
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed25c: TcxTextEdit
      Left = 255
      Top = 237
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed25cPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 13
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed10c: TcxTextEdit
      Left = 255
      Top = 264
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed10cPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 14
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed5c: TcxTextEdit
      Left = 255
      Top = 291
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed5cPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 15
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed5: TcxTextEdit
      Left = 255
      Top = 156
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed5PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 10
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed1: TcxTextEdit
      Left = 255
      Top = 183
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed1PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 11
      Text = '0'
      Height = 21
      Width = 75
    end
    object ed50c: TcxTextEdit
      Left = 255
      Top = 210
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed50cPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 12
      Text = '0'
      Height = 21
      Width = 75
    end
    object edTotalEfectivo: TcxCurrencyEdit
      Left = 11
      Top = 397
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -13
      Style.Font.Name = 'Trebuchet MS'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 121
    end
    object btaceptarcuadre: TcxButton
      Left = 245
      Top = 436
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 17
    end
    object btcancelarcuadre: TcxButton
      Left = 326
      Top = 436
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 18
    end
    object ed25: TcxTextEdit
      Left = 52
      Top = 291
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.OnChange = ed25PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 7
      Text = '0'
      Height = 21
      Width = 75
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl3Group14: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object GroupParametros: TdxLayoutGroup
          Caption = 'Parametros Cuadre'
          ShowCaption = False
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = rgTipoCorte
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl3Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Fecha de Corte'
            Control = edfechacorte
            ControlOptions.ShowBorder = False
          end
        end
        object GroupSaldo: TdxLayoutGroup
          Caption = 'Saldo Final en Caja'
          ShowCaption = False
          ShowBorder = False
          object dxLayoutGroup1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object GroupBilletes: TdxLayoutGroup
              Caption = 'Billetes'
              ShowCaption = False
              object layout55: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item3: TdxLayoutItem
                  Caption = '2000'
                  Control = ed2000
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item11: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor2000
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item4: TdxLayoutItem
                  Caption = '1000'
                  Control = ed1000
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item12: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor1000
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item5: TdxLayoutItem
                  Caption = '500'
                  Control = ed500
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item13: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor500
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item6: TdxLayoutItem
                  Caption = '100'
                  Control = ed100
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item14: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor100
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl3Group15: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl3Item7: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = '50'
                    Control = ed50
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl3Item22: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = lbvalor50
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl3Group1: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl3Item1: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = '25'
                    Control = ed25
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl3Item32: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = lbvalor25
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl3Group6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item8: TdxLayoutItem
                  Caption = '20'
                  Control = ed20
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item23: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor20
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item9: TdxLayoutItem
                  Caption = '10'
                  Control = ed10
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item15: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor10
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object GroupMonedas: TdxLayoutGroup
              Caption = 'Monedas'
              ShowCaption = False
              object dxLayoutControl3Group8: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item19: TdxLayoutItem
                  Caption = '5'
                  Control = ed5
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item24: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor5
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group9: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item20: TdxLayoutItem
                  Caption = '1'
                  Control = ed1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item25: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor1
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group10: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item21: TdxLayoutItem
                  Caption = '50 C'
                  Control = ed50c
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item26: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor50c
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group11: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item16: TdxLayoutItem
                  Caption = '25 C'
                  Control = ed25c
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item27: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor25c
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group12: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item17: TdxLayoutItem
                  Caption = '10 C'
                  Control = ed10c
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item28: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor10c
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group13: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item18: TdxLayoutItem
                  Caption = '5 C'
                  Control = ed5c
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item29: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lbvalor5c
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object dxLayoutControl3Item30: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Total Efectivo'
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Layout = clTop
            Control = edTotalEfectivo
            ControlOptions.ShowBorder = False
          end
        end
      end
      object botonescuadre: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'botonescuadre'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        object dxLayoutControl3Item31: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btaceptarcuadre
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl3Item10: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btcancelarcuadre
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
