inherited frmDialogConsultaEmpresas: TfrmDialogConsultaEmpresas
  Caption = 'Lista de Empresas'
  OnCreate = FormCreate
  ExplicitWidth = 657
  ExplicitHeight = 378
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Nombre'
        'RNC'
        'Telefono')
    end
    inherited cgDatos: TcxGrid
      Width = 637
      Height = 200
      ExplicitWidth = 637
      ExplicitHeight = 200
      inherited dbDatos: TcxGridDBTableView
        object dbDatosEmpresaId: TcxGridDBColumn
          DataBinding.FieldName = 'EmpresaId'
          Visible = False
        end
        object dbDatosCodigo: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
        end
        object dbDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
        end
        object dbDatosRNC: TcxGridDBColumn
          DataBinding.FieldName = 'RNC'
        end
        object dbDatosTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono'
        end
        object dbDatosTelefono1: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono1'
        end
        object dbDatosFAX: TcxGridDBColumn
          DataBinding.FieldName = 'FAX'
        end
        object dbDatosNCFTipo: TcxGridDBColumn
          DataBinding.FieldName = 'NCFTipo'
          Visible = False
        end
      end
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        Visible = False
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrEmpresas
  end
end
