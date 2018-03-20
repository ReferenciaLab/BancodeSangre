inherited frmDialogConsultaCombos: TfrmDialogConsultaCombos
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
          Caption = 'Prueba'
          DataBinding.FieldName = 'PruebaID'
        end
        object dbDatosDescripcion: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'Descripcion'
        end
        object dbDatosPrecio: TcxGridDBColumn
          Caption = 'Precio RD$'
          DataBinding.FieldName = 'Precio'
        end
        object dbDatosColumn1: TcxGridDBColumn
          Caption = 'Precio US$'
          DataBinding.FieldName = 'PrecioDolares'
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrPruebas
  end
end
