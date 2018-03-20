inherited frmReservacionesVencidas: TfrmReservacionesVencidas
  Caption = 'Reservaciones Vencidas'
  ClientHeight = 413
  ClientWidth = 802
  ExplicitWidth = 810
  ExplicitHeight = 447
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 802
    Height = 380
    ExplicitWidth = 610
    ExplicitHeight = 340
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            inherited tvDatos: TcxGridDBTableView
              object tvDatosCodigoId: TcxGridDBColumn
                Caption = 'Codigo'
                DataBinding.FieldName = 'CodigoId'
              end
              object tvDatosProductoDes: TcxGridDBColumn
                Caption = 'Producto'
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
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Left = 75
            Top = 36
            TabStop = False
            DataBinding.DataField = 'CodigoId'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Properties.OnChange = cxDBTextEdit1PropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 202
            Top = 36
            TabStop = False
            DataBinding.DataField = 'ProductoDes'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 364
            Top = 36
            TabStop = False
            DataBinding.DataField = 'Fecha'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 527
            Top = 36
            TabStop = False
            DataBinding.DataField = 'Vence'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxDBTextEdit5: TcxDBTextEdit [4]
            Left = 202
            Top = 122
            TabStop = False
            DataBinding.DataField = 'Fax'
            DataBinding.DataSource = dsDoctor
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit [5]
            Left = 75
            Top = 122
            TabStop = False
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDoctor
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object cxDBTextEdit7: TcxDBTextEdit [6]
            Left = 75
            Top = 95
            TabStop = False
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDoctor
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 248
          end
          object cxMemo1: TcxMemo [7]
            Left = 75
            Top = 181
            Lines.Strings = (
              'cxMemo1')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Height = 89
            Width = 248
          end
          object cxButton1: TcxButton [8]
            Left = 329
            Top = 245
            Width = 75
            Height = 25
            Action = AcLiberarReservacion
            TabOrder = 8
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'Datos Generales'
              LayoutDirection = ldHorizontal
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Producto'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                Caption = 'Fecha'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                Caption = 'Vence'
                Control = cxDBTextEdit4
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Datos del Doctor'
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Doctor'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Telefonos'
                  Control = cxDBTextEdit6
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem2: TdxLayoutItem
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroup3: TdxLayoutGroup
              Caption = 'Liberar Reservacion'
              LayoutDirection = ldHorizontal
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Notas'
                Control = cxMemo1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem9: TdxLayoutItem
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
    Width = 802
    ExplicitWidth = 610
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrReservacionesVencidas
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39242.493606678240000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39242.493606678240000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited alEdit: TActionList
    object ActBuscarDoctor: TAction
      Caption = 'ActBuscarDoctor'
      OnExecute = ActBuscarDoctorExecute
    end
    object AcLiberarReservacion: TAction
      Caption = 'Liberar'
      OnExecute = AcLiberarReservacionExecute
    end
  end
  object qrDoctor: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DoctorId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       PTDoctor'
      'WHERE     (DoctorId = :DoctorId)')
    Left = 480
    Top = 243
    object qrDoctorDoctorID: TStringField
      FieldName = 'DoctorID'
      Size = 10
    end
    object qrDoctorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDoctorTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDoctorFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrDoctoreMail: TStringField
      FieldName = 'eMail'
      Size = 60
    end
  end
  object dsDoctor: TDataSource
    DataSet = qrDoctor
    Left = 512
    Top = 240
  end
end
