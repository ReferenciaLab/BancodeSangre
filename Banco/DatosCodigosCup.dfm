inherited frmDatosCodigosCup: TfrmDatosCodigosCup
  Caption = 'Registrar Los Codigos CUP de las Pruebas'
  ClientHeight = 374
  ClientWidth = 681
  ExplicitWidth = 689
  ExplicitHeight = 408
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 681
    Height = 341
    ExplicitWidth = 681
    ExplicitHeight = 341
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ActivePage = tsDatos
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'CodigoCupID'
              object tvDatosPruebaID: TcxGridDBColumn
                Caption = 'Prueba Id'
                DataBinding.FieldName = 'PruebaID'
                Options.Editing = False
                Width = 110
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
                Options.Editing = False
                Width = 250
              end
              object tvDatosCodigoCupID: TcxGridDBColumn
                Caption = 'Codigo'
                DataBinding.FieldName = 'CodigoCupID'
                Options.Editing = False
                Width = 110
              end
              object tvDatosNombreCliente: TcxGridDBColumn
                Caption = 'Cia. Aseguradora'
                DataBinding.FieldName = 'NombreCliente'
                Options.Editing = False
                Width = 250
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object EdPrueba: TcxDBTextEdit [0]
            Tag = 99
            Left = 142
            Top = 36
            DataBinding.DataField = 'PruebaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 140
          end
          object EdDescripcion: TcxDBTextEdit [1]
            Left = 142
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 390
          end
          object CbEstatus: TcxDBCheckBox [2]
            Left = 142
            Top = 198
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = 'True'
            Properties.ValueUnchecked = 'False'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object EdClienteId: TcxDBTextEdit [3]
            Left = 142
            Top = 90
            Hint = 'Haga Click En el Boton Aseguradoras'
            DataBinding.DataField = 'ClienteID'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 140
          end
          object EdCodigoCup: TcxDBTextEdit [4]
            Left = 142
            Top = 144
            DataBinding.DataField = 'CodigoCupID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 140
          end
          object EdNombreAseguradora: TcxDBTextEdit [5]
            Left = 142
            Top = 117
            DataBinding.DataField = 'NombreCliente'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 390
          end
          object EdDescripcionCup: TcxDBTextEdit [6]
            Left = 142
            Top = 171
            DataBinding.DataField = 'DescripcionCup'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 390
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Prueba ID'
                Control = EdPrueba
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descripci'#243'n Prueba'
                Control = EdDescripcion
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Aseguradora ID'
                Control = EdClienteId
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Nombre Aseguradora'
                Control = EdNombreAseguradora
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo Cup Id'
                Control = EdCodigoCup
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descripci'#243'n Codigo Cup'
                Control = EdDescripcionCup
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = CbEstatus
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object btClientes: TcxButton [1]
      Left = 569
      Top = 7
      Width = 100
      Height = 25
      Caption = '&Aseguradora'
      TabOrder = 1
      OnClick = btClientesClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btClientes
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 681
    ExplicitWidth = 681
  end
  inherited dsDatos: TDataSource
    DataSet = qrCodigosCup
    Left = 204
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 144
    Top = 48
  end
  inherited qryHelper: TADOQuery
    Left = 484
    Top = 2
  end
  inherited alEdit: TActionList
    Top = 88
  end
  inherited pmCustom: TPopupMenu
    Left = 440
    Top = 92
  end
  inherited qrDefaultView: TADOQuery
    Left = 432
  end
  inherited strView: TJvStrHolder
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 208
    Top = 332
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 276
  end
  object qrCodigosCup: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrCodigosCupBeforePost
    OnNewRecord = qrCodigosCupNewRecord
    Parameters = <
      item
        Name = 'pru'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select * From PTCodigosCup'
      'Where PruebaId = :pru')
    Left = 152
    Top = 3
    object qrCodigosCupPruebaID: TStringField
      DisplayLabel = 'Prueba ID'
      FieldName = 'PruebaID'
    end
    object qrCodigosCupClienteID: TStringField
      DisplayLabel = 'Aseguradora ID'
      FieldName = 'ClienteID'
    end
    object qrCodigosCupCodigoCupID: TStringField
      DisplayLabel = 'Codigo Cup Id'
      FieldName = 'CodigoCupID'
    end
    object qrCodigosCupDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrCodigosCupDescripcionCup: TStringField
      DisplayLabel = 'Descripci'#243'n Codigo Cup'
      FieldName = 'DescripcionCup'
      Size = 80
    end
    object qrCodigosCupNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 80
    end
    object qrCodigosCupCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrCodigosCupLinea: TIntegerField
      FieldName = 'Linea'
    end
    object qrCodigosCupEstatus: TBooleanField
      FieldName = 'Estatus'
    end
  end
end
