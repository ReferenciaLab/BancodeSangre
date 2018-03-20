inherited frmDatosDonaciones: TfrmDatosDonaciones
  Caption = 'Modificar donaciones'
  ClientHeight = 608
  ClientWidth = 947
  ExplicitWidth = 963
  ExplicitHeight = 646
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 947
    Height = 575
    ExplicitWidth = 947
    ExplicitHeight = 575
    inherited pcDatos: TcxPageControl
      Width = 839
      Height = 517
      ActivePage = tsDatos
      ExplicitWidth = 839
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 839
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 839
        ExplicitHeight = 551
        inherited lcGrid: TdxLayoutControl
          Width = 839
          Height = 493
          ExplicitWidth = 839
          ExplicitHeight = 551
          inherited dgDatos: TcxGrid
            Width = 819
            Height = 398
            ExplicitWidth = 819
            ExplicitHeight = 398
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'DonacionID'
              DataController.KeyFieldNames = 'DonacionID'
              object tvDatosDonacionID: TcxGridDBColumn
                DataBinding.FieldName = 'DonacionID'
                Width = 97
              end
              object tvDatosMuestraNo: TcxGridDBColumn
                DataBinding.FieldName = 'MuestraNo'
                Width = 96
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                PropertiesClassName = 'TcxDateEditProperties'
                Width = 128
              end
              object tvDatosNOMBREPACIENTE: TcxGridDBColumn
                Caption = 'Paciente'
                DataBinding.FieldName = 'NOMBREPACIENTE'
                Width = 268
              end
              object tvDatosDonacionStatus: TcxGridDBColumn
                Caption = 'Estado'
                DataBinding.FieldName = 'DonacionStatus'
                Width = 106
              end
              object tvDatosCausaRechazo: TcxGridDBColumn
                DataBinding.FieldName = 'CausaRechazo'
              end
            end
          end
          object lcGridItem1: TdxLayoutItem
            Caption = 'cxDBTextEdit1'
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 839
        ExplicitHeight = 551
        inherited lcDatos: TdxLayoutControl
          Width = 839
          Height = 493
          ExplicitWidth = 839
          ExplicitHeight = 551
          object cxDBTextEdit2: TcxDBTextEdit [0]
            Left = 111
            Top = 63
            DataBinding.DataField = 'NOMBREPACIENTE'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 326
          end
          object cxDBTextEdit4: TcxDBTextEdit [1]
            Left = 316
            Top = 36
            DataBinding.DataField = 'MuestraNo'
            DataBinding.DataSource = dsDonacion
            Properties.OnChange = cxDBTextEdit4PropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBDateEdit1: TcxDBDateEdit [2]
            Left = 494
            Top = 36
            DataBinding.DataField = 'Fecha'
            DataBinding.DataSource = dsDonacion
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 99
          end
          object cxDBTextEdit7: TcxDBTextEdit [3]
            Left = 111
            Top = 122
            DataBinding.DataField = 'Temperatura'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object cxDBTextEdit8: TcxDBTextEdit [4]
            Left = 316
            Top = 122
            DataBinding.DataField = 'TensionArteriar'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          object cxDBTextEdit9: TcxDBTextEdit [5]
            Left = 111
            Top = 149
            DataBinding.DataField = 'Peso'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 121
          end
          object cxDBTextEdit10: TcxDBTextEdit [6]
            Left = 316
            Top = 149
            DataBinding.DataField = 'PulsoMinimo'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 121
          end
          object cxDBTextEdit11: TcxDBTextEdit [7]
            Left = 554
            Top = 122
            DataBinding.DataField = 'Hemoglobina'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 15
            Width = 121
          end
          object cxDBTextEdit12: TcxDBTextEdit [8]
            Left = 740
            Top = 122
            DataBinding.DataField = 'Hematocito'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 17
            Width = 121
          end
          object cxDBTextEdit13: TcxDBTextEdit [9]
            Left = 554
            Top = 149
            DataBinding.DataField = 'GlobulosBlancos'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 16
            Width = 121
          end
          object cxDBTextEdit14: TcxDBTextEdit [10]
            Left = 740
            Top = 149
            DataBinding.DataField = 'Plaquetas'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Width = 121
          end
          object cxDBTextEdit17: TcxDBTextEdit [11]
            Left = 111
            Top = 287
            DataBinding.DataField = 'CantidadRecogida'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 121
          end
          object cxDBComboBox4: TcxDBComboBox [12]
            Left = 554
            Top = 208
            DataBinding.DataField = 'Rechaso'
            DataBinding.DataSource = dsDonante
            Properties.Items.Strings = (
              'Temporal'
              'Permanente')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 19
            Width = 185
          end
          object cxDBMemo2: TcxDBMemo [13]
            Left = 745
            Top = 208
            DataBinding.DataField = 'RechasoNota'
            DataBinding.DataSource = dsDonante
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Height = 80
            Width = 132
          end
          object cxDBMemo1: TcxDBMemo [14]
            Left = 238
            Top = 208
            DataBinding.DataField = 'NotaEntrevista'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Height = 101
            Width = 199
          end
          object DBLookupComboBox2: TDBLookupComboBox [15]
            Left = 494
            Top = 63
            Width = 159
            Height = 21
            DataField = 'ProductoID'
            DataSource = dsDonacion
            KeyField = 'ProductoID'
            ListField = 'ProductoDes'
            ListSource = DMB.dsProductosIniciales
            TabOrder = 4
          end
          object DBLookupComboBox1: TDBLookupComboBox [16]
            Left = 554
            Top = 235
            Width = 185
            Height = 21
            DataField = 'CausaRechazoId'
            DataSource = dsDonacion
            KeyField = 'Id'
            ListField = 'Causa'
            ListSource = DMB.dsCausasRechaso
            TabOrder = 20
          end
          object cxDBTimeEdit1: TcxDBTimeEdit [17]
            Left = 111
            Top = 233
            DataBinding.DataField = 'HoraInicio'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 11
            Width = 121
          end
          object cxDBTimeEdit2: TcxDBTimeEdit [18]
            Left = 111
            Top = 260
            DataBinding.DataField = 'HoraFin'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 12
            Width = 121
          end
          object cxDBComboBox1: TcxDBComboBox [19]
            Left = 111
            Top = 347
            DataBinding.DataField = 'TipoSangre'
            DataBinding.DataSource = dsDonante
            Properties.Items.Strings = (
              '"A"'
              '"B"'
              '"AB"'
              '"O"')
            Properties.PostPopupValueOnTab = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 23
            Width = 218
          end
          object cxDBComboBox2: TcxDBComboBox [20]
            Left = 111
            Top = 374
            DataBinding.DataField = 'RH'
            DataBinding.DataSource = dsDonante
            Properties.Items.Strings = (
              'POSITIVO'
              'NEGATIVO')
            Properties.PostPopupValueOnTab = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 24
            Width = 142
          end
          object cxGrid1: TcxGrid [21]
            Left = 377
            Top = 347
            Width = 500
            Height = 141
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 25
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              NavigatorButtons.Delete.Visible = False
              NavigatorButtons.Edit.Visible = False
              NavigatorButtons.Post.Visible = False
              NavigatorButtons.Cancel.Visible = False
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = dsResultados
              DataController.DetailKeyFieldNames = 'PruebaId'
              DataController.Filter.OnChanged = tvDatosDataControllerFilterChanged
              DataController.Filter.Active = True
              DataController.Filter.AutoDataSetFilter = True
              DataController.KeyFieldNames = 'PruebaId'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Background = stGrDatos
              Styles.Content = stGrDatos
              OnCustomization = tvDatosCustomization
              object cxGridDBTableView1PruebaId: TcxGridDBColumn
                DataBinding.FieldName = 'PruebaId'
                MinWidth = 103
                Options.FilteringMRUItemsList = False
                Options.Focusing = False
                Options.IncSearch = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 103
              end
              object cxGridDBTableView1Descripcion: TcxGridDBColumn
                Caption = 'Prueba'
                DataBinding.FieldName = 'Descripcion'
                MinWidth = 280
                Options.FilteringMRUItemsList = False
                Options.Focusing = False
                Options.IncSearch = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 280
              end
              object cxGridDBTableView1Resultado: TcxGridDBColumn
                DataBinding.FieldName = 'Resultado'
                Width = 117
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox [22]
            Left = 694
            Top = 63
            DataBinding.DataField = 'TipoFundaID'
            DataBinding.DataSource = dsDonacion
            Properties.KeyFieldNames = 'TipoFundaID'
            Properties.ListColumns = <
              item
                FieldName = 'TipoFundaDes'
              end>
            Properties.ListSource = DMB.dsTipoBolsa
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 5
            Width = 167
          end
          object cxTextEdit1: TcxTextEdit [23]
            Left = 554
            Top = 262
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 21
            Text = 'cxTextEdit1'
            Width = 121
          end
          object DBEdit5: TDBEdit [24]
            Left = 112
            Top = 209
            Width = 118
            Height = 17
            BorderStyle = bsNone
            DataField = 'FECHA_RECOLECCION'
            DataSource = dsDonacion
            TabOrder = 10
          end
          object cxDBTextEdit1: TcxDBTextEdit [25]
            Left = 111
            Top = 36
            DataBinding.DataField = 'DonacionID'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Donacion'
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem4: TdxLayoutItem
                  Caption = 'Muestra'
                  Control = cxDBTextEdit4
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem5: TdxLayoutItem
                  Caption = 'Fecha'
                  Control = cxDBDateEdit1
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup4: TdxLayoutGroup
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
                object lcDatosItem23: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Donacion'
                  Control = DBLookupComboBox2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem22: TdxLayoutItem
                  Caption = 'Funda'
                  Control = cxDBLookupComboBox1
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroup13: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object lcDatosGroup18: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosGroup14: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object lcDatosGroup3: TdxLayoutGroup
                    Caption = 'Examen fisico'
                    LayoutDirection = ldHorizontal
                    object lcDatosGroup5: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object lcDatosItem8: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Temperatura'
                        Control = cxDBTextEdit7
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem10: TdxLayoutItem
                        Caption = 'Peso'
                        Control = cxDBTextEdit9
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object lcDatosGroup6: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object lcDatosItem9: TdxLayoutItem
                        Caption = 'Tension arteriar'
                        Control = cxDBTextEdit8
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem11: TdxLayoutItem
                        Caption = 'Pulso'
                        Control = cxDBTextEdit10
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                  object lcDatosGroup10: TdxLayoutGroup
                    Caption = 'Recoleccion'
                    LayoutDirection = ldHorizontal
                    object lcDatosGroup15: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object lcDatosItem27: TdxLayoutItem
                        Caption = 'Fecha Extracci'#243'n'
                        Control = DBEdit5
                      end
                      object lcDatosItem16: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Hora inicial'
                        Control = cxDBTimeEdit1
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem17: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Hora final'
                        Control = cxDBTimeEdit2
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem18: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Cantidad '
                        Control = cxDBTextEdit17
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object lcDatosItem21: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      CaptionOptions.AlignVert = tavTop
                      CaptionOptions.Layout = clTop
                      Control = cxDBMemo1
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object lcDatosGroup12: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object lcDatosGroup7: TdxLayoutGroup
                    Caption = 'Hemograma'
                    LayoutDirection = ldHorizontal
                    object lcDatosGroup8: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object lcDatosItem12: TdxLayoutItem
                        Caption = 'Hemoglobina'
                        Control = cxDBTextEdit11
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem14: TdxLayoutItem
                        Caption = 'Globulos Blancos'
                        Control = cxDBTextEdit13
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object lcDatosGroup9: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object lcDatosItem13: TdxLayoutItem
                        Caption = 'Hematocito'
                        Control = cxDBTextEdit12
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem15: TdxLayoutItem
                        Caption = 'Plaquetas'
                        Control = cxDBTextEdit14
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                  object lcDatosGroup11: TdxLayoutGroup
                    Caption = 'Rechaso'
                    LayoutDirection = ldHorizontal
                    object lcDatosGroup16: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object lcDatosItem19: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Tipo'
                        CaptionOptions.AlignVert = tavTop
                        Control = cxDBComboBox4
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem24: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Causa '
                        CaptionOptions.AlignVert = tavTop
                        Control = DBLookupComboBox1
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem25: TdxLayoutItem
                        Caption = 'cxTextEdit1'
                        CaptionOptions.AlignVert = tavTop
                        Visible = False
                        Control = cxTextEdit1
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object lcDatosItem20: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      CaptionOptions.AlignVert = tavTop
                      Control = cxDBMemo2
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
              object lcDatosGroup17: TdxLayoutGroup
                Caption = 'Pruebas'
                LayoutDirection = ldHorizontal
                object lcDatosGroup20: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object lcDatosItem3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Grupo ABO'
                    Control = cxDBComboBox1
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Factor RH'
                    Control = cxDBComboBox2
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Control = cxGrid1
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Historial'
        ImageIndex = 2
        ExplicitHeight = 551
        object Label1: TLabel
          Left = 17
          Top = 69
          Width = 95
          Height = 13
          Caption = 'Usuario Ultima Mod.'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 17
          Top = 40
          Width = 88
          Height = 13
          Caption = 'Fecha Ultimo Mod.'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 17
          Top = 16
          Width = 41
          Height = 13
          Caption = 'Donante'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 13
          Top = 381
          Width = 74
          Height = 13
          Caption = 'Causa Rechazo'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 13
          Top = 400
          Width = 67
          Height = 13
          Caption = 'Nota Rechazo'
          FocusControl = DBMemo1
        end
        object Label6: TLabel
          Left = 400
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit6
          Visible = False
        end
        object Label7: TLabel
          Left = 392
          Top = 30
          Width = 41
          Height = 13
          Caption = 'Rechaso'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 410
          Top = 49
          Width = 23
          Height = 13
          Caption = 'Nota'
          FocusControl = DBMemo2
        end
        object DBGrid1: TDBGrid
          Left = 13
          Top = 113
          Width = 819
          Height = 259
          BorderStyle = bsNone
          Color = clInfoBk
          DataSource = DShistorico
          FixedColor = clHotLight
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DONACIONID'
              Title.Caption = 'Donacion'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DONACIONSTATUS'
              Title.Caption = 'Estatus'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Caption = 'Fecha Don.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FechaRechaza_DON'
              Title.Caption = 'Fecha Rechaso'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECHASO'
              Title.Caption = 'Tipo Rechaso'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Useridrechaza'
              Title.Caption = 'Usuario Rechaso'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIOMOD'
              Title.Caption = 'Usuario Modifico'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHAMODIFICACION'
              Title.Caption = 'Fecha Modificacion'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORAMOD'
              Title.Caption = 'Hora Mod'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 67
              Visible = True
            end>
        end
        object DBEdit1: TDBEdit
          Left = 116
          Top = 59
          Width = 264
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'USUARIOMOD'
          DataSource = dsDonante
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 116
          Top = 32
          Width = 264
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'FECHAMODIFICACION'
          DataSource = dsDonante
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 116
          Top = 5
          Width = 264
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NOMBREPACIENTE'
          DataSource = dsEntradaPaciente
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 93
          Top = 378
          Width = 241
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'CAUSARECHASO'
          DataSource = DShistorico
          ReadOnly = True
          TabOrder = 4
        end
        object DBMemo1: TDBMemo
          Left = 93
          Top = 400
          Width = 241
          Height = 89
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'RECHASONOTA'
          DataSource = DShistorico
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 439
          Top = 3
          Width = 134
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'Estado'
          DataSource = dsDonante
          TabOrder = 6
          Visible = False
        end
        object DBEdit7: TDBEdit
          Left = 439
          Top = 26
          Width = 134
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'Rechaso'
          DataSource = dsDonante
          TabOrder = 7
        end
        object DBMemo2: TDBMemo
          Left = 439
          Top = 53
          Width = 393
          Height = 55
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'RechasoNota'
          DataSource = dsDonante
          TabOrder = 8
        end
      end
    end
    object cxButton1: TcxButton [1]
      Left = 851
      Top = 7
      Width = 75
      Height = 25
      Action = Etiqueta
      TabOrder = 1
    end
    object cxButton2: TcxButton [2]
      Left = 851
      Top = 38
      Width = 75
      Height = 25
      Action = Muestras
      TabOrder = 2
    end
    object cxButton3: TcxButton [3]
      Left = 851
      Top = 69
      Width = 75
      Height = 25
      Action = Donante
      TabOrder = 3
    end
    object cxButton4: TcxButton [4]
      Left = 851
      Top = 100
      Width = 75
      Height = 25
      Action = Registro
      TabOrder = 4
    end
    object cxButton5: TcxButton [5]
      Left = 851
      Top = 131
      Width = 84
      Height = 25
      Action = Estado
      TabOrder = 5
    end
    object cxButton6: TcxButton [6]
      Left = 851
      Top = 162
      Width = 75
      Height = 25
      Action = Borrar
      TabOrder = 6
    end
    object cxButton7: TcxButton [7]
      Left = 851
      Top = 193
      Width = 75
      Height = 25
      Caption = 'Historial'
      TabOrder = 7
      OnClick = cxButton7Click
    end
    object cxButton8: TcxButton [8]
      Left = 851
      Top = 224
      Width = 75
      Height = 25
      Caption = 'Anterior'
      TabOrder = 8
      OnClick = cxButton8Click
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = cxButton2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'cxButton3'
            ShowCaption = False
            Control = cxButton3
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'cxButton4'
            ShowCaption = False
            Control = cxButton4
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'cxButton5'
            ShowCaption = False
            Control = cxButton5
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'cxButton6'
            ShowCaption = False
            Control = cxButton6
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'cxButton7'
            ShowCaption = False
            Control = cxButton7
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            Caption = 'cxButton8'
            ShowCaption = False
            Control = cxButton8
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 947
    ExplicitWidth = 947
  end
  inherited formStorage: TJvFormStorage
    Left = 448
    Top = 158
  end
  inherited dsDatos: TDataSource
    Left = 372
    Top = 151
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 268
    Top = 404
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39484.696864502320000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39484.696866678240000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 64
    Top = 168
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 720
    Top = 260
  end
  inherited SaveDialog: TSaveDialog
    Left = 745
    Top = 208
  end
  inherited qryHelper: TADOQuery
    Left = 276
    Top = 59
  end
  inherited alEdit: TActionList
    Left = 188
    Top = 104
  end
  inherited pmCustom: TPopupMenu
    Left = 384
    Top = 436
  end
  inherited qrDefaultView: TADOQuery
    Left = 400
    Top = 207
  end
  inherited strView: TJvStrHolder
    Left = 676
    Top = 332
  end
  inherited strTableNames: TJvStrHolder
    Left = 160
    Top = 452
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 304
    Top = 100
  end
  inherited qrUserFields: TABSQuery
    Left = 128
    Top = 468
  end
  inherited qrVistas: TABSQuery
    Left = 748
    Top = 320
  end
  object ActImpresion: TActionList
    Left = 652
    Top = 192
    object Muestras: TAction
      Caption = 'Muestras'
      OnExecute = MuestrasExecute
    end
    object Etiqueta: TAction
      Caption = 'Etiqueta'
      OnExecute = EtiquetaExecute
    end
    object Donante: TAction
      Caption = 'Donante'
    end
    object ActBorrar: TAction
      Caption = 'Borrar'
    end
    object Estado: TAction
      Caption = 'Cambiar Estado'
      OnExecute = EstadoExecute
    end
    object Registro: TAction
      Caption = 'Registro'
      OnExecute = RegistroExecute
    end
    object Borrar: TAction
      Caption = 'Borrar'
      OnExecute = BorrarExecute
    end
  end
  object dsDonacion: TDataSource
    AutoEdit = False
    DataSet = tbDonacion
    OnStateChange = dsDatosStateChange
    Left = 388
    Top = 271
  end
  object tbDonacion: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    BeforeEdit = tbDonacionBeforeEdit
    BeforePost = tbDonacionBeforePost
    IndexFieldNames = 'DonacionID'
    MasterFields = 'DonacionID'
    MasterSource = dsDatos
    TableName = 'BSDonacion'
    Left = 256
    Top = 184
    object tbDonacionDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object tbDonacionMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object tbDonacionMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object tbDonacionNoAsCorto: TStringField
      FieldName = 'NoAsCorto'
      ReadOnly = True
      Size = 11
    end
    object tbDonacionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object tbDonacionPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object tbDonacionNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object tbDonacionDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object tbDonacionDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object tbDonacionComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object tbDonacionCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object tbDonacionTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object tbDonacionPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object tbDonacionPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object tbDonacionPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object tbDonacionTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object tbDonacionHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object tbDonacionHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object tbDonacionDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object tbDonacionDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object tbDonacionHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object tbDonacionFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object tbDonacionMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object tbDonacionTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object tbDonacionTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object tbDonacionDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object tbDonacionPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object tbDonacionHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object tbDonacionHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object tbDonacionGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object tbDonacionPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object tbDonacionUsuarioAS: TStringField
      FieldName = 'UsuarioAS'
      FixedChar = True
      Size = 15
    end
    object tbDonacionNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object tbDonacionProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object tbDonacionReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object tbDonacionDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object tbDonacionDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object tbDonacionUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object tbDonacionUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object tbDonacionUserIdHemograma: TStringField
      FieldName = 'UserIdHemograma'
      Size = 50
    end
    object tbDonacionCausaRechazoId: TIntegerField
      FieldName = 'CausaRechazoId'
    end
    object tbDonacionUSUARIOMOD: TStringField
      FieldName = 'USUARIOMOD'
    end
    object tbDonacionFECHAMODIFICACION: TDateTimeField
      FieldName = 'FECHAMODIFICACION'
    end
    object tbDonacionFECHA_RECOLECCION: TDateTimeField
      FieldName = 'FECHA_RECOLECCION'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object tbDonacionTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
  end
  object tbDonante: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    BeforeEdit = tbDonanteBeforeEdit
    BeforePost = tbDonanteBeforePost
    IndexFieldNames = 'PacienteID'
    MasterFields = 'PacienteID'
    MasterSource = dsDatos
    TableName = 'BSDonante'
    Left = 328
    Top = 304
    object tbDonantePacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object tbDonanteTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object tbDonanteEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object tbDonanteDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object tbDonanteTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object tbDonanteRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object tbDonanteDu: TWideStringField
      FieldName = 'Du'
      FixedChar = True
      Size = 10
    end
    object tbDonanteUltimaDonacionId: TStringField
      FieldName = 'UltimaDonacionId'
    end
    object tbDonanteFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
    object tbDonanteRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object tbDonanteRechasoNota: TMemoField
      FieldName = 'RechasoNota'
      BlobType = ftMemo
    end
    object tbDonanteUSUARIOMOD: TStringField
      FieldName = 'USUARIOMOD'
    end
    object tbDonanteFECHAMODIFICACION: TDateTimeField
      FieldName = 'FECHAMODIFICACION'
    end
  end
  object dsDonante: TDataSource
    DataSet = tbDonante
    OnStateChange = dsDatosStateChange
    Left = 724
    Top = 359
  end
  object tbEntradaPaciente: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    IndexFieldNames = 'ENTRADAID'
    MasterFields = 'DonacionID'
    MasterSource = dsDatos
    TableName = 'PTENTRADAPACIENTE'
    Left = 232
    Top = 296
    object tbEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object tbEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object tbEntradaPacienteTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object tbEntradaPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object tbEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
  end
  object dsEntradaPaciente: TDataSource
    DataSet = tbEntradaPaciente
    OnStateChange = dsDatosStateChange
    Left = 596
    Top = 351
  end
  object dsResultados: TDataSource
    DataSet = qrResultados
    Left = 536
    Top = 424
  end
  object qrResultados: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSResultados.MUESTRANO, dbo.BSResultados.PruebaId' +
        ', dbo.PTPRUEBA.DESCRIPCION, dbo.BSResultados.Resultado'
      'FROM         dbo.BSResultados INNER JOIN'
      
        '                      dbo.PTPRUEBA ON dbo.BSResultados.PruebaId ' +
        '= dbo.PTPRUEBA.CODIGOIDAS400'
      'Where MuestraNo = :MuestraNo')
    Left = 432
    Top = 360
    object qrResultadosMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrResultadosPruebaId: TStringField
      FieldName = 'PruebaId'
    end
    object qrResultadosResultado: TStringField
      FieldName = 'Resultado'
      Size = 15
    end
    object qrResultadosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
  object Qhistorico: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM BSDonacion'
      'WHERE DONACIONID = '#39'050000341'#39' ')
    Left = 532
    Top = 291
  end
  object Qhistorico_donante: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 5 A.DONACIONID,A.FECHA,A.PACIENTEID,A.DONACIONSTATUS,'
      '       A.DONACIONTIPO,A.USUARIOMOD,A.FECHAMODIFICACION,'
      
        '       RECHASO = (SELECT TOP 1 RECHASO FROM BSDonanTE_Historico ' +
        'WHERE PACIENTEID = A.PACIENTEID),'
      
        '       RECHASONOTA = (SELECT TOP 1 RECHASONOTA FROM BSDonanTE_Hi' +
        'storico WHERE PACIENTEID = A.PACIENTEID),'
      
        '       CAUSARECHASO =(SELECT CAUSA FROM BSCausasRechazo WHERE ID' +
        ' = A.CAUSARECHAZOID),'
      
        '       A.FECHARECHAZA,A.RECHAZONOTA,A.Useridrechaza,A.FECHAMODIF' +
        'ICACION AS HORAMOD'
      'FROM BSDonacion_Historico A (NOLOCK)'
      '')
    Left = 464
    Top = 440
    object Qhistorico_donanteDONACIONID: TStringField
      FieldName = 'DONACIONID'
    end
    object Qhistorico_donanteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object Qhistorico_donantePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object Qhistorico_donanteDONACIONSTATUS: TWideStringField
      FieldName = 'DONACIONSTATUS'
      FixedChar = True
    end
    object Qhistorico_donanteDONACIONTIPO: TStringField
      FieldName = 'DONACIONTIPO'
    end
    object Qhistorico_donanteUSUARIOMOD: TStringField
      FieldName = 'USUARIOMOD'
    end
    object Qhistorico_donanteFECHAMODIFICACION: TDateTimeField
      FieldName = 'FECHAMODIFICACION'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object Qhistorico_donanteRECHASO: TWideStringField
      FieldName = 'RECHASO'
      ReadOnly = True
    end
    object Qhistorico_donanteRECHASONOTA: TMemoField
      FieldName = 'RECHASONOTA'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Qhistorico_donanteCAUSARECHASO: TStringField
      FieldName = 'CAUSARECHASO'
      ReadOnly = True
      Size = 50
    end
    object Qhistorico_donanteFECHARECHAZA: TDateTimeField
      FieldName = 'FECHARECHAZA'
    end
    object Qhistorico_donanteRECHAZONOTA: TStringField
      FieldName = 'RECHAZONOTA'
      Size = 1000
    end
    object Qhistorico_donanteUseridrechaza: TStringField
      FieldName = 'Useridrechaza'
    end
    object Qhistorico_donanteHORAMOD: TDateTimeField
      FieldName = 'HORAMOD'
      DisplayFormat = 'HH:MM:SS'
    end
  end
  object DShistorico: TDataSource
    AutoEdit = False
    DataSet = Qhistorico_donante
    OnStateChange = dsDatosStateChange
    Left = 468
    Top = 199
  end
end