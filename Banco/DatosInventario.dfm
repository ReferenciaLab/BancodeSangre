inherited frmDatosInventario: TfrmDatosInventario
  Caption = 'Inventario'
  ClientWidth = 652
  ExplicitWidth = 668
  ExplicitHeight = 422
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 652
    ExplicitWidth = 652
    inherited pcDatos: TcxPageControl
      Width = 553
      Height = 517
      ExplicitWidth = 553
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 553
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 553
        ExplicitHeight = 327
        inherited lcGrid: TdxLayoutControl
          Width = 553
          Height = 493
          ExplicitWidth = 553
          ExplicitHeight = 327
          inherited dgDatos: TcxGrid
            Width = 529
            ExplicitWidth = 529
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'CodigoId'
              DataController.KeyFieldNames = 'CodigoId'
              object tvDatosProductoDes: TcxGridDBColumn
                DataBinding.FieldName = 'ProductoDes'
              end
              object tvDatosTipoSangre: TcxGridDBColumn
                DataBinding.FieldName = 'TipoSangre'
              end
              object tvDatosRH: TcxGridDBColumn
                DataBinding.FieldName = 'RH'
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
              end
              object tvDatosVence: TcxGridDBColumn
                DataBinding.FieldName = 'Vence'
              end
              object tvDatosCodigoId: TcxGridDBColumn
                DataBinding.FieldName = 'CodigoId'
              end
              object tvDatosReservado: TcxGridDBColumn
                DataBinding.FieldName = 'Reservado'
                PropertiesClassName = 'TcxCheckBoxProperties'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 553
        ExplicitHeight = 327
        inherited lcDatos: TdxLayoutControl
          Width = 553
          Height = 493
          ExplicitWidth = 553
          ExplicitHeight = 327
          object cxDBTextEdit2: TcxDBTextEdit [0]
            Left = 129
            Top = 36
            DataBinding.DataField = 'DonacionId'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit1: TcxDBTextEdit [1]
            Left = 129
            Top = 63
            DataBinding.DataField = 'DonacionId'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 129
            Top = 90
            DataBinding.DataField = 'DonacionId'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'Datos Generales'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Numero de Donacion'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Producto'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Producto'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object cxButton3: TcxButton [1]
      Left = 565
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Pruebas'
      TabOrder = 1
      OnClick = cxButton3Click
    end
    object cxButton1: TcxButton [2]
      Left = 565
      Top = 38
      Width = 75
      Height = 25
      Caption = 'Etiqueta'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'cxButton3'
            ShowCaption = False
            Control = cxButton3
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 652
    ExplicitWidth = 652
  end
  inherited formStorage: TJvFormStorage
    Left = 288
    Top = 6
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrInventario
    Left = 212
    Top = 7
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 180
    Top = 4
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39385.774392430550000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39385.774393159720000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 40
    Top = 8
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 408
    Top = 4
  end
  inherited SaveDialog: TSaveDialog
    Left = 329
    Top = 8
  end
  inherited qryHelper: TADOQuery
    Top = 3
  end
  inherited alEdit: TActionList
    Left = 372
    Top = 0
  end
  inherited pmCustom: TPopupMenu
    Top = 4
  end
  inherited qrDefaultView: TADOQuery
    Left = 144
    Top = 7
  end
  inherited strView: TJvStrHolder
    Top = 4
  end
  inherited strTableNames: TJvStrHolder
    Left = 104
    Top = 4
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 8
    Top = 4
  end
  inherited qrUserFields: TABSQuery
    Left = 72
    Top = 4
  end
  inherited qrVistas: TABSQuery
    Left = 252
    Top = 8
  end
end
