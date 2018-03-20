inherited frmDialogConsultaEntradas: TfrmDialogConsultaEntradas
  Caption = 'Consulta de Entradas'
  ClientHeight = 551
  ClientWidth = 956
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 972
  ExplicitHeight = 589
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 956
    Height = 551
    ExplicitWidth = 956
    ExplicitHeight = 551
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Registro No.'
        'Paciente'
        'Nombre del Paciente'
        'Cliente'
        'Nombre del Cliente'
        'Telefono'
        'Num. Autorizaci'#243'n')
    end
    inherited edbuscar: TcxTextEdit
      Properties.OnChange = edbuscarPropertiesChange
    end
    inherited cgDatos: TcxGrid
      Width = 936
      Height = 441
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 936
      ExplicitHeight = 441
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'ENTRADAID'
        object dbDatosEntradaID: TcxGridDBColumn
          Caption = 'Registro No.'
          DataBinding.FieldName = 'ENTRADAID'
          Width = 80
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 80
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'Paciente'
          DataBinding.FieldName = 'PacienteID'
          Width = 80
        end
        object dbDatosNombrePaciente: TcxGridDBColumn
          Caption = 'Nombre Paciente'
          DataBinding.FieldName = 'NombrePaciente'
          Width = 175
        end
        object dbDatosTelefonos: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'Telefonos'
          Width = 100
        end
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'ClienteID'
          Width = 80
        end
        object dbDatosClienteNombre: TcxGridDBColumn
          Caption = 'Nombre Cliente'
          DataBinding.FieldName = 'ClienteNombre'
          Width = 175
        end
        object dbDatosMonedaID: TcxGridDBColumn
          Caption = 'Moneda'
          DataBinding.FieldName = 'MonedaID'
          Width = 48
        end
        object dbDatosNeto: TcxGridDBColumn
          DataBinding.FieldName = 'Neto'
          Width = 85
        end
        object dbDatosTotalPagado: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'TotalPagado'
          Width = 85
        end
        object dbDatosTotalPendiente: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'TotalPendiente'
          Width = 85
        end
        object dbDatosHold: TcxGridDBColumn
          DataBinding.FieldName = 'Hold'
          Visible = False
          Width = 50
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 870
      Top = 515
      ExplicitLeft = 870
      ExplicitTop = 515
    end
    inherited btaceptar: TcxButton
      Left = 789
      Top = 515
      ExplicitLeft = 789
      ExplicitTop = 515
    end
    inherited pnCaption: TPanel
      Width = 968
      ExplicitWidth = 968
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrEntradaPacienteCons
  end
end
