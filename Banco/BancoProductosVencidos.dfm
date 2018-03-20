inherited frmProductosVencidos: TfrmProductosVencidos
  Caption = 'Productos Vencidos'
  ClientHeight = 385
  ClientWidth = 727
  ExplicitWidth = 735
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 727
    Height = 352
    ExplicitWidth = 727
    ExplicitHeight = 352
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
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              object tvDatosCodigoId: TcxGridDBColumn
                DataBinding.FieldName = 'CodigoId'
              end
              object tvDatosDonacionId: TcxGridDBColumn
                DataBinding.FieldName = 'DonacionId'
              end
              object tvDatosProductoID: TcxGridDBColumn
                DataBinding.FieldName = 'ProductoID'
              end
              object tvDatosProductoDes: TcxGridDBColumn
                DataBinding.FieldName = 'ProductoDes'
              end
              object tvDatosCantidad: TcxGridDBColumn
                DataBinding.FieldName = 'Cantidad'
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
              end
              object tvDatosHora: TcxGridDBColumn
                DataBinding.FieldName = 'Hora'
              end
              object tvDatosReservado: TcxGridDBColumn
                DataBinding.FieldName = 'Reservado'
              end
              object tvDatosReservadoHasta: TcxGridDBColumn
                DataBinding.FieldName = 'ReservadoHasta'
              end
              object tvDatosDias: TcxGridDBColumn
                DataBinding.FieldName = 'Dias'
              end
              object tvDatosVence: TcxGridDBColumn
                DataBinding.FieldName = 'Vence'
              end
              object tvDatosCruce: TcxGridDBColumn
                DataBinding.FieldName = 'Cruce'
              end
              object tvDatosReceptorId: TcxGridDBColumn
                DataBinding.FieldName = 'ReceptorId'
              end
              object tvDatosDoctorId: TcxGridDBColumn
                DataBinding.FieldName = 'DoctorId'
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
            Left = 73
            Top = 36
            TabStop = False
            DataBinding.DataField = 'CodigoId'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 128
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 23
            Top = 95
            TabStop = False
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 128
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 546
            Top = 36
            TabStop = False
            DataBinding.DataField = 'Vence'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 128
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 376
            Top = 36
            TabStop = False
            DataBinding.DataField = 'Fecha'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 128
          end
          object cxDBTextEdit5: TcxDBTextEdit [4]
            Left = 207
            Top = 36
            TabStop = False
            DataBinding.DataField = 'ProductoDes'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 128
          end
          object cxMemo1: TcxMemo [5]
            Left = 73
            Top = 154
            Lines.Strings = (
              'cxMemo1')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Height = 89
            Width = 280
          end
          object cxButton1: TcxButton [6]
            Left = 359
            Top = 218
            Width = 110
            Height = 25
            Action = ActDesecharProducto
            TabOrder = 6
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'Datos Generales'
              LayoutDirection = ldHorizontal
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'New Item'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                Control = cxDBTextEdit5
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                Caption = 'Fecha'
                Control = cxDBTextEdit4
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                Caption = 'Vence'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Datos del doctor'
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup3: TdxLayoutGroup
              Caption = 'Desechar Productos'
              LayoutDirection = ldHorizontal
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Notas'
                CaptionOptions.AlignVert = tavTop
                Control = cxMemo1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avBottom
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
  inherited pnCaption: TPanel
    Width = 727
    ExplicitWidth = 727
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrProductosVencidos
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39239.484255324070000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39239.484255509260000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 384
    Top = 172
  end
  inherited alEdit: TActionList
    object ActDesecharProducto: TAction
      Caption = 'Desechar'
      OnExecute = ActDesecharProductoExecute
    end
    object ActActualizar: TAction
      Caption = 'Actualizar'
      OnExecute = ActActualizarExecute
    end
  end
end
