object Frmbusca_donacion: TFrmbusca_donacion
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Buscar Donaci'#243'n'
  ClientHeight = 454
  ClientWidth = 678
  Color = 16311249
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 22
    Width = 83
    Height = 13
    Caption = 'Num. Donaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 43
    Width = 78
    Height = 13
    Caption = 'Num. Muestra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 38
    Top = 64
    Width = 49
    Height = 13
    Caption = 'Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 92
    Width = 675
    Height = 326
    TabOrder = 0
    object Qry_donacion: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = Dsdonacion
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object Qry_donacionColumn1: TcxGridDBColumn
        Caption = 'Donacionid'
        DataBinding.FieldName = 'DonacionID'
        Width = 93
      end
      object Qry_donacionColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'MuestraNo'
        Width = 84
      end
      object Qry_donacionColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 77
      end
      object Qry_donacionColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'PacienteID'
        Width = 85
      end
      object Qry_donacionColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'NOMBRE'
        Width = 316
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = Qry_donacion
    end
  end
  object btaceptar: TcxButton
    Left = 486
    Top = 421
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    TabOrder = 1
    OnClick = btaceptarClick
  end
  object btcancelar: TcxButton
    Left = 582
    Top = 421
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object cxTextEdit1: TcxTextEdit
    Left = 93
    Top = 14
    Properties.CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = cxTextEdit1KeyPress
    Width = 360
  end
  object cxTextEdit2: TcxTextEdit
    Left = 93
    Top = 56
    Properties.CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = cxTextEdit2KeyPress
    Width = 360
  end
  object cxTextEdit3: TcxTextEdit
    Left = 93
    Top = 35
    Properties.CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = cxTextEdit3KeyPress
    Width = 360
  end
  object cxButton1: TcxButton
    Left = 486
    Top = 8
    Width = 171
    Height = 69
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = cxButton1Click
  end
  object Dsdonacion: TDataSource
    DataSet = Qdonaciones
    Left = 352
    Top = 208
  end
  object Qdonaciones: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'SELECT * FROM V_DONACION_DONANTE'
      'WHERE DONACIONID <> '#39#39)
    Left = 480
    Top = 224
    object QdonacionesDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object QdonacionesMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object QdonacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QdonacionesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object QdonacionesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object QdonacionesNOMBRE1: TStringField
      FieldName = 'NOMBRE1'
      Size = 30
    end
    object QdonacionesAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Size = 50
    end
    object QdonacionesTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object QdonacionesTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object QdonacionesDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
  end
end
