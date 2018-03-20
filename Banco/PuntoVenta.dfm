inherited frmPuntoVenta: TfrmPuntoVenta
  ActiveControl = cxPageControlCabecera
  Caption = 'Punto de Venta'
  ClientHeight = 583
  ClientWidth = 1026
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 1034
  ExplicitHeight = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 1026
    Height = 0
    Visible = False
    ExplicitWidth = 1026
    ExplicitHeight = 0
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 1026
    Height = 526
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cxPageControlCabecera: TcxPageControl
      Left = 11
      Top = 11
      Width = 982
      Height = 239
      ActivePage = TabGeneral
      HideTabs = True
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      ClientRectBottom = 239
      ClientRectRight = 982
      ClientRectTop = 0
      object TabGeneral: TcxTabSheet
        Caption = 'General'
        ImageIndex = 0
        ExplicitWidth = 987
        object lcGeneral: TdxLayoutControl
          Left = 0
          Top = -5
          Width = 987
          Height = 244
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          object cxDBTextEdit1: TcxDBTextEdit
            Tag = 99
            Left = 87
            Top = 18
            DataBinding.DataField = 'ENTRADAID'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 90
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Tag = 99
            Left = 735
            Top = 18
            DataBinding.DataField = 'MuestraNo'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 90
          end
          object EdPaciente: TcxDBTextEdit
            Tag = 99
            Left = 87
            Top = 81
            DataBinding.DataField = 'PacienteID'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnChange = EdPacientePropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 60
          end
          object CxDbPaciente: TcxDBTextEdit
            Tag = 99
            Left = 153
            Top = 81
            DataBinding.DataField = 'NombrePaciente'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 115
          end
          object cxDBMemo2: TcxDBMemo
            Tag = 99
            Left = 87
            Top = 108
            DataBinding.DataField = 'DIRECCION'
            DataBinding.DataSource = dsCliente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 200
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            Height = 51
            Width = 180
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Tag = 99
            Left = 87
            Top = 165
            DataBinding.DataField = 'TELEFONO'
            DataBinding.DataSource = dsCliente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 9
            Width = 87
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Tag = 99
            Left = 180
            Top = 165
            DataBinding.DataField = 'TELEFONO2'
            DataBinding.DataSource = dsCliente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 87
          end
          object EdCliente: TcxDBTextEdit
            Tag = 99
            Left = 667
            Top = 81
            DataBinding.DataField = 'ClienteID'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnChange = EdClientePropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 13
            Width = 85
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Tag = 99
            Left = 667
            Top = 108
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsCliente1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 16
            Width = 266
          end
          object EdCoberturaValor: TcxDBCurrencyEdit
            Left = 1042
            Top = 63
            DataBinding.DataField = 'CoberturaPorc'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayFormat = '0.00;-0.00'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            OnExit = EdCoberturaValorExit
            Width = 65
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 1042
            Top = 117
            DataBinding.DataField = 'CoberturaConfirmada'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 65
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 1042
            Top = 144
            DataBinding.DataField = 'AprobacionNo'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 23
            Width = 65
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 1042
            Top = 171
            DataBinding.DataField = 'APROBACIONPOR'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 24
            Width = 65
          end
          object cxDBImageComboBox2: TcxDBImageComboBox
            Left = 243
            Top = 18
            DataBinding.DataField = 'TipoDocumento'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Factura'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Cotizacion'
                Value = 1
              end
              item
                Description = 'Devolucion'
                Value = 2
              end
              item
                Description = 'Exterior'
                Value = 3
              end>
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 90
          end
          object EdDoctor: TcxDBExtLookupComboBox
            Left = 340
            Top = 81
            RepositoryItem = DM.elcDoctores
            DataBinding.DataField = 'DoctorID'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.OnChange = EdDoctorPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 11
            OnEnter = EdDoctorPropertiesChange
            OnExit = EdDoctorPropertiesChange
            Width = 90
          end
          object edcobexpporc: TcxDBCheckBox
            Left = 1042
            Top = 90
            DataBinding.DataField = 'CoberturaExpPorc'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 21
            OnExit = EdCoberturaValorExit
            Width = 65
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 340
            Top = 108
            DataBinding.DataField = 'NombreDoctor'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 250
          end
          object LbHold: TcxLabel
            Left = 831
            Top = 18
            Caption = 'Hold.'
            ParentColor = False
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.LabelEffect = cxleCool
            Properties.LabelStyle = cxlsRaised
            Properties.ShadowedColor = clNavy
            Style.Color = 16311249
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
          end
          object cxDBImageComboBox1: TcxDBImageComboBox
            Left = 420
            Top = 18
            DataBinding.DataField = 'TipoEntrada'
            DataBinding.DataSource = dsEntradaPaciente
            Enabled = False
            Properties.Images = frmMain.ilNavBarSmall
            Properties.Items = <
              item
                Description = 'Normal'
                ImageIndex = 46
                Value = 'N'
              end
              item
                Description = 'Domicilio'
                ImageIndex = 47
                Value = 'D'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 90
          end
          object cxDBImageComboBox3: TcxDBImageComboBox
            Left = 593
            Top = 18
            DataBinding.DataField = 'FormadePago'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Images = frmMain.ilNavBarSmall
            Properties.Items = <
              item
                Description = 'Contado'
                ImageIndex = 14
                Value = 'Contado'
              end
              item
                Description = 'Contra Entrega'
                ImageIndex = 27
                Value = 'Contra Entrega'
              end
              item
                Description = 'Credito'
                ImageIndex = 15
                Value = 'Credito'
              end>
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 90
          end
          object cxButton1: TcxButton
            Left = 777
            Top = 81
            Width = 75
            Height = 21
            Caption = 'Buscar'
            TabOrder = 14
            OnClick = cxButton1Click
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Tag = 99
            Left = 667
            Top = 135
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsCliente1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 17
            Width = 130
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Tag = 99
            Left = 803
            Top = 135
            DataBinding.DataField = 'Telefono1'
            DataBinding.DataSource = dsCliente1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 18
            Width = 130
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Tag = 99
            Left = 667
            Top = 162
            DataBinding.DataField = 'FAX'
            DataBinding.DataSource = dsCliente1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 19
            Width = 130
          end
          object cxButton2: TcxButton
            Left = 858
            Top = 81
            Width = 75
            Height = 21
            Caption = 'Nueva'
            TabOrder = 15
            OnClick = cxButton2Click
          end
          object lcGeneralGroup_Root: TdxLayoutGroup
            AutoAligns = []
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcGeneralGroup1: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Identificacion'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object lcGeneralItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Registro No.'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem21: TdxLayoutItem
                Caption = 'Documento'
                Control = cxDBImageComboBox2
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem2: TdxLayoutItem
                Caption = 'Tipo de Entrada'
                Visible = False
                Control = cxDBImageComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem3: TdxLayoutItem
                Caption = 'Forma de Pago'
                Visible = False
                Control = cxDBImageComboBox3
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Lab. No.'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem38: TdxLayoutItem
                Caption = 'cxLabel1'
                ShowCaption = False
                Visible = False
                Control = LbHold
                ControlOptions.ShowBorder = False
              end
            end
            object lcGeneralGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcGeneralGroup2: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'Paciente'
                object lcGeneralGroup9: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object LcPaciente: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Paciente'
                    Control = EdPaciente
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Nombre'
                    ShowCaption = False
                    Control = CxDbPaciente
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcGeneralItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Direcci'#243'n'
                  CaptionOptions.AlignVert = tavTop
                  Control = cxDBMemo2
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralGroup4: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcGeneralItem8: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Telefono'
                    Control = cxDBTextEdit5
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem9: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Fax'
                    ShowCaption = False
                    Control = cxDBTextEdit6
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object lcGeneralGroup7: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'Otros Datos'
                object lcGeneralItem24: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Doctor'
                  Control = EdDoctor
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem34: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = cxDBTextEdit15
                  ControlOptions.ShowBorder = False
                end
              end
              object lcGeneralGroup3: TdxLayoutGroup
                Caption = 'Factura NCF'
                object lcGeneralGroup11: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object LcCliente: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Cliente'
                    Control = EdCliente
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = cxButton1
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem15: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    ShowCaption = False
                    Control = cxButton2
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcGeneralItem12: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre '
                  Control = cxDBTextEdit9
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralGroup8: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcGeneralItem11: TdxLayoutItem
                    Caption = 'Telefono'
                    Control = cxDBTextEdit3
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem13: TdxLayoutItem
                    Control = cxDBTextEdit8
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcGeneralItem14: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'FAX'
                  Control = cxDBTextEdit13
                  ControlOptions.ShowBorder = False
                end
              end
              object lcGeneralGroup6: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'Cobertura'
                ShowCaption = False
                Visible = False
                object lcGeneralItem17: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cobertura %'
                  Control = EdCoberturaValor
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem16: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cobertura en %'
                  Visible = False
                  Control = edcobexpporc
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem18: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Confirmada'
                  Control = cxDBCheckBox1
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem19: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'No. Aprobaci'#243'n'
                  Control = cxDBTextEdit11
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem20: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Aprobada Por'
                  Control = cxDBTextEdit12
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object GridPruebas: TcxGrid
      Left = 11
      Top = 256
      Width = 1004
      Height = 121
      PopupMenu = MenuGrid
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object GridPruebasEntradasPacienteDet: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsEntradaPacienteDetalle
        DataController.KeyFieldNames = 'Secuencia'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn
          Caption = 'Producto'
          DataBinding.FieldName = 'CodigoId'
          Width = 122
        end
        object GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn
          Caption = 'Descripcion'
          DataBinding.FieldName = 'DESCRIPCION'
          Options.Editing = False
          Width = 339
        end
        object GridPruebasEntradasPacienteDetCodigoCupID: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CodigoId'
          Options.Editing = False
          Width = 133
        end
        object GridPruebasEntradasPacienteDetPrecio: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 133
        end
        object GridPruebasEntradasPacienteDetTotalLinea: TcxGridDBColumn
          Caption = 'Total Linea'
          DataBinding.FieldName = 'TOTALLINEA'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 150
        end
        object GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn
          Caption = 'Comentario'
          DataBinding.FieldName = 'COMENTARIO'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.MemoCharCase = ecUpperCase
          Properties.MemoMaxLength = 200
          Properties.MemoWantTabs = False
          Width = 108
        end
      end
      object GridPruebasLevel1: TcxGridLevel
        GridView = GridPruebasEntradasPacienteDet
      end
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 408
      DataBinding.DataField = 'GastosVarios'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 435
      DataBinding.DataField = 'CoberturaSeguro'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 462
      DataBinding.DataField = 'TotalPagado'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 489
      DataBinding.DataField = 'TotalPendiente'
      DataBinding.DataSource = dsEntradaPaciente
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 435
      DataBinding.DataField = 'Neto'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 121
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 408
      DataBinding.DataField = 'Bruto'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 121
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 489
      DataBinding.DataField = 'Descuento'
      DataBinding.DataSource = dsEntradaPaciente
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 23
      Top = 408
      DataBinding.DataField = 'Nota'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 200
      Properties.WantReturns = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 300
    end
    object cxDBCurrencyEdit10: TcxDBCurrencyEdit
      Left = 650
      Top = 462
      DataBinding.DataField = 'DescuentoPorc'
      DataBinding.DataSource = dsEntradaPaciente
      Enabled = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 411
      Top = 408
      DataBinding.DataField = 'FECHAREGISTRO'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.ReadOnly = True
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
      TabOrder = 3
      Width = 120
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 411
      Top = 462
      DataBinding.DataField = 'UserID'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 411
      Top = 489
      DataBinding.DataField = 'Tasa'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object LbHora: TcxDBLabel
      Left = 411
      Top = 435
      DataBinding.DataField = 'HORAENTRADA'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clGreen
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'cxPageControl1'
        ShowCaption = False
        Control = cxPageControlCabecera
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        Caption = 'cxGrid1'
        ShowCaption = False
        Control = GridPruebas
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Group2: TdxLayoutGroup
          AutoAligns = [aaVertical]
          Caption = 'Comentario'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item10: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'cxDBMemo1'
            ShowCaption = False
            Control = cxDBMemo1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item12: TdxLayoutItem
              Caption = 'Fecha'
              Control = cxDBDateEdit4
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item15: TdxLayoutItem
              Caption = 'Hora'
              Control = LbHora
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item14: TdxLayoutItem
              Caption = 'Usuario'
              Control = cxDBTextEdit4
              ControlOptions.ShowBorder = False
            end
            object lcGeneralItem37: TdxLayoutItem
              Caption = 'Tasa de Cambio'
              Control = cxDBTextEdit10
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'Totales'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Group3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item8: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'SubTotal'
              Control = cxDBCurrencyEdit6
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Cobertura Seguro'
              Control = cxDBCurrencyEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item11: TdxLayoutItem
              Caption = 'Descuento %'
              Control = cxDBCurrencyEdit10
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item9: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Descuento'
              Control = cxDBCurrencyEdit7
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group7: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Gastos Varios'
              Control = cxDBCurrencyEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Neto a Pagar'
              Control = cxDBCurrencyEdit5
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Total Pagado'
              Control = cxDBCurrencyEdit3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Pendiente'
              Control = cxDBCurrencyEdit4
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  object lgBotones: TdxLayoutControl [3]
    Left = 0
    Top = 526
    Width = 1026
    Height = 57
    Align = alBottom
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object btentrada: TcxButton
      Left = 11
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Buscar Entradas Registradas'
      Caption = 'F5 = Entradas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btentradaClick
    end
    object btcancelar: TcxButton
      Left = 99
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Cancelar Operaci'#243'n'
      Caption = 'F7 = Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btcancelarClick
    end
    object btgrabar: TcxButton
      Left = 187
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Grabar Entrada'
      Caption = 'F8 = Cobrar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btgrabarClick
    end
    object btimprimir: TcxButton
      Left = 275
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Impresiones'
      Caption = 'F9 = Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      DropDownMenu = menuImpresion
      Kind = cxbkDropDown
    end
    object btnotacredito: TcxButton
      Left = 363
      Top = 11
      Width = 86
      Height = 25
      Caption = 'F10 = Nota Cred'
      Enabled = False
      TabOrder = 4
      OnClick = btnotacreditoClick
    end
    object btHistroico: TcxButton
      Left = 455
      Top = 11
      Width = 86
      Height = 25
      Hint = 'Buscar Entradas Registradas'
      Caption = 'F11 = Historico'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btHistroicoClick
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object lgBotonesItem1: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btentrada
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem4: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btcancelar
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem7: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btgrabar
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem9: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btimprimir
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem13: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btnotacredito
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem2: TdxLayoutItem
        AutoAligns = [aaVertical]
        Caption = 'New Item'
        ShowCaption = False
        Control = btHistroico
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 312
    Top = 146
  end
  inherited alEdit: TActionList
    Left = 724
    Top = 304
  end
  inherited pmCustom: TPopupMenu
    Left = 796
    Top = 300
  end
  object mdPago: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'Orden'
    Left = 605
    Top = 308
    object mdPagoFormaDePago: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object mdPagoOrden: TSmallintField
      FieldName = 'Orden'
    end
    object mdPagoPagado: TCurrencyField
      FieldName = 'Pagado'
      DisplayFormat = '##,###,##0.00'
    end
    object mdPagoFormaPagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 15
    end
    object mdPagorefrecid: TLargeintField
      FieldName = 'refrecid'
    end
    object mdPagoMoneda: TStringField
      FieldName = 'Moneda'
      Size = 5
    end
  end
  object dsPago: TDataSource
    DataSet = mdPago
    Left = 641
    Top = 304
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = qrEntradaPacienteAfterPost
    OnCalcFields = qrEntradaPacienteCalcFields
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSVenta '
      'Where recid = :rec')
    Left = 32
    Top = 312
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacienteENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaPacienteFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaPacienteFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaPacienteRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacientePROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacientePRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaPacienteMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaPacienteHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacientePACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      Precision = 19
    end
    object qrEntradaPacienteSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 10
    end
    object qrEntradaPacienteNCF: TStringField
      FieldName = 'NCF'
      FixedChar = True
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 104
    Top = 312
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeInsert = qrEntradaPacienteDetalleBeforeInsert
    BeforeEdit = qrEntradaPacienteDetalleBeforeEdit
    BeforePost = qrEntradaPacienteDetalleBeforePost
    AfterPost = qrEntradaPacienteDetalleAfterPost
    BeforeDelete = qrEntradaPacienteDetalleBeforeDelete
    AfterDelete = qrEntradaPacienteDetalleAfterDelete
    OnNewRecord = qrEntradaPacienteDetalleNewRecord
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSVENTADetalle'
      'Where recid = :rec')
    Left = 56
    Top = 472
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaPacienteDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object qrEntradaPacienteDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object qrEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object qrEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object qrEntradaPacienteDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object qrEntradaPacienteDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object qrEntradaPacienteDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object qrEntradaPacienteDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object qrEntradaPacienteDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object qrEntradaPacienteDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object qrEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 2
    end
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteDetalleResultado: TStringField
      FieldName = 'Resultado'
      Size = 15
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 128
    Top = 432
  end
  object ppImpFactura: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Ejecutivo (JIS)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 307
    Top = 364
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 49742
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5842
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4995
        mmLeft = 2381
        mmTop = 8731
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefono'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 10054
        mmTop = 14817
        mmWidth = 25135
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fax'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 45508
        mmTop = 14817
        mmWidth = 28840
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160073
        mmTop = 9525
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 13758
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 14552
        mmWidth = 7281
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 37835
        mmTop = 14552
        mmWidth = 7239
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Impresion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 131234
        mmTop = 9525
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pagina No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 131234
        mmTop = 14023
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PacienteID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 22490
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 22490
        mmWidth = 78317
        BandType = 0
      end
      object pplbtipodoc: TppLabel
        UserName = 'lbtipodoc'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 130969
        mmTop = 19579
        mmWidth = 46831
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntradaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4868
        mmLeft = 130969
        mmTop = 25929
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 26988
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 26988
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 26988
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Referencia   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 31750
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PolizaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 31750
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura % :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 36777
        mmWidth = 23029
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 36777
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha                   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 130704
        mmTop = 32808
        mmWidth = 32639
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 164042
        mmTop = 32808
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha de Entrega :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 130704
        mmTop = 37042
        mmWidth = 32279
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaPrometida'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 164042
        mmTop = 37042
        mmWidth = 31750
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2381
        mmTop = 42598
        mmWidth = 198173
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 3704
        mmTop = 43656
        mmWidth = 11896
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 23283
        mmTop = 43656
        mmWidth = 20108
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppEntradaPaciente
        DataField = 'CoberturaConfirmada'
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 5556
        mmLeft = 40217
        mmTop = 36777
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Confirmada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 45773
        mmTop = 37042
        mmWidth = 18246
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 126471
        mmTop = 43656
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc. %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 43656
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 167746
        mmTop = 43921
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RNC :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 130969
        mmTop = 1852
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 3969
        mmLeft = 140229
        mmTop = 1852
        mmWidth = 37835
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 130969
        mmTop = 5821
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText83: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NCF'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 5821
        mmWidth = 38894
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PruebaID'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 0
        mmWidth = 87048
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Precio'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4022
        mmLeft = 120386
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descuento'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 529
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalLinea'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 794
        mmWidth = 27781
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 33073
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SubTotal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 529
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Bruto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 529
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descuento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 5027
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descuento'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 9525
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SubTotal'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 9525
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura Seg. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 14023
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText22: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 14023
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Neto a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148432
        mmTop = 18521
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Neto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 18521
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pagado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148432
        mmTop = 23019
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPagado'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 179123
        mmTop = 23019
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pendiente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148432
        mmTop = 27517
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPendiente'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 179123
        mmTop = 27517
        mmWidth = 17198
        BandType = 8
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 30956
        mmLeft = 4233
        mmTop = 794
        mmWidth = 107156
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 2117
        mmTop = 0
        mmWidth = 197909
        BandType = 8
      end
    end
  end
  object ppImpCotizacion: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Ejecutivo (JIS)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 353
    Top = 364
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 49742
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5842
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefono'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 9790
        mmTop = 14552
        mmWidth = 25135
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fax'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 45244
        mmTop = 14552
        mmWidth = 28840
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160073
        mmTop = 2117
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 6350
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 14552
        mmWidth = 7281
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 37571
        mmTop = 14288
        mmWidth = 7239
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Impresion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 131234
        mmTop = 2117
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pagina No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 131234
        mmTop = 6615
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PacienteID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 22490
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 22490
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'lbtipodoc'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'COTIZACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 130969
        mmTop = 14023
        mmWidth = 46831
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntradaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4868
        mmLeft = 130969
        mmTop = 20373
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 26988
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 26988
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 26988
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Referencia   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 31750
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PolizaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 31750
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura % :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 36777
        mmWidth = 23029
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 36777
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha                   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 130704
        mmTop = 32279
        mmWidth = 32639
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 164042
        mmTop = 32279
        mmWidth = 31750
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2381
        mmTop = 42598
        mmWidth = 198173
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 3704
        mmTop = 43656
        mmWidth = 11896
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 23283
        mmTop = 43656
        mmWidth = 20108
        BandType = 0
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppEntradaPaciente
        DataField = 'CoberturaConfirmada'
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 5556
        mmLeft = 40217
        mmTop = 36777
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Confirmada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 45773
        mmTop = 37042
        mmWidth = 18246
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 126471
        mmTop = 43656
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc. %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 43656
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 167746
        mmTop = 43921
        mmWidth = 28310
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText39: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PruebaID'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 0
        mmWidth = 87048
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Precio'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4022
        mmLeft = 120386
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descuento'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 529
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalLinea'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 794
        mmWidth = 27781
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppLabel41: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SubTotal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 529
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText44: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Bruto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 529
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descuento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 5027
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText45: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descuento'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel43: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 9525
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText46: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SubTotal'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 9525
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel44: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura Seg. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 14023
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText47: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 14023
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel45: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Neto a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148432
        mmTop = 18521
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText48: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Neto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 18521
        mmWidth = 17198
        BandType = 8
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 21696
        mmLeft = 3175
        mmTop = 529
        mmWidth = 107156
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 2117
        mmTop = 0
        mmWidth = 197909
        BandType = 8
      end
    end
  end
  object ppEntradaPaciente: TppDBPipeline
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 160
    Top = 312
    object ppEntradaPacienteppField1: TppField
      FieldAlias = 'ENTRADAID'
      FieldName = 'ENTRADAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteppField2: TppField
      FieldAlias = 'FECHA'
      FieldName = 'FECHA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object ppEntradaPacienteppField3: TppField
      FieldAlias = 'HORAENTRADA'
      FieldName = 'HORAENTRADA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppEntradaPacienteppField4: TppField
      FieldAlias = 'PACIENTEID'
      FieldName = 'PACIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppEntradaPacienteppField5: TppField
      FieldAlias = 'CLIENTEID'
      FieldName = 'CLIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppEntradaPacienteppField6: TppField
      FieldAlias = 'DOCTORID'
      FieldName = 'DOCTORID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppEntradaPacienteppField7: TppField
      FieldAlias = 'POLIZAID'
      FieldName = 'POLIZAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppEntradaPacienteppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENCLINICA'
      FieldName = 'ENCLINICA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppEntradaPacienteppField9: TppField
      FieldAlias = 'RECORDCLINICA'
      FieldName = 'RECORDCLINICA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppEntradaPacienteppField10: TppField
      FieldAlias = 'NUMEROHABITACION'
      FieldName = 'NUMEROHABITACION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppEntradaPacienteppField11: TppField
      FieldAlias = 'FECHAENTRADA'
      FieldName = 'FECHAENTRADA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object ppEntradaPacienteppField12: TppField
      FieldAlias = 'FECHADEALTA'
      FieldName = 'FECHADEALTA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object ppEntradaPacienteppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADOPACIENTE'
      FieldName = 'RESULTADOPACIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppEntradaPacienteppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADODOCTOR'
      FieldName = 'RESULTADODOCTOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppEntradaPacienteppField15: TppField
      FieldAlias = 'FECHAPROMETIDA'
      FieldName = 'FECHAPROMETIDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object ppEntradaPacienteppField16: TppField
      FieldAlias = 'HORAPROMETIDA'
      FieldName = 'HORAPROMETIDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object ppEntradaPacienteppField17: TppField
      FieldAlias = 'FLEBOTOMISTAID'
      FieldName = 'FLEBOTOMISTAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object ppEntradaPacienteppField18: TppField
      FieldAlias = 'NOTA'
      FieldName = 'NOTA'
      FieldLength = 255
      DisplayWidth = 255
      Position = 17
    end
    object ppEntradaPacienteppField19: TppField
      FieldAlias = 'PROYECTOID'
      FieldName = 'PROYECTOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object ppEntradaPacienteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECORDID'
      FieldName = 'RECORDID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppEntradaPacienteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'BRUTO'
      FieldName = 'BRUTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 20
    end
    object ppEntradaPacienteppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTO'
      FieldName = 'DESCUENTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 21
    end
    object ppEntradaPacienteppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBTOTAL'
      FieldName = 'SUBTOTAL'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 22
    end
    object ppEntradaPacienteppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'NETO'
      FieldName = 'NETO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 23
    end
    object ppEntradaPacienteppField25: TppField
      FieldAlias = 'NOMBREPACIENTE'
      FieldName = 'NOMBREPACIENTE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 24
    end
    object ppEntradaPacienteppField26: TppField
      FieldAlias = 'DIRECCION'
      FieldName = 'DIRECCION'
      FieldLength = 255
      DisplayWidth = 255
      Position = 25
    end
    object ppEntradaPacienteppField27: TppField
      FieldAlias = 'TELEFONOS'
      FieldName = 'TELEFONOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppEntradaPacienteppField28: TppField
      FieldAlias = 'TELEFONO2'
      FieldName = 'TELEFONO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppEntradaPacienteppField29: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppEntradaPacienteppField30: TppField
      FieldAlias = 'CLIENTENOMBRE'
      FieldName = 'CLIENTENOMBRE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 29
    end
    object ppEntradaPacienteppField31: TppField
      FieldAlias = 'SUCURSALID'
      FieldName = 'SUCURSALID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 30
    end
    object ppEntradaPacienteppField32: TppField
      FieldAlias = 'USERID'
      FieldName = 'USERID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 31
    end
    object ppEntradaPacienteppField33: TppField
      FieldAlias = 'COBROID'
      FieldName = 'COBROID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object ppEntradaPacienteppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALPAGADO'
      FieldName = 'TOTALPAGADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 33
    end
    object ppEntradaPacienteppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRIORIDAD'
      FieldName = 'PRIORIDAD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppEntradaPacienteppField36: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppEntradaPacienteppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPODOCUMENTO'
      FieldName = 'TIPODOCUMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppEntradaPacienteppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAPORC'
      FieldName = 'COBERTURAPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 37
    end
    object ppEntradaPacienteppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURASEGURO'
      FieldName = 'COBERTURASEGURO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 38
    end
    object ppEntradaPacienteppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAVALOR'
      FieldName = 'COBERTURAVALOR'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 39
    end
    object ppEntradaPacienteppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOPORC'
      FieldName = 'DESCUENTOPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 40
    end
    object ppEntradaPacienteppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOVALOR'
      FieldName = 'DESCUENTOVALOR'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 41
    end
    object ppEntradaPacienteppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOBONO'
      FieldName = 'DESCUENTOBONO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 42
    end
    object ppEntradaPacienteppField44: TppField
      FieldAlias = 'ORIGEN'
      FieldName = 'ORIGEN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 43
    end
    object ppEntradaPacienteppField45: TppField
      FieldAlias = 'APROBACIONNO'
      FieldName = 'APROBACIONNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 44
    end
    object ppEntradaPacienteppField46: TppField
      FieldAlias = 'APROBACIONPOR'
      FieldName = 'APROBACIONPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 45
    end
    object ppEntradaPacienteppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURARECHAZADA'
      FieldName = 'COBERTURARECHAZADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 46
    end
    object ppEntradaPacienteppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURACONFIRMADA'
      FieldName = 'COBERTURACONFIRMADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 47
    end
    object ppEntradaPacienteppField49: TppField
      FieldAlias = 'FECHAASEGURADORA'
      FieldName = 'FECHAASEGURADORA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 48
    end
    object ppEntradaPacienteppField50: TppField
      FieldAlias = 'MUESTRANO'
      FieldName = 'MUESTRANO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object ppEntradaPacienteppField51: TppField
      FieldAlias = 'MONEDAID'
      FieldName = 'MONEDAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 50
    end
    object ppEntradaPacienteppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAEXPPORC'
      FieldName = 'COBERTURAEXPPORC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 51
    end
    object ppEntradaPacienteppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'EDADPACIENTE'
      FieldName = 'EDADPACIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppEntradaPacienteppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEXO'
      FieldName = 'SEXO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppEntradaPacienteppField55: TppField
      FieldAlias = 'NOMBREDOCTOR'
      FieldName = 'NOMBREDOCTOR'
      FieldLength = 80
      DisplayWidth = 80
      Position = 54
    end
    object ppEntradaPacienteppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNET'
      FieldName = 'PUBLICARINTERNET'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object ppEntradaPacienteppField57: TppField
      FieldAlias = 'CARNET'
      FieldName = 'CARNET'
      FieldLength = 20
      DisplayWidth = 20
      Position = 56
    end
    object ppEntradaPacienteppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNETDOCTOR'
      FieldName = 'PUBLICARINTERNETDOCTOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppEntradaPacienteppField59: TppField
      FieldAlias = 'CUADREGLOBAL'
      FieldName = 'CUADREGLOBAL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 58
    end
    object ppEntradaPacienteppField60: TppField
      FieldAlias = 'CUADREUSUARIO'
      FieldName = 'CUADREUSUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 59
    end
    object ppEntradaPacienteppField61: TppField
      FieldAlias = 'DESCAUTORIZADOPOR'
      FieldName = 'DESCAUTORIZADOPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 60
    end
    object ppEntradaPacienteppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'GASTOSVARIOS'
      FieldName = 'GASTOSVARIOS'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 61
    end
    object ppEntradaPacienteppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOAS400'
      FieldName = 'NOAS400'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppEntradaPacienteppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOAXAPTA'
      FieldName = 'NOAXAPTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppEntradaPacienteppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOFACTURA'
      FieldName = 'NOFACTURA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 64
    end
    object ppEntradaPacienteppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'FACTEXTERIOR'
      FieldName = 'FACTEXTERIOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 65
    end
    object ppEntradaPacienteppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOLD'
      FieldName = 'HOLD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object ppEntradaPacienteppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPMUESTRA'
      FieldName = 'REPMUESTRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object ppEntradaPacienteppField69: TppField
      FieldAlias = 'ENTRADAIDANT'
      FieldName = 'ENTRADAIDANT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 68
    end
    object ppEntradaPacienteppField70: TppField
      FieldAlias = 'TIPOENTRADA'
      FieldName = 'TIPOENTRADA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 69
    end
    object ppEntradaPacienteppField71: TppField
      FieldAlias = 'FORMADEPAGO'
      FieldName = 'FORMADEPAGO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 70
    end
    object ppEntradaPacienteppField72: TppField
      FieldAlias = 'DESCUENTOCARD'
      FieldName = 'DESCUENTOCARD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 71
    end
    object ppEntradaPacienteppField73: TppField
      FieldAlias = 'DESCUENTOTEXTO'
      FieldName = 'DESCUENTOTEXTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 72
    end
    object ppEntradaPacienteppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACUERDOPROPIO'
      FieldName = 'ACUERDOPROPIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object ppEntradaPacienteppField75: TppField
      FieldAlias = 'CLIENTEPADRE'
      FieldName = 'CLIENTEPADRE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 74
    end
    object ppEntradaPacienteppField76: TppField
      FieldAlias = 'DESCUENTOPLANID'
      FieldName = 'DESCUENTOPLANID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object ppEntradaPacienteppField77: TppField
      FieldAlias = 'FECHAREGISTRO'
      FieldName = 'FECHAREGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 76
    end
    object ppEntradaPacienteppField78: TppField
      FieldAlias = 'HORAREGISTRO'
      FieldName = 'HORAREGISTRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 77
    end
    object ppEntradaPacienteppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASA'
      FieldName = 'TASA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 78
    end
    object ppEntradaPacienteppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTATUS'
      FieldName = 'ESTATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 79
    end
    object ppEntradaPacienteppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOCLIENTEAS400'
      FieldName = 'TIPOCLIENTEAS400'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 80
    end
    object ppEntradaPacienteppField82: TppField
      FieldAlias = 'CLASECREDITO'
      FieldName = 'CLASECREDITO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 81
    end
    object ppEntradaPacienteppField83: TppField
      FieldAlias = 'CARNETNUMERO'
      FieldName = 'CARNETNUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 82
    end
    object ppEntradaPacienteppField84: TppField
      FieldAlias = 'CLIENTEPADREAXAPTA'
      FieldName = 'CLIENTEPADREAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 83
    end
    object ppEntradaPacienteppField85: TppField
      FieldAlias = 'PACIENTEIDAXAPTA'
      FieldName = 'PACIENTEIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 84
    end
    object ppEntradaPacienteppField86: TppField
      FieldAlias = 'CLIENTEIDAXAPTA'
      FieldName = 'CLIENTEIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 85
    end
    object ppEntradaPacienteppField87: TppField
      FieldAlias = 'DOCTORIDAXAPTA'
      FieldName = 'DOCTORIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 86
    end
    object ppEntradaPacienteppField88: TppField
      FieldAlias = 'DATAAREAID'
      FieldName = 'DATAAREAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 87
    end
    object ppEntradaPacienteppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECID'
      FieldName = 'RECID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object ppEntradaPacienteppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalPendiente'
      FieldName = 'TotalPendiente'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 89
    end
    object ppEntradaPacienteppField91: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 10
      DisplayWidth = 10
      Position = 90
    end
    object ppEntradaPacienteppField92: TppField
      FieldAlias = 'NCF'
      FieldName = 'NCF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 91
    end
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 224
    Top = 432
    object ppEntradaPacienteDetalleppField1: TppField
      FieldAlias = 'PRUEBAID'
      FieldName = 'PRUEBAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteDetalleppField2: TppField
      FieldAlias = 'CodigoId'
      FieldName = 'CodigoId'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppEntradaPacienteDetalleppField3: TppField
      FieldAlias = 'DESCRIPCION'
      FieldName = 'DESCRIPCION'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object ppEntradaPacienteDetalleppField4: TppField
      FieldAlias = 'MUESTRAANT'
      FieldName = 'MUESTRAANT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppEntradaPacienteDetalleppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAAPLICA'
      FieldName = 'COBERTURAAPLICA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppEntradaPacienteDetalleppField6: TppField
      FieldAlias = 'DESCRIPCIONCUP'
      FieldName = 'DESCRIPCIONCUP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 5
    end
    object ppEntradaPacienteDetalleppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFRECID'
      FieldName = 'REFRECID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppEntradaPacienteDetalleppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'SECUENCIA'
      FieldName = 'SECUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppEntradaPacienteDetalleppField9: TppField
      FieldAlias = 'FLEBOTOMISTAID'
      FieldName = 'FLEBOTOMISTAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppEntradaPacienteDetalleppField10: TppField
      FieldAlias = 'COMENTARIOMUESTRA'
      FieldName = 'COMENTARIOMUESTRA'
      FieldLength = 255
      DisplayWidth = 255
      Position = 9
    end
    object ppEntradaPacienteDetalleppField11: TppField
      FieldAlias = 'UNIDADMUESTRA'
      FieldName = 'UNIDADMUESTRA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object ppEntradaPacienteDetalleppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'SECUENCIAACT'
      FieldName = 'SECUENCIAACT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppEntradaPacienteDetalleppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECIO'
      FieldName = 'PRECIO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 12
    end
    object ppEntradaPacienteDetalleppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTO'
      FieldName = 'DESCUENTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 13
    end
    object ppEntradaPacienteDetalleppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOEXTRA'
      FieldName = 'DESCUENTOEXTRA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 14
    end
    object ppEntradaPacienteDetalleppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALLINEA'
      FieldName = 'TOTALLINEA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 15
    end
    object ppEntradaPacienteDetalleppField17: TppField
      FieldAlias = 'COMENTARIO'
      FieldName = 'COMENTARIO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 16
    end
    object ppEntradaPacienteDetalleppField18: TppField
      FieldAlias = 'TIPOPRUEBA'
      FieldName = 'TIPOPRUEBA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 17
    end
    object ppEntradaPacienteDetalleppField19: TppField
      FieldAlias = 'TIPOAS400'
      FieldName = 'TIPOAS400'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppEntradaPacienteDetalleppField20: TppField
      FieldAlias = 'CODIGOAS400'
      FieldName = 'CODIGOAS400'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object ppEntradaPacienteDetalleppField21: TppField
      FieldAlias = 'MEDIOAS400'
      FieldName = 'MEDIOAS400'
      FieldLength = 2
      DisplayWidth = 2
      Position = 20
    end
    object ppEntradaPacienteDetalleppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCPCT'
      FieldName = 'DESCPCT'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 21
    end
    object ppEntradaPacienteDetalleppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAESPECIAL'
      FieldName = 'COBERTURAESPECIAL'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 22
    end
    object ppEntradaPacienteDetalleppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAESPECIALPORC'
      FieldName = 'COBERTURAESPECIALPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 23
    end
    object ppEntradaPacienteDetalleppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAAPLICADA'
      FieldName = 'COBERTURAAPLICADA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 24
    end
    object ppEntradaPacienteDetalleppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOAPLICADO'
      FieldName = 'DESCUENTOAPLICADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 25
    end
    object ppEntradaPacienteDetalleppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOLINEAAPLICADO'
      FieldName = 'DESCUENTOLINEAAPLICADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 26
    end
    object ppEntradaPacienteDetalleppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'FACTURAR'
      FieldName = 'FACTURAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppEntradaPacienteDetalleppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'SELECCIONAR'
      FieldName = 'SELECCIONAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppEntradaPacienteDetalleppField30: TppField
      FieldAlias = 'MUESTRANO'
      FieldName = 'MUESTRANO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 29
    end
    object ppEntradaPacienteDetalleppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAEXPPORC'
      FieldName = 'COBERTURAEXPPORC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppEntradaPacienteDetalleppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'URGENTE'
      FieldName = 'URGENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object ppEntradaPacienteDetalleppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPMUESTRA'
      FieldName = 'REPMUESTRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppEntradaPacienteDetalleppField34: TppField
      FieldAlias = 'FECHAENTREGA'
      FieldName = 'FECHAENTREGA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 33
    end
    object ppEntradaPacienteDetalleppField35: TppField
      FieldAlias = 'HORAENTREGA'
      FieldName = 'HORAENTREGA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppEntradaPacienteDetalleppField36: TppField
      FieldAlias = 'ESTATUS'
      FieldName = 'ESTATUS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 35
    end
    object ppEntradaPacienteDetalleppField37: TppField
      FieldAlias = 'DATAAREAID'
      FieldName = 'DATAAREAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 36
    end
    object ppEntradaPacienteDetalleppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECID'
      FieldName = 'RECID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppEntradaPacienteDetalleppField39: TppField
      FieldAlias = 'Resultado'
      FieldName = 'Resultado'
      FieldLength = 15
      DisplayWidth = 15
      Position = 38
    end
    object ppEntradaPacienteDetalleppField40: TppField
      FieldAlias = 'COMBOPRUEBAID'
      FieldName = 'COMBOPRUEBAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 39
    end
    object ppEntradaPacienteDetalleppField41: TppField
      FieldAlias = 'CODIGOAUTORIZACION'
      FieldName = 'CODIGOAUTORIZACION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppEntradaPacienteDetalleppField42: TppField
      FieldAlias = 'CODIGOCUPID'
      FieldName = 'CODIGOCUPID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
  end
  object cxGridStyles: TcxStyleRepository
    Left = 544
    Top = 300
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object menuImpresion: TPopupMenu
    Left = 872
    Top = 224
    object RecibodeCobro1: TMenuItem
      Caption = 'Recibo de Cobro'
      OnClick = RecibodeCobro1Click
    end
    object VolantedePruebasARS1: TMenuItem
      Caption = 'Factura Seguro'
      Visible = False
      OnClick = VolantedePruebasARS1Click
    end
    object VolantedePruebasTomaMuestra1: TMenuItem
      Caption = 'Factura Paciente'
      OnClick = VolantedePruebasTomaMuestra1Click
    end
    object FacturaExterior1: TMenuItem
      Caption = 'Factura Exterior'
      Visible = False
      OnClick = FacturaExterior1Click
    end
    object NotadeCredito1: TMenuItem
      Caption = 'Nota de Credito'
      Visible = False
      OnClick = NotadeCredito1Click
    end
    object CuadredeCaja2: TMenuItem
      Caption = 'Cuadre de Caja'
      Visible = False
      OnClick = CuadredeCaja2Click
    end
    object CodigodeBarra1: TMenuItem
      Caption = 'Codigo de Barra'
      Visible = False
      OnClick = CodigodeBarra1Click
    end
  end
  object ExtraOptions1: TExtraOptions
    About = 'TExtraDevices 2.6'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = True
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Excel.AutoConvertToNumber = True
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    Graphic.GrayScale = False
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = True
    PDF.RichTextAsImage = False
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    PDF.Permissions = [ppPrint, ppModify, ppCopy, ppModifyAnnot]
    PDF.AutoEmbedFonts = True
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    Left = 872
    Top = 328
  end
  object ppImpFacturaSeguro: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Ejecutivo (JIS)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 280
    Top = 276
    Version = '10.04'
    mmColumnWidth = 95250
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand3: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 80010
      mmPrintPosition = 0
      object ppDBText49: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
      object pplbtelefono: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : (809) 221-5545'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 12435
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 26723
        mmWidth = 61383
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 26723
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 35983
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 35983
        mmWidth = 61383
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 64558
        mmTop = 67998
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText61: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 78317
        mmTop = 67998
        mmWidth = 8467
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2116
        mmTop = 72126
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 74083
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 70115
        mmTop = 74083
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText62: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 17198
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntradaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 45244
        mmWidth = 56886
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 45244
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 49742
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 49742
        mmWidth = 56886
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora             : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 54240
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 54240
        mmWidth = 56886
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 67998
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 67998
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aprobacion   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 58738
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AprobacionNo'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 58738
        mmWidth = 56886
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad           :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 31221
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EdadPaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 31221
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 40481
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreDoctor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 40481
        mmWidth = 61383
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17463
        mmTop = 74083
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label1001'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aprobado por   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 63236
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AprobadoPor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 30956
        mmTop = 48948
        mmWidth = 56886
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 4318
      mmPrintPosition = 0
      object LbCodigo: TppLabel
        UserName = 'LbCodigo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbCodigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 508
        mmWidth = 15240
        BandType = 4
      end
      object LbDescripcion: TppLabel
        UserName = 'LbDescripcion1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbDescripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 17780
        mmTop = 508
        mmWidth = 49530
        BandType = 4
      end
      object LbPrecio: TppLabel
        UserName = 'LbPrecio1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPrecio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 67998
        mmTop = 508
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppSummaryFacturaSeguro: TppSummaryBand
      BeforePrint = ppSummaryFacturaSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel66: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 2910
        mmWidth = 29369
        BandType = 7
      end
      object ppDBText70: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SubTotal'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 59531
        mmTop = 2910
        mmWidth = 24606
        BandType = 7
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 7673
        mmWidth = 28840
        BandType = 7
      end
      object ppLabel67: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Seguro :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 12435
        mmWidth = 29369
        BandType = 7
      end
      object ppDBText71: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 59531
        mmTop = 12435
        mmWidth = 24606
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 84931
        mmTop = 7938
        mmWidth = 3090
        BandType = 7
      end
      object pplbcobertura: TppLabel
        UserName = 'lbcobertura'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 66939
        mmTop = 7673
        mmWidth = 16933
        BandType = 7
      end
      object ppShape7: TppShape
        UserName = 'Shape2'
        mmHeight = 1058
        mmLeft = 1059
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
      object ppMemoFactSeg: TppMemo
        UserName = 'ppMemoFactSeg'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppMemoFactSeg'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6615
        mmLeft = 1059
        mmTop = 18785
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object ppImpFactPacienteConSeguro: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Ejecutivo (JIS)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 326
    Top = 276
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 82550
      mmPrintPosition = 0
      object ppDBText51: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : (809) 221-5545'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 12435
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 26723
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 26723
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 36513
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText63: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 36513
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entrega        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 65088
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaPrometida'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 65088
        mmWidth = 31750
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2646
        mmTop = 75142
        mmWidth = 84402
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 76200
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4191
        mmLeft = 2116
        mmTop = 17198
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntradaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 46038
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 46038
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 55563
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 55563
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora             : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 60325
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 60325
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 69586
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 69586
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 69586
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText108: TppDBText
        UserName = 'DBText601'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 78581
        mmTop = 69321
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad            :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 31485
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EdadPaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 31485
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreDoctor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 26458
        mmTop = 41275
        mmWidth = 61119
        BandType = 0
      end
      object LbCobertura: TppLabel
        UserName = 'LbCobertura'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'No Se Ha Solicitado La Cobertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2380
        mmTop = 50800
        mmWidth = 85461
        BandType = 0
      end
    end
    object ppDetailBandConSeguro: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText74: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 265
        mmWidth = 79640
        BandType = 4
      end
    end
    object ppSummaryFactPacienteConSeguro: TppSummaryBand
      BeforePrint = ppSummaryFactPacienteConSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppLabel69: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Neto a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 2910
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText76: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Neto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 2910
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel70: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pagado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 7673
        mmWidth = 29369
        BandType = 7
      end
      object ppDBText77: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPagado'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 7673
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel71: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pendiente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 12435
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText78: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPendiente'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 12435
        mmWidth = 21167
        BandType = 7
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
      object ppMemoFactConSeg: TppMemo
        UserName = 'ppMemoFactConSeg'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppMemoFactConSeg'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 18521
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object ppImpFactPacienteSinSeguro: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Ejecutivo (JIS)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 372
    Top = 276
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand5: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 82550
      mmPrintPosition = 0
      object ppDBText75: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 0
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText79: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4022
        mmLeft = 0
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : (809) 221-5545'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 12435
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 31750
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 36830
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText81: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 29718
        mmTop = 36830
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Determinacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 76200
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText84: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntradaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 29718
        mmTop = 41910
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 41910
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 46990
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 29718
        mmTop = 46990
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora             : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 52070
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText86: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 29718
        mmTop = 52070
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 63500
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText87: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 29718
        mmTop = 63500
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 57150
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 29718
        mmTop = 57150
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 76200
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 29718
        mmTop = 31750
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 23813
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NCF'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4763
        mmLeft = 13758
        mmTop = 23813
        mmWidth = 64558
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RNC : 1-30-40672-3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 16933
        mmWidth = 84931
        BandType = 0
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBandSinSeguro: TppDetailBand
      BeforePrint = ppDetailBandSinSeguroBeforePrint
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRECIO'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4763
        mmLeft = 50800
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DESCRIPCION'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 39688
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryFactPacienteSinSeguro: TppSummaryBand
      BeforePrint = ppSummaryFactPacienteSinSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object LbPagadoTit: TppLabel
        UserName = 'Label61'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'A pagar : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 15240
        mmWidth = 20638
        BandType = 7
      end
      object LbBrutoTit: TppLabel
        UserName = 'Label203'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SubTotal : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 5080
        mmWidth = 21960
        BandType = 7
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRECIO'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 5080
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRECIO'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 15240
        mmWidth = 25400
        BandType = 7
      end
    end
  end
  object MenuFunciones: TPopupMenu
    Left = 792
    Top = 224
    object ConfirmarCobertura1: TMenuItem
      Caption = 'Confirmar Cobertura'
      OnClick = ConfirmarCobertura1Click
    end
    object RegistrarPruebadelExterior1: TMenuItem
      Caption = 'Registrar Prueba del Exterior'
      OnClick = RegistrarPruebadelExterior1Click
    end
    object RegistrarFechaPrometida1: TMenuItem
      Caption = 'Registrar Fecha Prometida'
      OnClick = RegistrarFechaPrometida1Click
    end
    object CambiarLaboratorioNoenlasLineas1: TMenuItem
      Caption = 'Cambiar Laboratorio No. en las Lineas'
      OnClick = CambiarLaboratorioNoenlasLineas1Click
    end
    object Asignar2daMuestra1: TMenuItem
      Caption = 'Asignar Factura Como 2da. Muestra'
      OnClick = Asignar2daMuestra1Click
    end
    object AsignarDescuentoPermitidoalUsuario1: TMenuItem
      Caption = 'Asignar Descuento Permitido al Usuario'
      OnClick = AsignarDescuentoPermitidoalUsuario1Click
    end
    object AsignarDescuentoAutorizadoporCobros1: TMenuItem
      Caption = 'Asignar Descuento Autorizado por Cobros'
      OnClick = AsignarDescuentoAutorizadoporCobros1Click
    end
    object EliminarDescuentoAplicado1: TMenuItem
      Caption = 'Eliminar Descuento Aplicado'
      OnClick = EliminarDescuentoAplicado1Click
    end
    object CuadredeCaja1: TMenuItem
      Caption = 'Cuadre de Caja'
      OnClick = CuadredeCaja1Click
    end
    object GastosVarios1: TMenuItem
      Caption = 'Gastos Varios'
      OnClick = GastosVarios1Click
    end
    object Materiales1: TMenuItem
      Caption = 'Materiales'
      OnClick = Materiales1Click
    end
    object RegistrarCobrosTemporales1: TMenuItem
      Caption = 'Registrar Cobros Temporales'
      OnClick = RegistrarCobrosTemporales1Click
    end
    object EliminarOrdenesenHold1: TMenuItem
      Caption = 'Eliminar Ordenes en Hold'
      OnClick = EliminarOrdenesenHold1Click
    end
    object MarcarPruebaNOProcesar1: TMenuItem
      Caption = 'Marcar Prueba NO Procesar'
      OnClick = MarcarPruebaNOProcesar1Click
    end
  end
  object MenuGrid: TPopupMenu
    Left = 832
    Top = 224
    object MenuItem1: TMenuItem
      Caption = 'Ver Cobertura Especial'
      OnClick = MenuItem1Click
    end
  end
  object ppImpFacturaExterior: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Ejecutivo (JIS)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 420
    Top = 279
    Version = '10.04'
    mmColumnWidth = 95250
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 57415
      mmPrintPosition = 0
      object ppDBText65: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SubTituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 2116
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText88: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 17463
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 17463
        mmWidth = 23020
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 1323
        mmTop = 50536
        mmWidth = 86519
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 3175
        mmTop = 51594
        mmWidth = 17463
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntradaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 31750
        mmWidth = 56621
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Invoice Num.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2380
        mmTop = 31750
        mmWidth = 23020
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 36513
        mmWidth = 23020
        BandType = 0
      end
      object ppDBText93: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26723
        mmTop = 36513
        mmWidth = 56621
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 41010
        mmWidth = 23020
        BandType = 0
      end
      object ppDBText94: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26723
        mmTop = 41010
        mmWidth = 56621
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'User Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 45508
        mmWidth = 23020
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Age'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 2380
        mmTop = 21960
        mmWidth = 23020
        BandType = 0
      end
      object ppDBText97: TppDBText
        UserName = 'DBText111'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EdadPaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 22225
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 26988
        mmWidth = 23020
        BandType = 0
      end
      object ppDBText98: TppDBText
        UserName = 'DBText112'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreDoctor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 26988
        mmWidth = 61119
        BandType = 0
      end
      object ppDBText99: TppDBText
        UserName = 'DBText64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26723
        mmTop = 45508
        mmWidth = 56621
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Lab Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 12700
        mmWidth = 23020
        BandType = 0
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MuestraNo'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 12700
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Envio al Exterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 2116
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      BeforePrint = ppDetailBand4BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBComentario: TppDBMemo
        UserName = 'ppDBComentario'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = True
        DataField = 'Comentario'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 528
        mmWidth = 83608
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBDescripcion: TppDBMemo
        UserName = 'ppDBDescripcion'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = True
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 528
        mmWidth = 83608
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand4: TppSummaryBand
      BeforePrint = ppSummaryBand4BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppMemoFactExterior: TppMemo
        UserName = 'ppMemoFactExterior'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppMemoFactExterior'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 3969
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object qrDatosProducto: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = qrEntradaPacienteAfterPost
    OnCalcFields = qrEntradaPacienteCalcFields
    Parameters = <
      item
        Name = 'CodigoId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.CodigoId, dbo.BSProductos.ProductoID' +
        ', dbo.BSProductos.ProductoDes, dbo.BSProductos.Precio, dbo.BSPro' +
        'ductos.PrecioDolares, '
      
        '                      dbo.BSProductos.Dias, dbo.BSProductos.Cost' +
        'o'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      'WHERE     (dbo.BSInventario.CodigoId = :CodigoId)')
    Left = 256
    Top = 328
    object qrDatosProductoCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrDatosProductoProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDatosProductoProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrDatosProductoPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrDatosProductoPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrDatosProductoDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrDatosProductoCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = tbCliente
    Left = 344
    Top = 176
  end
  object tbCobro: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'refRecid'
    MasterFields = 'RECORDID'
    MasterSource = dsEntradaPaciente
    TableName = 'PTCobro'
    Left = 544
    Top = 536
    object tbCobroCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object tbCobroTurnoID: TStringField
      FieldName = 'TurnoID'
      Size = 10
    end
    object tbCobroEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object tbCobroSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object tbCobroFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object tbCobroHora: TStringField
      FieldName = 'Hora'
    end
    object tbCobroPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object tbCobroPacientePrincipalID: TStringField
      FieldName = 'PacientePrincipalID'
      Size = 10
    end
    object tbCobroUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object tbCobroTotalCobrado: TBCDField
      FieldName = 'TotalCobrado'
      Precision = 19
    end
    object tbCobrorefRecid: TLargeintField
      FieldName = 'refRecid'
    end
    object tbCobroTotalFactura: TBCDField
      FieldName = 'TotalFactura'
      Precision = 19
    end
    object tbCobroTotalPagado: TBCDField
      FieldName = 'TotalPagado'
      Precision = 19
    end
    object tbCobroPendienteFactura: TBCDField
      FieldName = 'PendienteFactura'
      Precision = 19
    end
    object tbCobroPendienteCobro: TBCDField
      FieldName = 'PendienteCobro'
      Precision = 19
    end
    object tbCobroReciboNo: TStringField
      FieldName = 'ReciboNo'
    end
    object tbCobroClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object tbCobroAplicado: TBooleanField
      FieldName = 'Aplicado'
    end
    object tbCobroSecuencia: TLargeintField
      FieldName = 'Secuencia'
    end
    object tbCobroMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object tbCobroTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object tbCobroCuadreGlobal: TStringField
      FieldName = 'CuadreGlobal'
    end
    object tbCobroCuadreUsuario: TStringField
      FieldName = 'CuadreUsuario'
    end
    object tbCobroConcepto: TStringField
      FieldName = 'Concepto'
      Size = 50
    end
  end
  object dsCobro: TDataSource
    AutoEdit = False
    DataSet = tbCobro
    Left = 576
    Top = 536
  end
  object qrCliente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = qrEntradaPacienteAfterPost
    OnCalcFields = qrEntradaPacienteCalcFields
    Parameters = <
      item
        Name = 'Codigo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'from PTEmpresa'
      'Where Codigo = :Codigo')
    Left = 552
    Top = 200
    object qrClienteEmpresaId: TAutoIncField
      FieldName = 'EmpresaId'
      ReadOnly = True
    end
    object qrClienteCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object qrClienteNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrClienteRNC: TStringField
      FieldName = 'RNC'
    end
    object qrClienteTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrClienteTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object qrClienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrClienteNCFTipo: TStringField
      FieldName = 'NCFTipo'
      FixedChar = True
      Size = 2
    end
  end
  object tbCliente: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'CLIENTEID'
    MasterFields = 'PACIENTEID'
    MasterSource = dsEntradaPaciente
    TableName = 'PTCLIENTE'
    Left = 304
    Top = 168
    object tbClienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object tbClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object tbClienteNOMBRE1: TStringField
      FieldName = 'NOMBRE1'
      Size = 30
    end
    object tbClienteAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Size = 50
    end
    object tbClienteCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object tbClienteTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object tbClienteFAX: TStringField
      FieldName = 'FAX'
    end
    object tbClienteGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object tbClienteINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object tbClienteAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object tbClienteEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object tbClienteCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object tbClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object tbClienteDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object tbClienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object tbClienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object tbClienteIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object tbClienteORIGEN: TIntegerField
      FieldName = 'ORIGEN'
    end
    object tbClienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object tbClienteCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object tbClientePRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object tbClienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object tbClientePRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object tbClienteENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object tbClientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object tbClienteFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object tbClienteSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object tbClienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object tbClientePOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object tbClienteCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object tbClienteENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object tbClienteACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object tbClienteUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object tbClienteUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object tbClienteSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object tbClienteIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object tbClienteIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object tbClienteIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object tbClienteIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object tbClienteUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object tbClienteALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object tbClienteQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object tbClienteTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object tbClienteENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object tbClienteTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object tbClienteSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object tbClienteTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object tbClientePACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object tbClienteSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object tbClienteUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object tbClienteCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object tbClienteTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object tbClienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object tbClienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object tbClienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object tbClienteRECID: TIntegerField
      FieldName = 'RECID'
    end
    object tbClientemsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
    object tbClienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object tbClienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object tbClienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object tbClienteSEX: TStringField
      FieldName = 'SEX'
      ReadOnly = True
      Size = 9
    end
    object tbClienteEdad: TIntegerField
      FieldName = 'Edad'
      ReadOnly = True
    end
  end
  object dsCliente1: TDataSource
    AutoEdit = False
    DataSet = qrCliente
    Left = 456
    Top = 176
  end
end
