inherited frmBancoDespacho: TfrmBancoDespacho
  Caption = 'Banco de Sangre'
  ClientHeight = 593
  ClientWidth = 1010
  ExplicitWidth = 1018
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 1010
    ExplicitWidth = 1012
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 33
    Width = 1010
    Height = 560
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    ExplicitWidth = 1012
    ExplicitHeight = 562
    object TdxLayoutControl
      Left = 3
      Top = 6
      Width = 956
      Height = 540
      Align = alClient
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dmAppActions.lnfWeb
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 71
        Top = 176
        DataBinding.DataField = 'ProductoID'
        DataBinding.DataSource = dsDatos
        Properties.OnChange = ActDetallesExecute
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object cxButton1: TcxButton
        Left = 11
        Top = 210
        Width = 75
        Height = 25
        Caption = 'Despachar'
        TabOrder = 5
      end
      object cxGrid3: TcxGrid
        Left = 11
        Top = 11
        Width = 206
        Height = 131
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
        Width = 713
        Height = 134
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
          object dbDatosCodigoId: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CodigoId'
            Width = 156
          end
          object dbDatosCantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            Width = 93
          end
          object dbDatosFecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 96
          end
          object dbDatosHora: TcxGridDBColumn
            DataBinding.FieldName = 'Hora'
            Width = 92
          end
          object dbDatosDonacionId: TcxGridDBColumn
            Caption = 'Origen'
            DataBinding.FieldName = 'DonacionId'
            Width = 156
          end
          object dbDatosReservado: TcxGridDBColumn
            DataBinding.FieldName = 'Reservado'
            Width = 106
          end
        end
        object lvDatos: TcxGridLevel
          GridView = dbDatos
        end
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 259
        Top = 176
        DataBinding.DataField = 'ProductoDes'
        DataBinding.DataSource = dsDatos
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 3
        Width = 174
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 475
        Top = 176
        DataBinding.DataField = 'NombrePaciente'
        DataBinding.DataSource = dsDetalles
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Width = 179
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object Group1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object Item4: TdxLayoutItem
            Control = cxGrid3
            ControlOptions.ShowBorder = False
          end
          object Item3: TdxLayoutItem
            Control = cgDatos
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Caption = 'Datos Generales'
          LayoutDirection = ldHorizontal
          object dxLayoutItem1: TdxLayoutItem
            Caption = 'Producto'
            Control = cxDBTextEdit4
            ControlOptions.ShowBorder = False
          end
          object Item2: TdxLayoutItem
            Caption = 'Descripcion'
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
          end
          object Item5: TdxLayoutItem
            Caption = 'Origen'
            Control = cxDBTextEdit2
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutGroup4: TdxLayoutGroup
          Caption = 'Crear producto de inventario'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object Item1: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
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
      'Where EntredaID = :rec')
    Left = 32
    Top = 160
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
    Left = 104
    Top = 160
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
  object qrTipoDonacion: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSTipoFunda')
    Left = 336
    Top = 336
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
    Top = 336
  end
  object qrProductos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSProductos')
    Left = 176
    Top = 488
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
    Left = 224
    Top = 488
  end
  object qrProcesos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSProcesos')
    Left = 224
    Top = 488
    object qrProcesosProcesoId: TWideStringField
      FieldName = 'ProcesoId'
      FixedChar = True
      Size = 10
    end
    object qrProcesosProcesoDes: TStringField
      FieldName = 'ProcesoDes'
      Size = 50
    end
  end
  object dsProcesos: TDataSource
    AutoEdit = False
    DataSet = qrProcesos
    Left = 264
    Top = 488
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
        'le, dbo.PTEntradaPaciente.PacienteID, '
      '                      dbo.PTEntradaPaciente.NombrePaciente'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.PTEntradaPaciente ON dbo.BSInventario.' +
        'DonacionId = dbo.PTEntradaPaciente.EntredaID'
      'WHERE     (ProductoID = :ProductoId)'
      'ORDER BY dbo.BSInventario.Fecha, dbo.BSInventario.Hora')
    Left = 112
    Top = 3
    object qrDetallesProductoID: TWideStringField
      FieldName = 'ProductoID'
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
    object qrDetallesHora: TDateTimeField
      FieldName = 'Hora'
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
  end
  object dsDetalles: TDataSource
    DataSet = qrDetalles
    Left = 144
  end
end
