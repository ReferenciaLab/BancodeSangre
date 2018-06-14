inherited frmPasaraInventario: TfrmPasaraInventario
  Caption = 'Convertir donaciones en productos'
  ClientHeight = 578
  ClientWidth = 930
  ExplicitWidth = 946
  ExplicitHeight = 616
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 930
    ExplicitWidth = 930
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 33
    Width = 930
    Height = 545
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object TdxLayoutControl
      Left = 0
      Top = 3
      Width = 913
      Height = 540
      Align = alClient
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dmAppActions.lnfWeb
      DesignSize = (
        913
        540)
      object cxGridInventario: TcxGrid
        Left = 306
        Top = 291
        Width = 475
        Height = 137
        Anchors = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsInventario
          DataController.DetailKeyFieldNames = 'ProductoID'
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
          object cxGridDBTableView1CodigoId: TcxGridDBColumn
            DataBinding.FieldName = 'CodigoId'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 139
          end
          object cxGridDBTableView1Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 86
          end
          object cxGridDBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 75
          end
          object cxGridDBTableView1Hora: TcxGridDBColumn
            DataBinding.FieldName = 'Hora'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 102
          end
          object cxGridDBTableView1Dias: TcxGridDBColumn
            DataBinding.FieldName = 'Dias'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 59
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 101
        Top = 232
        TabStop = False
        DataBinding.DataField = 'ISTBDonacion'
        DataBinding.DataSource = dsDatos
        Properties.ReadOnly = True
        Properties.OnChange = cxDBTextEdit1PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 1
        Width = 135
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 284
        Top = 232
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsDatos
        Properties.ReadOnly = True
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 2
        Width = 227
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 552
        Top = 232
        TabStop = False
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = dsDatos
        Properties.ReadOnly = True
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 722
        Top = 232
        TabStop = False
        DataBinding.DataField = 'MuestraNoAS'
        DataBinding.DataSource = dsDatos
        Properties.ReadOnly = True
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Width = 726
      end
      object cxButton3: TcxButton
        Left = 23
        Top = 291
        Width = 115
        Height = 25
        Action = DataSetInsert1
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 5
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 101
        Top = 322
        Width = 199
        Height = 21
        DataField = 'ProductoID'
        DataSource = dsInventario
        KeyField = 'ProductoID'
        ListField = 'ProductoDes'
        ListSource = dsProductos
        TabOrder = 6
        OnClick = DBLookupComboBox1Click
      end
      object cxButton4: TcxButton
        Left = 23
        Top = 457
        Width = 115
        Height = 25
        Action = DataSetPost1
        Caption = '&Guardar producto'
        TabOrder = 11
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 101
        Top = 376
        Width = 199
        Height = 21
        DataField = 'ProcesoID'
        DataSource = dsInventario
        KeyField = 'ProcesoId'
        ListField = 'ProcesoDes'
        ListSource = dsProcesos
        TabOrder = 8
      end
      object cxGrid2: TcxGrid
        Left = 11
        Top = 11
        Width = 891
        Height = 190
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsDatos
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'DonacionID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = cxGridDBColumn10
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
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Muestra'
            DataBinding.FieldName = 'ISTBDonacion'
            Options.Filtering = False
            Width = 86
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Filtering = False
            Width = 104
          end
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Options.Filtering = False
            Width = 451
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
            Options.Filtering = False
            Width = 116
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Estado'
            DataBinding.FieldName = 'DonacionStatus'
            Options.Filtering = False
            Width = 115
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 101
        Top = 349
        DataBinding.DataField = 'Dias'
        DataBinding.DataSource = dsInventario
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 7
        Width = 199
      end
      object cxButton7: TcxButton
        Left = 11
        Top = 495
        Width = 98
        Height = 25
        Hint = 'Delete'
        Caption = 'Enviar a Inventario'
        TabOrder = 15
        OnClick = cxButton7Click
      end
      object cxButton8: TcxButton
        Left = 811
        Top = 291
        Width = 75
        Height = 25
        Action = ActEtiqueta
        Enabled = False
        TabOrder = 13
      end
      object cxButton9: TcxButton
        Left = 811
        Top = 322
        Width = 75
        Height = 25
        Action = ActPruebas
        Enabled = False
        TabOrder = 14
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 101
        Top = 403
        DataBinding.DataField = 'Volumen_Actual'
        DataBinding.DataSource = dsInventario
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 9
        OnExit = cxDBTextEdit11Exit
        Width = 121
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 101
        Top = 430
        DataBinding.DataField = 'Unidad'
        DataBinding.DataSource = dsInventario
        Properties.Items.Strings = (
          '00'
          'A0'
          'AB'
          'AC'
          'B0'
          'BA'
          'BB'
          'BC')
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 10
        Width = 121
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object Item2: TdxLayoutItem
          Control = cxGrid2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Caption = 'Datos Generales'
          LayoutDirection = ldHorizontal
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'ISBT Donacion'
            Control = cxDBTextEdit4
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Nombre'
            Control = cxDBTextEdit5
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem4: TdxLayoutItem
            Caption = 'Fecha'
            Control = cxDBTextEdit6
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem5: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Muestra'
            Control = cxDBTextEdit7
            ControlOptions.ShowBorder = False
          end
        end
        object Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutGroup4: TdxLayoutGroup
            Caption = 'Crear producto de inventario'
            LayoutDirection = ldHorizontal
            object Group2: TdxLayoutGroup
              Caption = 'll'
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxButton1'
                ShowCaption = False
                Control = cxButton3
                ControlOptions.ShowBorder = False
              end
              object dxLayoutGroup5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object Group1: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutItem7: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Producto'
                    Control = DBLookupComboBox1
                    ControlOptions.ShowBorder = False
                  end
                  object Item4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Tiempo en dias'
                    Control = cxDBTextEdit10
                    ControlOptions.ShowBorder = False
                  end
                  object Item1: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Proceso'
                    Control = DBLookupComboBox2
                    ControlOptions.ShowBorder = False
                  end
                end
                object Item8: TdxLayoutItem
                  Caption = 'Volumen'
                  Control = cxDBTextEdit11
                  ControlOptions.ShowBorder = False
                end
                object Item3: TdxLayoutItem
                  Caption = 'Unidad'
                  Control = cxDBComboBox1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem9: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'cxButton2'
                  ShowCaption = False
                  Control = cxButton4
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutItem1: TdxLayoutItem
              AutoAligns = [aaVertical]
              Control = cxGridInventario
              ControlOptions.ShowBorder = False
            end
          end
          object Group4: TdxLayoutGroup
            Caption = 'Etiquetas'
            object Item6: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton8
              ControlOptions.ShowBorder = False
            end
            object Item7: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton9
              ControlOptions.ShowBorder = False
            end
          end
        end
        object Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'New Item'
          ShowCaption = False
          Control = cxButton7
          ControlOptions.ShowBorder = False
        end
      end
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      ShowCaption = False
    end
  end
  object cxButton5: TcxButton [3]
    Left = 170
    Top = 496
    Width = 129
    Height = 25
    Action = DataSetCancel1
    TabOrder = 2
  end
  object cxButton6: TcxButton [4]
    Left = 154
    Top = 330
    Width = 129
    Height = 25
    Action = DataSetEdit1
    TabOrder = 3
  end
  object cxButton1: TcxButton [5]
    Left = 810
    Top = 389
    Width = 75
    Height = 25
    Caption = 'Eti. Pruebas'
    Enabled = False
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton [6]
    Left = 810
    Top = 420
    Width = 75
    Height = 25
    Caption = 'Eti. Cruce'
    Enabled = False
    TabOrder = 5
    OnClick = cxButton2Click
  end
  inherited formStorage: TJvFormStorage
    Left = 344
    Top = 74
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 136
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Nuevo producto'
      Enabled = False
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsInventario
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Crear producto'
      Enabled = False
      Hint = 'Post'
      ImageIndex = 7
      OnExecute = DataSetPost1Execute
      DataSource = dsInventario
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancelar'
      Enabled = False
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsInventario
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Borrar'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsInventario
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Editar'
      Enabled = False
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = dsInventario
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Borrar &Donacion'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsDonacion
    end
    object ActEtiqueta: TAction
      Caption = 'Etiqueta'
      OnExecute = ActEtiquetaExecute
    end
    object ActPruebas: TAction
      Caption = 'Pruebas'
      OnExecute = ActPruebasExecute
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 468
    Top = 4
  end
  object dsDatos: TDataSource
    AutoEdit = False
    DataSet = DMB.qrDonacionesAprobadas
    OnDataChange = dsDatosDataChange
    Left = 44
    Top = 3
  end
  object dsDonacion: TDataSource
    DataSet = qrDonacion
    Left = 392
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
    Left = 296
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
    object qrDonacionMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDonacionISTBDonacion: TStringField
      FieldName = 'ISTBDonacion'
      ReadOnly = True
      Size = 15
    end
  end
  object qrEntradaPaciente: TADOQuery
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
      'Select *  from PTEntradaPaciente'
      'Where EntredaID = :rec')
    Left = 64
    Top = 96
    object qrEntradaPacienteEntredaID: TStringField
      FieldName = 'EntredaID'
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
    Left = 32
    Top = 208
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
    Top = 208
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 104
    Top = 160
  end
  object ppEntradaPaciente: TppDBPipeline
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 160
    Top = 160
    object ppEntradaPacienteppField1: TppField
      FieldAlias = 'EntredaID'
      FieldName = 'EntredaID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField3: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField4: TppField
      FieldAlias = 'ClienteID'
      FieldName = 'ClienteID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField5: TppField
      FieldAlias = 'DoctorID'
      FieldName = 'DoctorID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField6: TppField
      FieldAlias = 'PolizaID'
      FieldName = 'PolizaID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField7: TppField
      FieldAlias = 'EnClinica'
      FieldName = 'EnClinica'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField8: TppField
      FieldAlias = 'RecordClinica'
      FieldName = 'RecordClinica'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField9: TppField
      FieldAlias = 'ResultadoPaciente'
      FieldName = 'ResultadoPaciente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField10: TppField
      FieldAlias = 'ResultadoDoctor'
      FieldName = 'ResultadoDoctor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField11: TppField
      FieldAlias = 'FechaPrometida'
      FieldName = 'FechaPrometida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField12: TppField
      FieldAlias = 'HoraPrometida'
      FieldName = 'HoraPrometida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField13: TppField
      FieldAlias = 'FlebotomistaID'
      FieldName = 'FlebotomistaID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField14: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField15: TppField
      FieldAlias = 'CoberturaConfirmada'
      FieldName = 'CoberturaConfirmada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField16: TppField
      FieldAlias = 'ProyectoID'
      FieldName = 'ProyectoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField17: TppField
      FieldAlias = 'Recid'
      FieldName = 'Recid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField18: TppField
      FieldAlias = 'Bruto'
      FieldName = 'Bruto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField19: TppField
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField20: TppField
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField21: TppField
      FieldAlias = 'CoberturaSeguro'
      FieldName = 'CoberturaSeguro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField22: TppField
      FieldAlias = 'Neto'
      FieldName = 'Neto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField23: TppField
      FieldAlias = 'NombrePaciente'
      FieldName = 'NombrePaciente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField24: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField25: TppField
      FieldAlias = 'Telefonos'
      FieldName = 'Telefonos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField26: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField27: TppField
      FieldAlias = 'ClienteNombre'
      FieldName = 'ClienteNombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField28: TppField
      FieldAlias = 'SucursalId'
      FieldName = 'SucursalId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField29: TppField
      FieldAlias = 'UserID'
      FieldName = 'UserID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField30: TppField
      FieldAlias = 'TotalPendiente'
      FieldName = 'TotalPendiente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField31: TppField
      FieldAlias = 'CobroID'
      FieldName = 'CobroID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField32: TppField
      FieldAlias = 'TotalPagado'
      FieldName = 'TotalPagado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField33: TppField
      FieldAlias = 'HoraEntrada'
      FieldName = 'HoraEntrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField34: TppField
      FieldAlias = 'Prioridad'
      FieldName = 'Prioridad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField35: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField36: TppField
      FieldAlias = 'TipoDocumento'
      FieldName = 'TipoDocumento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField37: TppField
      FieldAlias = 'CoberturaPorc'
      FieldName = 'CoberturaPorc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField38: TppField
      FieldAlias = 'CoberturaValor'
      FieldName = 'CoberturaValor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField39: TppField
      FieldAlias = 'DescuentoPorc'
      FieldName = 'DescuentoPorc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField40: TppField
      FieldAlias = 'DescuentoValor'
      FieldName = 'DescuentoValor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField41: TppField
      FieldAlias = 'AprobadoPor'
      FieldName = 'AprobadoPor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField42: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField43: TppField
      FieldAlias = 'AprobacionNo'
      FieldName = 'AprobacionNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField44: TppField
      FieldAlias = 'MonedaID'
      FieldName = 'MonedaID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField45: TppField
      FieldAlias = 'FechaEntrada'
      FieldName = 'FechaEntrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField46: TppField
      FieldAlias = 'CoberturaExpPorc'
      FieldName = 'CoberturaExpPorc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField47: TppField
      FieldAlias = 'EdadPaciente'
      FieldName = 'EdadPaciente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField48: TppField
      FieldAlias = 'NombreDoctor'
      FieldName = 'NombreDoctor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField49: TppField
      FieldAlias = 'PublicarInternet'
      FieldName = 'PublicarInternet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField50: TppField
      FieldAlias = 'Origen'
      FieldName = 'Origen'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField51: TppField
      FieldAlias = 'Carnet'
      FieldName = 'Carnet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField52: TppField
      FieldAlias = 'PublicarInternetDoctor'
      FieldName = 'PublicarInternetDoctor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField53: TppField
      FieldAlias = 'CuadreGlobal'
      FieldName = 'CuadreGlobal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField54: TppField
      FieldAlias = 'CuadreUsuario'
      FieldName = 'CuadreUsuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField55: TppField
      FieldAlias = 'DescAutorizadoPor'
      FieldName = 'DescAutorizadoPor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField56: TppField
      FieldAlias = 'GastosVarios'
      FieldName = 'GastosVarios'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField57: TppField
      FieldAlias = 'NoAS400'
      FieldName = 'NoAS400'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField58: TppField
      FieldAlias = 'NoAxapta'
      FieldName = 'NoAxapta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField59: TppField
      FieldAlias = 'NoFactura'
      FieldName = 'NoFactura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField60: TppField
      FieldAlias = 'FactExterior'
      FieldName = 'FactExterior'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField61: TppField
      FieldAlias = 'Hold'
      FieldName = 'Hold'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField62: TppField
      FieldAlias = 'RepMuestra'
      FieldName = 'RepMuestra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField63: TppField
      FieldAlias = 'EntradaIdAnt'
      FieldName = 'EntradaIdAnt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 160
    Top = 208
  end
  object qrTipoDonacion: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSTipoFunda')
    Left = 336
    Top = 368
    object qrTipoDonacionTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrTipoDonacionTipoFundaDes: TWideStringField
      FieldName = 'TipoFundaDes'
      Size = 50
    end
    object qrTipoDonacionDias: TIntegerField
      FieldName = 'Dias'
    end
  end
  object dsTipoDonacion: TDataSource
    AutoEdit = False
    DataSet = qrTipoDonacion
    Left = 384
    Top = 368
  end
  object qrProductos: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TipoFundaId'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSTipoFunda.TipoFundaID, dbo.BSDerivados.Derivado' +
        'Id, dbo.BSProductos.ProductoDes, dbo.BSProductos.Dias, dbo.BSPro' +
        'ductos.Precio, '
      
        '                      dbo.BSProductos.PrecioDolares, dbo.BSProdu' +
        'ctos.ProductoID'
      'FROM         dbo.BSDerivados INNER JOIN'
      
        '                      dbo.BSTipoFunda ON dbo.BSDerivados.TipoFun' +
        'daId = dbo.BSTipoFunda.TipoFundaID INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSDerivados.Derivad' +
        'oId = dbo.BSProductos.ProductoID'
      'WHERE     (dbo.BSTipoFunda.TipoFundaID = :TipoFundaId)')
    Left = 336
    Top = 416
    object qrProductosDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrProductosProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrProductosProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrProductosPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrProductosPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
  end
  object dsProductos: TDataSource
    AutoEdit = False
    DataSet = qrProductos
    Left = 448
    Top = 416
  end
  object qrProcesos: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSProcesos')
    Left = 392
    Top = 416
  end
  object dsProcesos: TDataSource
    AutoEdit = False
    DataSet = qrProcesos
    Left = 504
    Top = 416
  end
  object qrInventario: TADOQuery
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
      'Select *  from BSInventario'
      'where DonacionId = :DonacionID')
    Left = 440
    Top = 368
    object qrInventarioDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrInventarioProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrInventarioCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrInventarioCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrInventarioFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrInventarioHora: TStringField
      FieldName = 'Hora'
    end
    object qrInventarioProcesoID: TWideStringField
      FieldName = 'ProcesoID'
      FixedChar = True
      Size = 10
    end
    object qrInventarioReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrInventarioDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrInventarioCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrInventarioCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object qrInventarioDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrInventarioReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrInventarioReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrInventarioVolumen_total: TIntegerField
      FieldName = 'Volumen_total'
    end
    object qrInventarioVolumen_Actual: TIntegerField
      FieldName = 'Volumen_Actual'
    end
    object qrInventarioUnidad: TStringField
      FieldName = 'Unidad'
      Size = 5
    end
    object qrInventarioSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
  end
  object dsInventario: TDataSource
    DataSet = qrInventario
    Left = 496
    Top = 368
  end
  object Qreporte_pruebas: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT PRUEBAID, DESCRIPCION, RESULTADO'
      'FROM BSDETALLE'
      'WHERE MUESTRANO = '#39'01000031'#39
      'AND PRUEBAID <> '#39'00000216'#39
      'ORDER BY SECUENCIA')
    Left = 568
    Top = 72
  end
  object DSreporte_pruebas: TDataSource
    DataSet = Qreporte_pruebas
    Left = 688
    Top = 80
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DSreporte_pruebas
    UserName = 'BDEPipeline1'
    Left = 616
    Top = 128
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
  object Reporte_Pruebas: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 101600
    PrinterSetup.mmPaperWidth = 76200
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 160
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D6167654F3D0000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC000110800B1022703012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2BCBFE2478E65825
          1E1CD0E6717F23049E68CE0C79E88A7FBC7232474E9D4F1E9D1AEC8D57716C0C
          64F5352A49B69743AAB612A51A50AB3D39EF65E4ADAFCFA0EA28A2A8E50A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A2AA5CDFC714E6D23789AF9A169618247D9E6
          63DF078CE3270719E9585A5F88B5BD55261168FA7C53DBBF973DBCDA8BAC9137
          6C810918239041208E8693691B4284E71725B2F34BF33A8A2B1BED5E24FF00A0
          4697FF0083293FF8C51F6AF127FD0234BFFC1949FF00C628B87B09775F7AFF00
          33668AC6FB57893FE811A5FF00E0CA4FFE3147DABC49FF00408D2FFF0006527F
          F18A2E1EC25DD7DEBFCCD9A2B1BED5E24FFA04697FF83293FF008C51F6AF127F
          D0234BFF00C1949FFC628B87B09775F7AFF3366B8EF883E328FC2FA398ADDC1D
          52E548B75C6760EEE7D876F53EC0D49AFF008A754F0DE96F7FA8E9BA62C40ED5
          55D49CBBB1E8AA3C8E4D780EB5ACDE6BFAB4FA8DF3869A53D070A83B281D801F
          E7358D5ABCAACB73DBC9B279622A7B4ABF02F34EEFB69F8963C36CD71E32D21A
          7632349A8425D9CE4B1320C939EB5F51D7C9DA65DB586AD6778B8DD6F3A4A327
          032AC0FA1F4F4AFA63ED5E24FF00A04697FF0083293FF8C54E1DE8CECE26A329
          54A6D5AD67D52FCCD9A2B1BED5E24FFA04697FF83293FF008C51F6AF127FD023
          4BFF00C1949FFC62BA2E7CC7B09775F7AFF33668AC6FB57893FE811A5FFE0CA4
          FF00E3157749BEFED4D1AC750F2FCAFB55BC73797BB76DDCA0E33C6719A2E4CA
          94A2B99DADEA9FE45CA28A299985145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451401C8EB5A645AA78E6CA2777
          8A58F4D9A58268FEF4520962C30FCC8C1E08241E0D46E2EE7D5911C4365E27B7
          889866C116F7F167953DC819191F7909046475D29BFE4A1D9FFD82A7FF00D1B1
          5696A9A5C5AA40AACEF0CF136F82E23E1E17FEF0FE441E08241E0D45B73BFDB7
          2A8465B5BEED5FE1DD1168FACC5AAC72A189EDAF2DDB65CDACB8DF1376FAA9EA
          187047E2069D71AC9797B7C23768ACBC516519314FB4F93790E46411DD09C647
          542723DF7B46D663D5A2911E26B6BDB7609756921CBC2DFD54F50C3823F101A6
          635A8F2FBD1DBF2FF80FA3F93D77D4A28AC7D5AEF504D4AC2CAC26B584DC2CAC
          D25C40D281B42E0001D7D4F7ED4DBB18C21CEEC6C550D6759B2D074C9750BF98
          470463F163D9547726AA9B5F119E0EAFA601EABA6B83F86673FCAB94F127C36D
          47C4F7493DF78A246D80848CDA0D89FEEA8718FAF24F1E953272B688E9C3D1C3
          CAA255AA251EB64EFF0091E4DE2BF155EF8B35637775FBB8532B040A72B12FF5
          27B9EFF4000C1AF50BCF829A9C7FF1E5AADA4FFF005D91A2FE5BAB86D73C33AC
          7872654D52C9E10C70920C323FD18719F6EB5C5384D6B23F41C16330338AA586
          92D365B7E66457D5DA3DF7F69E8B637FB76FDA6DD26DBE9B941C7EB5F28D7BA7
          C1FD77EDFE1C974A95B32D83FC9EF1B9247E4770FA62B4C3CAD2B1E5F1361DCF
          0F1AABECBFC1FF00C1B1E8F45145761F0C21E86B23C27FF227687FF5E107FE8B
          5AD73D0D64784FFE44ED0FFEBC20FF00D16B4BA9B47F832F55F933628A28A662
          1451450014514500145145001451450014514500145145001451450014514500
          1451450014514500145145001451450014514500145145001451450014514500
          1451450014514500145145001451450014514500145145001451450014514500
          145145001451450073F37FC943B3FF00B054FF00FA362AE82B9F9BFE4A1D9FFD
          82A7FF00D1B15741497537ADF0C3D3F5650D574A8755B608EEF0CF1B6F82E223
          8785FA6E53FA11D08241AE702DDEA370AAE63D3FC57629F24A57F7579177FF00
          7A262464754623DB3D9550D5B4A8755B608EEF0CF1B6F82E2238785FA6E53FA1
          1D08241A4D0E8D6E5F765B7E5FE69F5445A2EB31EAD04A1A26B6BCB77F2EEAD6
          439685F19C67BA9EA187047E22B9D3E2BD2F56F883A6699A7CBF6936F1CE6495
          0831862A31B4F72003C8E3E6EBD45797F8D3C6973ABDC0B588C71C90ABDB5CDD
          DA4842DEA83C640EA9C64039FBC71D793E147FC8FF0069FF005CA5FF00D00D63
          EDAF25147D0472454B0D53135347CAECBB69DFF2FC4F50F89FAF6A5E1EF0E5B5
          DE9773F679DEED6366D8AD9528E7186047502BC913E2478BA372EBAD4993FDE8
          A323F22B8AF49F8D1FF22859FF00D7FA7FE8B92BC32B3AD2929E8CF4720C250A
          98352A904DDDEE933D0348F8BBE22B2B853A818750809F995A358DC0FF0064A8
          03F306BD6F44D7B44F1B6912342893C390B3DADCA0254F51B9790471907A71EA
          0E3E64AEC3E185EC969E3DD3D164758E7DF148ABD1C142403FF0200FE1453AB2
          BD9EA5E6B9361DD1956A2B965157D36D35D8B5F11FC0E9E16BC8AF2C379D36E5
          88556E7C97EBB33DC6338EFC1F4C9A1F0EB5DFEC2F18DAC92305B7B9FF00469B
          3D831183ED860A73E99AF5EF8A7123FC3CD459D03346D132123EE9F314647E04
          8FC6BE76A551724EE8BCA6ACB30CBE54EB6BBC6FF2DFD753EBBAE7EFBC6FE1CD
          36F65B3BCD5628AE223B5D0AB641FC05278235BFEDFF0008D8DE3BEE9C279539
          2727CC5E093F5E1BF1AF0BF885FF0023EEAFFF005D87FE822BA2A54E58A923E6
          B2DCAE389C54F0F59B5CA9EDDD3B1ED87E22F84F07FE2750FF00DF0FFE159BE1
          CF1E7862CFC31A4DADC6AF0C7343670C722146F958200474F5AE4EC3E0C35EE9
          F6D77FDBC13CF8964DBF63CEDDC01C677FBD58FF00851EDFF4308FFC02FF00EC
          EA79AAEF63A9E1B278A7075A5BF67D2FFDDF33B7FF00858BE12FFA0D43FF007C
          3FF855DD2FC5DA0EB579F64D3B518EE27DA5B62AB0381D4F22BCEFFE147B7FD0
          C23FF00BFF00B3ADFF0007FC333E14D77FB48EAC2EBF74D1F97F66D9D71CE771
          F4A71954BEA8E6C461F2A8D293A559B974567FE477CEEB1C6CEE70AA0927D057
          33FF000B17C25FF41A87FEF87FF0AE8350FF009075D7FD727FE46BE5BD134DFE
          D8D6ECB4DF37C9FB4CAB1799B776DC9EB8C8CD156A38B49750CA72DA38C8549D
          6934A36DBE7FE47D09FF000B17C25FF41A87FEF87FF0A3FE162F84BFE8350FFD
          F0FF00E15C47FC28F6FF00A1847FE017FF006747FC28F6FF00A1847FE017FF00
          674B9AAF636FAAE4DFF3FE5F73FF00E44EDFFE162F84BFE8350FFDF0FF00E15B
          9A66A965ACD92DE69F70B3DBB1203A82012383D6BCB3FE147B7FD0C23FF00BFF
          00B3AF43F097878F85F408B4B375F69D8ECDE6797B33939E993FCEAE0E6DFBC8
          E3C6D0CBE14EF86A8E52BECD74FB90FD5BC57A1E8574B6BA9EA11DB4CC824546
          56395248CF03D41FCAA87FC2C5F097FD06A1FF00BE1FFC2BCCBE347FC8E369FF
          0060F4FF00D19252785FE159F127876D7561AC8B7F3F7FEEBECDBF6ED72BD778
          F4CF4ACDD49F338C51E852CAB051C2431388A8E3CDF9EBE4FB1E9DFF000B17C2
          5FF41A87FEF87FF0A3FE162F84BFE8350FFDF0FF00E15C47FC28F6FF00A1847F
          E017FF006747FC28F6FF00A1847FE017FF00674F9AAF633FAAE4DFF3FE5F73FF
          00E44EF2DBC79E18BCBB86D6DF578649A6758E3408DF3313803A7A9AE8EBCB34
          9F83A74BD66C750FEDD127D96E239F67D931BB6B06C677F19C57A9D690727F12
          3CCC753C253925859B92EB7FF8647317FF0010BC2FA65F4D6577AA08EE216292
          208246DA7D32148AAFFF000B43C1DFF418FF00C969BFF88AF11F1B7FC8EFACFF
          00D7DBFF003AEEE0F82667B68A61E20C79881B1F63E9919FEFD62AA54936A28F
          6E79565B428D3A988A925CCAFF0082BED17DCEFECFC7BE16BE2043ADDAAE7FE7
          B1317FE8605744AEAEA195832919041C822BC3754F835ADDAA33E9F796D7A00F
          B87313B7D01C8FCC8AE5F44F12EB9E0FD4C2452CF12C527EFECA5242B72320A9
          E878C671914FDB4A2FDF467FD8986C4C1CB035B99AE8FF00A56FB8FA6E8ACED0
          B59B5D7F46B6D4ED09F2A65CED6EAA47054FB8208AD1AE84EE7CE4E12849C64A
          CD183A8F8D3C3DA4DFCB637DA9C505CC58DF1B2B1232011D07A11557FE162F84
          BFE8350FFDF0FF00E15E35F13FFE4A2EABFF006CBFF4525745A4FC1D3AA68F65
          A87F6E88BED56E936CFB26EDBB941C677F38CD73FB49B93515B1F49FD9380A58
          6A75B1151C7992FCAFD99E87FF000B17C25FF41A87FEF87FF0A3FE162F84BFE8
          350FFDF0FF00E15C47FC28F6FF00A1847FE017FF006747FC28F6FF00A1847FE0
          17FF00674F9AAF632FAAE4DFF3FE5F73FF00E44F41D3BC69E1ED5AFE2B1B1D52
          29EE65CEC8D558138049EA3D01ADEAF38F0BFC2A3E1BF11DA6ADFDB22E3ECFBF
          F75F65D9BB7232F5DE71F7B3D2BD1EB583935EF23CAC6D3C342A25869B946DBB
          EFF7232F56F11E8FA1796352D420B6690808AEDF31C9C67039C7BF415A608232
          0E41AF93B5191E6D4EEA491D9DDA562598E49393D4D7AC7C29F1B3CDB7C3BA94
          C59957FD0E473C903FE5993EC391EC08F415942BF34ACCF5F1D904B0F8655A9C
          B99ADFD3CBD3A9EB5451456E7CE05626A9E2ED0745BCFB26A3A8C76F3ED0FB19
          589C1E87815B75E05F183FE478FF00B758FF0099ACEA4DC23747A794E0A18DC4
          7B29B6959BD0F78B5B986F6D21BAB77124332092371FC4A4641FCAA5AC7F097F
          C89BA27FD7841FFA2C56C55A774705582854945746C28CD73FE2AF18699E13B1
          F36EDFCCB971FB9B643F3C87FA0F527F53C578A6BDF123C45AF4DB63BA7B1B7C
          FCB0DA31527EAC396EBF4F6A89D58C343D1C064F88C62E68E91EEFF4EE7BE6A1
          ADE95A5606A1A8DADA923216695549FA02726B01FE27783E372A758048FEEDBC
          A47E616BC834BF86FE29D6009BEC0D6D1B93992F1BCB3F52A7E6FC715D2DA7C1
          2BF75FF4CD66DE16F48616907EA56B3F6951ED13D0796657474AF88BBF2FF866
          7AB689AFE9BE22B37BBD2EE3CF812431336C64C3000E30C01E84556D53C5FA0E
          8B79F64D47518EDE7DA1F632B1383D0F02A9F827C22DE0FD36E2CCDF9BB59A6F
          341F2BCB0A70074DC7D057947C5FFF0091E0FF00D7AC7FD6AE73946177B9C782
          C061F178D951849F26AD3EBF97E87BAD85FDB6A76515E59CA25B794651C02030
          CE3BD59AE5FE1D7FC881A47FD726FF00D0DABA8AD22EEAE79988A6A9559535D1
          B5F730AAF7D7B069D61717B72DB60B78DA490E33850326AC57987C65D745B691
          6DA2C52112DD3F9B2807FE59AF407EAD83FF000034A72E58DCD3038578AC4468
          AEAFF0EA741A27C49D035ED5A1D36D0DCADC4D9D9E6C41549009C6727B035D7D
          7C956B713D8DDC1750318E685D648DB1D083906BEA4D0B56875DD0ECF5387016
          E230C541CED6E8CBF81047E159D1AAE7A33D4CEB2A8609C674AFCAF4D7BFFC1F
          D0D1A28A2B63C10A28A2800A28A2800A28A28039F9BFE4A1D9FF00D82A7FFD1B
          157415CFCDFF00250ECFFEC153FF00E8D8ABA0A4BA9BD6F861E9FAB0AF3CF8B5
          E246D27404D32DA4DB737E4ABE3AAC43EF7D33903DC6EAF43AF0ED5E1B5F197C
          47D74EA3733C361A55ACAC4C40160B0E010323FBC59AA2AB6A365D4EFC9E8C27
          88F6B57E186AFF0045F79E6B5DAFC28FF91FED3FEB94BFFA01AE2ABB5F851FF2
          3FDA7FD7297FF4035C54FE347DD669FEE557FC2FF23BEF8D1FF22859FF00D7FA
          7FE8B92BC32BDCFE347FC8A167FF005FE9FF00A2E4AF0CABAFF19C1C39FEE2BD
          585773F09B4DB9BBF1BDBDE4484C1648EF33E381B9195467D493D3D01F4ACAF0
          DF81F5BF12CB1B5B5B34366C7E6BB986D403D47F7BA741F8E2BDBF4FB2D07E1D
          F86F125C2C3083996793EFCCFF0041C93E8076FC4D3A54DB7CCF62739CCE9C29
          4B0D4BDE9CB4B2D6D7FD7C8CDF8B57F15AF81A7B6623CCBB9638D077E18393FF
          008EFEA2BE7EAE9BC6FE2D97C5BAD79E15A3B28014B6898F207763DB71C0CFD0
          0E719AE66A6ACF9A5747564B8296130AA13F89BBBF2FEAC7AC7C14D5425CEA7A
          4C92B66455B8850FDDC8F95CFD4E53F2F6AE37E217FC8FBABFFD761FFA08AA5E
          13D5BFB13C55A6EA0582C71CC04848E88DF2B7FE3A4D69FC4B8D63F887AAAA0C
          02D1B7E263427F534DCAF4ADD99953C3FB2CD65516D385FE69A4FF0043DFF41F
          F91774CFFAF48BFF004015A15CB69BE32F0BDB6976907F6DD9AF970A260CBC8C
          281567FE138F0BFF00D076CBFEFE8AEC5256DCF85A986AEE6DF23FB99D0515CF
          FF00C271E17FFA0ED97FDFD156F4FF0013689AADD7D9AC353B6B99F696D91BE4
          E07534F997733961AB455E50697A32EEA1FF0020DBAFFAE2FF00C8D7CD5E09FF
          0091DF46FF00AFB4FE75F4D4A8B242F1B8CAB29047A8AF9A7C07179DE3AD1D73
          8C5C06CE3D013FD2B0ADF144FA1C85FF00B2E27D3F491F4CD14515D07CC05145
          1401E15F1A3FE471B4FF00B07A7FE8C92BD17E177FC93BD2FEB2FF00E8D7AF3F
          F8D48A3C4D61263E66B3009F60ED8FE66BA9F879E2AD074DF0369D697BAB5AC1
          709E6EF8E47C15CC8C47E8457341DAABB9F578B84AA64D454137AF4FFB78F47A
          2B9FFF0084E3C2FF00F41DB2FF00BFA28FF84E3C2FFF0041DB2FFBFA2B7E65DC
          F9CFAAD7FE47F733A0A2B0E0F18F872EAE22B78359B392695C2222C992CC4E00
          1F8D6E534D3D8CA74E74DDA69AF53E64F1CA347E38D6558609BA66FC0F23F435
          F49E9FFF0020DB5FFAE49FC857CE5F10FF00E47ED5FF00EBB0FF00D0457D216F
          1F936D1440E42205CFAE056147E291F499EBBE170DFE1FD224B5E33F1AF4EB78
          6FF4BD4234559EE1248E520E3704DBB4E3FE04467E95ECD5E03F153C516DE20D
          760B5B19165B5B156512AF477623760F71F2819FAF6C55576B93539387A9D496
          3A3286CAF7FBBFCCEB3E09DC48DA3EA96C48F2E3B8591463BB2E0FFE822BD4AB
          8AF861E1E9F41F0A86BB88C57579279EE8C30C8B80154FBE0671D46EC1E95DAD
          5D34D412671E6B521531B5250DAE7CE5F13FFE4A2EABFF006CBFF45257BAF84F
          FE44ED13FEBC20FF00D16B5E21F155153E205F15182E91337B9D807F202BD4FC
          35E31F0E5AF85B48B79F59B38E68ACA147469002AC10020FE358D3695495CF6F
          34A73A997619422DE8B65E47694573FF00F09C785FFE83B65FF7F451FF0009C7
          85FF00E83B65FF007F456FCCBB9F39F55AFF00C8FEE67414563D978AB41D4AF2
          3B4B2D5AD67B8933B2347C96C0C9FD01AD8A69A7B194E9CE0ED3567E67CCBE1E
          B78AEFC7B656F3C6B2432DEEC746190CA5B041ABBE38F085CF83F5A12DBF99F6
          095F7DACE09CA1EBB49ECC3B7A8E7D71068005AFC4BB18DDB3B35311E40EA7CC
          C57D03AFE8767E22D1E7D3AF5331C83E5603E68DBB30F71FFD6EF5CB0A7CF17D
          CFB5C7E632C162A949EB071575F3DFD51CEFC3AF1A0F146966DEEDD46A96A009
          40E3CD5E81C0FD0E3A1F4C815DAD7CCB736DACF803C54BCF95756EDBE37C7C93
          274CFBA919047D47515F40F85FC4769E28D162D42D72A7EE4D11EB1B8032BEFD
          783E86B5A552FEECB747879C65D1A2D62286B4E5DBA7FC0EDF71B35E05F183FE
          478FFB758FF99AF7DAF02F8C1FF23C7FDBAC7FD68AFF00017C37FEFBF27FA1EC
          BE12FF00913744FF00AF083FF458A5F136BD0786F40BAD4A62A4C6B88909C799
          21FBABF9FE4327B52784C63C1DA27FD7841FFA2D6BCCFE35EA8ED7BA6E92ACC1
          123372EBD9892557F11B5BFEFAAA94B96173970B8458BCC3D93DAEEFE88F3E45
          D57C61E2403735CEA17B2753C0FF00EB2803F002BDF3C21E05D37C296EAE8827
          D4197F7974E39F70BFDD1FA9EF5C8FC17D1234B2BDD6E45CCB23FD9A2CF65182
          C7F1240FF80D7ABD67461A733DCEFCF73193A8F094B4847476EBFF0001760A28
          A2BA0F9B0AF01F8BFF00F23C1FFAF58FFAD7BF5783FC65454F19DBB28C17B146
          6F73BDC7F202B1AFF01EF70DBFF6EF933D43E1D7FC881A47FD726FFD0DABA8AE
          77C068B1F817470A300DB83F89E4FEA6BA2AD23F0A3CAC63BE22A3FEF3FCC64D
          2C7042F34AEA91C6A59D98E0281C926BE6ED427B9F1EF8F8F901BFD32711C208
          FF005710E0123D946E3F8D7AB7C59D7974BF0A9D3E3722E7503E58C75118C173
          FC971FED5737F0634166B8BCD7A65F9157ECD06475270588FA0C0CFB9AC6A7BF
          3503DDCA92C1E0EA63A5BBD23FD7AFE4C77C5CF0C4569A6695A858C1B61B48C5
          9C98C9C20FF579FA7CC33EE297E0BEBA035F68734BD71716EA7F2719FF00BE4E
          3FDE35EA1ACE9706B5A35DE9B703F77711942719DA7B30F70707F0AF9AACEE2F
          7C25E29494AEDBBD3EE0ABAE78383865CFA1191F434AA7B935237CBA5FDA397C
          F0927EF4755F9AFC74F467D494557B1BC8351B0B7BDB67DF04F1AC91B6319523
          22AC5749F26D34ECC28A28A04145145001451450073F37FC943B3FFB054FFF00
          A362AE82B9F9BFE4A1D9FF00D82A7FFD1B15741497537ADF0C3D3F56213804D7
          CFBE1796493C23E37BF1FF001F4D0C2A5F273B6476DE3F115F419E95F3CF84B5
          6B2F0E4FE24D235B3225B5C5B4903AA265DA45254281D8FCCDC9380475AC6AEE
          AFE67B39326E8D6E5577783B774A5767155DAFC28FF91FED3FEB94BFFA01AE2A
          BB5F851FF23FDA7FD7297FF4035CB4FE347D8667FEE557FC2FF23BEF8D1FF228
          59FF00D7FA7FE8B92BC7344D4C68FAC5BDFB5A4176B1365A09D032B8FC7A1F43
          D8E2BD8FE347FC8A167FF5FE9FFA2E4AF0CAD2B3B4EE79DC3F08CF2FE596CDB3
          EABD1758B1D7B4B8750D3E5124120FC50F7561D88AF20F8ADE16D56DB507D6FE
          D33DEE9D2363F78C49B524FDDC76427A11F43CE09E63C1DE33BEF08DF978819A
          CE53FBEB62D80DEE3D1BDEBE83D3B51D33C51A28B8B629736770851D1C03DB95
          61EBEA2B64D568D9EE78956856C9714AB457341FE5DBC9FE7F7A3E57A2BBAF1F
          FC3F9BC333B5FD82B4BA4C8DD7A9B724F0ADEA3D1BF03CE33C2D724A2E2ECCFB
          3C362696269AAB49DD3FEAC15D77C4EFF9287AA7FDB2FF00D149585A059FF68F
          88B4DB32BB84D731A30C762C33FA66B6FE263AC9F10F552A72018C7E222407F5
          14D7C0FD4C2524F1D08F684BF171FF00237A0F833ABCF6F1CCBA9D880EA18021
          F8C8CFA53FFE14A6B1FF00414B1FC9FF00C2BD8B49904DA3D8CAA080F6F1B0CF
          BA8AB95D7EC207C64B8831E9B5CCBEE4788FFC294D63FE82963F93FF0085749E
          07F86FA8785BC43FDA3737B6B347E4B47B63DD9C9C7A8F6AF4AA29AA304EE8C2
          B6778CAD4DD39C959F9211BEE9FA57CA1A6595E6A5A8C167A7A17BB94E235570
          A49C7A9200AFABDBEE9FA57CD3F0FDD63F1E68E58E079F8FC48207EB515D5DC5
          1E9F0ED474E8E226B7493FB948D1FF00857DE3BFF9F09FFF000323FF00E2E8FF
          00857DE3BFF9F09FFF000323FF00E2EBE86A29FB08F7673FFAC789FE487DCFFC
          CF9E7FE15F78EFFE7C27FF00C0C8FF00F8BAF64F02E9F7FA5783AC2CB538DA3B
          C8FCCF3159C39199188E4120F045745455C29283BA38B1D9B55C65354E718A49
          DF45FF0004F11F8D5FF23169DFF5E9FF00B39ACCF0F7C2FD4BC45A15B6AB6F7F
          691453EEDA9206DC36B15E703DAB47E353A9F12E9E99F9859E48F62EDFE06BD0
          7E17FF00C93BD2FF00EDB7FE8D7AC7954AAB4CF7658CAD83CA28D4A2ECDBB7E6
          701FF0A5358FFA0A58FE4FFE147FC294D63FE82963F93FF857B7515A7B081E4F
          FAC38FFE65F723C7F46F843AAE99AEE9F7F26A364E96D731CCCAA1B242B0240E
          3DABD828A2B48C1476383198EAD8C929567768F9ABE21FFC8FBABFFD751FFA08
          AFA4F911FCA0138E0138AF9ABC7EEB278F3586539027DBF88001FD457D236921
          9ACE095B1B9E35638F7158D1F8A47B59EAFF0065C2FF0087F489E0FE36F1F788
          EFEEAE7499E13A54484C72DB46C4BB71D19FB83ED8041EF5D07C32F015A4D0DB
          788EF6E22BA39DD6F0479223607ABFFB408E9D075E6BA7F881E048FC53682EEC
          C2C7AA40BF231E04CBFDC63FC8F6FC78F27F0678BEF7C17AC3C73C723593BECB
          BB661865238DC01E8C3D3BF43D8887EED4BCF5476D19AC5E5CE9E06D09AF892E
          BF3DF5EFF23E8FA2ABD8DEDB6A3650DE5A4CB35BCCA19245E84558AEB3E35A69
          D99F3D7C57FF0091FEEFFEB945FF00A00ABBA6FC22D5753D2ED2FE3D46CD23B9
          85265560D90194100F1EF543E2B3AB7C40BD00E4AC7103EC7603FD457B7F84FF
          00E44ED13FEBC20FFD16B5C918294E573EC7158EAF83CBF0F2A2ED74BA791E53
          FF000A5358FF00A0A58FE4FF00E147FC294D63FE82963F93FF00857B7515AFB0
          81E47FAC38FF00E65F723CB3C23F0BB52F0EF8A2CF55B8BFB4962837EE48F76E
          3B91978C8F7AF53A28AD2305156479D8BC655C5CD54ACEEED63E6AB0FF0092A1
          6BFF0061A4FF00D1C2BE95AF9AAC3FE4A85AFF00D8693FF470AFA56B1A1D4F6B
          88FE2A3FE1395F1D783A2F16E90235658AFADF2D6D2B74C9EAADEC703E8403EC
          7C5BC2FE21BFF037895FCE8E41187F26F6DBB900FE5B87241FA8CE0D7D275E67
          F14BC0EDAAC0DAEE9B183790478B8894732A0FE21EAC07E607B005D583F8E3B9
          9E4F8F824F0589D69CBF07FD7DCF53D0F4FD42D754B082FACA659ADE65DE8EBD
          C7F43D88EC6BC2FE2FFF00C8F1FF006EB1FF005A5F871E3B6F0F5DAE977EF9D2
          E77E1D8FFC7BB1FE2FF74F71F8FAE5FF001911478CADDD7FE5A58C6C4E7AFCEE
          3F90151526A74EE77E5B809E0734E496CD3B3EEBFCFB9EC5E14FF913B43FFB07
          C1FF00A2D6BC83E33FFC8E56BFF5E09FFA324AF5EF099CF83B44FF00AF083FF4
          5AD705F1A34679AC2C7588973F676304D819F95B9527D00208FAB0AD2AABD33C
          FCA6AC69E69EF757246EFC2696393C056CA806E8E69564E7BEECFF00222BB8AF
          17F837E224B6BDB9D0676C0B93E75B9FF6C0F987E2A01FF809F5AF68AAA4EF04
          71E73425471B514BABBAF98514515A1E605784FC68FF0091C6D7FEBC13FF0046
          495EED5E11F1998378CAD802095B040707A1DF25635FE03DEE1CFF007E5E8CF5
          7F037FC88FA37FD7AA57407A573BE037593C0BA3953902DC0FC4707F5154BE24
          7880683E11B808D8B9BC06DA2C1C11B81DCDEBC0CF3EA455A6942E79D3A12AD8
          C9528EEE4D7E278CF8F7C423C49E2BB9B989B75AC3FB8B73EA8A4FCDF8924FD0
          8AF44F0FFC49F09E83A0D969710BE2B6F1852C201F337566FBDDC927F1AE27E1
          EF8262F175DDDB5EC9345656EA0168480CCE7A004823A039FC3D6BD07FE14BF8
          73FE7F755FFBFB1FFF00115CF4D547EFAEA7D4663532D846383ACE56876F4EBE
          7FE64FFF000B87C31FDDBEFF00BF23FF008AAF2DF1FEB1A3EBFE201A9E93E72F
          9B1813ACB1ED3BC700F53D4607E1EF5E97FF000A5FC39FF3FBAAFF00DFD8FF00
          F88AADA87C18D2174EB86D3EF2FCDE08C9844D22142F8E01C20E0FD6AA71AB25
          667360B1594E16B2A94A524F6D7617E0E6BCB75A34FA2CAE7CEB4632440E3989
          8F38FA3673FEF0AF4EAF97FC2BAE4BE18F13DADF90C1237D93C78E4A1E1863D4
          751EE057D3D1C892C49246C191D432B03C107A1ABA12BC6DD8E0E20C1FB0C57B
          48FC33D7E7D7FCFE63A8A28AD8F0828A28A0028A28A00E7E6FF928767FF60A9F
          FF0046C55D0573F37FC943B3FF00B054FF00FA362AE8292EA6F5BE187A7EAC2B
          E78F8A1A23691E33B8995316F7DFE9119038DC7EF8FAEEC9FA30AFA1EB8AF899
          E1893C45E1BF32D63DF7D644CB12819675C7CC83DCE01F72A077ACEB479A27A1
          92631617169C9FBB2D1FF5EA7CF35DAFC28FF91FED3FEB94BFFA01AE2ABBBF84
          71ABF8EA36209296F230F63C0FEA6B929FC68FB8CD1FFB155FF0B3B8F8D1FF00
          22859FFD7FA7FE8B92BC32BDD3E340FF008A3ECCFF00D3FA7FE8B92BC2EAEBFC
          670F0E7FB8AF5615BDE14F15DFF84F54FB55A1F3217C09EDD9B0B2AFF423B1ED
          EE0907068AC5369DD1ECD5A50AD074EA2BA67D43A5EA9A578C7C3E67842CF697
          0A639A271CA9C728C3B1E7F911D8D789F8F7C0537852E05D5A979B4B95B6A3B7
          2D1B7F75BFA1AC7F0AF8A6FBC29AB2DDDA92F0B713DB96C2CABFD08EC7B7D320
          FBDDD788340D53C1EDA95C62E34DB94D8612B97763C79617FBF9E303BF39EF5D
          578D58EBBA3E4254B1192E253A5795393DBF4F5EDDCF25F847A49BFF0018FDB1
          95BCAB089A4CE320BB7CAA0FE058FF00C06B1FE217FC8FBABFFD761FFA08AF6C
          F03785A2F0D69531F20437179279B247BF79897F823DDFC5B413CFA935E4BE3A
          F0EEB777E36D527B6D1F509A179415923B576561B4742060D4CE0E34D23B3058
          F862334A952F68A8D95FD57EB73DCF41FF0091774CFF00AF48BFF4015A15F3BC
          571F11A085228A3F10A468A15544128000E83A5116A5F116E2149A16F1049148
          A191D2290AB03C82081C8AD1575D99E5CF209CA4E5ED63F79F44515F3D7DB3E2
          57F77C47FF007E25FF000AE87C0D73E3793C6360BAC0D6BEC07CCF37ED314823
          FF0056D8C9231D71F8D3559376B18D6C8E54A9CAA7B58BB26F73D72FC91A7DC9
          070444C411F435F357827FE477D1BFEBED3F9D7D2B7CA5EC2E55412C6260001C
          93835F3EF843C39AE5B78C3499EE345D462852E919E492D5D55467A924715359
          7BD13A7239C6386C4293B5D7E8CFA2A8A28AE83E6428A28A00F0AF8D1FF238DA
          7FD83D3FF46495E8BF0BBFE49DE97F597FF46BD711F16F45D5752F15DACD63A6
          5EDD44B628A5E0819D41DF21C640EBC8FCEB99B25F881A6DA25A595B6BF05BA6
          76C71DBCA1464E4F18F526B939B92A3763ECDE1A38CCAE9518CD26B5D5FAFF00
          99F46D15F3D7DB3E257F77C47FF7E25FF0A3ED9F12BFBBE23FFBF12FF8569EDD
          76679BFEAFCFFE7F43EF3E85A2BC134BBCF888756B31703C41E419D3CCDF0CA1
          76EE19CF1D315EF5DAB484F9BA1E6E3F00F0728A7352BF63E63F1B7FC8EFACFF
          00D7DBFF003AFA574FFF00906DAFFD714FE42BE7DF17F8735DB9F186AD3DBE8B
          A8CB0BDD3B2491DABB2B0CF5040E6BE83B152B616CAC0861128208E41C0ACA8A
          F7A47AF9E4E32C361D45DECBF444F5E69F12BE1FAEAD0CBADE9517FA7C6B99A1
          41FEB940392001CBFF003C7AD7A5D15B4A2A4ACCF0B098BA985AAAAD37AAFC7C
          8F9DBC05E39B8F0B5FADBDC3B3E93337EFA3C64C67FBEBFA67D47BE2BE83B5BA
          82F2DA3B9B6956586550C9221C8607B8AF26F89DE0048E39BC43A4438032F790
          20E31DE403F9FE7EB5A5F0934BF1158D8C935F398749954B416D28F9CB123E70
          3F8548CFD7AE3B9C69B9465C8CF77348617198758EA4D465B35DDFF9FE68F3FF
          0089FF00F251755FFB65FF00A292BDD7C27FF227689FF5E107FE8B5AF1BF88BE
          1FD6AFBC79A9DC5A6917F7103F95B658AD9DD5B1120382063A8354A097E225AD
          BC56F045E218E18902222C1280AA06001C7A54465C936EC7762308B1B80A108D
          48A714B77E47D13457CF5F6CF895FDDF11FF00DF897FC28FB67C4AFEEF88FF00
          EFC4BFE15A7B75D99E67FABF3FF9FD0FBCFA168AF14F085D78EDFC59A72EA835
          CFB1190F9BF688A4098C1EA48C75AF6BAD213E6573CBC7609E12A2839295D5F4
          3E63D0D8BFC41D359892C75588924F24F9A2BE9CAF9D744F0E6BB178E34EB893
          45D45214D4A27691AD5C28512024938C631DEBE8AACE82D19EBF11CE329D2E57
          7F7428A28ADCF9B3C23E27F828E8B7EDAC5844069D72FF00BC441C4321F6ECA7
          B7A1E38E2B85BDD46E7508ED12E642FF0065805BC44F242066207E1B881EC00A
          FAA6FAC6DB52B19ACEF2159ADE65292237423FA7D6BE7FD57E1B6B96FE279B4B
          D3ACA6B9B7FBF0DCB6026C3D37374047208EA71C0E457255A4D3BC7A9F6D92E6
          D4EAD3F6788694A1B37DBFCFF33DC3C25FF226E89FF5E107FE8B157B51B0B7D5
          34EB8B0BA4DD05C466371DF04751EFE951687652699E1FD3AC2664696DADA385
          CA1CA92AA01C67B7157EBA92D2C7C7D59FEFA538BEADAFBCF9A3C4FE17D4FC17
          AD286671107DF69769C6EC1C8208E8C38E3FA60D7A0F847E2EC33AA5A789310C
          A000B788BF2BFF00BEA3A1F71C7B0AF4CD474DB3D5AC64B3BFB749EDE4186471
          FA8F43EE39AF2DF107C190CED3E8178A80927ECD744E07B2B819F6C11F8D73BA
          7283BC0FA3866583CC292A58F5692DA4BFAD3F23D56D6F2DAFA059ED2E22B885
          BEEC9138753F88A9EBE6C93C31E32F0DDC178AC752B77C1CCB6659863DDA3271
          F8D491FC45F18D9AF93FDAF3023B4B0A337E6CA4D3F6F6F89193E1D7535C3558
          C97F5DAE7D1F5E03F17FFE4783FF005EB1FF005AED7E16789F5BF12CBAA1D5AF
          FED096EB108D7C944C16DD939503FBB5CCFC53D0F57D43C6267B2D2AFAE61FB3
          46BE6436EEEB9E78C81455973D3BA2B28A0F05993A555ABA5F2D6CFAD8F47F87
          7FF220691FF5C9BFF436AF20F899E223AF78AE48617DD69639822C1E19B3F3B7
          E278F70A2BD53C3F0EB1A7FC2DB786CACDC6AC96CCB14330F2D95CB1C121BD33
          9C1EB5E5BF0F7C2F737DE39862BEB59614D3C8B89D2442A411F70104776C1C77
          00D2A97718C17535CB7D8D2C46231936BDC6ECBE7BFE8BD4F64F04F87D7C37E1
          6B4B264DB70C3CDB83EB230191F870BFF01AE868A2BA12B2B23E62AD59559BA9
          3DDBB8514514CCCF9F3E2A682BA3F8B9EE61522DF50537038E0499F9C7E786FF
          008157A37C27D7BFB57C282C6572D73A71111CF398CE4A1FC815FF0080D5AF89
          BE1FFEDCF08CF2C51EEBBB2FDFC58EA40FBE3F15C9C7720579F7C28D3B5F87C4
          31EA36D6720D324431DC4B27CAACA7A15CFDE2180E9EE38CD7359C2AE9D4FAC7
          569E3B28FDE492953EFE5B7DEB4F53DD28A28AE93E4C28A28A0028A28A00E7E6
          FF00928767FF0060A9FF00F46C55D0573F37FC943B3FFB054FFF00A362AE8292
          EA6F5BE187A7EAC28A28A660792FC49F874D3BBEB5A15AB34CC4B5DDBC7CEEEF
          BD47AFA81D7AE3AE7C7ABEBBAE4FC49F0F342F11969A480DADD9C9FB45B00A58
          FF00B43A373F8FBD73D4A177789F5195F107B082A389574B67D57AF73E70A2BB
          FD57E11788ACA56FB0F91A843FC2C8E237C7BAB1C0FC09AE667F09788ED99D65
          D0F511B3EF32DB3B28FC40C57338496E8FAAA398616B2BD3A89FCFF431A8AD8B
          7F0A7886E99043A1EA0C1FEEB1B670BF9918AE9F49F843E22BD957EDFE469F0F
          F133B891F1ECAA707F12285093D90EB66185A2AF52A25F3D7EEDCE0554B30550
          4B1380077AF4FF0005785755B097CD9CBC5AA5BB2DEDAE95743114E9B705B39C
          07F9B00E3287191CD7A1786BC01A1F8676CB6F01B8BC1FF2F3718671FEEF65EF
          D39F526B6B55D2A1D56D9519DE19A33BE0B888E1E17FEF29FD08E84641AE8850
          B6ACF96CC388235FF75495A2F76FFCBB7E3E81A46AD6DAC59F9F06E4656292C3
          20DB242E3AA30EC47FF5C706AFD718AB7F25FBED115AF892DD433E3E58752887
          009FE5DCA13DC1E7A3D27568756B56923578A68DBCB9E09061E171D5587F5E84
          608ADD33E76B51E5F7A3B7E5FF0003B3FD4BE7A1AC8F09FF00C89DA27FD7841F
          FA2D6B5CF43591E13FF913B43FFAF083FF0045AD3EA4C7F832F55F933628A28A
          66250D6B568342D1EE753B9491E1B750CCB10058E481C6481DFD6B8B8FE31F87
          59E3DF67A9C51BB63CC785368F53C393C7B66B6FE22FFC881ABFFD725FFD0D6B
          CB2EAF7C4B3FC2FB4B1FEC451A381B8DEA90EC555F39DA0E579EE7B563526D3B
          23DDCB30342BD1E6A8B572E5F8AD656E9DDF91EEF6F3C5756D15C4122C90CA81
          D1D4E432919047E15256178327B19FC21A59D3A5792D92058D5A45DAD95E0EE1
          CE0E41EE7DB35BB5AA77573C6AB0E4A928766D0515E4FE33D50DA6BD7C63F1F4
          B632A0062B08EDDDD54851F2B32703273D41201E6BB0F87FE20B9F1278521BCB
          DC1BA47686570301C8FE2C0E9C119F7CF4A9534E5CA75D6CBEA53C3AC45EE9DB
          A35BABF54AFF002B9D4514579A788EFF00C4579F11D3C3DA56AE6C60B8B40CCC
          5036C1C9665E33BB03D47D45394B94C70D86788938A695936DBECBD2E7A5D15E
          69A0EA3AFF0087FE21C7E17D5B526D4EDEEE132C334830CB85639EE7F8186327
          B1AF4BA232E60C4E19D092574D3574D754C28AE3BE22F8B2E3C2DA1C6D64AA6F
          6E9CC71330C840064B63B9E981EFDF18AA5A6785FC650DD595F5DF8B6477322B
          5D5A98F2813AB2A9E467B7DD1FA5273D6C91A43077A2AB549A8A77B5EFADB7D9
          33BEA28AE67C79E2693C2DE1992F6040D73248B0C1B86543104E4FD0293F5C55
          3692BB39A8D29D6A8A9C377A1D3515E49A95AF8DFC3DE1D4F134BE2592699364
          93D93C79450C40C7A1C646700639C1E2BD3745D49758D12CB5154D82E6159766
          73B491C8CF7C1E2A632BBB58E8C460DD182A9192946ED5D5F75D3548BD451455
          9C614515C078FF00C4FAA5A6A9A6F87342758B50BF20B4EC3EE296DA31C1C721
          B271C01C52949455D9BE1B0F3C45454E1F8EC92DD9BDE22F14C7E1FD4F45B06B
          569E4D52E042AC1F688FE64524F073F7C71ED5D0D78BEBFA26B1A378BFC20BAA
          6BB26AAB2DF298CC8854C64491EE1D4E41CAFE5D2BDA2A6126DBB9D38CC352A3
          4A94A9BBF32776AFAEB6EA14561F8BB5EFF846BC3577A9AC624963016246E85D
          8E067DB9C9FA57987F6A6B8BA18D7FFE13FB36D43609FF00B33CD8F18EBB719C
          6EC7F0EDEBC75A25351760C2E5D3C4439EE92BD95EFABF927F7BD0F6BA2B23C2
          DAD7FC243E1AB1D50A0469D0EF51D030255B1ED90715AF549DD5CE2A909539B8
          4B75A0514514C830BC51E2BD3BC27629737E5D9A56DB1431005DCF7C6481819E
          4D667873E20D9F88B57FECC5D36FAD6E0C4651E720DBB78E4F391D4638C553F8
          97E19D4F5BB7D3B50D202C975A6C8CE212065C1DA7233C120A0E0F5CFE064F08
          F8F6DF5EBF1A66A564D61AE46ACA6374C06EEC173C83C64A9F4EA7159393E7B3
          3D6861A93C17B58479A5ADF5F87B69D55BA9DC514561F8BE5F27C3772DFDB234
          8395FF004BDBB8A8C8C803A9246700735A376573CCA70E79A877FEBA6A6E515E
          37E1DF16DDD9F8CF4ED3E1F13C9AF69F78DE5CBE6DBB46D1B1C818DFCF5C1E0F
          3CF1D2BD929426A5B1D38CC14F092519F5575BAFC1A4C28C0AC5F16DDCF61E13
          D52EED65314F15BB3238EAA477AF3948BC6B7BE0C1E2A5F14481A284CAB6A918
          0A634EA58F42DC13820E7D7D14A7676B1586C0BAF0E7735157E5D6FBFC933D83
          14561F83F5A97C43E14B0D52740934C84385E85958A923EA573F8D6E55277573
          92A539539B84B74EDF70526D018B60648C6715E476775E29F19C9AD6A769E22F
          ECC82C646582D538180091BC8230381F31CF7E30315D17C29D4AF757F0DDD5DD
          FDF5CDD4DF6C743E73060BF2AB7CBC640F9BA67031C62A2352EED63BEBE5B2A3
          4A53734DC6C9A57D2FAF6B1DDD1457966A575E27D67E276A7E1ED335B92C6CE3
          892466081BCB5D919257A1C9661DC7535529729CD85C33C4392E65151576DDF6
          D3B5FB9EA74566681A75E697A4C76B7DA8CBA85C2B316B89060B649C71938E31
          DCD691E0552309A519349DD7714804608C8A40001800002BC760F11EA3E31BEB
          CBA6F185B7876C227296D0348AAEE3D48DC0F4C7392339C5757F0E3C4B7DADC1
          A969FA8CF15D5CE9B284FB5C441599096C1E383F74F3C6411DF24E71A89BB1E8
          57CAEAD0A6E726AF1B5D6BA5FE567E766771451456879A145145001451450073
          F37FC943B3FF00B054FF00FA362AE82B96D4F50B2D37C7B6535FDE5BDAC4DA64
          C81E7942296F36238C93D783F9568FFC259E1CFF00A0FE97FF008191FF008D4A
          69367554A539460E316F4FD59B14563FFC259E1CFF00A0FE95FF008191FF008D
          1FF0967873FE83FA5FFE0647FE34F99197B0ABFCAFEE3628AC7FF84B3C39FF00
          41FD2BFF000323FF001A3FE12CF0E7FD07F4AFFC0C8FFC68E641EC2AFF002BFB
          8D8A2B1FFE12CF0E7FD07F4BFF00C0C8FF00C68FF84B3C39FF0041FD2BFF0003
          23FF001A39907B0ABFCAFEE3628AC7FF0084B3C39FF41FD2FF00F0323FF1A3FE
          12CF0E7FD07F4AFF00C0C8FF00C68E641EC2AFF2BFB8D8A2B1FF00E12CF0E7FD
          07F4BFFC0C8FFC68FF0084B3C39FF41FD2BFF0323FF1A39907B0ABFCAFEE27D6
          7488B57B311991A1B88CF996F729F7E1907461FD4771915CF62EF50BC0730D87
          8AEC5318C9F26F21CFE6D193FF000246FF00C7B6BFE12CF0E7FD07F4AFFC0C8F
          FC6B3759D4FC2FABC11FFC547A6DBDDC0DE65B5D47791EF85FD473C83D0A9E08
          E0D4BB1D341558FBB28BB7A6DFE69F546C693ABC7AA5B3E636B7BB88ECB9B590
          8DF0BFA1C763D41E84608A87C27FF227687FF5E107FE8B5AE6ECB508FC4570D2
          E9F7B651F8A34F4DAED049BE0BA8B3D0919CC67FEFA463FF007D755E1EB59AC7
          C35A5DA5C26C9E0B48A291320ED654008C8E0F2284EEC55E9AA5071D9B6B4F93
          FBD6BA334A8A28AB388E7FC6F6373A9783752B3B385A6B896301235EAC77035C
          15BFFC2709E0C8FC316DE18F2C342F03DCC932F28D9CF19001C123A9AF5DA2A2
          50BBBDCEFC3E39D1A7ECF91495F995EFBEDD1A303C1BA049E1AF0C5AE9B34AB2
          CC9B9E465FBBB98E481EC338CF7C678E95BE68A2A92B2B2392AD49559BA93DDB
          BB3C8F48B7F15784EFB58B1B5F0D7DBEE6F66668751DE00C1CE0B139C8EF8247
          24D747F0B74ED4B48F0EDD586A7652DB4B15DB15DE061D4AAF239E79079E9D2B
          B9A2A234ECEF73B71198CABD3941C1272B5DEB7BAF9D82B859B46D45BE2F5B6A
          E2D5CD82D998CCF9180DB5863D7B8AEEA8AB6AE7251AF2A3CDCBD535F79C36A7
          A36A337C5ED1B578ED5DAC20B368E49C11856DB2F1EBFC4BF9D7734514256B8E
          B579555152FB2ADF9FF99C67C48F0ADD789F4487FB3C837B6927991A16DBBC11
          8201E80F4209F4F7AA7A6F8A7C69757365673F849A1612A8BAB977C214CE18A8
          3800E391F31AEFE8A970D6E99B431B6A2A8CE0A495ED7BE97DF66BF1015CC78F
          7C35278A3C31259DBB0175148278031C066008C1FA8247D715D3D154D26ACCE7
          A356546A46A4375A9E49A9DD78E3C47E1E8FC36FE1B7B791F625C5E492615C29
          073E839009C139E702BD3746D39748D16CB4E46DE2DA158B77F7881C9FC4F357
          A8A98C6CEF737C4633DB41538C54629B7657DDF5D5B0A28A2ACE30AF3BF883E1
          CD626D6B4CF13683109EF2C4057873C95562C081C6472C08073C8C57A2515328
          F32B1D185C4CB0F51548ABF93D9A7BA3C9B51FF84A7C57E23F0DDEDC78626B0B
          7D3EED59D9A40C482E858907040017D3D6BD668A288C6D765E2715EDE318A8A8
          A8DEC95FABBF56CC1F18E82FE24F0C5DE99148B1CCE15A267CE03290467D8E31
          ED9AF3BD3E2D5ECAC20D326F86563737B1288BED6F147B5F1C02C76904E3A9DD
          D79AF62A294A177734C3E3E5469BA4E2A4AF7EAACFE4D7DC41676B6F65691DBD
          ADB456D0AFDD86240AAB93938038EA4D4F4515670B6DBBB0A28A2811CCF8BF53
          F11E96B653683A5ADFA6F6FB521EA178C00339E727919C62B95D2748D7FC4BF1
          06D7C4BAA692349B5B44DAB1B37CF2101B19EE4E5BAE00C0C57A85150E17776C
          EEA38DF6349C2105769AE6D6F67BF5B7E015C2FC4BD0F51D5AC34EB8D3ED45EF
          D8AE7CD96D0F4957E9DFA631D7E635DD515525CCAC6186AF2C3D55563BA3C8F5
          17F15EB9E24F0F6A92785E6B2B1B0B95510AB0771961B891F29030A3190071D7
          9AF5CA28A518D8D3138AF6EA31515151D15AFDEFD5B317C5B693DFF84F54B4B5
          88CB3CB6ECA883AB13DAB1B4CD26FE1F84CFA5496CCB7C74F9E2109233B98360
          7A7715D9D1438DDDC9A78A9429AA6968A4A5F34735F0FF004EBBD2BC11A7595F
          40D05CC5E66F8DB19199188E9EC4574B4514D2B2B1956AAEAD495496F26DFDE7
          836B1E11D6352F14EB93AE8B3DCA4978E15AD2EA28D42E49F9861B92361E7073
          D464F1E89F0CF59B1D47C3EF6765A6FD80D8BF97245BF7E49E776E2064920FE5
          556FBE14699757F73776FAA6A56CD72E5E5559430624E4F2464F39EA4D74FE1D
          F0D69DE17D38D9E9C8E159B7C9248DB9E46E9927FA0005650838CAE7B58FC7D0
          AF8554EF76AD6D1AB596B7BB6BD2C6C570DA5E8DA8C1F17B59D5E4B575B09ECD
          638E724619B1171EBFC2DF95773456AD5EC78F46BCA92925F695BF27FA0521E9
          4B453313C66CFC3FA9F83AF6F2CA6F06DB788ECDE4DF6F706256703DC956238C
          7CB81CE719AF46F085B18F49FB44DA05A68D77331F321B78D172A09D99DBD4E0
          F7EF9E066BA0A2A23051D8EFC56613C4C6D38ABF5777ADBCAF6FC028A28AB380
          28A28A0028A28A008A5B682720CB0C7211D37A838A67F67D97FCFA41FF007EC5
          58A281F335D4AFFD9F65FF003E907FDFB147F67D97FCFA41FF007EC558A281F3
          4BB95FFB3ECBFE7D20FF00BF628FECFB2FF9F483FEFD8AB14501CD2EE57FECFB
          2FF9F483FEFD8A3FB3ECBFE7D20FFBF62AC5140734BB95FF00B3ECBFE7D20FFB
          F628FECFB2FF009F483FEFD8AB14501CD2EE57FECFB2FF009F483FEFD8A3FB3E
          CBFE7D20FF00BF62AC5140734BB95FFB3ECBFE7D20FF00BF628FECFB2FF9F483
          FEFD8AB14501CD2EE431DA5B44E1E3B78918775400D4D451409B6F70A28A2810
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          51451400514514005145140051451400514514005145140051451401FFD9}
        mmHeight = 10054
        mmLeft = 11642
        mmTop = 0
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pruebas Realizadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 22945
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 5556
        mmLeft = 1588
        mmTop = 20638
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 3175
        mmTop = 23019
        mmWidth = 8297
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Resultado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 41010
        mmTop = 22754
        mmWidth = 11769
        BandType = 0
      end
      object ppVariable1: TppVariable
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
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 15081
        mmWidth = 41010
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DESCRIPCION'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 529
        mmWidth = 20320
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RESULTADO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2921
        mmLeft = 41010
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1058
        mmTop = 529
        mmWidth = 48683
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cruce Mayor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 529
        mmTop = 1058
        mmWidth = 23283
        BandType = 7
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Visible = False
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 6350
        mmWidth = 3175
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Compatible'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 6350
        mmWidth = 14023
        BandType = 7
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Incompatible'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 10848
        mmWidth = 15875
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No cruzado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 14817
        mmWidth = 14552
        BandType = 7
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Visible = False
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 10848
        mmWidth = 3175
        BandType = 7
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Visible = False
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 15081
        mmWidth = 3175
        BandType = 7
      end
    end
  end
  object Reporte_cruce: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 63500
    PrinterSetup.mmPaperWidth = 63500
    PrinterSetup.PaperSize = 256
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
    Left = 448
    Top = 184
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
end
