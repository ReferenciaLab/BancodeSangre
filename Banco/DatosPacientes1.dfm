inherited frmDialogConsultaPaciente1: TfrmDialogConsultaPaciente1
  Caption = 'Consulta de Pacientes Receptor'
  ClientHeight = 445
  ClientWidth = 645
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
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
        'Paciente'
        'Nombre'
        'Cedula'
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
        DataController.KeyFieldNames = 'ClienteID'
        object dbDatosPacienteID: TcxGridDBColumn
          DataBinding.FieldName = 'ClienteID'
          Width = 64
        end
        object dbDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 377
        end
        object dbDatosIdentificacion: TcxGridDBColumn
          Caption = 'Cedula'
          DataBinding.FieldName = 'Identificacion'
          Width = 96
        end
        object dbDatosTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono'
          Width = 78
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
      OnClick = btaceptarClick
      ExplicitLeft = 478
      ExplicitTop = 409
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrPacientes
  end
end
