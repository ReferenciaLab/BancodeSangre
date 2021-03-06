inherited frmDatosMaterialesFactura: TfrmDatosMaterialesFactura
  Caption = '&Copiar'
  ClientHeight = 328
  ClientWidth = 617
  Visible = True
  ExplicitWidth = 625
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 617
    Height = 295
    ExplicitWidth = 617
    ExplicitHeight = 295
    inherited pcDatos: TcxPageControl
      ActivePage = tsDatos
      ClientRectBottom = 342
      ClientRectRight = 588
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 593
        ExplicitHeight = 271
        inherited lcGrid: TdxLayoutControl
          ExplicitWidth = 593
          ExplicitHeight = 271
          inherited dgDatos: TcxGrid
            Width = 569
            Height = 187
            ExplicitWidth = 569
            ExplicitHeight = 187
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'LineaNo'
              object tvDatosCondPaciente: TcxGridDBColumn
                Caption = 'C'#243'digo Material'
                DataBinding.FieldName = 'MaterialId'
                Width = 110
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 440
              end
              object tvDatosColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'cantidad'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 593
        ExplicitHeight = 271
        inherited lcDatos: TdxLayoutControl
          ExplicitWidth = 593
          ExplicitHeight = 271
          object cxDBTextEdit2: TcxDBTextEdit [0]
            Left = 101
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit [1]
            Left = 101
            Top = 117
            DataBinding.DataField = 'cantidad'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [2]
            Left = 101
            Top = 36
            RepositoryItem = DM.elcMateriales
            DataBinding.DataField = 'MaterialId'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 145
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [3]
            Left = 101
            Top = 90
            RepositoryItem = DM.elcPruebas
            DataBinding.DataField = 'pruebaid'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'C'#243'digo Material'
                Control = cxDBExtLookupComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Prueba'
                Control = cxDBExtLookupComboBox2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Cantidad'
                Control = cxDBTextEdit4
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 617
    ExplicitWidth = 617
  end
  inherited dsDatos: TDataSource
    DataSet = qrMaterialesFactura
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38932.673759942130000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38932.673759942130000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 280
    Top = 88
  end
  inherited qryHelper: TADOQuery
    Left = 400
  end
  inherited qrDefaultView: TADOQuery
    Left = 460
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 220
  end
  inherited qrUserFields: TABSQuery
    Left = 320
    Top = 172
  end
  inherited qrVistas: TABSQuery
    Left = 348
    Top = 72
  end
  object qrMaterialesFactura: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeInsert = qrMaterialesFacturaBeforeInsert
    AfterInsert = qrMaterialesFacturaAfterInsert
    Parameters = <
      item
        Name = 'ref'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTMaterialesFactura'
      'where refrecid = :ref')
    Left = 128
    Top = 2
    object qrMaterialesFacturarefrecid: TLargeintField
      FieldName = 'refrecid'
    end
    object qrMaterialesFacturarefrecidLine: TLargeintField
      FieldName = 'refrecidLine'
    end
    object qrMaterialesFacturaMaterialid: TStringField
      FieldName = 'Materialid'
      Size = 10
    end
    object qrMaterialesFacturaCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrMaterialesFacturapruebaid: TStringField
      FieldName = 'pruebaid'
    end
    object qrMaterialesFacturaDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = DM.qrMateriales
      LookupKeyFields = 'MaterialId'
      LookupResultField = 'Descripcion'
      KeyFields = 'Materialid'
      Size = 50
      Lookup = True
    end
    object qrMaterialesFacturaLineaNo: TLargeintField
      FieldName = 'LineaNo'
      ReadOnly = True
    end
  end
end
