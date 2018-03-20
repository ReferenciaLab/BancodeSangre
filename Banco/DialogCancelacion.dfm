object frmDialogCancelacion: TfrmDialogCancelacion
  Left = 0
  Top = 0
  Caption = 'Desaplicar Pagos a Facturas'
  ClientHeight = 411
  ClientWidth = 554
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
    Width = 554
    Height = 411
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object btcancelar: TcxButton
      Left = 468
      Top = 375
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 9
    end
    object btaceptar: TcxButton
      Left = 387
      Top = 375
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 8
      OnClick = btaceptarClick
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 118
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
      Left = 118
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
      Left = 245
      Top = 36
      Width = 75
      Height = 21
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 118
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
      Left = 118
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
      Left = 410
      Top = 117
      DataBinding.DataField = 'TOTALPAGADO'
      DataBinding.DataSource = dsFactura
      Properties.ReadOnly = True
      Properties.OnChange = cxDBTextEdit5PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object edvalor: TcxCurrencyEdit
      Left = 118
      Top = 335
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '0.00;(0.00)'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxGrid1: TcxGrid
      Left = 23
      Top = 176
      Width = 491
      Height = 121
      TabOrder = 6
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.DetailKeyFieldNames = 'CobroID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CobroID: TcxGridDBColumn
          DataBinding.FieldName = 'CobroID'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.IncSearch = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1Fecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 118
        end
        object cxGrid1DBTableView1MonedaID: TcxGridDBColumn
          Caption = 'Moneda'
          DataBinding.FieldName = 'MonedaID'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 46
        end
        object cxGrid1DBTableView1FormaDePagoID: TcxGridDBColumn
          Caption = 'Forma de Pago'
          DataBinding.FieldName = 'FormaDePagoID'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 154
        end
        object cxGrid1DBTableView1Monto: TcxGridDBColumn
          DataBinding.FieldName = 'Monto'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 114
        end
        object cxGrid1DBTableView1UsuarioID: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'UsuarioID'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 74
        end
        object cxGrid1DBTableView1refRecid: TcxGridDBColumn
          DataBinding.FieldName = 'refRecid'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.IncSearch = False
          Options.Grouping = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
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
            Caption = 'Monto pagado'
            Control = cxDBTextEdit5
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group6: TdxLayoutGroup
        Caption = 'Cobros'
        object dxLayoutControl1Item10: TdxLayoutItem
          Control = cxGrid1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Valor Nota de Credito'
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Monto a desaplicar'
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
    DataSet = BV.qrCobros
    Left = 292
    Top = 119
  end
  object dsFactura: TDataSource
    DataSet = BV.qrFactura
    Left = 288
    Top = 32
  end
end
