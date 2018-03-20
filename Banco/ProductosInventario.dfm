inherited frmProductosInventario: TfrmProductosInventario
  Caption = 'Productos en Inventario'
  ClientHeight = 149
  ClientWidth = 334
  ExplicitWidth = 340
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 334
    Height = 149
    ExplicitWidth = 334
    ExplicitHeight = 216
    inherited btCancelar: TcxButton
      Top = 113
      TabOrder = 3
      ExplicitTop = 113
    end
    inherited btAceptar: TcxButton
      Top = 113
      TabOrder = 2
      ExplicitTop = 113
    end
    object cxDateEdit1: TcxDateEdit [2]
      Left = 87
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit [3]
      Left = 87
      Top = 63
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
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
    PrinterSetup.PaperSize = 131
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
      mmHeight = 111919
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape1'
        mmHeight = 26723
        mmLeft = 2646
        mmTop = 42069
        mmWidth = 120915
        BandType = 0
      end
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
      object ppDBText30: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PacienteID'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDonacion'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 22490
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDonacion'
        mmHeight = 3969
        mmLeft = 54504
        mmTop = 22225
        mmWidth = 67733
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hemograma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 3704
        mmTop = 43656
        mmWidth = 20645
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hemoglobina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4129
        mmLeft = 6615
        mmTop = 51329
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Hemoglobina'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 32544
        mmTop = 51329
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hematocito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4129
        mmLeft = 7144
        mmTop = 59796
        mmWidth = 22225
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Hematocito'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4755
        mmLeft = 32544
        mmTop = 59796
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Temperatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4129
        mmLeft = 7144
        mmTop = 71967
        mmWidth = 32279
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Temperatura'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 43921
        mmTop = 71702
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Peso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4129
        mmLeft = 7673
        mmTop = 78846
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Peso'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4755
        mmLeft = 43921
        mmTop = 78846
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PulsoMinimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4129
        mmLeft = 7144
        mmTop = 85725
        mmWidth = 28840
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PulsoMinimo'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4755
        mmLeft = 44186
        mmTop = 85725
        mmWidth = 38894
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GlobulosBlancos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4129
        mmLeft = 65088
        mmTop = 51329
        mmWidth = 32015
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'GlobulosBlancos'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 97102
        mmTop = 51065
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plaquetas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4129
        mmLeft = 64558
        mmTop = 60061
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Plaquetas'
        DataPipeline = plDatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDatos'
        mmHeight = 4763
        mmLeft = 97102
        mmTop = 60325
        mmWidth = 22490
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'NotaEntrevista'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDonacion'
        mmHeight = 21696
        mmLeft = 16669
        mmTop = 1323
        mmWidth = 107156
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 26194
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
        'o.BSDonacion.DonacionStatus AS Expr3'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCLIENTE.CLIENTEID'
      'WHERE     (dbo.BSDonacion.Fecha BETWEEN @Desde AND @Hasta)')
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
    object qrDatosDIRECCION: TMemoField
      FieldName = 'DIRECCION'
      BlobType = ftMemo
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
  end
  object plDatos: TppDBPipeline
    DataSource = dsDatos
    UserName = 'plDatos'
    Left = 96
    object plDatosppField1: TppField
      FieldAlias = 'DonacionID'
      FieldName = 'DonacionID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plDatosppField2: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plDatosppField3: TppField
      FieldAlias = 'MuestraNoAS'
      FieldName = 'MuestraNoAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plDatosppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plDatosppField5: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plDatosppField6: TppField
      FieldAlias = 'NotaEntrevista'
      FieldName = 'NotaEntrevista'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plDatosppField7: TppField
      FieldAlias = 'DonacionStatus'
      FieldName = 'DonacionStatus'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plDatosppField8: TppField
      FieldAlias = 'DonacionTipo'
      FieldName = 'DonacionTipo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plDatosppField9: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plDatosppField10: TppField
      FieldAlias = 'CantidadRecogida'
      FieldName = 'CantidadRecogida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plDatosppField11: TppField
      FieldAlias = 'Temperatura'
      FieldName = 'Temperatura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plDatosppField12: TppField
      FieldAlias = 'Peso'
      FieldName = 'Peso'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plDatosppField13: TppField
      FieldAlias = 'PulsoMinimo'
      FieldName = 'PulsoMinimo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plDatosppField14: TppField
      FieldAlias = 'PulsoEstado'
      FieldName = 'PulsoEstado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plDatosppField15: TppField
      FieldAlias = 'TensionArteriar'
      FieldName = 'TensionArteriar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plDatosppField16: TppField
      FieldAlias = 'HoraInicio'
      FieldName = 'HoraInicio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plDatosppField17: TppField
      FieldAlias = 'HoraFin'
      FieldName = 'HoraFin'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plDatosppField18: TppField
      FieldAlias = 'DirigidoPacienteId'
      FieldName = 'DirigidoPacienteId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plDatosppField19: TppField
      FieldAlias = 'DirigidoNombre'
      FieldName = 'DirigidoNombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plDatosppField20: TppField
      FieldAlias = 'Hospital'
      FieldName = 'Hospital'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plDatosppField21: TppField
      FieldAlias = 'FechaTranfusion'
      FieldName = 'FechaTranfusion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plDatosppField22: TppField
      FieldAlias = 'Medico'
      FieldName = 'Medico'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plDatosppField23: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plDatosppField24: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plDatosppField25: TppField
      FieldAlias = 'DireccionMedico'
      FieldName = 'DireccionMedico'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plDatosppField26: TppField
      FieldAlias = 'Pagina'
      FieldName = 'Pagina'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object plDatosppField27: TppField
      FieldAlias = 'TipoFundaID'
      FieldName = 'TipoFundaID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object plDatosppField28: TppField
      FieldAlias = 'Hemoglobina'
      FieldName = 'Hemoglobina'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object plDatosppField29: TppField
      FieldAlias = 'Hematocito'
      FieldName = 'Hematocito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object plDatosppField30: TppField
      FieldAlias = 'GlobulosBlancos'
      FieldName = 'GlobulosBlancos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object plDatosppField31: TppField
      FieldAlias = 'Plaquetas'
      FieldName = 'Plaquetas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object plDatosppField32: TppField
      FieldAlias = 'NotasCuestionario'
      FieldName = 'NotasCuestionario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object plDatosppField33: TppField
      FieldAlias = 'ProductoID'
      FieldName = 'ProductoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object plDatosppField34: TppField
      FieldAlias = 'Reservado'
      FieldName = 'Reservado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object plDatosppField35: TppField
      FieldAlias = 'Disponible'
      FieldName = 'Disponible'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object plDatosppField36: TppField
      FieldAlias = 'DoctorId'
      FieldName = 'DoctorId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object plDatosppField37: TppField
      FieldAlias = 'UserIdCuestionario'
      FieldName = 'UserIdCuestionario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object plDatosppField38: TppField
      FieldAlias = 'UserIdMuestra'
      FieldName = 'UserIdMuestra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object plDatosppField39: TppField
      FieldAlias = 'Identificacion'
      FieldName = 'Identificacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object plDatosppField40: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object plDatosppField41: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object plDatosppField42: TppField
      FieldAlias = 'Telefono_1'
      FieldName = 'Telefono_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object plDatosppField43: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object plDatosppField44: TppField
      FieldAlias = 'FechaNacimiento'
      FieldName = 'FechaNacimiento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object plDatosppField45: TppField
      FieldAlias = 'Sexo'
      FieldName = 'Sexo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object plDatosppField46: TppField
      FieldAlias = 'CiudadID'
      FieldName = 'CiudadID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object plDatosppField47: TppField
      FieldAlias = 'NotaEntrevista_1'
      FieldName = 'NotaEntrevista_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object plDatosppField48: TppField
      FieldAlias = 'DonacionStatus_1'
      FieldName = 'DonacionStatus_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
  end
end
