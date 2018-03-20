inherited frmDatosGrupoClientes: TfrmDatosGrupoClientes
  Caption = 'Tipos de Clientes'
  ClientHeight = 513
  ClientWidth = 822
  ExplicitWidth = 830
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 822
    Height = 480
    ExplicitWidth = 822
    ExplicitHeight = 480
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ActivePage = tsDatos
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
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'GrupoCliente'
              object tvDatosGrupoCliente: TcxGridDBColumn
                Caption = 'Tipo de Cliente'
                DataBinding.FieldName = 'GrupoCliente'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                DataBinding.FieldName = 'CodigoAxapta'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 99
            Top = 36
            DataBinding.DataField = 'GrupoCliente'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 99
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBMemo1: TcxDBMemo [2]
            Left = 99
            Top = 90
            DataBinding.DataField = 'Comentario'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Height = 89
            Width = 185
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo de Cliente'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                Caption = 'Comentario'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 822
    ExplicitWidth = 822
  end
  inherited dsDatos: TDataSource
    DataSet = qrGrupoClientes
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38921.944684236110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38921.944684421290000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Left = 484
  end
  inherited qrDefaultView: TADOQuery
    Left = 544
  end
  object qrGrupoClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTGrupoCliente')
    Left = 136
    Top = 2
    object qrGrupoClientesGrupoCliente: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GrupoCliente'
      Required = True
      Size = 10
    end
    object qrGrupoClientesDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 50
    end
    object qrGrupoClientesCodigoAxapta: TStringField
      DisplayLabel = 'Codigo Axapta'
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object qrGrupoClientesComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
  end
end
