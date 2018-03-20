inherited frmDatosBSProductos: TfrmDatosBSProductos
  Caption = 'Banco de Sangre - Productos'
  ClientHeight = 431
  ClientWidth = 737
  ExplicitWidth = 745
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 737
    Height = 398
    ExplicitWidth = 737
    ExplicitHeight = 398
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 338
      ClientRectRight = 584
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 713
        ExplicitHeight = 374
        inherited lcGrid: TdxLayoutControl
          ExplicitWidth = 713
          ExplicitHeight = 374
          inherited dgDatos: TcxGrid
            Width = 689
            Height = 290
            ExplicitWidth = 689
            ExplicitHeight = 290
            inherited tvDatos: TcxGridDBTableView
              object tvDatosProductoID: TcxGridDBColumn
                Caption = 'Producto'
                DataBinding.FieldName = 'ProductoID'
              end
              object tvDatosProductoDes: TcxGridDBColumn
                Caption = 'Descripcion'
                DataBinding.FieldName = 'ProductoDes'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 713
        ExplicitHeight = 374
        inherited lcDatos: TdxLayoutControl
          ExplicitWidth = 713
          ExplicitHeight = 374
          object cxDBTextEdit3: TcxDBTextEdit [0]
            Left = 123
            Top = 90
            DataBinding.DataField = 'Precio'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBTextEdit1: TcxDBTextEdit [1]
            Left = 123
            Top = 36
            AutoSize = False
            DataBinding.DataField = 'ProductoID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Height = 21
            Width = 126
          end
          object cxDBTextEdit2: TcxDBTextEdit [2]
            Left = 123
            Top = 63
            AutoSize = False
            DataBinding.DataField = 'ProductoDes'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Height = 21
            Width = 302
          end
          object cxDBCheckBox2: TcxDBCheckBox [3]
            Left = 176
            Top = 144
            Caption = 'Producto necesita cruce'
            DataBinding.DataField = 'NecesitaCruce'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 147
          end
          object cxDBTextEdit4: TcxDBTextEdit [4]
            Left = 123
            Top = 117
            DataBinding.DataField = 'CodigoAxapta'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox [5]
            Left = 23
            Top = 144
            Caption = 'Permite cambio de precio'
            DataBinding.DataField = 'PermiteCambioPrecio'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 147
          end
          object cxDBCheckBox3: TcxDBCheckBox [6]
            Left = 23
            Top = 171
            Caption = 'Es un servicio'
            DataBinding.DataField = 'Servicio'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 147
          end
          object cxDBCheckBox4: TcxDBCheckBox [7]
            Left = 176
            Top = 171
            Caption = 'Producto captado inicialmente'
            DataBinding.DataField = 'Inicial'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 185
          end
          inherited Group_Root: TdxLayoutGroup
            LayoutDirection = ldHorizontal
            object lcDatosGroup1: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              Caption = 'Productos'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo del producto'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripcion'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Precio'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo Axapta'
                Control = cxDBTextEdit4
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosGroup3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem4: TdxLayoutItem
                    Caption = 'Permite cambio de precio'
                    ShowCaption = False
                    Control = cxDBCheckBox1
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem6: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = cxDBCheckBox2
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosGroup4: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    ShowCaption = False
                    Control = cxDBCheckBox3
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem9: TdxLayoutItem
                    ShowCaption = False
                    Control = cxDBCheckBox4
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object lcDatosItem8: TdxLayoutItem
            Caption = 'New Item'
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 737
    ExplicitWidth = 737
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrProductosBanco
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39116.612008113430000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39116.612008483800000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited SaveDialog: TSaveDialog
    Left = 313
    Top = 184
  end
end
