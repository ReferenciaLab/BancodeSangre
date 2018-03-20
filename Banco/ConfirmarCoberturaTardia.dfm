object frmConfirmarCoberturaTardia: TfrmConfirmarCoberturaTardia
  Left = 0
  Top = 0
  Caption = 'Confirmaci'#243'n de Cobertura'
  ClientHeight = 342
  ClientWidth = 403
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 403
    Height = 342
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 182
      Top = 235
      DataBinding.DataField = 'APROBACIONNO'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 182
      Top = 262
      DataBinding.DataField = 'APROBACIONPOR'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Width = 170
    end
    object BtAceptar: TcxButton
      Left = 16
      Top = 296
      Width = 185
      Height = 25
      Caption = 'F9 = Aceptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 7
    end
    object cxButton2: TcxButton
      Left = 207
      Top = 296
      Width = 185
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 8
    end
    object edcoberturavalor: TcxDBCurrencyEdit
      Left = 182
      Top = 181
      DataBinding.DataField = 'COBERTURAVALOR'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 182
      Top = 208
      DataBinding.DataField = 'COBERTURAEXPPORC'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 182
      Top = 154
      DataBinding.DataField = 'TOTALPAGADO'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 182
      Top = 36
      DataBinding.DataField = 'COBERTURARECHAZADA'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.ReadOnly = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBCheckBox4: TcxDBCheckBox
      Left = 182
      Top = 95
      DataBinding.DataField = 'COBERTURACONFIRMADA'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.ReadOnly = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group3: TdxLayoutGroup
        Caption = 'Rechazar Cobertura'
        object dxLayoutControl1Item9: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = '(F12) - Rechazada por el Seguro'
          Control = cxDBCheckBox3
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        Caption = 'Confirmar Cobertura'
        object dxLayoutControl1Item10: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Confirmada por el Seguro'
          Control = cxDBCheckBox4
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Datos de la Confirmacion'
        object dxLayoutControl1Item8: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Valor Abonado'
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Cobertura'
          Control = edcoberturavalor
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Cobertura en %'
          Visible = False
          Control = cxDBCheckBox2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Aprobacion No'
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Aprobada Por'
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtAceptar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = cxButton2
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
