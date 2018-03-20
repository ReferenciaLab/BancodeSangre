inherited FrmconsultaRechazos: TFrmconsultaRechazos
  Caption = 'Consulta Donaciones Rechazadas'
  ClientHeight = 624
  ClientWidth = 1043
  ExplicitWidth = 1059
  ExplicitHeight = 662
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    Width = 1018
    Height = 591
    ExplicitWidth = 693
    ExplicitHeight = 441
    inherited grConsulta: TcxGrid
      Left = -299
      Top = 184
      Width = 826
      Height = 51
      TabOrder = 10
      ExplicitLeft = -299
      ExplicitTop = 184
      ExplicitWidth = 826
      ExplicitHeight = 51
      inherited tvConsulta: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'DonacionID'
            Column = tvConsultaColumn2
          end
          item
            Format = 'Total  '
            FieldName = 'DonacionID'
            Column = tvConsultaColumn1
          end>
        object tvConsultaColumn1: TcxGridDBColumn
          Caption = 'Paciente Codigo'
          DataBinding.FieldName = 'PacienteID'
        end
        object tvConsultaColumn2: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'NOMBRE'
          Options.Editing = False
          Width = 310
        end
        object tvConsultaColumn3: TcxGridDBColumn
          Caption = 'Fecha Donacion'
          DataBinding.FieldName = 'Fecha'
        end
        object tvConsultaColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Producto'
          Width = 110
        end
        object tvConsultaColumn5: TcxGridDBColumn
          Caption = 'Fecha Rechazo'
          DataBinding.FieldName = 'FechaRechaza'
          Width = 105
        end
        object tvConsultaColumn6: TcxGridDBColumn
          Caption = 'Tipo Rechazo'
          DataBinding.FieldName = 'Rechaso'
          Width = 100
        end
        object tvConsultaColumn8: TcxGridDBColumn
          Caption = 'Causa Rechazo'
          DataBinding.FieldName = 'Causa'
          Width = 150
        end
        object tvConsultaColumn7: TcxGridDBColumn
          Caption = 'Usuario Realizo'
          DataBinding.FieldName = 'UserIdRechaza'
          Width = 100
        end
        object tvConsultaColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'TipoSangre'
          Width = 100
        end
      end
    end
    inherited deHasta: TcxDateEdit
      Left = -81
      ExplicitLeft = -81
    end
    inherited deDesde: TcxDateEdit
      Left = -220
      ExplicitLeft = -220
    end
    inherited btBuscar: TcxButton
      Left = 25
      BiDiMode = bdRightToLeftNoAlign
      OnClick = btBuscarClick
      ExplicitLeft = 25
    end
    inherited btFechas: TcxButton
      Left = -287
      ExplicitLeft = -287
    end
    object cxDBMemo1: TcxDBMemo [5]
      Left = -299
      Top = 474
      DataBinding.DataField = 'NotaAuditoria'
      DataBinding.DataSource = dsDatos
      ParentFont = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Height = 89
      Width = 201
    end
    object cxComboBox1: TcxComboBox [6]
      Left = 10
      Top = 71
      AutoSize = False
      BeepOnEnter = False
      Properties.Items.Strings = (
        'Todos'
        '"A"'
        '"B"'
        '"O"'
        '"AB"')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 5
      Height = 21
      Width = 336
    end
    object cxComboBox2: TcxComboBox [7]
      Left = -227
      Top = 71
      Properties.Items.Strings = (
        'Todos'
        'Temporal'
        'Permanente')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Width = 197
    end
    object cxComboBox3: TcxComboBox [8]
      Left = 406
      Top = 71
      Properties.Items.Strings = (
        'Todos'
        'Positivo'
        'Negativo')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 6
      Width = 121
    end
    object cxDBMemo2: TcxDBMemo [9]
      Left = -299
      Top = 361
      DataBinding.DataField = 'RechazoNota'
      DataBinding.DataSource = dsDatos
      ParentFont = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 89
      Width = 754
    end
    object cxCheckBox1: TcxCheckBox [10]
      Left = -103
      Top = 150
      AutoSize = False
      Caption = 'Filtar Fecha Auditoria'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 130
    end
    object cxDateEdit2: TcxDateEdit [11]
      Left = -251
      Top = 123
      AutoSize = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 7
      Height = 21
      Width = 142
    end
    object cxDateEdit3: TcxDateEdit [12]
      Left = -251
      Top = 150
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 8
      Width = 142
    end
    object cxButton1: TcxButton [13]
      Left = 545
      Top = 36
      Width = 450
      Height = 51
      Caption = 'Auditar'
      TabOrder = 13
      OnClick = cxButton1Click
    end
    object Panel1: TPanel [14]
      Left = 545
      Top = 93
      Width = 450
      Height = 358
      Caption = 'Panel1'
      Color = 16311249
      TabOrder = 14
      object Label1: TLabel
        Left = 16
        Top = 30
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object cxMemo1: TcxMemo
        Left = 8
        Top = 67
        TabOrder = 0
        Height = 214
        Width = 425
      end
      object cxDateEdit1: TcxDateEdit
        Left = 51
        Top = 22
        TabOrder = 1
        Width = 121
      end
      object cxButton2: TcxButton
        Left = 291
        Top = 296
        Width = 139
        Height = 49
        Caption = 'Aplicar'
        TabOrder = 2
        OnClick = cxButton2Click
      end
      object cxButton3: TcxButton
        Left = 138
        Top = 296
        Width = 139
        Height = 49
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = cxButton3Click
      end
    end
    inherited Group_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      inherited lgConsulta: TdxLayoutGroup
        inherited lgParametros: TdxLayoutGroup
          Visible = True
        end
        object lcDatosGroup1: TdxLayoutGroup [1]
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object lcDatosGroup3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object lcDatosItem4: TdxLayoutItem
              Caption = 'Tipo Rechazo'
              Control = cxComboBox2
              ControlOptions.ShowBorder = False
            end
            object lcDatosItem3: TdxLayoutItem
              Caption = 'Grupo'
              Control = cxComboBox1
              ControlOptions.ShowBorder = False
            end
            object lcDatosItem5: TdxLayoutItem
              Caption = 'Factor RH'
              Control = cxComboBox3
              ControlOptions.ShowBorder = False
            end
          end
          object lcDatosGroup2: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Fecha Rechazo'
            object lcDatosItem9: TdxLayoutItem
              AutoAligns = []
              Caption = 'Desde'
              Control = cxDateEdit2
              ControlOptions.ShowBorder = False
            end
            object lcDatosGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Hasta'
                Control = cxDateEdit3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = []
                Caption = 'cxCheckBox1'
                ShowCaption = False
                Control = cxCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        inherited lcDatosItem1: TdxLayoutItem
          CaptionOptions.Layout = clTop
          ControlOptions.AutoAlignment = False
        end
        object lcDatosItem6: TdxLayoutItem
          Caption = 'Nota Rechazo'
          CaptionOptions.Layout = clTop
          Control = cxDBMemo2
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem2: TdxLayoutItem
          Caption = 'Nota Auditoria'
          CaptionOptions.Layout = clTop
          Control = cxDBMemo1
          ControlOptions.ShowBorder = False
        end
      end
      object lcDatosGroup4: TdxLayoutGroup
        AutoAligns = [aaVertical]
        object lcDatosItem8: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem11: TdxLayoutItem
          Caption = 'Panel1'
          ShowCaption = False
          Control = Panel1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited lcBotones: TdxLayoutControl
    Left = 1018
    Width = 25
    Height = 591
    ExplicitLeft = 693
    ExplicitWidth = 25
    ExplicitHeight = 441
  end
  inherited pnCaption: TPanel
    Width = 1043
    ExplicitWidth = 718
  end
  inherited dsDatos: TDataSource
    DataSet = Qdatos
    Left = 164
    Top = 207
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 242
    Top = 282
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 42425.445603287030000000
      BuiltInReportLink = True
    end
  end
  inherited qryHelper: TADOQuery
    Left = 456
    Top = 259
  end
  inherited formStorage: TJvFormStorage
    Left = 380
    Top = 310
  end
  inherited alEdit: TActionList
    Left = 452
    Top = 312
  end
  inherited pmCustom: TPopupMenu
    Left = 732
    Top = 256
  end
  inherited SaveDialog: TSaveDialog
    Left = 407
    Top = 254
  end
  inherited strView: TJvStrHolder
    Left = 824
    Top = 256
  end
  inherited qrDefaultView: TADOQuery
    Left = 144
    Top = 255
  end
  inherited pmFechas: TPopupMenu
    Left = 384
    Top = 161
  end
  inherited qrVistas: TABSQuery
    Left = 332
    Top = 272
  end
  object Qdatos: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.PacienteID, b.NOMBRE, a.DonacionID, a.MuestraNo, a.Fech' +
        'a, a.UserIdRechaza, '
      
        '       a.FechaRechaza, a.RechazoNota, Producto = (select Product' +
        'oDes from BSProductos where ProductoID = a.ProductoID), c.Causa,'
      
        #9'   d.Rechaso, d.TipoSangre, d.RH,a.FechaAuditoria, a.UsuarioAud' +
        'ito, a.NotaAuditoria'
      'from BSDonacion a, PTCLIENTE b, BSCausasRechazo c, BSDonante D'
      'where a.PacienteID = b.CLIENTEID'
      'And a.CausaRechazoId = c.Id'
      'And b.CLIENTEID = d.PacienteID'
      'and a.DonacionStatus = '#39'Rechazado'#39)
    Left = 512
    Top = 280
    object QdatosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object QdatosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object QdatosDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object QdatosMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object QdatosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QdatosUserIdRechaza: TStringField
      FieldName = 'UserIdRechaza'
    end
    object QdatosFechaRechaza: TDateTimeField
      FieldName = 'FechaRechaza'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QdatosRechazoNota: TStringField
      FieldName = 'RechazoNota'
      Size = 1000
    end
    object QdatosProducto: TWideStringField
      FieldName = 'Producto'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object QdatosCausa: TStringField
      FieldName = 'Causa'
      Size = 50
    end
    object QdatosRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object QdatosTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object QdatosRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object QdatosFechaAuditoria: TDateTimeField
      FieldName = 'FechaAuditoria'
    end
    object QdatosUsuarioAudito: TStringField
      FieldName = 'UsuarioAudito'
    end
    object QdatosNotaAuditoria: TMemoField
      FieldName = 'NotaAuditoria'
      BlobType = ftMemo
    end
  end
end