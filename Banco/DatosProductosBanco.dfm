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
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 713
        ExplicitHeight = 374
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
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
              object tvDatosColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'Costo'
              end
              object tvDatosColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'Precio'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 713
        ExplicitHeight = 374
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 713
          ExplicitHeight = 374
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Left = 186
            Top = 36
            AutoSize = False
            DataBinding.DataField = 'ProductoID'
            DataBinding.DataSource = dsDatos
            Properties.OnChange = acGetPrecioExecute
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Height = 21
            Width = 126
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 186
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
          object cxDBCheckBox2: TcxDBCheckBox [2]
            Left = 176
            Top = 117
            Caption = 'Producto necesita cruce'
            DataBinding.DataField = 'NecesitaCruce'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 147
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 186
            Top = 90
            DataBinding.DataField = 'CodigoAxapta'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox [4]
            Left = 23
            Top = 117
            Caption = 'Permite cambio de precio'
            DataBinding.DataField = 'PermiteCambioPrecio'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 147
          end
          object cxDBCheckBox3: TcxDBCheckBox [5]
            Left = 23
            Top = 144
            Caption = 'Es un servicio'
            DataBinding.DataField = 'Servicio'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 147
          end
          object cxDBCheckBox4: TcxDBCheckBox [6]
            Left = 176
            Top = 144
            Caption = 'Producto captado inicialmente'
            DataBinding.DataField = 'Inicial'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 185
          end
          object cxButton1: TcxButton [7]
            Left = 329
            Top = 230
            Width = 100
            Height = 21
            Action = acSetPrecio
            TabOrder = 9
          end
          object cxLookupComboBox1: TcxLookupComboBox [8]
            Left = 186
            Top = 203
            Properties.KeyFieldNames = 'TIPOCLIENTE'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRIPCION'
              end
              item
                FieldName = 'TIPOCLIENTE'
              end>
            Properties.ListSource = DMB.dsCategorias
            Properties.OnChange = acGetPrecioExecute
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 243
          end
          object cxDBTextEdit3: TcxCurrencyEdit [9]
            Left = 186
            Top = 230
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 137
          end
          inherited Group_Root: TdxLayoutGroup
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
            object lcDatosGroup5: TdxLayoutGroup
              Caption = 'Precios'
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Categoria de precio segun cliente'
                Control = cxLookupComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup6: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Precio'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = cxButton1
                  ControlOptions.ShowBorder = False
                end
              end
            end
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
    Left = 252
    Top = 247
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
  object dsListaDonaciones: TDataSource
    Left = 480
    Top = 608
  end
  object ActionList1: TActionList
    Left = 488
    Top = 280
    object acGetPrecio: TAction
      Caption = 'acGetPrecio'
      OnExecute = acGetPrecioExecute
    end
    object acSetPrecio: TAction
      Caption = 'Actualizar'
      OnExecute = acSetPrecioExecute
    end
  end
end
