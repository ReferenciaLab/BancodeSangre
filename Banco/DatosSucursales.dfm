inherited frmDatosSucursales: TfrmDatosSucursales
  Caption = 'Sucursales'
  ExplicitWidth = 642
  ExplicitHeight = 422
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
        ExplicitWidth = 602
        ExplicitHeight = 327
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 602
          ExplicitHeight = 327
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'SucursalID'
              object tvDatosSucursalID: TcxGridDBColumn
                DataBinding.FieldName = 'SucursalID'
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 602
        ExplicitHeight = 327
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 602
          ExplicitHeight = 327
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 73
            Top = 36
            DataBinding.DataField = 'SucursalID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 73
            Top = 63
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBMemo1: TcxDBMemo [2]
            Left = 73
            Top = 122
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Height = 89
            Width = 400
          end
          object cxDBTextEdit3: TcxDBTextEdit [3]
            Left = 73
            Top = 217
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit [4]
            Left = 73
            Top = 244
            DataBinding.DataField = 'Fax'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Sucursal'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Nombre'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Contacto'
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Direcci'#243'n'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Telefono'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fax'
                Control = cxDBTextEdit4
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrSucursales
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38921.951684560180000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38921.951684745370000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qrSucursales: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    BeforePost = qrSucursalesBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTSucursal')
    Left = 208
    Top = 88
    object qrSucursalesSucursalID: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'SucursalID'
      Required = True
      Size = 10
    end
    object qrSucursalesNombre: TStringField
      FieldName = 'Nombre'
      Size = 60
    end
    object qrSucursalesDireccion: TMemoField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrSucursalesTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrSucursalesFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
  end
end