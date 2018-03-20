inherited frmReporteProductos: TfrmReporteProductos
  Caption = 'Productos en Inventario'
  ClientHeight = 307
  ClientWidth = 380
  ExplicitWidth = 386
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 380
    Height = 307
    ExplicitWidth = 380
    ExplicitHeight = 307
    inherited btCancelar: TcxButton
      Top = 271
      TabOrder = 6
      ExplicitTop = 271
    end
    inherited btAceptar: TcxButton
      Top = 271
      TabOrder = 5
      ExplicitTop = 271
    end
    object cxDateEdit1: TcxDateEdit [2]
      Left = 111
      Top = 188
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit [3]
      Left = 111
      Top = 215
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Width = 121
    end
    object cxComboBox1: TcxComboBox [4]
      Left = 111
      Top = 102
      Properties.Items.Strings = (
        'TODOS'
        'A'
        'B'
        'AB'
        'O')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Text = 'cxComboBox1'
      Width = 121
    end
    object cxComboBox2: TcxComboBox [5]
      Left = 111
      Top = 129
      Properties.Items.Strings = (
        'TODOS'
        'POSITIVO'
        'NEGATIVO')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Text = 'cxComboBox2'
      Width = 121
    end
    object cxDBComboBox1: TcxDBComboBox [6]
      Left = 111
      Top = 43
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        ShowCaption = False
        object lcDialogGroup3: TdxLayoutGroup
          Caption = 'Tipo Producto'
          object lcDialogItem5: TdxLayoutItem
            Caption = 'Tipo Donacion'
            Control = cxDBComboBox1
            ControlOptions.ShowBorder = False
          end
        end
        object lcDialogGroup4: TdxLayoutGroup
          Caption = 'Tipo de sangre'
          object lcDialogItem3: TdxLayoutItem
            Caption = 'Tipo de sangre'
            Control = cxComboBox1
            ControlOptions.ShowBorder = False
          end
          object lcDialogItem4: TdxLayoutItem
            Caption = 'Factor RH'
            Control = cxComboBox2
            ControlOptions.ShowBorder = False
          end
        end
        object lcDialogGroup5: TdxLayoutGroup
          Caption = 'Fecha de donacion'
          object lcDialogItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Fecha inicial'
            Control = cxDateEdit1
            ControlOptions.ShowBorder = False
          end
          object lcDialogItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Fecha final'
            Control = cxDateEdit2
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object ppReporte: TppReport
    AutoStop = False
    DataPipeline = plDatos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 137
    Top = 4
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'plDatos'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5842
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefono'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 9790
        mmTop = 14552
        mmWidth = 25135
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fax'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 45244
        mmTop = 14552
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 14552
        mmWidth = 7281
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 37571
        mmTop = 14288
        mmWidth = 7239
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 136790
        mmTop = 29898
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 2381
        mmTop = 29369
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 184944
        mmTop = 29633
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reservado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 221192
        mmTop = 29898
        mmWidth = 32015
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RH'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 136790
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductoDes'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 529
        mmTop = 265
        mmWidth = 96309
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Total'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 184415
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Reservado'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 220398
        mmTop = 265
        mmWidth = 32808
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'TipoSangre'
      DataPipeline = plDatos
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plDatos'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'TipoSangre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 2117
          mmTop = 3704
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TipoSangre'
          DataPipeline = plDatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDatos'
          mmHeight = 4763
          mmLeft = 25929
          mmTop = 3704
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsDatos: TDataSource
    AutoEdit = False
    DataSet = qrDatos
    Left = 60
    Top = 65531
  end
  object qrDatos: TADOQuery
    Active = True
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Desde'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'Hasta'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'TS'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'RH'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @desde SMALLDATETIME,'
      '               @hasta  SMALLDATETIME'
      ''
      'Set @desde = :Desde'
      'Set @hasta = :Hasta'
      ''
      
        'SELECT     TOP (100) PERCENT dbo.BSInventario.CodigoId, dbo.BSPr' +
        'oductos.ProductoDes, dbo.BSInventario.ReservadoHasta, dbo.BSDona' +
        'nte.TipoSangre, '
      
        '                      dbo.BSDonante.RH, COUNT(*) AS Total, COUNT' +
        '(dbo.BSInventario.Reservado) AS Reservado'
      'FROM         dbo.BSProductos INNER JOIN'
      
        '                      dbo.BSInventario ON dbo.BSProductos.Produc' +
        'toID = dbo.BSInventario.ProductoID INNER JOIN'
      '                      dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCLIENTE.CLIENTEID INNER JOIN'
      
        '                      dbo.BSDonante ON dbo.BSDonacion.PacienteID' +
        ' = dbo.BSDonante.PacienteID ON dbo.BSInventario.DonacionId = dbo' +
        '.BSDonacion.DonacionID'
      'WHERE     (dbo.BSDonacion.Fecha BETWEEN @Desde AND @Hasta)'
      
        'AND   (dbo.BSDonante.TipoSangre LIKE :TS) AND (dbo.BSDonante.RH ' +
        'LIKE :RH)'
      
        'GROUP BY dbo.BSInventario.CodigoId, dbo.BSProductos.ProductoDes,' +
        ' dbo.BSInventario.ReservadoHasta, dbo.BSDonante.TipoSangre, '
      '                      dbo.BSDonante.RH'
      'ORDER BY dbo.BSDonante.TipoSangre')
    Left = 24
    Top = 65531
    object qrDatosCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrDatosProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrDatosReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrDatosTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDatosRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDatosTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
    object qrDatosReservado: TIntegerField
      FieldName = 'Reservado'
      ReadOnly = True
    end
  end
  object plDatos: TppDBPipeline
    DataSource = dsDatos
    UserName = 'plDatos'
    Left = 96
    object plDatosppField1: TppField
      FieldAlias = 'CodigoId'
      FieldName = 'CodigoId'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plDatosppField2: TppField
      FieldAlias = 'ProductoDes'
      FieldName = 'ProductoDes'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object plDatosppField3: TppField
      FieldAlias = 'ReservadoHasta'
      FieldName = 'ReservadoHasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plDatosppField4: TppField
      FieldAlias = 'TipoSangre'
      FieldName = 'TipoSangre'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object plDatosppField5: TppField
      FieldAlias = 'RH'
      FieldName = 'RH'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object plDatosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object plDatosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reservado'
      FieldName = 'Reservado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
  end
end
