inherited frmDialogConsultaCliente2: TfrmDialogConsultaCliente2
  Caption = 'Consulta de Clientes'
  ClientHeight = 445
  ClientWidth = 723
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 731
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 723
    Height = 445
    ExplicitWidth = 723
    ExplicitHeight = 445
    inherited edbuscarpor: TcxComboBox
      Left = 283
      Properties.Items.Strings = (
        'Cliente'
        'Nombre'
        'Telefono')
      Properties.ReadOnly = True
      TabOrder = 1
      Text = 'Nombre'
      OnExit = edtipoclienteExit
      ExplicitLeft = 283
      ExplicitWidth = 85
      Width = 85
    end
    inherited edbuscar: TcxTextEdit
      Left = 406
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 2
      OnExit = edtipoclienteExit
      ExplicitLeft = 406
      ExplicitWidth = 250
      Width = 250
    end
    inherited cgDatos: TcxGrid
      TabOrder = 3
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
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
      Left = 637
      Top = 409
      TabOrder = 5
      ExplicitLeft = 637
      ExplicitTop = 409
    end
    inherited btaceptar: TcxButton
      Left = 556
      Top = 409
      TabOrder = 4
      ExplicitLeft = 556
      ExplicitTop = 409
    end
    object edtipocliente: TcxComboBox [5]
      Left = 99
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'SEGUROS')
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Text = 'SEGUROS'
      OnExit = edtipoclienteExit
      Width = 121
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item7: TdxLayoutItem [0]
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
