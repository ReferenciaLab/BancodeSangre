inherited frmFiltroProductos: TfrmFiltroProductos
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
    PrinterSetup.PaperName = 'ZZZ'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 139700
    PrinterSetup.PaperSize = 132
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
      object ppLabel1: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 265
        mmTop = 30163
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 17198
        mmTop = 29898
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label5'
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
        mmLeft = 59796
        mmTop = 30163
        mmWidth = 22754
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
        mmLeft = 85461
        mmTop = 30163
        mmWidth = 6879
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 529
        mmWidth = 15081
        BandType = 4
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
        mmLeft = 60061
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
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
        mmLeft = 85990
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
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
      
        'SELECT     dbo.BSDonacion.DonacionID, dbo.BSDonacion.MuestraNo, ' +
        'dbo.BSDonacion.MuestraNoAS, dbo.BSDonacion.Fecha, dbo.BSDonacion' +
        '.PacienteID, '
      
        '                      dbo.BSDonacion.NotaEntrevista, dbo.BSDonac' +
        'ion.DonacionStatus, dbo.BSDonacion.DonacionTipo, dbo.BSDonacion.' +
        'Comentario, '
      
        '                      dbo.BSDonacion.CantidadRecogida, dbo.BSDon' +
        'acion.Temperatura, dbo.BSDonacion.Peso, dbo.BSDonacion.PulsoMini' +
        'mo, '
      
        '                      dbo.BSDonacion.PulsoEstado, dbo.BSDonacion' +
        '.TensionArteriar, dbo.BSDonacion.HoraInicio, dbo.BSDonacion.Hora' +
        'Fin, '
      
        '                      dbo.BSDonacion.DirigidoPacienteId, dbo.BSD' +
        'onacion.DirigidoNombre, dbo.BSDonacion.Hospital, dbo.BSDonacion.' +
        'FechaTranfusion, '
      
        '                      dbo.BSDonacion.Medico, dbo.BSDonacion.Tele' +
        'fono, dbo.BSDonacion.Telefono2, dbo.BSDonacion.DireccionMedico, ' +
        'dbo.BSDonacion.Pagina, '
      
        '                      dbo.BSDonacion.TipoFundaID, dbo.BSDonacion' +
        '.Hemoglobina, dbo.BSDonacion.Hematocito, dbo.BSDonacion.Globulos' +
        'Blancos, '
      
        '                      dbo.BSDonacion.Plaquetas, dbo.BSDonacion.N' +
        'otasCuestionario, dbo.BSDonacion.ProductoID, dbo.BSDonacion.Rese' +
        'rvado, '
      
        '                      dbo.BSDonacion.Disponible, dbo.BSDonacion.' +
        'DoctorId, dbo.BSDonacion.UserIdCuestionario, dbo.BSDonacion.User' +
        'IdMuestra, '
      
        '                      dbo.PTCLIENTE.IDENTIFICACION, dbo.PTCLIENT' +
        'E.NOMBRE, dbo.PTCLIENTE.DIRECCION, dbo.PTCLIENTE.TELEFONO AS Exp' +
        'r1, '
      
        '                      dbo.PTCLIENTE.EMAIL, dbo.PTCLIENTE.FECHANA' +
        'CIMIENTO, dbo.PTCLIENTE.SEXO, dbo.PTCLIENTE.CIUDADID, '
      
        '                      dbo.BSDonacion.NotaEntrevista AS Expr2, db' +
        'o.BSDonacion.DonacionStatus AS Expr3, dbo.BSDonante.TipoSangre, ' +
        'dbo.BSDonante.RH'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCLIENTE.CLIENTEID INNER JOIN'
      
        '                      dbo.BSDonante ON dbo.BSDonacion.PacienteID' +
        ' = dbo.BSDonante.PacienteID'
      'WHERE     (dbo.BSDonacion.Fecha BETWEEN @Desde AND @Hasta)'
      
        'AND   (dbo.BSDonante.TipoSangre LIKE :TS) AND (dbo.BSDonante.RH ' +
        'LIKE :RH)')
    Left = 24
    Top = 65531
    object qrDatosDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDatosMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDatosMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDatosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDatosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDatosNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDatosDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDatosDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrDatosComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrDatosCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrDatosTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrDatosPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrDatosPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrDatosPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrDatosTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrDatosHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrDatosHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrDatosDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrDatosDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrDatosHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrDatosFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrDatosMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrDatosTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDatosTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrDatosDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrDatosPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrDatosTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrDatosHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrDatosHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrDatosGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrDatosPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrDatosNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrDatosProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDatosReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDatosDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrDatosDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrDatosUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object qrDatosUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object qrDatosIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object qrDatosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrDatosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrDatosExpr1: TStringField
      FieldName = 'Expr1'
    end
    object qrDatosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrDatosFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrDatosSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrDatosCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrDatosExpr2: TMemoField
      FieldName = 'Expr2'
      BlobType = ftMemo
    end
    object qrDatosExpr3: TWideStringField
      FieldName = 'Expr3'
      FixedChar = True
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
  end
  object plDatos: TppDBPipeline
    DataSource = dsDatos
    UserName = 'plDatos'
    Left = 96
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      
        'SELECT     dbo.BSDonacion.DonacionID, dbo.BSDonacion.MuestraNo, ' +
        'dbo.BSDonacion.MuestraNoAS, dbo.BSDonacion.Fecha, dbo.BSDonacion' +
        '.PacienteID, '
      
        '                      dbo.BSDonacion.NotaEntrevista, dbo.BSDonac' +
        'ion.DonacionStatus, dbo.BSDonacion.DonacionTipo, dbo.BSDonacion.' +
        'Comentario, '
      
        '                      dbo.BSDonacion.CantidadRecogida, dbo.BSDon' +
        'acion.Temperatura, dbo.BSDonacion.Peso, dbo.BSDonacion.PulsoMini' +
        'mo, '
      
        '                      dbo.BSDonacion.PulsoEstado, dbo.BSDonacion' +
        '.TensionArteriar, dbo.BSDonacion.HoraInicio, dbo.BSDonacion.Hora' +
        'Fin, '
      
        '                      dbo.BSDonacion.DirigidoPacienteId, dbo.BSD' +
        'onacion.DirigidoNombre, dbo.BSDonacion.Hospital, dbo.BSDonacion.' +
        'FechaTranfusion, '
      
        '                      dbo.BSDonacion.Medico, dbo.BSDonacion.Tele' +
        'fono, dbo.BSDonacion.Telefono2, dbo.BSDonacion.DireccionMedico, ' +
        'dbo.BSDonacion.Pagina, '
      
        '                      dbo.BSDonacion.TipoFundaID, dbo.BSDonacion' +
        '.Hemoglobina, dbo.BSDonacion.Hematocito, dbo.BSDonacion.Globulos' +
        'Blancos, '
      
        '                      dbo.BSDonacion.Plaquetas, dbo.BSDonacion.N' +
        'otasCuestionario, dbo.BSDonacion.ProductoID, dbo.BSDonacion.Rese' +
        'rvado, '
      
        '                      dbo.BSDonacion.Disponible, dbo.BSDonacion.' +
        'DoctorId, dbo.BSDonacion.UserIdCuestionario, dbo.BSDonacion.User' +
        'IdMuestra, '
      
        '                      dbo.PTCLIENTE.IDENTIFICACION, dbo.PTCLIENT' +
        'E.NOMBRE, dbo.PTCLIENTE.DIRECCION, dbo.PTCLIENTE.TELEFONO AS Exp' +
        'r1, '
      
        '                      dbo.PTCLIENTE.EMAIL, dbo.PTCLIENTE.FECHANA' +
        'CIMIENTO, dbo.PTCLIENTE.SEXO, dbo.PTCLIENTE.CIUDADID, '
      
        '                      dbo.BSDonacion.NotaEntrevista AS Expr2, db' +
        'o.BSDonacion.DonacionStatus AS Expr3, dbo.BSDonante.TipoSangre, ' +
        'dbo.BSDonante.RH'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCLIENTE.CLIENTEID INNER JOIN'
      
        '                      dbo.BSDonante ON dbo.BSDonacion.PacienteID' +
        ' = dbo.BSDonante.PacienteID')
    Left = 24
    Top = 35
    object StringField1: TStringField
      FieldName = 'DonacionID'
    end
    object StringField2: TStringField
      FieldName = 'MuestraNo'
    end
    object StringField3: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Fecha'
    end
    object StringField4: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object MemoField1: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object WideStringField1: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object StringField5: TStringField
      FieldName = 'DonacionTipo'
    end
    object MemoField2: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object BCDField1: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object BCDField2: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object BCDField3: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object BCDField4: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object StringField6: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'HoraFin'
    end
    object StringField8: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object StringField11: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object StringField13: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object MemoField3: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object SmallintField1: TSmallintField
      FieldName = 'Pagina'
    end
    object WideStringField2: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object StringField14: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object StringField15: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object StringField16: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object StringField17: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object MemoField4: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object WideStringField3: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object BooleanField1: TBooleanField
      FieldName = 'Reservado'
    end
    object BooleanField2: TBooleanField
      FieldName = 'Disponible'
    end
    object StringField18: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object StringField19: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object StringField20: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object StringField21: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object StringField22: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object StringField23: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object StringField24: TStringField
      FieldName = 'Expr1'
    end
    object StringField25: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object IntegerField1: TIntegerField
      FieldName = 'SEXO'
    end
    object StringField26: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object MemoField5: TMemoField
      FieldName = 'Expr2'
      BlobType = ftMemo
    end
    object WideStringField4: TWideStringField
      FieldName = 'Expr3'
      FixedChar = True
    end
    object WideStringField5: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object WideStringField6: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
  end
end
