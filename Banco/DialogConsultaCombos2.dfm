inherited frmDialogConsultaCombos2: TfrmDialogConsultaCombos2
  Caption = 'Consulta de Combos'
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Prueba'
        'Descripcion')
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
    end
    inherited cgDatos: TcxGrid
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'PruebaID'
        object dbDatosPruebaID: TcxGridDBColumn
          Caption = 'Combo'
          DataBinding.FieldName = 'PruebaID'
          Options.Editing = False
          Width = 125
        end
        object dbDatosDescripcion: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 300
        end
        object dbDatosPlanId: TcxGridDBColumn
          Caption = 'Plan Id'
          DataBinding.FieldName = 'PlanId'
          Options.Editing = False
          Width = 125
        end
        object dbDatosCodigoId: TcxGridDBColumn
          Caption = 'Numero'
          DataBinding.FieldName = 'CodigoId'
          Options.Editing = False
          Width = 125
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrPruebas
    Left = 196
    Top = 309
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTPrueba, PTPlanesCombos '
      'WHERE PTPlanesCombos.PruebaId = PTPrueba.PruebaId')
    Left = 144
    Top = 308
    object qrPruebasPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrPruebasAlias: TStringField
      FieldName = 'Alias'
      Size = 80
    end
    object qrPruebasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrPruebasEstatus: TIntegerField
      FieldName = 'Estatus'
    end
    object qrPruebasGrupoPruebaID: TStringField
      FieldName = 'GrupoPruebaID'
      Size = 10
    end
    object qrPruebasDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 10
    end
    object qrPruebasPrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrPruebasPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object qrPruebasCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrPruebasPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrPruebasCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object qrPruebasExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrPruebasFacturarCabecera: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object qrPruebasPruebas: TIntegerField
      FieldName = 'Pruebas'
    end
    object qrPruebasTipo: TStringField
      FieldName = 'Tipo'
      Size = 5
    end
    object qrPruebasPlanId: TStringField
      FieldName = 'PlanId'
      Size = 10
    end
    object qrPruebasCodigoId: TStringField
      FieldName = 'CodigoId'
      Size = 10
    end
    object qrPruebasPruebaID_1: TStringField
      FieldName = 'PruebaID_1'
    end
    object qrPruebasClienteID: TStringField
      FieldName = 'ClienteID'
    end
    object qrPruebasDescripcion_1: TStringField
      FieldName = 'Descripcion_1'
      Size = 80
    end
    object qrPruebasNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 80
    end
    object qrPruebasEstatus_1: TBooleanField
      FieldName = 'Estatus_1'
    end
    object qrPruebasLinea: TIntegerField
      FieldName = 'Linea'
    end
  end
end
