inherited frmReporteDonaciones: TfrmReporteDonaciones
  Caption = 'Donaciones'
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
      Properties.Items.Strings = (
        'Todas')
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
          Caption = 'Tipo'
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
        Caption = 'Sangre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 71702
        mmTop = 29898
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
        mmLeft = 96044
        mmTop = 30427
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4755
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4755
        mmLeft = 72496
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4755
        mmLeft = 96309
        mmTop = 0
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NOMBRE'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 16669
        mmTop = 529
        mmWidth = 55033
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
    object plDatosppField1: TppField
      FieldAlias = 'DonacionID'
      FieldName = 'DonacionID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plDatosppField2: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plDatosppField3: TppField
      FieldAlias = 'MuestraNoAS'
      FieldName = 'MuestraNoAS'
      FieldLength = 11
      DisplayWidth = 11
      Position = 2
    end
    object plDatosppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plDatosppField5: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object plDatosppField6: TppField
      FieldAlias = 'NotaEntrevista'
      FieldName = 'NotaEntrevista'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plDatosppField7: TppField
      FieldAlias = 'DonacionStatus'
      FieldName = 'DonacionStatus'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plDatosppField8: TppField
      FieldAlias = 'DonacionTipo'
      FieldName = 'DonacionTipo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plDatosppField9: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plDatosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CantidadRecogida'
      FieldName = 'CantidadRecogida'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object plDatosppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Temperatura'
      FieldName = 'Temperatura'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object plDatosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso'
      FieldName = 'Peso'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object plDatosppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PulsoMinimo'
      FieldName = 'PulsoMinimo'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object plDatosppField14: TppField
      FieldAlias = 'PulsoEstado'
      FieldName = 'PulsoEstado'
      FieldLength = 10
      DisplayWidth = 10
      Position = 13
    end
    object plDatosppField15: TppField
      FieldAlias = 'TensionArteriar'
      FieldName = 'TensionArteriar'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
    object plDatosppField16: TppField
      FieldAlias = 'HoraInicio'
      FieldName = 'HoraInicio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
    end
    object plDatosppField17: TppField
      FieldAlias = 'HoraFin'
      FieldName = 'HoraFin'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object plDatosppField18: TppField
      FieldAlias = 'DirigidoPacienteId'
      FieldName = 'DirigidoPacienteId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object plDatosppField19: TppField
      FieldAlias = 'DirigidoNombre'
      FieldName = 'DirigidoNombre'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object plDatosppField20: TppField
      FieldAlias = 'Hospital'
      FieldName = 'Hospital'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object plDatosppField21: TppField
      FieldAlias = 'FechaTranfusion'
      FieldName = 'FechaTranfusion'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 20
    end
    object plDatosppField22: TppField
      FieldAlias = 'Medico'
      FieldName = 'Medico'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
    object plDatosppField23: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 16
      DisplayWidth = 16
      Position = 22
    end
    object plDatosppField24: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 16
      DisplayWidth = 16
      Position = 23
    end
    object plDatosppField25: TppField
      FieldAlias = 'DireccionMedico'
      FieldName = 'DireccionMedico'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plDatosppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pagina'
      FieldName = 'Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object plDatosppField27: TppField
      FieldAlias = 'TipoFundaID'
      FieldName = 'TipoFundaID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 26
    end
    object plDatosppField28: TppField
      FieldAlias = 'Hemoglobina'
      FieldName = 'Hemoglobina'
      FieldLength = 15
      DisplayWidth = 15
      Position = 27
    end
    object plDatosppField29: TppField
      FieldAlias = 'Hematocito'
      FieldName = 'Hematocito'
      FieldLength = 15
      DisplayWidth = 15
      Position = 28
    end
    object plDatosppField30: TppField
      FieldAlias = 'GlobulosBlancos'
      FieldName = 'GlobulosBlancos'
      FieldLength = 15
      DisplayWidth = 15
      Position = 29
    end
    object plDatosppField31: TppField
      FieldAlias = 'Plaquetas'
      FieldName = 'Plaquetas'
      FieldLength = 15
      DisplayWidth = 15
      Position = 30
    end
    object plDatosppField32: TppField
      FieldAlias = 'NotasCuestionario'
      FieldName = 'NotasCuestionario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 31
      Searchable = False
      Sortable = False
    end
    object plDatosppField33: TppField
      FieldAlias = 'ProductoID'
      FieldName = 'ProductoID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object plDatosppField34: TppField
      FieldAlias = 'Reservado'
      FieldName = 'Reservado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 33
    end
    object plDatosppField35: TppField
      FieldAlias = 'Disponible'
      FieldName = 'Disponible'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 34
    end
    object plDatosppField36: TppField
      FieldAlias = 'DoctorId'
      FieldName = 'DoctorId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 35
    end
    object plDatosppField37: TppField
      FieldAlias = 'UserIdCuestionario'
      FieldName = 'UserIdCuestionario'
      FieldLength = 10
      DisplayWidth = 10
      Position = 36
    end
    object plDatosppField38: TppField
      FieldAlias = 'UserIdMuestra'
      FieldName = 'UserIdMuestra'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object plDatosppField39: TppField
      FieldAlias = 'IDENTIFICACION'
      FieldName = 'IDENTIFICACION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object plDatosppField40: TppField
      FieldAlias = 'NOMBRE'
      FieldName = 'NOMBRE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 39
    end
    object plDatosppField41: TppField
      FieldAlias = 'DIRECCION'
      FieldName = 'DIRECCION'
      FieldLength = 255
      DisplayWidth = 255
      Position = 40
    end
    object plDatosppField42: TppField
      FieldAlias = 'Expr1'
      FieldName = 'Expr1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object plDatosppField43: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 42
    end
    object plDatosppField44: TppField
      FieldAlias = 'FECHANACIMIENTO'
      FieldName = 'FECHANACIMIENTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 43
    end
    object plDatosppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEXO'
      FieldName = 'SEXO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
    object plDatosppField46: TppField
      FieldAlias = 'CIUDADID'
      FieldName = 'CIUDADID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 45
    end
    object plDatosppField47: TppField
      FieldAlias = 'Expr2'
      FieldName = 'Expr2'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 46
      Searchable = False
      Sortable = False
    end
    object plDatosppField48: TppField
      FieldAlias = 'Expr3'
      FieldName = 'Expr3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 47
    end
    object plDatosppField49: TppField
      FieldAlias = 'TipoSangre'
      FieldName = 'TipoSangre'
      FieldLength = 10
      DisplayWidth = 10
      Position = 48
    end
    object plDatosppField50: TppField
      FieldAlias = 'RH'
      FieldName = 'RH'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
  end
end
