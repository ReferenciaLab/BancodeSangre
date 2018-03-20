inherited frmBancoReserva: TfrmBancoReserva
  Caption = 'Reserva, cruce y despacho'
  ClientHeight = 622
  ClientWidth = 1002
  ExplicitTop = -136
  ExplicitWidth = 1018
  ExplicitHeight = 660
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 1002
    ExplicitWidth = 1002
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 33
    Width = 1002
    Height = 589
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
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 537
        Top = 304
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
        Left = 123
        Top = 514
        Width = 94
        Height = 25
        Action = ActReservar
        TabOrder = 19
      end
      object cxGrid3: TcxGrid
        Left = 11
        Top = 11
        Width = 206
        Height = 262
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
        Width = 740
        Height = 262
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
            Caption = 'Sangre'
            DataBinding.FieldName = 'TipoSangre'
            Width = 65
          end
          object dbDatosRH: TcxGridDBColumn
            DataBinding.FieldName = 'RH'
            Width = 59
          end
          object dbDatosFecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 66
          end
          object dbDatosVence: TcxGridDBColumn
            DataBinding.FieldName = 'Vence'
            Width = 63
          end
          object dbDatosDonacionId: TcxGridDBColumn
            Caption = 'Producto'
            DataBinding.FieldName = 'CodigoId'
            Width = 73
          end
          object dbDatosNombrePaciente: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombrePaciente'
            Width = 282
          end
          object dbDatosReservado: TcxGridDBColumn
            DataBinding.FieldName = 'Reservado'
            Width = 53
          end
          object dbDatosReservadoHasta: TcxGridDBColumn
            DataBinding.FieldName = 'ReservadoHasta'
            Width = 65
          end
          object dbDatosColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Sucursal'
          end
        end
        object lvDatos: TcxGridLevel
          GridView = dbDatos
        end
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 127
        Top = 304
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
        Top = 304
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
        Top = 390
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsReceptor
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 11
        Width = 199
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 72
        Top = 363
        DataBinding.DataField = 'PACIENTEID'
        DataBinding.DataSource = dsEntradaPaciente
        Properties.OnChange = cxDBTextEdit5PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 9
        Width = 113
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Tag = 99
        Left = 319
        Top = 363
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
        TabOrder = 13
        Width = 97
      end
      object cxButton2: TcxButton
        Left = 191
        Top = 363
        Width = 80
        Height = 21
        Caption = 'Buscar'
        TabOrder = 10
        OnClick = cxButton2Click
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 346
        Top = 304
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
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 319
        Top = 390
        DataBinding.DataField = 'DoctorId'
        DataBinding.DataSource = dsEntradaPaciente
        Properties.OnChange = cxDBTextEdit7PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 14
        Width = 112
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 72
        Top = 304
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
        Left = 437
        Top = 390
        Width = 94
        Height = 21
        Caption = 'Buscar'
        TabOrder = 15
        OnClick = cxButton3Click
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 319
        Top = 417
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsDoctor
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 16
        Width = 200
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 390
        Top = 304
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
        Top = 417
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 12
        Height = 77
        Width = 199
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 796
        Top = 304
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
      object cxButton4: TcxButton
        Left = 423
        Top = 514
        Width = 94
        Height = 25
        Action = ActLiberar
        TabOrder = 22
      end
      object cxButton5: TcxButton
        Left = 223
        Top = 514
        Width = 94
        Height = 25
        Action = ActDespachar
        TabOrder = 20
      end
      object cxButton6: TcxButton
        Left = 623
        Top = 514
        Width = 94
        Height = 25
        Action = ActBaja
        TabOrder = 24
      end
      object cxButton7: TcxButton
        Left = 523
        Top = 514
        Width = 94
        Height = 25
        Action = ActCaja
        TabOrder = 23
      end
      object cxProductos: TcxGrid
        Left = 567
        Top = 363
        Width = 384
        Height = 131
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
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
        Left = 323
        Top = 514
        Width = 94
        Height = 25
        Action = DataSetDelete3
        TabOrder = 21
      end
      object cxButton9: TcxButton
        Left = 23
        Top = 514
        Width = 94
        Height = 25
        Action = ActCurzar
        TabOrder = 18
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
            object Item26: TdxLayoutItem
              ShowCaption = False
              Control = cxButton9
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
            object Item21: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton4
              ControlOptions.ShowBorder = False
            end
            object Item25: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton7
              ControlOptions.ShowBorder = False
            end
            object Item24: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton6
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
  object cxButton10: TcxButton [3]
    Left = 459
    Top = 492
    Width = 75
    Height = 25
    Caption = 'Eti. Cruce'
    TabOrder = 2
    OnClick = cxButton10Click
  end
  object cxButton11: TcxButton [4]
    Left = 736
    Top = 553
    Width = 97
    Height = 25
    Caption = 'F10 Separaci'#243'n'
    TabOrder = 3
    OnClick = cxButton11Click
  end
  inherited formStorage: TJvFormStorage
    Left = 304
    Top = 82
  end
  inherited alEdit: TActionList
    object ActCurzar: TAction [0]
      Caption = 'F2 = Cruzar'
      ShortCut = 113
      OnExecute = ActCurzarExecute
    end
    object ActReservar: TAction [1]
      Caption = 'F3 = Reservar'
      ShortCut = 114
      OnExecute = ActReservarExecute
    end
    object ActDespachar: TAction [3]
      Caption = 'F4 = Despachar'
      ShortCut = 115
      OnExecute = ActDespacharExecute
    end
    object ActCancelar: TAction [4]
      Caption = 'F5 = Cancelar'
      ShortCut = 116
      OnExecute = ActCancelarExecute
    end
    object ActLiberar: TAction [5]
      Caption = 'F6 = Anticipo'
      ShortCut = 117
      OnExecute = ActLiberarExecute
    end
    object ActCaja: TAction [6]
      Caption = 'F8 = Caja'
      ShortCut = 119
      OnExecute = ActCajaExecute
    end
    object ActBaja: TAction [7]
      Caption = 'F9 = Baja'
      ShortCut = 120
      OnExecute = ActBajaExecute
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
      OnExecute = DataSetDelete3Execute
      DataSource = dsEntradaPacienteDetalle
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 492
    Top = 65532
  end
  object dsDatos: TDataSource
    AutoEdit = False
    DataSet = DMB.qrBancoInventario
    Left = 44
    Top = 3
  end
  object dsPaciente: TDataSource
    DataSet = qrPaciente
    Left = 248
  end
  object dsDonacion: TDataSource
    DataSet = qrDonacion
    Left = 384
  end
  object dsDonante: TDataSource
    DataSet = qrDonante
    Left = 632
  end
  object qrPaciente: TADOQuery
    Connection = DM.Database
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
    Left = 192
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
    Connection = DM.Database
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
    Connection = DM.Database
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
    Left = 568
    Top = 65531
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
    object qrDonanteRechasoNota: TMemoField
      FieldName = 'RechasoNota'
      BlobType = ftMemo
    end
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSAVenta'
      '')
    Left = 72
    Top = 104
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
    Connection = DM.Database
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
    Left = 256
    Top = 224
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
    object ppEntradaPacienteppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECID'
      FieldName = 'RECID'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteppField2: TppField
      FieldAlias = 'PACIENTEID'
      FieldName = 'PACIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppEntradaPacienteppField3: TppField
      FieldAlias = 'CLIENTEID'
      FieldName = 'CLIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppEntradaPacienteppField4: TppField
      FieldAlias = 'DOCTORID'
      FieldName = 'DOCTORID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppEntradaPacienteppField5: TppField
      FieldAlias = 'FECHAPROMETIDA'
      FieldName = 'FECHAPROMETIDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppEntradaPacienteppField6: TppField
      FieldAlias = 'FLEBOTOMISTAID'
      FieldName = 'FLEBOTOMISTAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppEntradaPacienteppField7: TppField
      FieldAlias = 'NOTA'
      FieldName = 'NOTA'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppEntradaPacienteppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECORDID'
      FieldName = 'RECORDID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppEntradaPacienteppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'BRUTO'
      FieldName = 'BRUTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 8
    end
    object ppEntradaPacienteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBTOTAL'
      FieldName = 'SUBTOTAL'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 9
    end
    object ppEntradaPacienteppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NETO'
      FieldName = 'NETO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 10
    end
    object ppEntradaPacienteppField12: TppField
      FieldAlias = 'SUCURSALID'
      FieldName = 'SUCURSALID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object ppEntradaPacienteppField13: TppField
      FieldAlias = 'USERID'
      FieldName = 'USERID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object ppEntradaPacienteppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTATUS'
      FieldName = 'ESTATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppEntradaPacienteppField15: TppField
      FieldAlias = 'DATAAREAID'
      FieldName = 'DATAAREAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 14
    end
    object ppEntradaPacienteppField16: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 160
    Top = 192
  end
  object qrDetalles: TADOQuery
    Connection = DM.Database
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
      'SELECT     TOP (100)'
      '  PERCENT dbo.BSInventario.DonacionId,'
      '  dbo.BSInventario.ProductoID,'
      '  dbo.BSInventario.CodigoId,'
      '  dbo.BSInventario.Cantidad,'
      '  dbo.BSInventario.Fecha,'
      '  dbo.BSInventario.Hora,'
      '  dbo.BSInventario.ProcesoID,'
      '  dbo.BSInventario.Reservado,'
      '  dbo.BSInventario.ReservadoHasta,'
      '  dbo.BSInventario.Dias,'
      '  dbo.BSInventario.Cruce,'
      '  dbo.BSInventario.CrucePacienteId,'
      '  dbo.BSInventario.Disponible,'
      '  dbo.PTENTRADAPACIENTE.PACIENTEID,'
      '  dbo.PTENTRADAPACIENTE.NOMBREPACIENTE,'
      '  dbo.BSInventario.Vence,'
      '  dbo.BSDonante.TipoSangre,'
      '  dbo.BSDonante.RH,'
      
        '  Sucursal = upper(dbo.BuscaSucursal (isnull(dbo.BSInventario.SU' +
        'CURSALID,'#39'00'#39')))'
      'FROM'
      '  dbo.BSInventario INNER JOIN'
      
        '  dbo.PTENTRADAPACIENTE ON dbo.BSInventario.DonacionId = dbo.PTE' +
        'NTRADAPACIENTE.ENTRADAID INNER JOIN'
      
        '  dbo.BSDonante ON dbo.PTENTRADAPACIENTE.PACIENTEID = dbo.BSDona' +
        'nte.PacienteID'
      'WHERE'
      '  (ProductoID = :ProductoId) AND (Reservado = 0) AND (Caja = 0)'
      ' AND (ISNULL(STATUS,'#39'A'#39') = '#39'A'#39')'
      'ORDER BY'
      '  dbo.BSInventario.Fecha, dbo.BSInventario.Hora')
    Left = 256
    Top = 147
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
    object qrDetallesSucursal: TStringField
      FieldName = 'Sucursal'
      ReadOnly = True
      Size = 30
    end
  end
  object dsDetalles: TDataSource
    DataSet = qrDetalles
    Left = 344
    Top = 152
  end
  object qrReceptor: TADOQuery
    Connection = DM.Database
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
    Top = 451
    object qrReceptorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
  object dsReceptor: TDataSource
    DataSet = qrReceptor
    Left = 120
    Top = 496
  end
  object qrDoctor: TADOQuery
    Connection = DM.Database
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
    Left = 392
    Top = 264
  end
  object tbEntradaPacienteDetalle: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    IndexFieldNames = 'RECID'
    MasterFields = 'RECID'
    MasterSource = dsEntradaPaciente
    TableName = 'BSAVentaDetalle'
    Left = 560
    Top = 240
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
    Connection = DM.Database
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
    Left = 512
    Top = 355
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
    Left = 392
    Top = 496
  end
  object Reporte_cruce: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '8.5X13'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 63500
    PrinterSetup.mmPaperWidth = 63500
    PrinterSetup.PaperSize = 119
    BeforePrint = Reporte_cruceBeforePrint
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 50
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 488
    Top = 120
    Version = '10.04'
    mmColumnWidth = 139700
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 52652
      mmPrintPosition = 0
      object ppVariable2: TppVariable
        UserName = 'Variable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 2646
        mmTop = 38894
        mmWidth = 22860
        BandType = 0
      end
      object ppVariable3: TppVariable
        UserName = 'Variable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 2646
        mmTop = 32279
        mmWidth = 22860
        BandType = 0
      end
      object ppVariable4: TppVariable
        UserName = 'Variable3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 2646
        mmTop = 35719
        mmWidth = 46038
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 2381
        mmTop = 41540
        mmWidth = 46302
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Compatible'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 6350
        mmTop = 42863
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Incompatible'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 6350
        mmTop = 45508
        mmWidth = 30480
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No cruzado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 6350
        mmTop = 47890
        mmWidth = 25400
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 2646
        mmLeft = 2646
        mmTop = 42598
        mmWidth = 3175
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 2117
        mmLeft = 2646
        mmTop = 45508
        mmWidth = 3175
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 2381
        mmLeft = 2646
        mmTop = 48154
        mmWidth = 3175
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 529
      mmPrintPosition = 0
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DSlabel_cruce
    UserName = 'BDEPipeline1'
    Left = 552
    Top = 96
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'PRUEBAID'
      FieldName = 'PRUEBAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'DESCRIPCION'
      FieldName = 'DESCRIPCION'
      FieldLength = 80
      DisplayWidth = 80
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'RESULTADO'
      FieldName = 'RESULTADO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
  end
  object Qlabel_cruce: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CLIENTE'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '005559'
      end>
    SQL.Strings = (
      'SELECT NOMBRE, IDENTIFICACION FROM PTCLIENTE'
      'WHERE CLIENTEID =:CLIENTE')
    Left = 424
    Top = 176
  end
  object DSlabel_cruce: TDataSource
    DataSet = Qlabel_cruce
    Left = 448
    Top = 216
  end
end
