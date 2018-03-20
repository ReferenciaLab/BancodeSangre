object Frmbuscar: TFrmbuscar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Buscar'
  ClientHeight = 397
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 44
    Height = 13
    Caption = 'Nombre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxTextEdit1: TcxTextEdit
    Left = 74
    Top = 24
    Properties.CharCase = ecUpperCase
    Properties.OnChange = cxTextEdit1PropertiesChange
    TabOrder = 0
    Width = 263
  end
  object cxButton1: TcxButton
    Left = 352
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 72
    Width = 496
    Height = 317
    DataSource = DataSource1
    FixedColor = clNavy
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Qbuscar
    Left = 120
    Top = 192
  end
  object Qbuscar: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CODIGO, NOMBRE FROM BSCLINICAS'
      ''
      'order by NOMBRE')
    Left = 232
    Top = 144
    object QbuscarCODIGO: TAutoIncField
      DisplayWidth = 12
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object QbuscarNOMBRE: TStringField
      DisplayWidth = 77
      FieldName = 'NOMBRE'
      FixedChar = True
      Size = 30
    end
  end
end
