inherited frmDialogConsultaPaciente: TfrmDialogConsultaPaciente
  Caption = 'Consulta de Pacientes'
  ClientHeight = 443
  ClientWidth = 643
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 651
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 643
    Height = 443
    ExplicitWidth = 643
    ExplicitHeight = 443
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
      Left = 557
      Top = 407
      ExplicitLeft = 557
      ExplicitTop = 407
    end
    inherited btaceptar: TcxButton
      Left = 476
      Top = 407
      OnClick = btaceptarClick
      ExplicitLeft = 476
      ExplicitTop = 407
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrPacientes
  end
end
