object frmDialogImpCuadre: TfrmDialogImpCuadre
  Left = 0
  Top = 0
  Caption = 'Consulta de Cuadres de Caja'
  ClientHeight = 480
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 424
    Height = 480
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 50
      Width = 581
      Height = 179
      TabOrder = 1
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'CobroID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbDatosCorteId: TcxGridDBColumn
          Caption = 'Corte'
          DataBinding.FieldName = 'CorteId'
          Width = 80
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 109
        end
        object dbDatosHora: TcxGridDBColumn
          DataBinding.FieldName = 'Hora'
          Width = 68
        end
        object dbDatosUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
          Width = 131
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btcancelar: TcxButton
      Left = 338
      Top = 444
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      ModalResult = 2
      TabOrder = 3
    end
    object btaceptar: TcxButton
      Left = 257
      Top = 444
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      ModalResult = 1
      TabOrder = 2
    end
    object rgCriterio: TcxRadioGroup
      Left = 11
      Top = 11
      ItemIndex = 0
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Usuarios Actual'
        end
        item
          Caption = 'Todos los Usuarios'
        end>
      Properties.OnChange = rgCriterioPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 0
      Height = 33
      Width = 743
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'cxRadioGroup1'
        ShowCaption = False
        Control = rgCriterio
        ControlOptions.ShowBorder = False
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
    DataSet = qrCuadres
    Left = 340
    Top = 7
  end
  object qrCuadres: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from PTCorteCajaCab')
    Left = 152
    object qrCuadresCorteId: TStringField
      FieldName = 'CorteId'
    end
    object qrCuadresFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrCuadresHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object qrCuadresUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object qrCuadresSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
  end
end
