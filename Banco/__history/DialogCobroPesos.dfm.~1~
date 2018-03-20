object frmDialogCobroPesos: TfrmDialogCobroPesos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Formulario de Cobro - RD$'
  ClientHeight = 534
  ClientWidth = 350
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 350
    Height = 534
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 73
      Width = 270
      Height = 168
      TabOrder = 3
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      OnFocusedViewChanged = cgDatosFocusedViewChanged
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.DetailKeyFieldNames = 'Orden'
        DataController.KeyFieldNames = 'FormaDePagoID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbDatosDescripcion: TcxGridDBColumn
          Caption = 'Forma de Pago'
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Options.Focusing = False
          Styles.Content = dmAppActions.cxStyle44
          Width = 142
        end
        object dbDatosMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Options.Editing = False
          Options.Focusing = False
          Width = 63
        end
        object dbDatosPagado: TcxGridDBColumn
          DataBinding.FieldName = 'Pagado'
          HeaderAlignmentHorz = taRightJustify
          Width = 107
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btcancelar: TcxButton
      Left = 264
      Top = 498
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 6
      OnClick = btcancelarClick
    end
    object btaceptar: TcxButton
      Left = 183
      Top = 498
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 5
      OnClick = btaceptarClick
    end
    object EdPendiente: TcxCurrencyEdit
      Left = 95
      Top = 36
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 196
    end
    object EdCobrado: TcxCurrencyEdit
      Left = 95
      Top = 431
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 0
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 196
    end
    object EdDevuelta: TcxCurrencyEdit
      Left = 95
      Top = 461
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 196
    end
    object PrintRecibo: TcxCheckBox
      Left = 11
      Top = 498
      Caption = 'Imprimir Recibo'
      ParentColor = False
      State = cbsChecked
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 134
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object LcDevuelta: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'Totales'
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Cobrado'
          Control = EdCobrado
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Devuelta'
          Control = EdDevuelta
          ControlOptions.ShowBorder = False
        end
      end
      object LcPendiente: TdxLayoutGroup
        Caption = 'Monto Pendiente'
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'Valor a Cobrar'
          Control = EdPendiente
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'cxGrid1'
        ShowCaption = False
        Control = cgDatos
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'cxCheckBox1'
          ShowCaption = False
          Control = PrintRecibo
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btaceptar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btcancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = dmCobros.mdPago
    Left = 20
    Top = 319
  end
  object ActionList1: TActionList
    Images = frmMain.ilNavBarSmall
    Left = 56
    Top = 320
    object Aceptar: TAction
      Category = 'Botones'
      Caption = 'Aceptar'
    end
    object Cancelar: TAction
      Category = 'Botones'
      Caption = 'Cancelar'
    end
    object Actualizar: TAction
      Caption = 'Actualizar'
      OnExecute = ActualizarExecute
    end
  end
end
