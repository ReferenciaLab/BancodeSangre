inherited frmConsultaMovimientos: TfrmConsultaMovimientos
  Caption = 'Consulta Movimientos en Banco'
  ClientWidth = 706
  ExplicitWidth = 714
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 706
    ExplicitWidth = 626
    ExplicitHeight = 351
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
            TabOrder = 4
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'HistCons'
              DataController.KeyFieldNames = 'HistCons'
              OptionsView.Footer = True
              object tvDatosHistCons: TcxGridDBColumn
                DataBinding.FieldName = 'HistCons'
              end
              object tvDatosCodigoId: TcxGridDBColumn
                DataBinding.FieldName = 'CodigoId'
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
              end
              object tvDatosOperacionId: TcxGridDBColumn
                DataBinding.FieldName = 'OperacionId'
              end
              object tvDatosUserId: TcxGridDBColumn
                DataBinding.FieldName = 'UserId'
              end
              object tvDatosNota: TcxGridDBColumn
                DataBinding.FieldName = 'Nota'
              end
              object tvDatosReceptorId: TcxGridDBColumn
                DataBinding.FieldName = 'ReceptorId'
              end
              object tvDatosDoctorId: TcxGridDBColumn
                DataBinding.FieldName = 'DoctorId'
              end
            end
          end
          inherited btBuscar: TcxButton
            Left = 566
            TabOrder = 3
            OnClick = btBuscarClick
            ExplicitLeft = 566
          end
          object desde: TcxDateEdit [2]
            Left = 279
            Top = 36
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 121
          end
          object hasta: TcxDateEdit [3]
            Left = 439
            Top = 36
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 121
          end
          object txtMuestra: TcxTextEdit [4]
            Left = 66
            Top = 36
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 171
          end
          inherited dxLayoutGroup1: TdxLayoutGroup
            inherited lcGrupoBuscar: TdxLayoutGroup
              Visible = True
              object lcGridItem1: TdxLayoutItem [0]
                AutoAligns = [aaVertical]
                Caption = 'Muestra'
                Control = txtMuestra
                ControlOptions.ShowBorder = False
              end
              object lcGridItem3: TdxLayoutItem [1]
                Caption = 'Desde'
                Control = desde
                ControlOptions.ShowBorder = False
              end
              object lcGridItem2: TdxLayoutItem [2]
                Caption = 'Hasta'
                Control = hasta
                ControlOptions.ShowBorder = False
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
          object cxDateEdit1: TcxDateEdit [0]
            Left = 10000
            Top = 10000
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Visible = False
            Width = 121
          end
          object lcDatosItem1: TdxLayoutItem
            Caption = 'cxDateEdit1'
            Control = cxDateEdit1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 706
    ExplicitWidth = 626
  end
  inherited dsDatos: TDataSource
    DataSet = qrVentas
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39385.797214513890000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39385.797214513890000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited alEdit: TActionList
    Top = 112
    object Open: TAction
      Caption = 'Open'
      OnExecute = OpenExecute
    end
  end
  inherited qrVistas: TABSQuery
    Left = 260
    Top = 160
  end
  object qrVentas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Declare @Desde DateTime'
      'Declare @Hasta DateTime'
      ''
      'Set @Desde = :Desde'
      'Set @Hasta = :Hasta'
      ''
      'SELECT'
      '  *'
      'FROM'
      '  BSHistProductos'
      'Where'
      #9'(Fecha >= @Desde)'
      'And'
      #9'(Fecha <= @Hasta)'
      'AND '
      '                (CodigoId Like :Codigo)')
    Left = 432
    Top = 7
    object qrVentasHistCons: TLargeintField
      FieldName = 'HistCons'
      ReadOnly = True
    end
    object qrVentasCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrVentasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrVentasOperacionId: TWideStringField
      FieldName = 'OperacionId'
      FixedChar = True
      Size = 10
    end
    object qrVentasUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qrVentasNota: TMemoField
      FieldName = 'Nota'
      BlobType = ftMemo
    end
    object qrVentasReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrVentasDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
  end
end
