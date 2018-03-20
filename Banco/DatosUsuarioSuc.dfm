inherited frmDatosUsuarioSuc: TfrmDatosUsuarioSuc
  Caption = 'Sucursales Permitidas al Usuario'
  ClientHeight = 344
  ClientWidth = 618
  ExplicitWidth = 626
  ExplicitHeight = 378
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 618
    Height = 311
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 588
        ExplicitHeight = 318
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 588
          ExplicitHeight = 318
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'SucursalID'
              object tvDatosSucursalID: TcxGridDBColumn
                Caption = 'Sucursal'
                DataBinding.FieldName = 'SucursalID'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 588
        ExplicitHeight = 318
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 588
          ExplicitHeight = 318
          object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
            Left = 69
            Top = 36
            DataBinding.DataField = 'SucursalID'
            DataBinding.DataSource = dsDatos
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.KeyFieldNames = 'SucursalID'
            Properties.ListColumns = <
              item
                Caption = 'Sucursal'
                FieldName = 'SucursalID'
              end
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = DM.dsSucursal
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Sucursal'
                Control = cxDBLookupComboBox1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 618
  end
  inherited dsDatos: TDataSource
    DataSet = qrUsuarioSucursal
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38937.649650057870000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38937.649650057870000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qrUsuarioSucursal: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrUsuarioSucursalNewRecord
    Parameters = <
      item
        Name = 'use'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      '  from PTUsuarioSucursal'
      'where UserId = :use')
    Left = 320
    Top = 47
    object qrUsuarioSucursalUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qrUsuarioSucursalSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
  end
end
