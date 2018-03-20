object frmDatosClientesParametros: TfrmDatosClientesParametros
  Left = 0
  Top = 0
  Caption = 'Parametrizaci'#243'n de Clientes'
  ClientHeight = 511
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 332
    Height = 511
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
    ExplicitHeight = 540
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 164
      Top = 117
      DataBinding.DataField = 'PruebasPorDia'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      Width = 145
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 164
      Top = 144
      DataBinding.DataField = 'CoberturaPorc'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.DisplayFormat = '0.00;(0.00)'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 145
    end
    object cxDBCheckBox4: TcxDBCheckBox
      Left = 164
      Top = 225
      DataBinding.DataField = 'AutoConfirmar'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBCheckBox6: TcxDBCheckBox
      Left = 164
      Top = 252
      DataBinding.DataField = 'CobrarDiferencia'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 164
      Top = 36
      RepositoryItem = DM.lcMonedas
      DataBinding.DataField = 'MonedaID'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.CharCase = ecUpperCase
      Properties.ListColumns = <>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 145
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 164
      Top = 63
      DataBinding.DataField = 'QuienPaga'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.Items = <
        item
          Description = 'Compa'#241'ia'
          ImageIndex = 0
          Value = 'CIA'
        end
        item
          Description = 'Paciente'
          Value = 'EMP'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    object cxDBImageComboBox2: TcxDBImageComboBox
      Left = 164
      Top = 90
      DataBinding.DataField = 'EntregarResultados'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.Items = <
        item
          Description = 'Compa'#241'ia'
          ImageIndex = 0
          Value = 'CIA'
        end
        item
          Description = 'Paciente'
          Value = 'EMP'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 164
      Top = 198
      DataBinding.DataField = 'ActivarDescuentos'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Width = 145
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 164
      Top = 279
      DataBinding.DataField = 'SiempreInternet'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBCheckBox12: TcxDBCheckBox
      Left = 164
      Top = 306
      DataBinding.DataField = 'SiempreImprimir'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBCheckBox13: TcxDBCheckBox
      Left = 164
      Top = 333
      DataBinding.DataField = 'EnviarFax'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBCheckBox14: TcxDBCheckBox
      Left = 164
      Top = 360
      DataBinding.DataField = 'IncluirPrecioTicket'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBCheckBox15: TcxDBCheckBox
      Left = 164
      Top = 387
      DataBinding.DataField = 'ImprimirAliasNombre'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBCheckBox16: TcxDBCheckBox
      Left = 164
      Top = 414
      DataBinding.DataField = 'ImprimirAliasPrueba'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 103
      Top = 475
      Width = 125
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 16
    end
    object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
      Left = 164
      Top = 171
      RepositoryItem = DM.elcPacientes
      DataBinding.DataField = 'PacienteCiaId'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 5
      Width = 145
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 164
      Top = 441
      DataBinding.DataField = 'UsarAcuerdoPropio'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object LgSeguros: TdxLayoutGroup
        AutoAligns = []
        Caption = 'Parametros Generales'
        object dxLayoutControl2Item1: TdxLayoutItem
          Caption = 'Moneda'
          Control = cxDBLookupComboBox1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item2: TdxLayoutItem
          Caption = 'Pagado Por'
          Control = cxDBImageComboBox1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          Caption = 'Entregar Resultados'
          Control = cxDBImageComboBox2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Pruebas por Dia'
          Control = cxDBSpinEdit2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Cobertura %'
          Control = cxDBCurrencyEdit2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item13: TdxLayoutItem
          Caption = 'Codigo Paciente Cia'
          Control = cxDBExtLookupComboBox1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          Caption = 'Permitir Descuentos (P V)'
          Control = cxDBCheckBox1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem9: TdxLayoutItem
          Caption = 'Auto Confirmar Cobertura'
          Control = cxDBCheckBox4
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem10: TdxLayoutItem
          Caption = 'Cobrar Diferencia del Seguro'
          Control = cxDBCheckBox6
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          Caption = 'Siempre Internet'
          Control = cxDBCheckBox2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          Caption = 'Siempre Imprimir'
          Control = cxDBCheckBox12
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          Caption = 'Enviar Fax'
          Control = cxDBCheckBox13
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item8: TdxLayoutItem
          Caption = 'Incluir Precio'
          Control = cxDBCheckBox14
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item9: TdxLayoutItem
          Caption = 'Imprimir Alias (Paciente)'
          Control = cxDBCheckBox15
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item10: TdxLayoutItem
          Caption = 'Imprimir Alias (Prueba)'
          Control = cxDBCheckBox16
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item14: TdxLayoutItem
          Caption = 'Usar Acuerdo Propio'
          Control = cxDBCheckBox3
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl2Item11: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        Caption = 'cxButton1'
        ShowCaption = False
        Control = cxButton1
        ControlOptions.ShowBorder = False
      end
    end
  end
end
