inherited frmVentaDirecta: TfrmVentaDirecta
  Caption = 'VENTA DIRECTA'
  ClientHeight = 501
  ClientWidth = 709
  ExplicitTop = -54
  ExplicitWidth = 717
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 589
    Top = 39
    ExplicitLeft = 589
    ExplicitTop = 39
  end
  inherited pnCaption: TPanel
    Width = 709
    TabOrder = 2
    ExplicitWidth = 709
  end
  object pnPaciente: TPanel [2]
    Left = 0
    Top = 33
    Width = 709
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 56
      Height = 16
      Caption = 'Paciente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Paciente: TcxTextEdit
      Left = 100
      Top = 9
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      OnExit = PacienteExit
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 235
      Top = 9
      Width = 85
      Height = 24
      Action = actBuscarPaciente
      TabOrder = 1
      TabStop = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF002173
        B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002173B500218C
        EF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5FF0052BD
        FF00218CEF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF00218CEF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0052BDFF00218CEF002173B500636B7300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00218CEF005A6B7300FF00FF00D6BDB500D6AD
        A500D6ADA500D6ADA500D6BDB500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0031A5FF0031A5FF004A423900B59C8C00F7E7C600FFEF
        CE00FFF7CE00FFF7CE00EFDEC600D6ADA500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00BD9C8C00F7E7B500FFF7D600FFF7
        CE00FFF7CE00FFFFD600FFF7D600F7E7C600D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6BDB500EFE7B500FFEFBD00FFF7C600F7D6
        A500B55A1800F7D6A500FFFFC600FFFFD600D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFE7B500FFEFBD00F7D6A500F7D6
        A500B55A1800F7D6A500F7D6A500FFFFC600EFE7BD00D6ADA500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFE7B500F7EFBD00B55A1800B55A
        1800B55A1800B55A1800B55A1800FFF7C600F7EFC600CEAD9C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFDEB500F7E7BD00F7D6A500F7D6
        A500B55A1800F7D6A500F7D6A500FFF7C600EFE7BD00D6B5A500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6BDB500E7DEB500EFE7B500F7E7BD00F7D6
        A500B55A1800F7D6A500FFEFBD00F7EFBD00D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D6ADA500EFDEBD00EFE7B500F7E7
        B500F7E7B500F7E7B500EFE7B500F7E7BD00D6BDB500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6ADA500E7D6B500EFDE
        B500EFDEB500EFDEB500D6ADA500D6BDB500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDB500D6AD
        A500D6ADA500DEB5A500FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object cxTextEdit1: TcxTextEdit
      Left = 333
      Top = 9
      TabStop = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 277
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 81
    Width = 709
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 12
      Width = 44
      Height = 16
      Caption = 'Doctor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Doctor: TcxTextEdit
      Left = 100
      Top = 9
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      OnExit = DoctorExit
      Width = 121
    end
    object cxButton2: TcxButton
      Left = 235
      Top = 9
      Width = 85
      Height = 24
      Action = actBuscarDoctor
      TabOrder = 1
      TabStop = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF002173
        B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002173B500218C
        EF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5FF0052BD
        FF00218CEF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF00218CEF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0052BDFF00218CEF002173B500636B7300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00218CEF005A6B7300FF00FF00D6BDB500D6AD
        A500D6ADA500D6ADA500D6BDB500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0031A5FF0031A5FF004A423900B59C8C00F7E7C600FFEF
        CE00FFF7CE00FFF7CE00EFDEC600D6ADA500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00BD9C8C00F7E7B500FFF7D600FFF7
        CE00FFF7CE00FFFFD600FFF7D600F7E7C600D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6BDB500EFE7B500FFEFBD00FFF7C600F7D6
        A500B55A1800F7D6A500FFFFC600FFFFD600D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFE7B500FFEFBD00F7D6A500F7D6
        A500B55A1800F7D6A500F7D6A500FFFFC600EFE7BD00D6ADA500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFE7B500F7EFBD00B55A1800B55A
        1800B55A1800B55A1800B55A1800FFF7C600F7EFC600CEAD9C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFDEB500F7E7BD00F7D6A500F7D6
        A500B55A1800F7D6A500F7D6A500FFF7C600EFE7BD00D6B5A500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6BDB500E7DEB500EFE7B500F7E7BD00F7D6
        A500B55A1800F7D6A500FFEFBD00F7EFBD00D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D6ADA500EFDEBD00EFE7B500F7E7
        B500F7E7B500F7E7B500EFE7B500F7E7BD00D6BDB500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6ADA500E7D6B500EFDE
        B500EFDEB500EFDEB500D6ADA500D6BDB500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDB500D6AD
        A500D6ADA500DEB5A500FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object cxTextEdit3: TcxTextEdit
      Left = 333
      Top = 9
      TabStop = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 277
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 129
    Width = 709
    Height = 224
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Panel4: TPanel
      Left = 0
      Top = 43
      Width = 440
      Height = 181
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 438
        Height = 179
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmDonaciones.Datos
          DataController.DetailKeyFieldNames = 'DonacionID'
          DataController.KeyFieldNames = 'DonacionID'
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
          object cxGrid1DBTableView1DonacionID: TcxGridDBColumn
            DataBinding.FieldName = 'DonacionID'
            Width = 80
          end
          object cxGrid1DBTableView1MuestraNo: TcxGridDBColumn
            DataBinding.FieldName = 'MuestraNo'
            Width = 74
          end
          object cxGrid1DBTableView1MuestraNoAS: TcxGridDBColumn
            DataBinding.FieldName = 'MuestraNoAS'
            Width = 41
          end
          object cxGrid1DBTableView1NoAsCorto: TcxGridDBColumn
            DataBinding.FieldName = 'NoAsCorto'
            Width = 42
          end
          object cxGrid1DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 67
          end
          object cxGrid1DBTableView1PacienteID: TcxGridDBColumn
            DataBinding.FieldName = 'PacienteID'
            Width = 38
          end
          object cxGrid1DBTableView1DonacionStatus: TcxGridDBColumn
            DataBinding.FieldName = 'DonacionStatus'
            Width = 73
          end
          object cxGrid1DBTableView1Disponible: TcxGridDBColumn
            DataBinding.FieldName = 'Disponible'
            Width = 21
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object Panel5: TPanel
      Left = 440
      Top = 43
      Width = 269
      Height = 181
      Align = alRight
      TabOrder = 1
      object PG: TCheckBox
        Left = 23
        Top = 16
        Width = 200
        Height = 17
        Caption = 'Paquete Globular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object AF: TCheckBox
        Left = 23
        Top = 43
        Width = 200
        Height = 17
        Caption = 'Aferesis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object PFC: TCheckBox
        Left = 23
        Top = 73
        Width = 200
        Height = 17
        Caption = 'Plasma Fresco Congelado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object CRI: TCheckBox
        Left = 23
        Top = 100
        Width = 200
        Height = 17
        Caption = 'Crioprecipitado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object ST: TCheckBox
        Left = 23
        Top = 128
        Width = 200
        Height = 17
        Caption = 'Sangre Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 709
      Height = 43
      Align = alTop
      TabOrder = 2
      object Label3: TLabel
        Left = 24
        Top = 12
        Width = 54
        Height = 16
        Caption = 'Muestra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxTextEdit4: TcxTextEdit
        Left = 100
        Top = 9
        ParentFont = False
        Properties.OnChange = cxTextEdit4PropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 121
      end
    end
  end
  object Panel3: TPanel [5]
    Left = 0
    Top = 353
    Width = 709
    Height = 40
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 4
    object cxButton3: TcxButton
      Left = 56
      Top = 9
      Width = 100
      Height = 25
      Action = actCruzar
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD63
        1800AD631800AD631800AD631800AD631800AD631800AD631800AD631800AD63
        1800AD631800AD631800FF00FF00FF00FF00FF00FF00FF00FF00AD631800F7A5
        3900F7A53900F7A53900F7A53900F7A53900F7A53900F7A53900F7A53900F7A5
        3900F7A53900F7A53900AD631800FF00FF00FF00FF00FF00FF00AD631800F7BD
        6B00EFAD5A00EFAD5200EFA54A00E7A54200F7A53900846B84000021FF001863
        EF0029A5FF00529CCE00AD631800FF00FF00FF00FF00FF00FF00AD631800F7B5
        6300EFA55200E7A54A00E7A54200E79C4200EFA531008C6B73000021F7002163
        D600299CF7005A94C600AD631800FF00FF00FF00FF00FF00FF00AD631800F7B5
        6300EFA55200E7A54A00E7A54200E79C4200EFA53100EFA54200C68C5A00D69C
        5A00C6A56B00E7B57300AD6B2100FF00FF00FF00FF00FF00FF00AD631800DE94
        4A00C6843100C6843100C6843100C67B2900C67B2900C67B2900DE9C4200E79C
        5200F7AD6300F7BD7B00B5632100FF00FF00FF00FF00FF00FF00AD631800E7A5
        5200DE944200DE943900DE943900D6943900D6943900DE943900DE9C4200E79C
        5200F7BD7300FFC68C009C6321004284290042842900FF00FF00FF00FF00AD63
        1800AD631800AD631800AD631800AD631800AD631800AD631800AD631800AD63
        1800AD631800AD63180063A54A00637321004AFF940042842900FF00FF00FF00
        FF00FF00FF00637321004AC66B0042C6630042BD630039BD5A0039BD5A0039B5
        520039B5520031AD4A00109C310042E784004AFF940042842900FF00FF00FF00
        FF00FF00FF004284290042DE7B0039DE730039D6730031D66B0031D66B0031CE
        6B0031CE6B0031D66B0010841800108C210031C6630042842900FF00FF00FF00
        FF00FF00FF004A84290042CE630039DE730039D6730031D66B0031D66B0031CE
        6B0031CE6B0031DE730039DE7B00189C310029B54A0042842900FF00FF00FF00
        FF00FF00FF004A84290042CE6300429C420042A5420042A5420042A54200399C
        4200429C420039D6730042DE73004AE784005AFF9C0042842900FF00FF00FF00
        FF00FF00FF004A84290042DE7B0039D66B0039CE6B0031CE6B0031CE630031CE
        630031CE6B0039D6730042DE73004AE7840063FFA50042842900FF00FF00FF00
        FF00FF00FF00FF00FF0042842900428429004284290042842900428429004284
        29004284290042842900428429004284290042842900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object cxButton4: TcxButton
      Left = 195
      Top = 9
      Width = 100
      Height = 25
      Action = actReservar
      TabOrder = 1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B7300A57B
        7300A57B7300A57B7300A57B7300A57B73009C6B52009C6B52009C6B52009C6B
        52009C6B5200A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300FFFF
        FF00FFFFFF00FFFFF700F7DEC600DEC69C00D6BD9C00DEBD9C00DEBD9C00E7CE
        AD00F7DEC600FFE7D600FFFFFF00FFFFFF00FFFFFF00A57B7300AD7B7300FFFF
        FF00A57B7300A57B7300004A6300ADBDB500F7D6B500F7D6B500F7D6B500FFD6
        B500FFD6AD00EFBD9400BD8C7300D6A58400D69C8400A57B7300B5847B00FFFF
        FF00FFFFFF00FFFFFF00108CB50000B5E700108CB500D6CEC600E7BDAD00DEBD
        A500E7BDA500F7CEAD00B58C7B00B58C7B00B58C7B00A57B7300C6948400FFFF
        FF00A57B7300A57B7300108CB50000CEFF00735A31009C310000A57B7300A57B
        7300A57B7300FFDEB500FFDEAD00FFD6A500FFD69C00A57B7300CE9C8400C6F7
        CE00C6F7BD00BDCEFF0063A5FF00B54A0000FFA52900EF7B00009C310000FFEF
        D600FFEFD600FFE7CE00FFE7C600FFDEBD00FFDEB500A57B7300D6A58C00BDEF
        C6004A7BFF004A7BFF004A7BFF00B54A0000FFC68400FFB54200E77B00009C31
        0000FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00A57B7300DEAD8C00DEA5
        8400DEA58400DEA58400DEA58400DEA58400B54A0000FFC68400FFB53900B573
        1800004A6300DEA58400DEA58400DEA58400DEA58400DEA58400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B54A0000BD9C7300429C
        AD00B58421009C310000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A6300A5AD
        8C00FFB53100EF7B00009C310000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B54A
        0000FFC68400FFB53900EF8400009C310000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD4A0000AD42
        0000B5521800FFC68400FFB53900EF730000B5390000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B54A
        0000AD390000B5522100FFC68400E77B100052736B002184A500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00B54A0000A5310000844A31004A84940000BDFF0000A5D600FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B54A0000A531000000A5D60000A5D600FF00FF00}
    end
    object cxButton5: TcxButton
      Left = 340
      Top = 9
      Width = 100
      Height = 25
      Action = actDespachar
      TabOrder = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00292929003939
        420039394200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00395A9400395A
        9400395A9400395A9400FF00FF00FF00FF00FF00FF00FF00FF00292929005252
        5200292929003131310031313100396BB500395A9400395A94002963BD002963
        C6003173CE003984D600395A9400395A9400FF00FF00FF00FF0029292900736B
        730029292900F7F7F7004A4A4A005AC6FF005ABDFF005AA5E70063A5E70063AD
        E7006B94CE0073B5E70063C6FF0073BDEF00395A9400FF00FF00292929008C8C
        940029292900F7F7F7004A4A4A00C6FFFF00BDF7FF00C6F7FF00C6FFFF00ADE7
        F7008C9CB500636384008494BD009CC6E700B5E7F7008484AD0029292900949C
        A500292929004A4A4A004A4A4A00B5B5CE00E7EFF700CED6DE00ADB5C6007B7B
        9C007373940000CEFF0000CEFF0000CEFF009494B5008C94B500292929003939
        420029292900FF00FF00FF00FF00009CCE009494B5008484AD007373940039DE
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE009CFFFF0094FFFF0084FFFF006BEF
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE0084F7FF0063DEEF0039BDDE00009C
        CE00009CCE00009CCE0000ADDE0000BDEF0000C6FF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE00009CD60008ADDE0000B5EF0000C6
        F70000A5DE0000C6FF0000BDEF0000ADDE0000A5D600009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE0063EFFF0042E7FF0021DEFF0008CE
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE008CFFFF0073F7FF0052EFFF0039DE
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE009CFFFF0094FFFF0084FFFF006BEF
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE0084F7FF0063DEEF0039BDDE0018AD
        D60018ADDE0000A5D60000ADDE0000BDEF0000C6FF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE00009CCE00009CCE0052D6EF009CFF
        FF0073F7FF0031DEFF0000B5E700009CCE00009CCE00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009CCE00009C
        CE00009CCE00009CCE00009CCE00FF00FF00FF00FF00FF00FF00}
    end
    object cxButton6: TcxButton
      Left = 479
      Top = 9
      Width = 98
      Height = 25
      Action = actCaja
      TabOrder = 3
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0042943100429C3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00428C2100429C
        31004AA542004AAD420042A53900429C3100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00398418004294290042A539004AA5
        39004AA539004AAD42004AAD42004AAD420042A53900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004284210042841800397B1000429C31004AA539004AAD
        420042B55A0042B552004AAD4A004AAD4A004AAD4A0039842100FF00FF00FF00
        FF00397B1800428C290042A5390042942900428418004AA5420042B55A0042C6
        730042C67B0042BD6B0042AD4A004AA542004AB54A00428C2900397B18004294
        2900429C31004AA542004AA54200428C2100428C10004AAD310042AD420042BD
        630042C6730042BD6B00428C2100429429004ABD5A004294290039731000428C
        29004AA5420042A5390042B55200429418004A9408004A9C08004A9400004A9C
        100042AD390042C6730042BD630042A54200429C390039842100397310004294
        31004AAD4A0042BD630042C6730042AD3900429400004A9408004A9C08004A9C
        08004A94000042B5520042AD52003984210039731000FF00FF00397B100042AD
        520042C67B0042C6730042BD730042BD6B0042AD42004A9C18004A9C10004A9C
        1000428C08004284180042842100FF00FF00FF00FF00FF00FF00FF00FF003984
        290042AD520042BD730042C6730042BD730042C67B0042C6730042B55200428C
        290042842100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00428C2100429C390042B5630042C67B0042BD630042A5420042842100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00428C2100428C21004294310042842100FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  object Panel7: TPanel [6]
    Left = 0
    Top = 393
    Width = 709
    Height = 108
    Align = alClient
    TabOrder = 5
    ExplicitHeight = 102
  end
  inherited formStorage: TJvFormStorage
    Left = 552
    Top = 34
  end
  inherited alEdit: TActionList
    Images = frmMain.ilNavBarSmall
    Left = 588
    Top = 80
    object actBuscarPaciente: TAction
      Category = 'Botones'
      Caption = 'Buscar'
      ImageIndex = 89
      OnExecute = actBuscarPacienteExecute
    end
    object actBuscarDoctor: TAction
      Category = 'Botones'
      Caption = 'Buscar'
      ImageIndex = 89
      OnExecute = actBuscarDoctorExecute
    end
    object actCruzar: TAction
      Category = 'Botones'
      Caption = 'Cruzar'
      ImageIndex = 16
      OnExecute = actCruzarExecute
    end
    object actReservar: TAction
      Category = 'Botones'
      Caption = 'Reservar'
      ImageIndex = 15
      OnExecute = actReservarExecute
    end
    object actDespachar: TAction
      Category = 'Botones'
      Caption = 'Despachar'
      ImageIndex = 46
      OnExecute = actDespacharExecute
    end
    object actCaja: TAction
      Category = 'Botones'
      Caption = 'Caja'
      ImageIndex = 14
      OnExecute = actCajaExecute
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 516
    Top = 36
  end
end
