inherited frmDialogConsultaCliente: TfrmDialogConsultaCliente
  Caption = 'Consulta de Clientes'
  ClientHeight = 443
  ClientWidth = 721
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 729
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 721
    Height = 443
    ExplicitWidth = 721
    ExplicitHeight = 443
    inherited edbuscarpor: TcxComboBox
      Left = 283
      Properties.Items.Strings = (
        'Cliente'
        'Nombre'
        'Telefono')
      TabOrder = 1
      ExplicitLeft = 283
      ExplicitWidth = 85
      Width = 85
    end
    inherited edbuscar: TcxTextEdit
      Left = 406
      RepositoryItem = DM.cxTextEdit
      Properties.OnChange = edbuscarPropertiesChange
      TabOrder = 2
      ExplicitLeft = 406
      ExplicitWidth = 250
      Width = 250
    end
    inherited cgDatos: TcxGrid
      Width = 629
      Height = 234
      TabOrder = 3
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 629
      ExplicitHeight = 234
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'ClienteID'
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'ClienteID'
        end
        object dbDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
        end
        object dbDatosTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono'
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 635
      Top = 407
      TabOrder = 5
      ExplicitLeft = 635
      ExplicitTop = 407
    end
    inherited btaceptar: TcxButton
      Left = 554
      Top = 407
      TabOrder = 4
      ExplicitLeft = 554
      ExplicitTop = 407
    end
    object edtipocliente: TcxExtLookupComboBox [5]
      Left = 99
      Top = 36
      RepositoryItem = DM.elcGrupoCliente
      Properties.OnChange = edtipoclientePropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item3: TdxLayoutItem [0]
          Caption = 'Tipo de Cliente'
          Control = edtipocliente
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrClientes
  end
end
