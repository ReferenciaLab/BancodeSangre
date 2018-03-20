inherited frmBancoOperacion: TfrmBancoOperacion
  Caption = 'Reserva y cruzamientos de productos del banco'
  ClientHeight = 644
  ClientWidth = 978
  ExplicitTop = -222
  ExplicitWidth = 986
  ExplicitHeight = 678
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 978
    ExplicitWidth = 935
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 33
    Width = 978
    Height = 611
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    ExplicitWidth = 935
    object TdxLayoutControl
      Left = 3
      Top = 6
      Width = 967
      Height = 595
      Align = alClient
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dmAppActions.lnfWeb
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 537
        Top = 352
        TabStop = False
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = dsDetalles
        Properties.ReadOnly = True
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 6
        Width = 87
      end
      object cxButton1: TcxButton
        Left = 463
        Top = 517
        Width = 94
        Height = 25
        Caption = 'Reservar'
        TabOrder = 19
        OnClick = cxButton1Click
      end
      object cxGrid3: TcxGrid
        Left = 11
        Top = 11
        Width = 206
        Height = 310
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDatos
          DataController.DetailKeyFieldNames = 'ProductoID'
          DataController.KeyFieldNames = 'ProductoID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Producto'
            DataBinding.FieldName = 'ProductoDes'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cgDatos: TcxGrid
        Left = 223
        Top = 11
        Width = 690
        Height = 310
        TabOrder = 1
        object dbDatos: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetalles
          DataController.DetailKeyFieldNames = 'CodigoId'
          DataController.KeyFieldNames = 'CodigoId'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object dbDatosTipoSangre: TcxGridDBColumn
            DataBinding.FieldName = 'TipoSangre'
            Width = 40
          end
          object dbDatosRH: TcxGridDBColumn
            DataBinding.FieldName = 'RH'
            Width = 47
          end
          object dbDatosCodigoId: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CodigoId'
            Width = 63
          end
          object dbDatosCantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            Width = 69
          end
          object dbDatosFecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 61
          end
          object dbDatosHora: TcxGridDBColumn
            DataBinding.FieldName = 'Hora'
            Width = 104
          end
          object dbDatosDonacionId: TcxGridDBColumn
            Caption = 'Origen'
            DataBinding.FieldName = 'DonacionId'
            Width = 159
          end
          object dbDatosReservado: TcxGridDBColumn
            DataBinding.FieldName = 'Reservado'
            Width = 103
          end
          object dbDatosProductoID: TcxGridDBColumn
            DataBinding.FieldName = 'ProductoID'
            Width = 73
          end
        end
        object lvDatos: TcxGridLevel
          GridView = dbDatos
        end
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 127
        Top = 352
        TabStop = False
        DataBinding.DataField = 'ProductoDes'
        DataBinding.DataSource = dsDatos
        Properties.ReadOnly = True
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 3
        Width = 174
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 666
        Top = 352
        TabStop = False
        DataBinding.DataField = 'Vence'
        DataBinding.DataSource = dsDetalles
        Properties.ReadOnly = True
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 7
        Width = 86
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 72
        Top = 438
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsReceptor
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 12
        Width = 231
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 72
        Top = 411
        DataBinding.DataField = 'ReceptorId'
        DataBinding.DataSource = DMB.dsReservar
        Properties.OnChange = cxDBTextEdit5PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 9
        Width = 145
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Tag = 99
        Left = 344
        Top = 411
        DataBinding.DataField = 'ReservadoHasta'
        DataBinding.DataSource = DMB.dsReservar
        ParentFont = False
        Properties.ReadOnly = False
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        Style.IsFontAssigned = True
        TabOrder = 11
        Width = 97
      end
      object cxButton2: TcxButton
        Left = 223
        Top = 411
        Width = 80
        Height = 21
        Caption = 'Buscar'
        TabOrder = 10
        OnClick = cxButton2Click
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 346
        Top = 352
        TabStop = False
        DataBinding.DataField = 'TipoSangre'
        DataBinding.DataSource = dsDonante
        Properties.ReadOnly = True
        Properties.OnChange = cxDBTextEdit6PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Width = 38
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 309
        Top = 438
        Caption = 'Cruzamiento realizado'
        DataBinding.DataField = 'Cruce'
        DataBinding.DataSource = DMB.dsReservar
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 14
        Width = 148
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 463
        Top = 490
        AutoSize = False
        Caption = 'Reservado'
        DataBinding.DataField = 'Reservado'
        DataBinding.DataSource = DMB.dsReservar
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 18
        Height = 21
        Width = 138
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 505
        Top = 411
        DataBinding.DataField = 'DoctorId'
        DataBinding.DataSource = DMB.dsReservar
        Properties.OnChange = cxDBTextEdit7PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 15
        Width = 145
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 72
        Top = 352
        TabStop = False
        DataBinding.DataField = 'ProductoID'
        DataBinding.DataSource = dsDatos
        Properties.ReadOnly = True
        Properties.OnChange = ActDetallesExecute
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 2
        Width = 49
      end
      object cxButton3: TcxButton
        Left = 656
        Top = 411
        Width = 94
        Height = 21
        Caption = 'Buscar'
        TabOrder = 16
        OnClick = cxButton3Click
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 505
        Top = 438
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsDoctor
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 17
        Width = 231
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 390
        Top = 352
        TabStop = False
        DataBinding.DataField = 'RH'
        DataBinding.DataSource = dsDonante
        Properties.ReadOnly = True
        Properties.OnChange = cxDBTextEdit6PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 5
        Width = 106
      end
      object cxMemo1: TcxMemo
        Left = 72
        Top = 465
        Lines.Strings = (
          'cxMemo1')
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 13
        Height = 77
        Width = 231
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 796
        Top = 352
        TabStop = False
        DataBinding.DataField = 'CodigoId'
        DataBinding.DataSource = dsDetalles
        Properties.ReadOnly = True
        Properties.OnChange = cxDBTextEdit11PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 8
        Width = 86
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object Group1: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object Item4: TdxLayoutItem
            Control = cxGrid3
            ControlOptions.ShowBorder = False
          end
          object Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Control = cgDatos
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutGroup2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          Caption = 'Datos Generales'
          LayoutDirection = ldHorizontal
          object Item14: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Producto'
            Control = cxDBTextEdit8
            ControlOptions.ShowBorder = False
          end
          object Item2: TdxLayoutItem
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
          end
          object Item10: TdxLayoutItem
            Caption = 'Sangre'
            Control = cxDBTextEdit6
            ControlOptions.ShowBorder = False
          end
          object Item19: TdxLayoutItem
            Control = cxDBTextEdit10
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem1: TdxLayoutItem
            Caption = 'Fecha'
            Control = cxDBTextEdit4
            ControlOptions.ShowBorder = False
          end
          object Item5: TdxLayoutItem
            Caption = 'Vence'
            Control = cxDBTextEdit2
            ControlOptions.ShowBorder = False
          end
          object Item17: TdxLayoutItem
            Caption = 'Codigo'
            Control = cxDBTextEdit11
            ControlOptions.ShowBorder = False
          end
        end
        object Group2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          Caption = 'Reservar'
          LayoutDirection = ldHorizontal
          object Group8: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object Group4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object Group3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object Item7: TdxLayoutItem
                  Caption = 'Receptor'
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                end
                object Item9: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = cxButton2
                  ControlOptions.ShowBorder = False
                end
              end
              object Item8: TdxLayoutItem
                Caption = 'Fecha'
                Control = cxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object Group5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object Group13: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object Item20: TdxLayoutItem
                  Caption = 'Notas'
                  CaptionOptions.AlignVert = tavTop
                  Control = cxMemo1
                  ControlOptions.ShowBorder = False
                end
              end
              object Item11: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
          end
          object Group6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object Group7: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object Item13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Doctor'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
              object Item15: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton3
                ControlOptions.ShowBorder = False
              end
            end
            object Item16: TdxLayoutItem
              Caption = 'Nombre'
              Control = cxDBTextEdit9
              ControlOptions.ShowBorder = False
            end
            object Item12: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              ShowCaption = False
              Control = cxDBCheckBox2
              ControlOptions.ShowBorder = False
            end
            object Item1: TdxLayoutItem
              AutoAligns = []
              AlignVert = avBottom
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton1
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutGroup4: TdxLayoutGroup
          Caption = 'Crear producto de inventario'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
        end
      end
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        ControlOptions.ShowBorder = False
      end
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      ShowCaption = False
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 344
    Top = 74
  end
  inherited alEdit: TActionList
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Nuevo producto'
      Enabled = False
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Crear producto'
      Enabled = False
      Hint = 'Post'
      ImageIndex = 7
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancelar'
      Enabled = False
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Borrar'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Editar'
      Enabled = False
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Borrar &Donacion'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsDonacion
    end
    object ActDetalles: TAction
      Caption = 'ActDetalles'
      OnExecute = ActDetallesExecute
    end
    object ActFindReceptor: TAction
      Caption = 'Buscar'
    end
    object ActFindDoctor: TAction
      Caption = 'Buscar'
    end
    object ActLiberarReservacion: TAction
      Caption = 'Liberar'
      OnExecute = ActLiberarReservacionExecute
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 468
    Top = 4
  end
  object dsDatos: TDataSource
    AutoEdit = False
    DataSet = DMB.qrBancoInventario
    Left = 44
    Top = 3
  end
  object dsPaciente: TDataSource
    DataSet = qrPaciente
    Left = 240
  end
  object dsDonacion: TDataSource
    DataSet = qrDonacion
    Left = 384
  end
  object dsDonante: TDataSource
    DataSet = qrDonante
    Left = 592
  end
  object qrPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       PTCliente'
      'WHERE     (ClienteID = :PacienteID)')
    Left = 208
    Top = 3
    object qrPacienteClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrPacienteNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPacienteContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrPacienteTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrPacienteFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrPacienteGrupoCliente: TStringField
      FieldName = 'GrupoCliente'
      Size = 10
    end
    object qrPacienteIncluirPrecioTicket: TBooleanField
      FieldName = 'IncluirPrecioTicket'
    end
    object qrPacienteAutoConfirmar: TBooleanField
      FieldName = 'AutoConfirmar'
    end
    object qrPacienteEmpleadoID: TStringField
      FieldName = 'EmpleadoID'
      Size = 10
    end
    object qrPacienteCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object qrPacienteemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object qrPacientedireccionweb: TStringField
      FieldName = 'direccionweb'
      Size = 60
    end
    object qrPacienteTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrPacienteMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrPacienteIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrPacienteOrigen: TIntegerField
      FieldName = 'Origen'
    end
    object qrPacienteDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrPacienteCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrPacientePruebasPorDia: TSmallintField
      FieldName = 'PruebasPorDia'
    end
    object qrPacienteCoberturaPorc: TBCDField
      FieldName = 'CoberturaPorc'
      Precision = 19
    end
    object qrPacientePrincipal: TStringField
      FieldName = 'Principal'
      Size = 10
    end
    object qrPacienteEnvioResultado: TIntegerField
      FieldName = 'EnvioResultado'
    end
    object qrPacientePublicarInternet: TBooleanField
      FieldName = 'PublicarInternet'
    end
    object qrPacienteSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrPacienteFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrPacienteSeguro: TStringField
      FieldName = 'Seguro'
      Size = 10
    end
    object qrPacientePoliza: TStringField
      FieldName = 'Poliza'
    end
    object qrPacienteCobrarDiferencia: TBooleanField
      FieldName = 'CobrarDiferencia'
    end
    object qrPacienteEnviarFax: TBooleanField
      FieldName = 'EnviarFax'
    end
    object qrPacienteActivarDescuentos: TBooleanField
      FieldName = 'ActivarDescuentos'
    end
    object qrPacienteUsarAliasNombre: TBooleanField
      FieldName = 'UsarAliasNombre'
    end
    object qrPacienteUsarAliasPrueba: TBooleanField
      FieldName = 'UsarAliasPrueba'
    end
    object qrPacienteSiempreInternet: TBooleanField
      FieldName = 'SiempreInternet'
    end
    object qrPacienteImprimirAliasNombre: TBooleanField
      FieldName = 'ImprimirAliasNombre'
    end
    object qrPacienteImprimirAliasPrueba: TBooleanField
      FieldName = 'ImprimirAliasPrueba'
    end
    object qrPacienteImprimirSoloTotales: TBooleanField
      FieldName = 'ImprimirSoloTotales'
    end
    object qrPacienteImprimirAliasResultados: TBooleanField
      FieldName = 'ImprimirAliasResultados'
    end
    object qrPacienteAlias: TStringField
      FieldName = 'Alias'
      Size = 100
    end
    object qrPacienteQuienPaga: TStringField
      FieldName = 'QuienPaga'
      Size = 5
    end
    object qrPacienteTipoCliente: TStringField
      FieldName = 'TipoCliente'
      Size = 5
    end
    object qrPacienteEntregarResultados: TStringField
      FieldName = 'EntregarResultados'
      Size = 5
    end
    object qrPacienteTextoReferencia: TStringField
      FieldName = 'TextoReferencia'
    end
    object qrPacienteSiempreImprimir: TBooleanField
      FieldName = 'SiempreImprimir'
    end
    object qrPacienteTipoSangre: TStringField
      FieldName = 'TipoSangre'
      Size = 5
    end
    object qrPacientePacienteCiaId: TStringField
      FieldName = 'PacienteCiaId'
      Size = 10
    end
  end
  object qrDonacion: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DonacionID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM      BSDonacion'
      'WHERE     (DonacionID = :DonacionID)')
    Left = 352
    Top = 3
    object qrDonacionDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionDonacionEstado: TStringField
      FieldName = 'DonacionEstado'
    end
    object qrDonacionDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrDonacionComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrDonacionCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrDonacionTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrDonacionPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrDonacionPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrDonacionPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrDonacionTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrDonacionHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrDonacionHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrDonacionDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrDonacionHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrDonacionFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrDonacionMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrDonacionTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDonacionTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrDonacionDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrDonacionPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrDonacionTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrDonacionHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrDonacionHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrDonacionGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrDonacionPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrDonacionNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrDonacionProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
  end
  object qrDonante: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       BSDonante'
      'WHERE     (PacienteID = :PacienteID)')
    Left = 560
    Top = 3
    object qrDonantePacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonanteTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object qrDonanteEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object qrDonanteRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object qrDonanteRechasoNota: TWideStringField
      FieldName = 'RechasoNota'
      Size = 100
    end
    object qrDonanteDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object qrDonanteRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDonanteTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPaciente'
      'Where EntradaID = :rec')
    Left = 32
    Top = 160
    object qrEntradaPacienteEntredaID: TStringField
      FieldName = 'EntradaID'
    end
    object qrEntradaPacienteFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrEntradaPacientePacienteID: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PacienteID'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteClienteID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'ClienteID'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteDoctorID: TStringField
      DisplayLabel = 'Doctor'
      FieldName = 'DoctorID'
      Size = 10
    end
    object qrEntradaPacientePolizaID: TStringField
      DisplayLabel = 'Poliza'
      FieldName = 'PolizaID'
    end
    object qrEntradaPacienteEnClinica: TBooleanField
      FieldName = 'EnClinica'
    end
    object qrEntradaPacienteRecordClinica: TStringField
      FieldName = 'RecordClinica'
    end
    object qrEntradaPacienteResultadoPaciente: TIntegerField
      FieldName = 'ResultadoPaciente'
    end
    object qrEntradaPacienteResultadoDoctor: TIntegerField
      FieldName = 'ResultadoDoctor'
    end
    object qrEntradaPacienteFechaPrometida: TDateTimeField
      DisplayLabel = 'Fecha Prometida'
      FieldName = 'FechaPrometida'
    end
    object qrEntradaPacienteHoraPrometida: TStringField
      FieldName = 'HoraPrometida'
      Size = 10
    end
    object qrEntradaPacienteFlebotomistaID: TStringField
      FieldName = 'FlebotomistaID'
      Size = 10
    end
    object qrEntradaPacienteNota: TMemoField
      FieldName = 'Nota'
      BlobType = ftMemo
    end
    object qrEntradaPacienteCoberturaConfirmada: TBooleanField
      FieldName = 'CoberturaConfirmada'
    end
    object qrEntradaPacienteProyectoID: TStringField
      FieldName = 'ProyectoID'
    end
    object qrEntradaPacienteRecid: TLargeintField
      FieldName = 'Recid'
    end
    object qrEntradaPacienteBruto: TBCDField
      FieldName = 'Bruto'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteCoberturaSeguro: TBCDField
      FieldName = 'CoberturaSeguro'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteNeto: TBCDField
      FieldName = 'Neto'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrEntradaPacienteDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrEntradaPacienteTelefonos: TStringField
      FieldName = 'Telefonos'
      Size = 16
    end
    object qrEntradaPacienteEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object qrEntradaPacienteClienteNombre: TStringField
      FieldName = 'ClienteNombre'
      Size = 80
    end
    object qrEntradaPacienteSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrEntradaPacienteUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qrEntradaPacienteTotalPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object qrEntradaPacienteCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrEntradaPacienteTotalPagado: TBCDField
      FieldName = 'TotalPagado'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteHoraEntrada: TStringField
      FieldName = 'HoraEntrada'
      Size = 10
    end
    object qrEntradaPacientePrioridad: TIntegerField
      FieldName = 'Prioridad'
    end
    object qrEntradaPacienteFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrEntradaPacienteTipoDocumento: TIntegerField
      FieldName = 'TipoDocumento'
      Required = True
    end
    object qrEntradaPacienteCoberturaPorc: TBCDField
      FieldName = 'CoberturaPorc'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteCoberturaValor: TBCDField
      FieldName = 'CoberturaValor'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDescuentoPorc: TBCDField
      FieldName = 'DescuentoPorc'
      Precision = 19
    end
    object qrEntradaPacienteDescuentoValor: TBCDField
      FieldName = 'DescuentoValor'
      Precision = 19
    end
    object qrEntradaPacienteAprobadoPor: TStringField
      FieldName = 'AprobadoPor'
      Size = 50
    end
    object qrEntradaPacienteMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrEntradaPacienteAprobacionNo: TStringField
      FieldName = 'AprobacionNo'
    end
    object qrEntradaPacienteMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrEntradaPacienteFechaEntrada: TDateTimeField
      DisplayLabel = 'Fecha de Ingreso'
      FieldName = 'FechaEntrada'
    end
    object qrEntradaPacienteCoberturaExpPorc: TBooleanField
      FieldName = 'CoberturaExpPorc'
    end
    object qrEntradaPacienteEdadPaciente: TBCDField
      FieldName = 'EdadPaciente'
      Precision = 19
    end
    object qrEntradaPacienteNombreDoctor: TStringField
      FieldName = 'NombreDoctor'
      Size = 80
    end
    object qrEntradaPacientePublicarInternet: TBooleanField
      FieldName = 'PublicarInternet'
    end
    object qrEntradaPacienteOrigen: TStringField
      FieldName = 'Origen'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteCarnet: TStringField
      FieldName = 'Carnet'
    end
    object qrEntradaPacientePublicarInternetDoctor: TBooleanField
      FieldName = 'PublicarInternetDoctor'
    end
    object qrEntradaPacienteCuadreGlobal: TStringField
      FieldName = 'CuadreGlobal'
    end
    object qrEntradaPacienteCuadreUsuario: TStringField
      FieldName = 'CuadreUsuario'
    end
    object qrEntradaPacienteDescAutorizadoPor: TStringField
      FieldName = 'DescAutorizadoPor'
      Size = 10
    end
    object qrEntradaPacienteGastosVarios: TBCDField
      FieldName = 'GastosVarios'
      Precision = 19
    end
    object qrEntradaPacienteNoAS400: TBooleanField
      FieldName = 'NoAS400'
    end
    object qrEntradaPacienteNoAxapta: TBooleanField
      FieldName = 'NoAxapta'
    end
    object qrEntradaPacienteNoFactura: TBooleanField
      FieldName = 'NoFactura'
    end
    object qrEntradaPacienteFactExterior: TBooleanField
      FieldName = 'FactExterior'
    end
    object qrEntradaPacienteHold: TBooleanField
      FieldName = 'Hold'
    end
    object qrEntradaPacienteRepMuestra: TBooleanField
      FieldName = 'RepMuestra'
    end
    object qrEntradaPacienteEntradaIdAnt: TStringField
      FieldName = 'EntradaIdAnt'
    end
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPacienteDetalle'
      'Where MuestraNo = :rec')
    Left = 24
    Top = 184
    object qrEntradaPacienteDetallePruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrEntradaPacienteDetalleComboPruebaID: TStringField
      FieldName = 'ComboPruebaID'
      Size = 10
    end
    object qrEntradaPacienteDetallePrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuentoExtra: TBCDField
      FieldName = 'DescuentoExtra'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCodigoAutorizacion: TStringField
      FieldName = 'CodigoAutorizacion'
    end
    object qrEntradaPacienteDetalleTotalLinea: TBCDField
      FieldName = 'TotalLinea'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleRefRecid: TLargeintField
      FieldName = 'RefRecid'
    end
    object qrEntradaPacienteDetalleSecuencia: TLargeintField
      FieldName = 'Secuencia'
    end
    object qrEntradaPacienteDetalleDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrEntradaPacienteDetalleDescPct: TBCDField
      FieldName = 'DescPct'
      DisplayFormat = '##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaAplica: TBooleanField
      FieldName = 'CoberturaAplica'
    end
    object qrEntradaPacienteDetalleCoberturaEspecial: TBCDField
      FieldName = 'CoberturaEspecial'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaEspecialPorc: TBCDField
      FieldName = 'CoberturaEspecialPorc'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaAplicada: TBCDField
      FieldName = 'CoberturaAplicada'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuentoLineaAplicado: TBCDField
      FieldName = 'DescuentoLineaAplicado'
      Precision = 19
    end
    object qrEntradaPacienteDetalleMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrEntradaPacienteDetalleComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrEntradaPacienteDetalleCoberturaExpPorc: TBooleanField
      FieldName = 'CoberturaExpPorc'
    end
    object qrEntradaPacienteDetalleRepMuestra: TBooleanField
      FieldName = 'RepMuestra'
    end
    object qrEntradaPacienteDetalleMuestraAnt: TStringField
      FieldName = 'MuestraAnt'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 104
    Top = 192
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 120
    Top = 144
  end
  object ppEntradaPaciente: TppDBPipeline
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 160
    Top = 160
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 160
    Top = 192
  end
  object qrDetalles: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductoId'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     TOP (100) PERCENT dbo.BSInventario.DonacionId, dbo.BS' +
        'Inventario.ProductoID, dbo.BSInventario.CodigoId, dbo.BSInventar' +
        'io.Cantidad, '
      
        '                      dbo.BSInventario.Fecha, dbo.BSInventario.H' +
        'ora, dbo.BSInventario.ProcesoID, dbo.BSInventario.Reservado, dbo' +
        '.BSInventario.ReservadoHasta, '
      
        '                      dbo.BSInventario.Dias, dbo.BSInventario.Cr' +
        'uce, dbo.BSInventario.CrucePacienteId, dbo.BSInventario.Disponib' +
        'le, '
      
        '                      dbo.PTENTRADAPACIENTE.PACIENTEID, dbo.PTEN' +
        'TRADAPACIENTE.NOMBREPACIENTE, dbo.BSInventario.Vence, dbo.BSDona' +
        'nte.TipoSangre, '
      '                      dbo.BSDonante.RH'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.PTENTRADAPACIENTE ON dbo.BSInventario.' +
        'DonacionId = dbo.PTENTRADAPACIENTE.ENTRADAID INNER JOIN'
      
        '                      dbo.BSDonante ON dbo.PTENTRADAPACIENTE.PAC' +
        'IENTEID = dbo.BSDonante.PacienteID'
      'WHERE     (ProductoID = :ProductoId)'
      'ORDER BY dbo.BSInventario.Fecha, dbo.BSInventario.Hora')
    Left = 312
    Top = 155
    object qrDetallesProductoID: TWideStringField
      FieldName = 'ProductoID'
      OnChange = qrDetallesProductoIDChange
      FixedChar = True
      Size = 10
    end
    object qrDetallesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrDetallesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDetallesDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrDetallesReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDetallesCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrDetallesNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrDetallesProcesoID: TWideStringField
      FieldName = 'ProcesoID'
      FixedChar = True
      Size = 10
    end
    object qrDetallesReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrDetallesDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrDetallesCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrDetallesCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object qrDetallesDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrDetallesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDetallesHora: TStringField
      FieldName = 'Hora'
    end
    object qrDetallesVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object qrDetallesTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDetallesRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
  end
  object dsDetalles: TDataSource
    DataSet = qrDetalles
    Left = 344
    Top = 152
  end
  object qrReceptor: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       PTCliente'
      'WHERE     (ClienteID = :PacienteID)')
    Left = 512
    Top = 299
    object qrReceptorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
  object dsReceptor: TDataSource
    DataSet = qrReceptor
    Left = 560
    Top = 312
  end
  object qrDoctor: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DoctorId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       PTDoctor'
      'WHERE     (DoctorId = :DoctorId)')
    Left = 528
    Top = 411
    object qrDoctorDoctorID: TStringField
      FieldName = 'DoctorID'
      Size = 10
    end
    object qrDoctorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
  object dsDoctor: TDataSource
    DataSet = qrDoctor
    Left = 560
    Top = 408
  end
end
