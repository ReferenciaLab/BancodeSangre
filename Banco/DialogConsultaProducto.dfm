inherited frmDialogConsultaProducto: TfrmDialogConsultaProducto
  Caption = 'frmDialogConsultaProducto'
  ClientHeight = 512
  ClientWidth = 883
  OnCreate = FormCreate
  ExplicitWidth = 891
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 883
    Height = 512
    Anchors = [akLeft, akTop, akRight]
    AutoContentSizes = [acsHeight]
    ExplicitWidth = 883
    ExplicitHeight = 512
    inherited edbuscarpor: TcxComboBox
      Top = 48
      ExplicitTop = 48
    end
    inherited edbuscar: TcxTextEdit
      Top = 48
      ExplicitTop = 48
    end
    inherited cgDatos: TcxGrid
      Top = 82
      Width = 853
      Height = 196
      Align = alTop
      Anchors = []
      BevelEdges = []
      TabOrder = 3
      ExplicitTop = 82
      ExplicitWidth = 853
      ExplicitHeight = 196
      inherited dbDatos: TcxGridDBTableView
        object dbDatosProductoDes: TcxGridDBColumn
          DataBinding.FieldName = 'ProductoDes'
          Visible = False
          GroupIndex = 0
          SortIndex = 0
          SortOrder = soAscending
          IsCaptionAssigned = True
        end
        object dbDatosTipoSangre: TcxGridDBColumn
          DataBinding.FieldName = 'TipoSangre'
          SortIndex = 1
          SortOrder = soAscending
        end
        object dbDatosRH: TcxGridDBColumn
          DataBinding.FieldName = 'RH'
        end
        object dbDatosCantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
        end
        object dbDatosVence: TcxGridDBColumn
          DataBinding.FieldName = 'Vence'
        end
        object dbDatosPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
        end
        object dbDatosDisponible: TcxGridDBColumn
          DataBinding.FieldName = 'Disponible'
        end
        object dbDatosReservado: TcxGridDBColumn
          DataBinding.FieldName = 'Reservado'
        end
        object dbDatosCruce: TcxGridDBColumn
          DataBinding.FieldName = 'Cruce'
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 789
      Top = 476
      TabOrder = 5
      ExplicitLeft = 789
      ExplicitTop = 476
    end
    inherited btaceptar: TcxButton
      Left = 708
      Top = 476
      TabOrder = 4
      ExplicitLeft = 708
      ExplicitTop = 476
    end
    object cxDBTextEdit1: TcxDBTextEdit [5]
      Left = 545
      Top = 48
      DataBinding.DataField = 'CodigoId'
      DataBinding.DataSource = dsDatos
      Properties.OnChange = cxDBTextEdit1PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object Reservacion: TdxLayoutControl [6]
      Left = 19
      Top = 284
      Width = 861
      Height = 186
      Align = alClient
      TabOrder = 6
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dmAppActions.lnfWeb
      object cxButton1: TcxButton
        Left = 463
        Top = 142
        Width = 94
        Height = 25
        Caption = 'Reservar'
        TabOrder = 10
        OnClick = cxButton1Click
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 72
        Top = 63
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsReceptor
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 3
        Width = 231
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 72
        Top = 36
        DataBinding.DataField = 'ReceptorId'
        DataBinding.DataSource = DMB.dsReservar
        Properties.OnChange = cxDBTextEdit5PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 0
        Width = 145
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Tag = 99
        Left = 344
        Top = 36
        DataBinding.DataField = 'ReservadoHasta'
        DataBinding.DataSource = DMB.dsReservar
        ParentFont = False
        Properties.ReadOnly = False
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 97
      end
      object cxButton2: TcxButton
        Left = 223
        Top = 36
        Width = 80
        Height = 21
        Caption = 'Buscar'
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 309
        Top = 63
        Caption = 'Cruzamiento realizado'
        DataBinding.DataField = 'Cruce'
        DataBinding.DataSource = DMB.dsReservar
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 5
        Width = 148
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 463
        Top = 115
        AutoSize = False
        Caption = 'Reservado'
        DataBinding.DataField = 'Reservado'
        DataBinding.DataSource = DMB.dsReservar
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 9
        Height = 21
        Width = 138
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 505
        Top = 36
        DataBinding.DataField = 'DoctorId'
        DataBinding.DataSource = DMB.dsReservar
        Properties.OnChange = cxDBTextEdit7PropertiesChange
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 6
        Width = 145
      end
      object cxButton3: TcxButton
        Left = 656
        Top = 36
        Width = 94
        Height = 21
        Caption = 'Buscar'
        TabOrder = 7
        OnClick = cxButton3Click
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 505
        Top = 63
        TabStop = False
        DataBinding.DataField = 'NOMBRE'
        DataBinding.DataSource = dsDoctor
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 8
        Width = 231
      end
      object cxMemo1: TcxMemo
        Left = 72
        Top = 90
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Height = 77
        Width = 231
      end
      object ReservaciondxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object ReservacionGroup2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          Caption = 'Reservar'
          LayoutDirection = ldHorizontal
          object ReservacionGroup8: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object ReservacionGroup4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object ReservacionGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object ReservacionItem7: TdxLayoutItem
                  Caption = 'Receptor'
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                end
                object ReservacionItem9: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = cxButton2
                  ControlOptions.ShowBorder = False
                end
              end
              object ReservacionItem8: TdxLayoutItem
                Caption = 'Fecha'
                Control = cxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object ReservacionGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object ReservacionGroup13: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object ReservacionItem6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object ReservacionItem20: TdxLayoutItem
                  Caption = 'Notas'
                  CaptionOptions.AlignVert = tavTop
                  Control = cxMemo1
                  ControlOptions.ShowBorder = False
                end
              end
              object ReservacionItem11: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
          end
          object ReservacionGroup6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object ReservacionGroup7: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object ReservacionItem13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Doctor'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
              object ReservacionItem15: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton3
                ControlOptions.ShowBorder = False
              end
            end
            object ReservacionItem16: TdxLayoutItem
              Caption = 'Nombre'
              Control = cxDBTextEdit9
              ControlOptions.ShowBorder = False
            end
            object ReservacionItem12: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              ShowCaption = False
              Control = cxDBCheckBox2
              ControlOptions.ShowBorder = False
            end
            object ReservaciondxLayoutItem2: TdxLayoutItem
              AutoAligns = []
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
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      object dxLayoutControl1Item10: TdxLayoutItem [0]
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item9: TdxLayoutItem [1]
        ControlOptions.ShowBorder = False
      end
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        Visible = False
        object dxLayoutControl1Item7: TdxLayoutItem
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
        end
      end
      inherited dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = []
        AllowRemove = False
        CaptionOptions.AlignVert = tavTop
        ControlOptions.AutoAlignment = False
      end
      object dxLayoutControl1Item8: TdxLayoutItem [4]
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item3: TdxLayoutItem [5]
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DMB.qrConsultaProducto
    Left = 12
    Top = 7
  end
  object dsDoctor: TDataSource
    DataSet = qrDoctor
    Left = 680
    Top = 320
  end
  object dsReceptor: TDataSource
    DataSet = qrReceptor
    Left = 320
    Top = 376
  end
  object tbReceptor: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'CLIENTEID'
    MasterFields = 'ReceptorId'
    MasterSource = dsDatos
    TableName = 'PTCLIENTE'
    Left = 272
    Top = 320
    object tbReceptorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object tbReceptorCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
  end
  object tbDoctor: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'DOCTORID'
    MasterFields = 'DoctorId'
    MasterSource = dsDatos
    TableName = 'PTDOCTOR'
    Left = 624
    Top = 320
    object tbDoctorDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object tbDoctorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
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
    Left = 584
    Top = 323
    object qrDoctorDoctorID: TStringField
      FieldName = 'DoctorID'
      Size = 10
    end
    object qrDoctorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
  object qrReceptor: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       PTCliente'
      'WHERE     (ClienteID = :PacienteID)')
    Left = 280
    Top = 379
    object qrReceptorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
end
