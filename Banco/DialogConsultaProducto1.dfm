inherited frmDialogConsultaProducto: TfrmDialogConsultaProducto
  Caption = 'frmDialogConsultaProducto'
  ClientHeight = 492
  ClientWidth = 883
  OnCreate = FormCreate
  ExplicitWidth = 891
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 883
    Height = 492
    Anchors = [akLeft, akTop, akRight]
    ExplicitWidth = 883
    ExplicitHeight = 512
    inherited edbuscarpor: TcxComboBox
      Top = 234
      TabOrder = 1
      ExplicitTop = 234
    end
    inherited edbuscar: TcxTextEdit
      Top = 234
      TabOrder = 2
      ExplicitTop = 234
    end
    inherited cgDatos: TcxGrid
      Top = 268
      Width = 861
      Height = 362
      TabOrder = 4
      ExplicitTop = 268
      ExplicitWidth = 861
      ExplicitHeight = 362
      inherited dbDatos: TcxGridDBTableView
        OptionsView.GroupByBox = True
        object dbDatosProductoDes: TcxGridDBColumn
          DataBinding.FieldName = 'ProductoDes'
          Visible = False
          GroupIndex = 0
        end
        object dbDatosTipoSangre: TcxGridDBColumn
          DataBinding.FieldName = 'TipoSangre'
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
      Left = 797
      Top = 456
      TabOrder = 6
      ExplicitLeft = 797
      ExplicitTop = 456
    end
    inherited btaceptar: TcxButton
      Left = 716
      Top = 456
      TabOrder = 5
      ExplicitLeft = 716
      ExplicitTop = 456
    end
    object cxDBTextEdit1: TcxDBTextEdit [5]
      Left = 545
      Top = 234
      DataBinding.DataField = 'CodigoId'
      DataBinding.DataSource = dsDatos
      Properties.OnChange = cxDBTextEdit1PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object TdxLayoutControl [6]
      Left = 11
      Top = 11
      Width = 861
      Height = 186
      Align = alClient
      TabOrder = 0
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
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object Group2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          Caption = 'Reservar'
          LayoutDirection = ldHorizontal
          object Group8: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object Group4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object Group3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object Item7: TdxLayoutItem
                  Caption = 'Receptor'
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                end
                object Item9: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = cxButton2
                  ControlOptions.ShowBorder = False
                end
              end
              object Item8: TdxLayoutItem
                Caption = 'Fecha'
                Control = cxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object Group5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object Group13: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object Item20: TdxLayoutItem
                  Caption = 'Notas'
                  CaptionOptions.AlignVert = tavTop
                  Control = cxMemo1
                  ControlOptions.ShowBorder = False
                end
              end
              object Item11: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
          end
          object Group6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object Group7: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object Item13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Doctor'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
              object Item15: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton3
                ControlOptions.ShowBorder = False
              end
            end
            object Item16: TdxLayoutItem
              Caption = 'Nombre'
              Control = cxDBTextEdit9
              ControlOptions.ShowBorder = False
            end
            object Item12: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              ShowCaption = False
              Control = cxDBCheckBox2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem2: TdxLayoutItem
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
