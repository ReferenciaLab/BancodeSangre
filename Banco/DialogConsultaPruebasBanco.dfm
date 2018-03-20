inherited frmDialogConsultaPruebasBanco: TfrmDialogConsultaPruebasBanco
  Caption = 'Consulta de Pruebas Para el banco de sangre'
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 657
  ExplicitHeight = 378
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Prueba'
        'Descripcion')
    end
    inherited edbuscar: TcxTextEdit
      Properties.OnChange = edbuscarPropertiesChange
    end
    inherited cgDatos: TcxGrid
      Width = 637
      Height = 200
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 637
      ExplicitHeight = 200
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'PruebaID'
        object dbDatosPRUEBAID: TcxGridDBColumn
          Caption = 'PRUEBA'
          DataBinding.FieldName = 'PRUEBAID'
        end
        object dbDatosDESCRIPCION: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIPCION'
        end
        object dbDatosPRECIO: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO'
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrPruebas
  end
end
