object frmCuadreCaja: TfrmCuadreCaja
  Left = 0
  Top = 0
  Caption = 'Cuadre de Caja'
  ClientHeight = 510
  ClientWidth = 483
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
    Width = 483
    Height = 510
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object rgTipoCorte: TcxRadioGroup
      Left = 11
      Top = 11
      Caption = 'Tipo de Corte'
      ItemIndex = 1
      Properties.Columns = 2
      Properties.DefaultValue = 'U'
      Properties.Items = <
        item
          Caption = 'Global'
          Value = 'G'
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
      Height = 46
      Width = 454
    end
    object edfechacorte: TcxDateEdit
      Left = 89
      Top = 63
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    object btaceptarcuadre: TcxButton
      Left = 297
      Top = 460
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
      TabOrder = 4
    end
    object btcancelarcuadre: TcxButton
      Left = 378
      Top = 460
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
      TabOrder = 5
    end
    object cxGrid1: TcxGrid
      Left = 23
      Top = 115
      Width = 430
      Height = 182
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.DetailKeyFieldNames = 'Id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'Total'
            Column = cxGrid1DBTableView1Total
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Preview.Visible = True
        object cxGrid1DBTableView1Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1CorteId: TcxGridDBColumn
          DataBinding.FieldName = 'CorteId'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1Forma: TcxGridDBColumn
          DataBinding.FieldName = 'Forma'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1Tipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
          Width = 145
        end
        object cxGrid1DBTableView1Denominacion: TcxGridDBColumn
          DataBinding.FieldName = 'Denominacion'
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Width = 114
        end
        object cxGrid1DBTableView1Total: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Grouping = False
          Width = 105
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 23
      Top = 335
      Width = 334
      Height = 105
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsCorteOtros
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'Total'
            Column = cxGrid2DBTableView1Total
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid2DBTableView1CorteId: TcxGridDBColumn
          DataBinding.FieldName = 'CorteId'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid2DBTableView1Forma: TcxGridDBColumn
          DataBinding.FieldName = 'Forma'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid2DBTableView1Tipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid2DBTableView1Cantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid2DBTableView1Total: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object dxLayoutGroup2: TdxLayoutGroup
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
        object dxLayoutControl3Group1: TdxLayoutGroup
          Caption = 'Efectivo'
          object dxLayoutControl3Item1: TdxLayoutItem
            Control = cxGrid1
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          Caption = 'Otras formas de Cobro'
          object dxLayoutControl3Item3: TdxLayoutItem
            Control = cxGrid2
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
  object dsDatos: TDataSource
    DataSet = dmCobros.qrCorteEfectivo
    Left = 260
    Top = 59
  end
  object dsCorteOtros: TDataSource
    DataSet = dmCobros.qrCorteOtros
    Left = 300
    Top = 59
  end
end
