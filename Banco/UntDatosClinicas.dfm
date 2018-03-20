inherited FrmDatosClinicas: TFrmDatosClinicas
  Caption = 'Clinicas y Centros Medicos'
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
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            inherited tvDatos: TcxGridDBTableView
              object tvDatosColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'CODIGO'
              end
              object tvDatosColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'NOMBRE'
              end
              object tvDatosColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'DIRECCION'
              end
              object tvDatosColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'TELEFONO'
              end
              object tvDatosColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'CIUDAD'
              end
              object tvDatosColumn6: TcxGridDBColumn
                DataBinding.FieldName = 'CONTACTO'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object DBEdit1: TDBEdit [0]
            Left = 71
            Top = 37
            Width = 391
            Height = 17
            BorderStyle = bsNone
            DataField = 'CODIGO'
            DataSource = dsDatos
            TabOrder = 0
          end
          object DBEdit2: TDBEdit [1]
            Left = 71
            Top = 62
            Width = 391
            Height = 17
            BorderStyle = bsNone
            DataField = 'NOMBRE'
            DataSource = dsDatos
            TabOrder = 1
          end
          object DBEdit3: TDBEdit [2]
            Left = 520
            Top = 87
            Width = 121
            Height = 17
            BorderStyle = bsNone
            DataField = 'DIRECCION'
            DataSource = dsDatos
            TabOrder = 4
          end
          object DBEdit5: TDBEdit [3]
            Left = 71
            Top = 87
            Width = 391
            Height = 17
            BorderStyle = bsNone
            DataField = 'CONTACTO'
            DataSource = dsDatos
            TabOrder = 2
          end
          object DBEdit6: TDBEdit [4]
            Left = 71
            Top = 112
            Width = 121
            Height = 17
            BorderStyle = bsNone
            DataField = 'CIUDAD'
            DataSource = dsDatos
            TabOrder = 3
          end
          inherited Group_Root: TdxLayoutGroup
            LayoutDirection = ldHorizontal
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'Datos Generales'
              object lcDatosItem1: TdxLayoutItem
                Caption = 'Codigo'
                Control = DBEdit1
              end
              object lcDatosGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosItem2: TdxLayoutItem
                  Caption = 'Nombre'
                  Control = DBEdit2
                end
                object lcDatosGroup3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosGroup4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object lcDatosItem5: TdxLayoutItem
                      Caption = 'contacto'
                      Control = DBEdit5
                    end
                    object lcDatosItem6: TdxLayoutItem
                      Caption = 'Ciudad'
                      Control = DBEdit6
                    end
                  end
                  object lcDatosItem3: TdxLayoutItem
                    Caption = 'Direccion'
                    Control = DBEdit3
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.Qclinicas
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 43040.543247071760000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 43040.543247083330000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Top = 235
  end
  inherited strView: TJvStrHolder
    Left = 428
    Top = 260
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 268
  end
end
