inherited frmDatosEmpresas: TfrmDatosEmpresas
  Caption = 'Personas Juridicas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 584
        ExplicitHeight = 314
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 584
          ExplicitHeight = 314
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'EmpresaId'
              DataController.KeyFieldNames = 'EmpresaId'
              object tvDatosEmpresaId: TcxGridDBColumn
                DataBinding.FieldName = 'EmpresaId'
                Visible = False
              end
              object tvDatosCodigo: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo'
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
              end
              object tvDatosRNC: TcxGridDBColumn
                DataBinding.FieldName = 'RNC'
              end
              object tvDatosTelefono: TcxGridDBColumn
                DataBinding.FieldName = 'Telefono'
              end
              object tvDatosTelefono1: TcxGridDBColumn
                DataBinding.FieldName = 'Telefono1'
              end
              object tvDatosFAX: TcxGridDBColumn
                DataBinding.FieldName = 'FAX'
              end
              object tvDatosNCFTipo: TcxGridDBColumn
                DataBinding.FieldName = 'NCFTipo'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 584
        ExplicitHeight = 314
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 584
          ExplicitHeight = 314
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrEmpresas
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39563.376508055550000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39563.376508784720000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object ActionList1: TActionList
    Left = 312
    Top = 280
    object Action1: TAction
      Caption = 'Action1'
    end
  end
end
