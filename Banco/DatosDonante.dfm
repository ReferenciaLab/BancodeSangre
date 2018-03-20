inherited frmDatosDonante: TfrmDatosDonante
  Caption = 'Datos de Donantes'
  ClientHeight = 423
  ClientWidth = 740
  ExplicitWidth = 748
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 740
    Height = 390
    ExplicitWidth = 740
    ExplicitHeight = 390
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
        ExplicitWidth = 716
        ExplicitHeight = 366
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 716
          ExplicitHeight = 366
          inherited dgDatos: TcxGrid
            Width = 692
            Height = 240
            Align = alClient
            Font.Height = -13
            ExplicitWidth = 692
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'PacienteID'
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
                Width = 169
              end
              object tvDatosTipoSangre: TcxGridDBColumn
                Caption = 'Grupo'
                DataBinding.FieldName = 'TipoSangre'
                Width = 49
              end
              object tvDatosRH: TcxGridDBColumn
                DataBinding.FieldName = 'RH'
                Width = 49
              end
              object tvDatosFechaUltimaDon: TcxGridDBColumn
                Caption = 'Ultima Donacion'
                DataBinding.FieldName = 'FechaUltimaDon'
                Width = 64
              end
              object tvDatosDonanteActivo: TcxGridDBColumn
                Caption = 'Activo'
                DataBinding.FieldName = 'DonanteActivo'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Width = 39
              end
              object tvDatosTelefono: TcxGridDBColumn
                DataBinding.FieldName = 'Telefono'
                Width = 82
              end
              object tvDatosTelefono2: TcxGridDBColumn
                DataBinding.FieldName = 'Telefono2'
                Width = 83
              end
              object tvDatosRechaso: TcxGridDBColumn
                Caption = 'Rechazo'
                DataBinding.FieldName = 'Rechaso'
                Width = 69
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 716
        ExplicitHeight = 366
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 716
          ExplicitHeight = 366
          object cxDBTextEdit2: TcxDBTextEdit [0]
            Left = 322
            Top = 36
            DataBinding.DataField = 'TipoSangre'
            DataBinding.DataSource = dsDatos
            ParentFont = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit [1]
            Left = 503
            Top = 36
            DataBinding.DataField = 'RH'
            DataBinding.DataSource = dsDatos
            ParentFont = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 103
          end
          object cxDBTextEdit4: TcxDBTextEdit [2]
            Left = 117
            Top = 66
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            ParentFont = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 248
          end
          object cxDBTextEdit5: TcxDBTextEdit [3]
            Left = 418
            Top = 66
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDatos
            ParentFont = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit [4]
            Left = 545
            Top = 66
            DataBinding.DataField = 'Telefono2'
            DataBinding.DataSource = dsDatos
            ParentFont = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 121
          end
          object cxDBTextEdit1: TcxDBTextEdit [5]
            Left = 117
            Top = 36
            DataBinding.DataField = 'PacienteID'
            DataBinding.DataSource = dsDatos
            ParentFont = False
            Properties.OnChange = cxDBTextEdit1PropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 121
          end
          object cxGrid1: TcxGrid [6]
            Left = 347
            Top = 128
            Width = 578
            Height = 200
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsContactos
              DataController.DetailKeyFieldNames = 'Id'
              DataController.KeyFieldNames = 'Id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1Id: TcxGridDBColumn
                DataBinding.FieldName = 'Id'
                Visible = False
              end
              object cxGrid1DBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                Width = 62
              end
              object cxGrid1DBTableView1Operacion: TcxGridDBColumn
                DataBinding.FieldName = 'Operacion'
                Visible = False
              end
              object cxGrid1DBTableView1Respuesta: TcxGridDBColumn
                DataBinding.FieldName = 'Respuesta'
                Width = 230
              end
              object cxGrid1DBTableView1PriximoContacto: TcxGridDBColumn
                DataBinding.FieldName = 'PriximoContacto'
                Width = 52
              end
              object cxGrid1DBTableView1MetodoContacto: TcxGridDBColumn
                DataBinding.FieldName = 'MetodoContacto'
                Visible = False
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object Operacion: TcxComboBox [7]
            Left = 117
            Top = 128
            ParentFont = False
            Properties.Items.Strings = (
              'Llamar'
              'Correo'
              'Visita')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            Style.IsFontAssigned = True
            TabOrder = 6
            Text = 'Llamar'
            Width = 200
          end
          object Respuesta: TcxMemo [8]
            Left = 23
            Top = 176
            ParentFont = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            Height = 98
            Width = 294
          end
          object ProximoContacto: TcxDateEdit [9]
            Left = 117
            Top = 280
            ParentFont = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 200
          end
          object cxButton1: TcxButton [10]
            Left = 23
            Top = 310
            Width = 294
            Height = 25
            Action = acContactos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'Datos Donante'
              object lcDatosGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Donante'
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo de Sangre'
                  Control = cxDBTextEdit2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem3: TdxLayoutItem
                  Caption = 'Factor RH'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = cxDBTextEdit4
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem5: TdxLayoutItem
                  Caption = 'Telefono'
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem6: TdxLayoutItem
                  Control = cxDBTextEdit6
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroup6: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosGroup2: TdxLayoutGroup
                Caption = 'Nueva entrada'
                object lcDatosItem8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Forma de contacto'
                  Control = Operacion
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem9: TdxLayoutItem
                  Caption = 'Respuesta'
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  Control = Respuesta
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem10: TdxLayoutItem
                  Caption = 'Fecha Proxima'
                  Control = ProximoContacto
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem11: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = cxButton1
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup3: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Historico de Contactos'
                object lcDatosItem7: TdxLayoutItem
                  Control = cxGrid1
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
    Width = 740
    ExplicitWidth = 740
  end
  inherited formStorage: TJvFormStorage
    Left = 240
    Top = 134
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrDonantes
    Left = 244
    Top = 65535
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39238.553766967590000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39238.553767696760000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 80
    Top = 240
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 376
    Top = 268
  end
  inherited qryHelper: TADOQuery
    Left = 452
    Top = 211
  end
  inherited alEdit: TActionList
    Left = 428
    Top = 16
    object acContactos: TAction
      Caption = 'Grabar Respuesta'
      OnExecute = acContactosExecute
    end
    object CambiarPaciente: TAction
      Caption = 'CambiarPaciente'
      OnExecute = CambiarPacienteExecute
    end
  end
  inherited qrDefaultView: TADOQuery
    Left = 280
    Top = 167
  end
  inherited strView: TJvStrHolder
    Top = 92
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 228
  end
  object qrContactos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Cliente'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         BSContactos'
      'WHERE     (Cliente = :Cliente)')
    Left = 560
    Top = 19
    object qrContactosId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrContactosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrContactosCliente: TStringField
      FieldName = 'Cliente'
      Size = 10
    end
    object qrContactosOperacion: TStringField
      FieldName = 'Operacion'
      Size = 50
    end
    object qrContactosRespuesta: TStringField
      FieldName = 'Respuesta'
      Size = 200
    end
    object qrContactosPriximoContacto: TDateTimeField
      FieldName = 'PriximoContacto'
    end
    object qrContactosMetodoContacto: TStringField
      FieldName = 'MetodoContacto'
      Size = 50
    end
  end
  object dsContactos: TDataSource
    AutoEdit = False
    DataSet = qrContactos
    Left = 620
    Top = 19
  end
  object cmdGrabar: TADOCommand
    CommandText = 
      'DECLARE @Cliente AS VARCHAR(10)'#13#10'DECLARE @ProximoContacto AS DAT' +
      'ETIME'#13#10#13#10'SET @Cliente = :Cliente'#13#10'SET @ProximoContacto = :Proxim' +
      'oContacto'#13#10#13#10'INSERT INTO BSContactos '#13#10'     (Fecha, Cliente, Ope' +
      'racion, Respuesta, PriximoContacto, MetodoContacto) '#13#10'VALUES'#13#10'  ' +
      '  ( :Fecha, @Cliente, :Operacion, :Respuesta, @ProximoContacto, ' +
      ':MetodoContacto )'#13#10#13#10'UPDATE BSDonante'#13#10'SET FechaProximoContacto ' +
      '= @ProximoContacto'#13#10'WHERE PacienteID = @Cliente'
    Connection = DM.DataBase
    Parameters = <
      item
        Name = 'Cliente'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ProximoContacto'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Operacion'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Respuesta'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'MetodoContacto'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Left = 16
    Top = 392
  end
end
