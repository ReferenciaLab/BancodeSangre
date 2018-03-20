inherited frmDialogConsultaDoctor: TfrmDialogConsultaDoctor
  Caption = 'Consulta de Doctores'
  ClientHeight = 445
  ClientWidth = 645
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitLeft = -104
  ExplicitWidth = 653
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 645
    Height = 445
    ExplicitWidth = 645
    ExplicitHeight = 445
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Doctor'
        'Nombre'
        'Telefono')
    end
    inherited edbuscar: TcxTextEdit
      Properties.OnChange = edbuscarPropertiesChange
    end
    inherited cgDatos: TcxGrid
      Width = 623
      Height = 333
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 623
      ExplicitHeight = 333
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'DoctorID'
        object dbDatosDoctorID: TcxGridDBColumn
          DataBinding.FieldName = 'DoctorID'
        end
        object dbDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
        end
        object dbDatosContacto: TcxGridDBColumn
          DataBinding.FieldName = 'Contacto'
        end
        object dbDatosTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono'
        end
        object dbDatosFax: TcxGridDBColumn
          DataBinding.FieldName = 'Fax'
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 559
      Top = 409
      ExplicitLeft = 559
      ExplicitTop = 409
    end
    inherited btaceptar: TcxButton
      Left = 478
      Top = 409
      ExplicitLeft = 478
      ExplicitTop = 409
    end
  end
  inherited dsDatos: TDataSource
    DataSet = dmDoctor.Tabla
  end
end
