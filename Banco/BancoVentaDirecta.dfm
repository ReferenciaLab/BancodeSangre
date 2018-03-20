inherited frmBancoVentaDirecta: TfrmBancoVentaDirecta
  Caption = 'Anticipos'
  ClientHeight = 549
  ClientWidth = 986
  ExplicitWidth = 994
  ExplicitHeight = 583
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 986
    ExplicitWidth = 986
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 33
    Width = 986
    Height = 516
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object TdxLayoutControl
      Left = 3
      Top = 6
      Width = 974
      Height = 587
      Align = alClient
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dmAppActions.lnfWeb
      DesignSize = (
        974
        587)
      object cgDatos: TcxGrid
        Left = 11
        Top = 11
        Width = 952
        Height = 262
        TabOrder = 0
        object dbDatos: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetalles
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
          object dbDatosProductoID: TcxGridDBColumn
            DataBinding.FieldName = 'ProductoID'
          end
          object dbDatosProductoDes: TcxGridDBColumn
            DataBinding.FieldName = 'ProductoDes'
          end
          object dbDatosPrecio: TcxGridDBColumn
            DataBinding.FieldName = 'Precio'
          end
        end
        object lvDatos: TcxGridLevel
          GridView = dbDatos
        end
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 72
        Top = 331
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsReceptor
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 3
        Width = 199
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 72
        Top = 304
        DataBinding.DataField = 'PACIENTEID'
        DataBinding.DataSource = dsEntradaPaciente
        Properties.OnChange = cxDBTextEdit5PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 1
        Width = 113
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Tag = 99
        Left = 319
        Top = 304
        DataBinding.DataField = 'FECHAPROMETIDA'
        DataBinding.DataSource = dsEntradaPaciente
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
        TabOrder = 5
        Width = 97
      end
      object cxButton2: TcxButton
        Left = 191
        Top = 304
        Width = 80
        Height = 21
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = cxButton2Click
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 319
        Top = 331
        DataBinding.DataField = 'DoctorId'
        DataBinding.DataSource = dsEntradaPaciente
        Properties.OnChange = cxDBTextEdit7PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 6
        Width = 112
      end
      object cxButton3: TcxButton
        Left = 437
        Top = 331
        Width = 94
        Height = 21
        Caption = 'Buscar'
        TabOrder = 7
        OnClick = cxButton3Click
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 319
        Top = 358
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsDoctor
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 8
        Width = 200
      end
      object cxMemo1: TcxMemo
        Left = 72
        Top = 358
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Height = 77
        Width = 199
      end
      object cxButton5: TcxButton
        Left = 23
        Top = 455
        Width = 94
        Height = 25
        Action = ActDespachar
        TabOrder = 10
      end
      object cxButton7: TcxButton
        Left = 223
        Top = 455
        Width = 94
        Height = 25
        Action = ActCaja
        TabOrder = 12
      end
      object cxProductos: TcxGrid
        Left = 567
        Top = 304
        Width = 384
        Height = 131
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsEntradaPacienteDetalle
          DataController.DetailKeyFieldNames = 'Condec'
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                end>
              SummaryItems = <>
            end>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBTableView1DESCRIPCION: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'DESCRIPCION'
            Options.Filtering = False
            Options.Grouping = False
            Width = 192
          end
          object cxGridDBTableView1CodigoId: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CodigoId'
            Options.Editing = False
            Options.Grouping = False
            Width = 86
          end
          object cxGridDBTableView1COMENTARIO: TcxGridDBColumn
            DataBinding.FieldName = 'COMENTARIO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.ReadOnly = False
            Options.Editing = False
            Options.Grouping = False
            Width = 92
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxButton8: TcxButton
        Left = 123
        Top = 455
        Width = 94
        Height = 25
        Action = DataSetDelete3
        TabOrder = 11
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Control = cgDatos
          ControlOptions.ShowBorder = False
        end
        object Group10: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object Group13: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object Group2: TdxLayoutGroup
              AutoAligns = []
              Caption = 'Receptor'
              LayoutDirection = ldHorizontal
              object Group8: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object Group3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object Item7: TdxLayoutItem
                    Caption = 'Receptor'
                    CaptionOptions.AlignVert = tavTop
                    Control = cxDBTextEdit5
                    ControlOptions.ShowBorder = False
                  end
                  object Item9: TdxLayoutItem
                    Caption = 'New Item'
                    CaptionOptions.AlignVert = tavTop
                    ShowCaption = False
                    Control = cxButton2
                    ControlOptions.ShowBorder = False
                  end
                end
                object Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  CaptionOptions.AlignVert = tavTop
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object Item20: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Notas'
                  CaptionOptions.AlignVert = tavTop
                  Control = cxMemo1
                  ControlOptions.ShowBorder = False
                end
              end
              object Group6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object Group7: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object Item8: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Fecha'
                    Control = cxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object Group5: TdxLayoutGroup
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
                end
                object Item16: TdxLayoutItem
                  Caption = 'Nombre'
                  Control = cxDBTextEdit9
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object Group9: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Productos a despachar'
              LayoutDirection = ldHorizontal
              object Item18: TdxLayoutItem
                Control = cxProductos
                ControlOptions.ShowBorder = False
              end
            end
          end
          object Group11: TdxLayoutGroup
            ShowCaption = False
            LayoutDirection = ldHorizontal
            object Item22: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton5
              ControlOptions.ShowBorder = False
            end
            object Item23: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton8
              ControlOptions.ShowBorder = False
            end
            object Item25: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton7
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
    object ActCurzar: TAction [0]
      Caption = 'F2 = Cruzar'
      ShortCut = 113
    end
    object ActReservar: TAction [1]
      Caption = 'F3 = Reservar'
      ShortCut = 114
      OnExecute = ActReservarExecute
    end
    object ActDespachar: TAction [3]
      Caption = 'F4 = Facturar'
      ShortCut = 115
      OnExecute = ActDespacharExecute
    end
    object ActCancelar: TAction [4]
      Caption = 'F5 = Cancelar'
      ShortCut = 116
      OnExecute = ActCancelarExecute
    end
    object ActLiberar: TAction [5]
      Caption = 'F6 = Liberar'
      ShortCut = 117
    end
    object ActCaja: TAction [6]
      Caption = 'F8 = Caja'
      ShortCut = 119
      OnExecute = ActCajaExecute
    end
    object ActBaja: TAction [7]
      Caption = 'F9 = Baja'
      ShortCut = 120
    end
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
    object DataSetDelete3: TDataSetDelete
      Category = 'Dataset'
      Caption = 'F5 = Cancelar'
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsEntradaPacienteDetalle
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
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSAVenta'
      '')
    Left = 32
    Top = 248
    object qrEntradaPacienteRECID: TAutoIncField
      FieldName = 'RECID'
      ReadOnly = True
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacienteFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteStatus: TWideStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 10
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
    Left = 32
    Top = 280
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
    DataSet = tbEntradaPacienteDetalle
    Left = 144
    Top = 304
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 96
    Top = 240
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
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM BSPRODUCTOS'
      'WHERE ANTICIPO = 1')
    Left = 304
    Top = 131
    object qrDetallesProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDetallesProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrDetallesPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrDetallesPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrDetallesDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrDetallesPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object qrDetallesCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrDetallesCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object qrDetallesExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrDetallesFacturarCabecera: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object qrDetallesTipo: TBooleanField
      FieldName = 'Tipo'
    end
    object qrDetallesNecesitaCruce: TBooleanField
      FieldName = 'NecesitaCruce'
    end
    object qrDetallesServicio: TBooleanField
      FieldName = 'Servicio'
    end
    object qrDetallesInicial: TBooleanField
      FieldName = 'Inicial'
    end
    object qrDetallesAnticipo: TBooleanField
      FieldName = 'Anticipo'
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
    Left = 32
    Top = 491
    object qrReceptorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
  object dsReceptor: TDataSource
    DataSet = qrReceptor
    Left = 32
    Top = 520
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
    Left = 344
    Top = 267
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
    Left = 376
    Top = 264
  end
  object tbEntradaPacienteDetalle: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'RECID'
    MasterFields = 'RECID'
    MasterSource = dsEntradaPaciente
    TableName = 'BSAVentaDetalle'
    Left = 104
    Top = 312
    object tbEntradaPacienteDetalleCondec: TAutoIncField
      FieldName = 'Condec'
      ReadOnly = True
    end
    object tbEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object tbEntradaPacienteDetalleProductoId: TStringField
      FieldName = 'ProductoId'
    end
    object tbEntradaPacienteDetalleCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object tbEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object tbEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object tbEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 2
    end
    object tbEntradaPacienteDetalleResultado: TStringField
      FieldName = 'Resultado'
      Size = 15
    end
    object tbEntradaPacienteDetalleReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
  end
  object qrProducto: TADOQuery
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
      'SELECT     *'
      'FROM      BSProductos'
      'where Productoid = :ProductoId')
    Left = 456
    Top = 515
    object qrProductoProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrProductoProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
  end
  object dsProducto: TDataSource
    DataSet = qrProducto
    Left = 504
    Top = 512
  end
end
