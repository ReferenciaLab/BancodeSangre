inherited frmDatosClientes: TfrmDatosClientes
  ActiveControl = pcDatos
  Caption = 'Pacientes'
  ClientHeight = 567
  ClientWidth = 989
  ExplicitWidth = 1005
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 989
    Height = 515
    ExplicitWidth = 989
    ExplicitHeight = 515
    inherited pcDatos: TcxPageControl
      Width = 865
      Height = 515
      ActivePage = tsDatos
      OnChange = pcDatosChange
      ExplicitWidth = 865
      ExplicitHeight = 515
      ClientRectBottom = 515
      ClientRectRight = 865
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 865
        ExplicitHeight = 491
        inherited lcGrid: TdxLayoutControl
          Width = 865
          Height = 491
          ExplicitWidth = 865
          ExplicitHeight = 491
          inherited dgDatos: TcxGrid
            Width = 836
            Height = 292
            TabOrder = 3
            ExplicitWidth = 836
            ExplicitHeight = 292
            inherited tvDatos: TcxGridDBTableView
              DataController.DataModeController.SmartRefresh = False
              DataController.KeyFieldNames = 'ClienteID'
              object tvDatosClienteID: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'CLIENTEID'
                Width = 81
              end
              object tvDatosAPELLIDOS: TcxGridDBColumn
                Caption = 'Apellidos'
                DataBinding.FieldName = 'APELLIDOS'
                Width = 200
              end
              object tvDatosNOMBRE1: TcxGridDBColumn
                Caption = 'Nombre'
                DataBinding.FieldName = 'NOMBRE1'
                Width = 200
              end
              object tvDatosSEXO: TcxGridDBColumn
                Caption = 'Sexo'
                DataBinding.FieldName = 'SEX'
                Width = 93
              end
              object tvDatosTELEFONO: TcxGridDBColumn
                DataBinding.FieldName = 'TELEFONO'
                Width = 75
              end
              object tvDatosTELEFONO2: TcxGridDBColumn
                Caption = 'Telefono'
                DataBinding.FieldName = 'TELEFONO2'
                Width = 72
              end
              object tvDatosEdad: TcxGridDBColumn
                DataBinding.FieldName = 'Edad'
              end
              object tvDatosColumn1: TcxGridDBColumn
                Caption = 'Fecha Registro'
                DataBinding.FieldName = 'FechaRegistro'
              end
              object tvDatosColumn2: TcxGridDBColumn
                Caption = 'Usuario Crea'
                DataBinding.FieldName = 'UserIdCrea'
              end
            end
          end
          inherited btBuscar: TcxButton
            Left = 548
            TabOrder = 2
            ExplicitLeft = 548
          end
          object edbuscarpor: TcxComboBox [2]
            Left = 79
            Top = 36
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownSizeable = True
            Properties.Items.Strings = (
              'Cliente'
              'Nombre'
              'Telefono')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 146
          end
          object edbuscar: TcxTextEdit [3]
            Left = 263
            Top = 36
            RepositoryItem = DM.cxTextEdit
            Properties.OnChange = edbuscarPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 279
          end
          object cxDBBlobEdit1: TcxDBBlobEdit [4]
            Left = 87
            Top = 459
            Properties.BlobEditKind = bekBlob
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 121
          end
          inherited dxLayoutGroup1: TdxLayoutGroup
            inherited lcGrupoBuscar: TdxLayoutGroup
              Visible = True
              object lcGridItem2: TdxLayoutItem [0]
                Caption = 'Buscar por'
                Control = edbuscarpor
                ControlOptions.ShowBorder = False
              end
              object lcGridItem3: TdxLayoutItem [1]
                Caption = 'Texto'
                Control = edbuscar
                ControlOptions.ShowBorder = False
              end
            end
            inherited lcGridGroup2: TdxLayoutGroup
              object lcGridItem1: TdxLayoutItem
                Caption = 'cxDBBlobEdit1'
                Control = cxDBBlobEdit1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 865
        ExplicitHeight = 491
        inherited lcDatos: TdxLayoutControl
          Width = 865
          Height = 491
          OnCustomization = nil
          ExplicitWidth = 865
          ExplicitHeight = 491
          DesignSize = (
            865
            491)
          object edcliente: TcxDBTextEdit [0]
            Tag = 99
            Left = 129
            Top = 36
            TabStop = False
            DataBinding.DataField = 'CLIENTEID'
            DataBinding.DataSource = dsDatos
            Enabled = False
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 174
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 129
            Top = 117
            DataBinding.DataField = 'NOMBRE1'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.OnChange = cxDBTextEdit2PropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 174
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 129
            Top = 445
            DataBinding.DataField = 'CONTACTO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 17
            Width = 302
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 129
            Top = 472
            DataBinding.DataField = 'TELEFONO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Width = 129
          end
          object cxDBTextEdit5: TcxDBTextEdit [4]
            Left = 129
            Top = 499
            DataBinding.DataField = 'FAX'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            Width = 129
          end
          object cxDBTextEdit6: TcxDBTextEdit [5]
            Left = 129
            Top = 526
            DataBinding.DataField = 'EMAIL'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 21
            Width = 302
          end
          object cxDBTextEdit7: TcxDBTextEdit [6]
            Left = 129
            Top = 553
            DataBinding.DataField = 'DIRECCIONWEB'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 302
          end
          object cxDBTextEdit8: TcxDBTextEdit [7]
            Left = 264
            Top = 472
            DataBinding.DataField = 'TELEFONO2'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 19
            Width = 129
          end
          object cxDBMemo1: TcxDBMemo [8]
            Left = 129
            Top = 325
            DataBinding.DataField = 'DIRECCION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.WantReturns = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Height = 60
            Width = 301
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [9]
            Left = 129
            Top = 612
            RepositoryItem = DM.elcPacientes
            DataBinding.DataField = 'PRINCIPAL'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 24
            Width = 131
          end
          object cxDBDateEdit1: TcxDBDateEdit [10]
            Left = 129
            Top = 144
            DataBinding.DataField = 'FECHANACIMIENTO'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 5
            OnExit = cxDBDateEdit1Exit
            Width = 131
          end
          object CbTipodeCliente: TcxDBImageComboBox [11]
            Left = 129
            Top = 208
            DataBinding.DataField = 'TIPOCLIENTE'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'EMPLEADO'
                Tag = 4
                Value = 'EMP'
              end
              item
                Description = 'PRIVADO'
                Tag = 6
                Value = 'PRI'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 8
            Width = 395
          end
          object cxDBTextEdit10: TcxDBTextEdit [12]
            Left = 356
            Top = 117
            DataBinding.DataField = 'APELLIDOS'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 168
          end
          object EdAseguradora: TcxDBTextEdit [13]
            Left = 129
            Top = 639
            DataBinding.DataField = 'SEGURO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 25
            Width = 121
          end
          object cxDBTextEdit9: TcxDBTextEdit [14]
            Left = 129
            Top = 391
            DataBinding.DataField = 'SECTOR'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 15
            Width = 302
          end
          object cxDBMaskEdit1: TcxDBMaskEdit [15]
            Left = 129
            Top = 90
            DataBinding.DataField = 'Identificacion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            OnExit = cxDBMaskEdit1Exit
            OnKeyPress = cxDBMaskEdit1KeyPress
            Width = 174
          end
          object DBRadioGroup1: TDBRadioGroup [16]
            Left = 295
            Top = 144
            Width = 229
            Height = 31
            Columns = 2
            DataField = 'SEXO'
            DataSource = dsDatos
            Items.Strings = (
              'FEMENINO'
              'MASCULINO')
            ParentBackground = True
            TabOrder = 6
            TabStop = True
            Values.Strings = (
              '0'
              '1')
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox [17]
            Left = 129
            Top = 418
            DataBinding.DataField = 'CIUDADID'
            DataBinding.DataSource = dsDatos
            Properties.KeyFieldNames = 'CiudadID'
            Properties.ListColumns = <
              item
                FieldName = 'Descripcion'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DM.dsCiudad
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 16
            Width = 302
          end
          object cxImage1: TcxImage [18]
            Left = 530
            Top = 36
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ShowFocusRect = False
            Properties.Stretch = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Height = 168
            Width = 168
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox [19]
            Left = 129
            Top = 63
            DataBinding.DataField = 'TipoDocumentoId'
            DataBinding.DataSource = dsDatos
            Properties.DropDownListStyle = lsFixedList
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'TipoDocumentoId'
            Properties.ListColumns = <
              item
                FieldName = 'Descripcion'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DM.dsTiposDocumentos
            Properties.OnChange = cxDBLookupComboBox2PropertiesChange
            Properties.OnCloseUp = cxDBLookupComboBox2PropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 174
          end
          object cxGrid1: TcxGrid [20]
            Left = 461
            Top = 325
            Width = 275
            Height = 249
            Anchors = [akLeft, akTop, akBottom]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              NavigatorButtons.Delete.Visible = False
              NavigatorButtons.Edit.Visible = False
              NavigatorButtons.Post.Visible = False
              NavigatorButtons.Cancel.Visible = False
              FilterBox.Visible = fvNever
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = dsDonacionesHist
              DataController.Filter.Active = True
              DataController.Filter.AutoDataSetFilter = True
              DataController.KeyFieldNames = 'DonacionID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                    end>
                  SummaryItems = <>
                end>
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnMoving = False
              OptionsCustomize.ColumnSorting = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                PropertiesClassName = 'TcxDateEditProperties'
                Width = 64
              end
              object tvDatosDonacionID: TcxGridDBColumn
                Caption = 'Donacion'
                DataBinding.FieldName = 'DonacionID'
                Width = 83
              end
              object tvDonacionStatus: TcxGridDBColumn
                Caption = 'Estatus'
                DataBinding.FieldName = 'DonacionStatus'
                Width = 71
              end
              object tvDonacionNota: TcxGridDBColumn
                Caption = 'Nota'
                DataBinding.FieldName = 'RechazoNota'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Width = 43
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox [21]
            Left = 129
            Top = 181
            DataBinding.DataField = 'GRUPOCLIENTE'
            DataBinding.DataSource = dsDatos
            Properties.KeyFieldNames = 'GRUPOCLIENTE'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRIPCION'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DM.dsGrupoCliente
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            OnEditing = cxDBLookupComboBox3Editing
            Width = 250
          end
          object cxDBTextEdit1: TcxDBTextEdit [22]
            Left = 129
            Top = 235
            DataBinding.DataField = 'COLECTA_MOVIL'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 395
          end
          object DBEdit1: TDBEdit [23]
            Left = 130
            Top = 263
            Width = 79
            Height = 18
            BevelEdges = []
            BorderStyle = bsNone
            DataField = 'CLINICA_CODIGO'
            DataSource = dsDatos
            TabOrder = 11
          end
          object cxTextEdit1: TcxTextEdit [24]
            Left = 216
            Top = 262
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clInfoBk
            Style.HotTrack = False
            TabOrder = 12
            Width = 308
          end
          object cxButton1: TcxButton [25]
            Left = 530
            Top = 262
            Width = 75
            Height = 25
            Caption = 'Buscar Clinica'
            TabOrder = 13
            OnClick = cxButton1Click
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              AutoAligns = [aaVertical]
              Caption = 'General'
              object lcDatosGroup13: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosGroup5: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object lcDatosItem1: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Cliente'
                    Enabled = False
                    Control = edcliente
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosGroup4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object lcDatosItem18: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Tipo Documento'
                      Control = cxDBLookupComboBox2
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem14: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Documento No.'
                      Control = cxDBMaskEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosGroup6: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object lcDatosItem2: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Nombre'
                        Control = cxDBTextEdit2
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem10: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Apellidos'
                        Control = cxDBTextEdit10
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                  object lcDatosGroup9: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object lcDatosGroup11: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object lcDatosGroup12: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        LayoutDirection = ldHorizontal
                        ShowBorder = False
                        object lcDatosItem21: TdxLayoutItem
                          AutoAligns = [aaVertical]
                          Caption = 'Fecha de Nacimiento'
                          Control = cxDBDateEdit1
                          ControlOptions.ShowBorder = False
                        end
                        object lcDatosItem20: TdxLayoutItem
                          AutoAligns = [aaVertical]
                          Caption = 'Sexo'
                          Control = DBRadioGroup1
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                      end
                      object lcDatosItem23: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Categoria'
                        Control = cxDBLookupComboBox3
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object lcDatosItem3: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Tipo de Cliente'
                      Control = CbTipodeCliente
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem22: TdxLayoutItem
                      Caption = 'Lugar Colecta'
                      Control = cxDBTextEdit1
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object lcDatosItem11: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'cxImage1'
                  ShowCaption = False
                  Control = cxImage1
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup16: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem25: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Clinica Procedencia'
                  Control = DBEdit1
                end
                object lcDatosItem24: TdxLayoutItem
                  Control = cxTextEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem26: TdxLayoutItem
                  AutoAligns = []
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = cxButton1
                  ControlOptions.AutoAlignment = False
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroup10: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object lcDatosGroup7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosGroup2: TdxLayoutGroup
                  Caption = 'Contacto'
                  object lcDatosItem12: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Direcci'#243'n'
                    Control = cxDBMemo1
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem16: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Sector'
                    Control = cxDBTextEdit9
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem13: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Ciudad'
                    Control = cxDBLookupComboBox1
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Contacto'
                    Control = cxDBTextEdit3
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosGroup3: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object lcDatosItem5: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Telefono'
                      Control = cxDBTextEdit4
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem9: TdxLayoutItem
                      Caption = 'cxDBTextEdit8'
                      ShowCaption = False
                      Control = cxDBTextEdit8
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object lcDatosItem6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Fax'
                    Control = cxDBTextEdit5
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem7: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Email'
                    Control = cxDBTextEdit6
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem8: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Direcci'#243'n Web'
                    Control = cxDBTextEdit7
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosGroup8: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  Caption = 'Historico de Donaciones'
                  LayoutDirection = ldHorizontal
                  object lcDatosItem19: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = cxGrid1
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object lcDatosGrpPacientes: TdxLayoutGroup
                AutoAligns = [aaVertical]
                Caption = 'Paciente'
                Visible = False
                object lcDatosItem17: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Principal'
                  Visible = False
                  Control = cxDBExtLookupComboBox2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem15: TdxLayoutItem
                  Caption = 'Aseguradora'
                  Visible = False
                  Control = EdAseguradora
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object lcDatosGroup14: TdxLayoutGroup
          end
        end
      end
    end
    object BtTransacciones: TcxButton [1]
      Left = 877
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Transacciones'
      TabOrder = 1
      OnClick = BtTransaccionesClick
    end
    object BtBalance: TcxButton [2]
      Left = 877
      Top = 38
      Width = 100
      Height = 25
      Caption = 'Balance'
      TabOrder = 2
      OnClick = BtBalanceClick
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtTransacciones
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtBalance
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 989
    ExplicitWidth = 989
  end
  object RzStatusBar1: TRzStatusBar [3]
    Left = 0
    Top = 548
    Width = 989
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    VisualStyle = vsGradient
  end
  object Panel1: TPanel [4]
    Left = 129
    Top = 201
    Width = 322
    Height = 201
    Color = 16311249
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 71
      Top = 66
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label2: TLabel
      Left = 72
      Top = 95
      Width = 27
      Height = 13
      Caption = 'Clave'
    end
    object edUsuario: TcxMaskEdit
      Left = 115
      Top = 63
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edClave: TcxMaskEdit
      Left = 115
      Top = 90
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object btAceptar: TcxButton
      Left = 56
      Top = 138
      Width = 75
      Height = 25
      BiDiMode = bdLeftToRight
      Caption = 'Aceptar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnClick = btAceptarClick
    end
    object btCancelar: TcxButton
      Left = 180
      Top = 138
      Width = 75
      Height = 25
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnClick = btCancelarClick
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 632
    Top = 123
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrClientes
    Left = 249
    Top = 123
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 397
    Top = 107
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38921.843721967590000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38921.843721967590000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Grid = nil
    PopupMenus = <
      item
        HitTypes = []
        Index = 0
      end>
    UseBuiltInPopupMenus = False
    Left = 56
    Top = 131
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 321
    Top = 107
  end
  inherited SaveDialog: TSaveDialog
    Left = 673
    Top = 178
  end
  inherited qryHelper: TADOQuery
    Left = 521
    Top = 129
  end
  inherited alEdit: TActionList
    Left = 444
    Top = 107
  end
  inherited pmCustom: TPopupMenu
    Left = 143
    Top = 131
  end
  inherited qrDefaultView: TADOQuery
    Left = 744
    Top = 178
  end
  inherited strView: TJvStrHolder
    Left = 636
    Top = 474
  end
  inherited strTableNames: TJvStrHolder
    Left = 490
    Top = 417
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 658
    Top = 203
  end
  inherited qrUserFields: TABSQuery
    Left = 396
    Top = 171
  end
  inherited qrVistas: TABSQuery
    Left = 438
    Top = 378
  end
  object pmAcuerdoComercial: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmCustomPopup
    Left = 552
    Top = 99
    object Precios1: TMenuItem
      Caption = 'Precios'
    end
    object Descuentos1: TMenuItem
      Caption = 'Descuentos'
    end
  end
  object ActionList1: TActionList
    Left = 81
    Top = 244
  end
  object dsDonacionesHist: TDataSource
    AutoEdit = False
    Left = 87
    Top = 171
  end
  object qrLogin: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'pSuc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '   FROM SysUsuarios,PTUsuarioSucursal'
      'WHERE  SysUsuarios.UserID = PTUsuarioSucursal.UserID'
      '     AND SysUsuarios.UserID = :pUser'
      '     AND PTUsuarioSucursal.SucursalID = :pSuc '
      '     ')
    Left = 308
    Top = 180
    object qrLoginUserId: TStringField
      FieldName = 'UserId'
      FixedChar = True
      Size = 10
    end
    object qrLoginClave: TStringField
      FieldName = 'Clave'
      FixedChar = True
      Size = 10
    end
    object qrLoginNombre: TStringField
      FieldName = 'Nombre'
      FixedChar = True
      Size = 30
    end
    object qrLoginRolID: TSmallintField
      FieldName = 'RolID'
    end
  end
end
