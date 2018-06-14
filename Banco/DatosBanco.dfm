inherited frmBanco: TfrmBanco
  Caption = 'DONACIONES EN PROCESO'
  ClientHeight = 656
  ClientWidth = 985
  ExplicitWidth = 1001
  ExplicitHeight = 694
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 24
    Top = 264
    Width = 52
    Height = 13
    Caption = 'Probandpo'
  end
  inherited pnCaption: TPanel
    Width = 985
    Height = 27
    ExplicitWidth = 985
    ExplicitHeight = 27
  end
  object pcDatos: TcxPageControl [3]
    Left = 0
    Top = 27
    Width = 985
    Height = 629
    ActivePage = tsDetalleDonacion
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 629
    ClientRectRight = 985
    ClientRectTop = 24
    object tsDonacionesProceso: TcxTabSheet
      Caption = 'Donaciones en Proceso'
      ImageIndex = 0
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 985
        Height = 605
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmAppActions.lnfWeb
        DesignSize = (
          985
          605)
        object cxGrid3: TcxGrid
          Left = 23
          Top = 36
          Width = 813
          Height = 190
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView2: TcxGridDBTableView
            OnDblClick = cxGridDBTableView2DblClick
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Delete.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Post.Visible = False
            NavigatorButtons.Cancel.Visible = False
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = dsDatos
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'DonacionID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <
              item
                Links = <
                  item
                    Column = cxGridDBColumn5
                  end>
                SummaryItems = <>
              end>
            OptionsBehavior.IncSearch = True
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
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'ISBT Donacion'
              DataBinding.FieldName = 'ISTBDonacion'
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Fecha'
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'Nombre'
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'Telefono'
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Estado'
              DataBinding.FieldName = 'DonacionStatus'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object cxButton39: TcxButton
          Left = 875
          Top = 36
          Width = 87
          Height = 36
          Action = ActActualizar
          TabOrder = 1
          TabStop = False
        end
        object cxButton40: TcxButton
          Left = 875
          Top = 78
          Width = 87
          Height = 36
          Action = ActNueva
          Caption = 'F6'#13#10'Nueva Donacion'
          TabOrder = 2
          TabStop = False
        end
        object cxButton23: TcxButton
          Left = 875
          Top = 120
          Width = 87
          Height = 36
          Caption = 'F7'#13#10'Selecionar'
          TabOrder = 3
          TabStop = False
          OnClick = cxButton23Click
        end
        object dxLayoutGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Donaciones en proceso'
            LayoutDirection = ldHorizontal
            object dxLayoutItem7: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Control = cxGrid3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutGroup7: TdxLayoutGroup
              ShowCaption = False
              ShowBorder = False
              object dxLayoutItem8: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton39
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem9: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton40
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton23
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object tsDetalleDonacion: TcxTabSheet
      Caption = 'tsDetalleDonacion'
      ImageIndex = 1
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 985
        Height = 605
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmAppActions.lnfWeb
        DesignSize = (
          985
          605)
        object cxPageControl1: TcxPageControl
          Left = 23
          Top = 77
          Width = 911
          Height = 244
          ActivePage = cxTabSheet3
          BiDiMode = bdLeftToRight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          OnPageChanging = cxPageControl1PageChanging
          ClientRectBottom = 244
          ClientRectRight = 911
          ClientRectTop = 24
          object cxTabSheet7: TcxTabSheet
            Caption = 'Cuestionario'
            Color = 16311249
            ImageIndex = 6
            ParentColor = False
            OnEnter = cxTabSheet7Enter
            object Label2: TLabel
              Left = 552
              Top = 176
              Width = 63
              Height = 23
              Caption = 'Label2'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object cxDBMemo3: TcxDBMemo
              Left = 568
              Top = 26
              DataBinding.DataField = 'NotaEntrevista'
              DataBinding.DataSource = dsDonacion
              TabOrder = 0
              Height = 111
              Width = 331
            end
            object cxButton6: TcxButton
              Left = 306
              Top = 188
              Width = 100
              Height = 21
              Cursor = crHandPoint
              Caption = 'Aceptar'
              TabOrder = 1
              OnClick = cxButton6Click
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 194
              Top = 6
              DataBinding.DataField = 'PacienteID'
              DataBinding.DataSource = dsDonante
              Properties.OnChange = cxDBTextEdit18PropertiesChange
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 2
              Width = 110
            end
            object cxButton17: TcxButton
              Left = 310
              Top = 8
              Width = 100
              Height = 21
              Cursor = crHandPoint
              Caption = 'Buscar'
              TabOrder = 3
              TabStop = False
              Visible = False
              OnClick = cxButton17Click
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 190
              Top = 33
              TabStop = False
              DataBinding.DataField = 'Nombre'
              DataBinding.DataSource = dsDatosDonante
              Properties.ReadOnly = True
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 4
              Width = 220
            end
            object cxDBTextEdit20: TcxDBTextEdit
              Left = 190
              Top = 60
              TabStop = False
              DataBinding.DataField = 'Telefono'
              DataBinding.DataSource = dsDatosDonante
              Properties.ReadOnly = True
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 5
              Width = 110
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 310
              Top = 60
              TabStop = False
              DataBinding.DataField = 'Telefono2'
              DataBinding.DataSource = dsDatosDonante
              Properties.ReadOnly = True
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 6
              Width = 100
            end
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 190
              Top = 87
              TabStop = False
              DataBinding.DataField = 'FechaUltimaDon'
              DataBinding.DataSource = dsDatosDonante
              Properties.ReadOnly = True
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 7
              Width = 110
            end
            object cxComboBox1: TcxComboBox
              Left = 190
              Top = 165
              Properties.Items.Strings = (
                'No'
                'Si')
              TabOrder = 8
              Text = 'No'
              OnClick = cxComboBox1Click
              Width = 110
            end
            object cxLabel21: TcxLabel
              Left = 3
              Top = 8
              Caption = 'Donante'
              ParentColor = False
              Transparent = True
            end
            object cxLabel24: TcxLabel
              Left = 3
              Top = 33
              Caption = 'Nombre'
              Transparent = True
            end
            object cxLabel25: TcxLabel
              Left = 3
              Top = 60
              Caption = 'Telefono'
              Transparent = True
            end
            object cxLabel26: TcxLabel
              Left = 3
              Top = 87
              Caption = 'Ultima donacion'
              Transparent = True
            end
            object cxLabel27: TcxLabel
              Left = 3
              Top = 165
              Caption = 'Auto-eliminacion leido y aceptado '
              Transparent = True
            end
            object cxLabel30: TcxLabel
              Left = 3
              Top = 188
              Caption = 'Cuestionario completado y aprobado'
              Transparent = True
            end
            object cxComboBox2: TcxComboBox
              Left = 190
              Top = 188
              Properties.Items.Strings = (
                'No'
                'Si')
              TabOrder = 15
              Text = 'No'
              OnClick = cxComboBox1Click
              Width = 110
            end
            object cxLabel12: TcxLabel
              Left = 584
              Top = 136
              Caption = 'Historial del paciente'
              Transparent = True
              Visible = False
            end
            object cxLabel13: TcxLabel
              Left = 568
              Top = 10
              Caption = 'Notas'
              Transparent = True
            end
            object cxLabel11: TcxLabel
              Left = 3
              Top = 114
              Caption = 'Cuestionarios'
              Transparent = True
              Visible = False
            end
            object cxButton7: TcxButton
              Left = 310
              Top = 114
              Width = 100
              Height = 21
              Cursor = crHandPoint
              Hint = 'Open|Opens an existing file'
              Caption = '&Open...'
              TabOrder = 19
              Visible = False
              OnClick = cxButton7Click
            end
            object cxComboBox3: TcxComboBox
              Left = 190
              Top = 114
              Properties.Items.Strings = (
                'Interogatorio.doc')
              TabOrder = 20
              Text = 'cxComboBox3'
              Visible = False
              Width = 110
            end
            object cxButton16: TcxButton
              Left = 412
              Top = 188
              Width = 100
              Height = 21
              Cursor = crHandPoint
              Caption = 'Cancelar'
              TabOrder = 21
              OnClick = cxButton16Click
            end
            object cxLabel37: TcxLabel
              Left = 568
              Top = 143
              Caption = 'Lugar Colecta'
              Transparent = True
            end
            object cxDBMemo6: TcxDBMemo
              Left = 568
              Top = 162
              DataBinding.DataField = 'Lugar_colecta'
              DataBinding.DataSource = dsDonacion
              TabOrder = 23
              Height = 51
              Width = 331
            end
          end
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos'
            ImageIndex = 0
            ExplicitWidth = 939
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 272
              Top = 196
              Caption = 'Desea ser un donante activo'
              DataBinding.DataField = 'DonanteActivo'
              DataBinding.DataSource = dsDonante
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 8
              Transparent = True
              Width = 162
            end
            object cxDBComboBox2: TcxDBComboBox
              Left = 150
              Top = 40
              DataBinding.DataField = 'DonacionTipo'
              DataBinding.DataSource = dsDonacion
              Properties.Items.Strings = (
                'Voluntario'
                'Autologo Alto Riesgo'
                'Terapeutico')
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              Style.ButtonStyle = btsHotFlat
              Style.PopupBorderStyle = epbsSingle
              TabOrder = 1
              OnClick = cxDBComboBox2Click
              Width = 200
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 150
              Top = 63
              DataBinding.DataField = 'Temperatura'
              DataBinding.DataSource = dsDonacion
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 2
              Width = 200
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 150
              Top = 90
              DataBinding.DataField = 'Peso'
              DataBinding.DataSource = dsDonacion
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 3
              Width = 200
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 150
              Top = 117
              DataBinding.DataField = 'TensionArteriar'
              DataBinding.DataSource = dsDonacion
              Properties.Alignment.Horz = taRightJustify
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 4
              OnKeyPress = cxDBTextEdit5KeyPress
              Width = 90
            end
            object cxDBComboBox1: TcxDBComboBox
              Left = 260
              Top = 144
              DataBinding.DataField = 'PulsoEstado'
              DataBinding.DataSource = dsDonacion
              Properties.Items.Strings = (
                'Regular'
                'Irregular')
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              Style.ButtonStyle = btsHotFlat
              Style.PopupBorderStyle = epbsSingle
              TabOrder = 7
              Width = 90
            end
            object Panel1: TPanel
              Left = 474
              Top = 3
              Width = 375
              Height = 174
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 9
              Visible = False
              object cxDBTextEdit10: TcxDBTextEdit
                Left = 167
                Top = 10
                DataBinding.DataField = 'DirigidoPacienteId'
                DataBinding.DataSource = dsDonacion
                Style.BorderColor = clTeal
                Style.BorderStyle = ebsSingle
                Style.HotTrack = False
                TabOrder = 0
                Width = 90
              end
              object cxDBTextEdit11: TcxDBTextEdit
                Left = 167
                Top = 64
                DataBinding.DataField = 'Hospital'
                DataBinding.DataSource = dsDonacion
                Style.BorderColor = clTeal
                Style.BorderStyle = ebsSingle
                Style.HotTrack = False
                TabOrder = 3
                Width = 200
              end
              object cxDBTextEdit12: TcxDBTextEdit
                Left = 167
                Top = 91
                DataBinding.DataField = 'DoctorId'
                DataBinding.DataSource = dsDonacion
                Properties.OnChange = cxDBTextEdit12PropertiesChange
                Style.BorderColor = clTeal
                Style.BorderStyle = ebsSingle
                Style.HotTrack = False
                TabOrder = 4
                Width = 90
              end
              object cxDBDateEdit1: TcxDBDateEdit
                Tag = 99
                Left = 168
                Top = 145
                DataBinding.DataField = 'FechaTranfusion'
                DataBinding.DataSource = dsDonacion
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
                TabOrder = 6
                Width = 201
              end
              object cxButton12: TcxButton
                Left = 287
                Top = 10
                Width = 75
                Height = 21
                Cursor = crHandPoint
                Caption = 'Buscar'
                TabOrder = 1
                TabStop = False
                OnClick = cxButton12Click
              end
              object cxDBTextEdit6: TcxDBTextEdit
                Left = 167
                Top = 37
                TabStop = False
                DataBinding.DataField = 'DirigidoNombre'
                DataBinding.DataSource = dsDonacion
                Properties.ReadOnly = True
                Style.BorderColor = clTeal
                Style.BorderStyle = ebsSingle
                Style.HotTrack = False
                TabOrder = 2
                Width = 200
              end
              object cxButton13: TcxButton
                Left = 287
                Top = 91
                Width = 75
                Height = 21
                Cursor = crHandPoint
                Caption = 'Buscar'
                TabOrder = 7
                TabStop = False
                OnClick = cxButton13Click
                Spacing = 5
              end
              object cxDBTextEdit7: TcxDBTextEdit
                Left = 167
                Top = 118
                DataBinding.DataField = 'Nombre'
                DataBinding.DataSource = dsDoctor
                Style.BorderColor = clTeal
                Style.BorderStyle = ebsSingle
                Style.HotTrack = False
                TabOrder = 5
                Width = 200
              end
              object cxLabel5: TcxLabel
                Left = 10
                Top = 10
                Caption = 'Codigo de receptor'
                Transparent = True
              end
              object cxLabel6: TcxLabel
                Left = 10
                Top = 37
                Caption = 'Nombre de recptor'
                Transparent = True
              end
              object cxLabel7: TcxLabel
                Left = 10
                Top = 64
                Caption = 'Hospital'
                Transparent = True
              end
              object cxLabel8: TcxLabel
                Left = 10
                Top = 91
                Caption = 'Codigo de medico'
                Transparent = True
              end
              object cxLabel23: TcxLabel
                Left = 10
                Top = 118
                Caption = 'Nombre del medico'
                Transparent = True
              end
              object cxLabel42: TcxLabel
                Left = 10
                Top = 145
                Caption = 'Probable fecha de tranfusion'
                Transparent = True
              end
            end
            object cxButton3: TcxButton
              Left = 514
              Top = 196
              Width = 100
              Height = 21
              Cursor = crHandPoint
              Caption = 'Aceptar'
              TabOrder = 11
              OnClick = cxButton3Click
            end
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 12
              Top = 188
              Caption = 'Paciente apto para el hemograma'
              DataBinding.DataField = 'Pagina'
              DataBinding.DataSource = dsDonacion
              Properties.ValueChecked = 2
              Properties.ValueUnchecked = 1
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 10
              Transparent = True
              Visible = False
              Width = 186
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 150
              Top = 13
              Width = 200
              Height = 21
              DataField = 'ProductoID'
              DataSource = dsDonacion
              KeyField = 'ProductoID'
              ListField = 'ProductoDes'
              ListSource = dsProductos
              TabOrder = 0
            end
            object cxLabel22: TcxLabel
              Left = 3
              Top = 13
              Caption = 'Tipo de donacion'
              Transparent = True
            end
            object cxLabel38: TcxLabel
              Left = 3
              Top = 40
              Caption = 'Tipo de donante'
              Transparent = True
            end
            object cxLabel39: TcxLabel
              Left = 3
              Top = 67
              Caption = 'Temperatura'
              Transparent = True
            end
            object cxLabel40: TcxLabel
              Left = 3
              Top = 90
              Caption = 'Peso'
              Transparent = True
            end
            object cxLabel41: TcxLabel
              Left = 3
              Top = 117
              Caption = 'Presion arterial'
              Transparent = True
            end
            object cxDBTextEdit24: TcxDBTextEdit
              Left = 150
              Top = 144
              DataBinding.DataField = 'PulsoMinimo'
              DataBinding.DataSource = dsDonacion
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 6
              Width = 90
            end
            object cxLabel16: TcxLabel
              Left = 3
              Top = 147
              Caption = 'Pulso/minuto'
              Transparent = True
            end
            object cxButton22: TcxButton
              Left = 620
              Top = 196
              Width = 100
              Height = 21
              Cursor = crHandPoint
              Caption = 'Cancelar'
              TabOrder = 18
              OnClick = cxButton16Click
            end
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 260
              Top = 117
              DataBinding.DataField = 'TensionArteriar2'
              DataBinding.DataSource = dsDonacion
              Properties.Alignment.Horz = taRightJustify
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 5
              OnKeyPress = cxDBTextEdit5KeyPress
              Width = 90
            end
            object cxLabel34: TcxLabel
              Left = 246
              Top = 117
              Caption = '/'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Muestras'
            ImageIndex = 2
            object cxButton8: TcxButton
              Left = 736
              Top = 147
              Width = 107
              Height = 30
              Cursor = crHandPoint
              Caption = 'Aceptar'
              TabOrder = 0
              OnClick = cxButton8Click
            end
            object GridPruebas: TcxGrid
              Left = 4
              Top = 3
              Width = 726
              Height = 214
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
                OptionsView.Navigator = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                object GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'PruebaID'
                  Width = 131
                end
                object GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn
                  Caption = 'Prueba'
                  DataBinding.FieldName = 'Descripcion'
                  Options.Editing = False
                  Width = 339
                end
                object GridPruebasEntradasPacienteDetMuestraNo: TcxGridDBColumn
                  Caption = 'Laboratorio No.'
                  DataBinding.FieldName = 'MuestraNo'
                  Visible = False
                  Options.Editing = False
                  Width = 81
                end
                object GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn
                  DataBinding.FieldName = 'Comentario'
                  PropertiesClassName = 'TcxBlobEditProperties'
                  Properties.BlobEditKind = bekMemo
                  Width = 254
                end
              end
              object GridPruebasLevel1: TcxGridLevel
                GridView = GridPruebasEntradasPacienteDet
              end
            end
            object cxButton4: TcxButton
              Left = 735
              Top = 3
              Width = 107
              Height = 25
              Cursor = crHandPoint
              Action = Action1
              TabOrder = 2
            end
            object cxButton10: TcxButton
              Left = 735
              Top = 84
              Width = 107
              Height = 25
              Cursor = crHandPoint
              Caption = 'Etiquetas'
              TabOrder = 3
              OnClick = cxButton10Click
            end
            object cxButton20: TcxButton
              Left = 735
              Top = 30
              Width = 107
              Height = 25
              Cursor = crHandPoint
              Action = ActAddPrueba
              TabOrder = 4
            end
            object cxButton21: TcxButton
              Left = 735
              Top = 57
              Width = 107
              Height = 25
              Cursor = crHandPoint
              Action = DataSetDelete1
              TabOrder = 5
            end
            object cxButton24: TcxButton
              Left = 735
              Top = 183
              Width = 107
              Height = 31
              Cursor = crHandPoint
              Caption = 'Cancelar'
              TabOrder = 6
              OnClick = cxButton24Click
            end
            object cxButton31: TcxButton
              Left = 736
              Top = 113
              Width = 106
              Height = 29
              Caption = 'Label Bolsa'
              TabOrder = 7
              OnClick = cxButton31Click
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Hemograma'
            ImageIndex = 5
            OnEnter = ActActualizarHemogramaExecute
            object Label3: TLabel
              Left = 450
              Top = 94
              Width = 3
              Height = 13
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 280
              Top = 37
              DataBinding.DataField = 'Hemoglobina'
              DataBinding.DataSource = dsHemograma
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 0
              Width = 150
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 280
              Top = 58
              DataBinding.DataField = 'Hematocito'
              DataBinding.DataSource = dsHemograma
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 1
              Width = 150
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 280
              Top = 80
              DataBinding.DataField = 'GlobulosBlancos'
              DataBinding.DataSource = dsHemograma
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 2
              Width = 150
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 280
              Top = 102
              DataBinding.DataField = 'Plaquetas'
              DataBinding.DataSource = dsHemograma
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 3
              Width = 150
            end
            object cxButton5: TcxButton
              Left = 589
              Top = 180
              Width = 107
              Height = 25
              Caption = 'Aceptar'
              TabOrder = 5
              OnClick = cxButton5Click
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 150
              Top = 183
              Caption = 'Hemograma aprobado'
              DataBinding.DataField = 'Pagina'
              DataBinding.DataSource = dsDonacion
              Properties.ValueChecked = 4
              Properties.ValueUnchecked = 3
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 4
              Transparent = True
              Visible = False
              Width = 129
            end
            object cxButton11: TcxButton
              Left = 20
              Top = 30
              Width = 132
              Height = 25
              Action = ActActualizarHemograma
              TabOrder = 6
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 280
              Top = 124
              DataBinding.DataField = 'UsuarioAS'
              DataBinding.DataSource = dsHemograma
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 7
              Width = 150
            end
            object cxDBMemo4: TcxDBMemo
              Left = 736
              Top = 26
              DataBinding.DataField = 'NotaEntrevista'
              DataBinding.DataSource = dsDonacion
              TabOrder = 8
              Height = 111
              Width = 164
            end
            object cxLabel18: TcxLabel
              Left = 165
              Top = 58
              Caption = 'Hematocritos'
              Transparent = True
            end
            object cxLabel17: TcxLabel
              Left = 165
              Top = 37
              Caption = 'Hemoglobina'
              Transparent = True
            end
            object cxLabel36: TcxLabel
              Left = 165
              Top = 80
              Caption = 'Globulos blancos'
              Transparent = True
            end
            object cxLabel19: TcxLabel
              Left = 165
              Top = 102
              Caption = 'Plaquetas'
              Transparent = True
            end
            object cxLabel20: TcxLabel
              Left = 165
              Top = 124
              Caption = 'Bioanalista'
              Transparent = True
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 280
              Top = 186
              Width = 150
              Height = 21
              DataField = 'UserIdHemograma'
              DataSource = dsDonacion
              KeyField = 'UserId'
              ListField = 'Nombre'
              ListSource = dsUser
              TabOrder = 14
              Visible = False
            end
            object cxLabel1: TcxLabel
              Left = 736
              Top = 3
              Caption = 'Notas'
              Transparent = True
            end
            object cxLabel28: TcxLabel
              Left = 450
              Top = 15
              Caption = 'Hombre >13.5  Mujeres > 12.5'
              Transparent = True
            end
            object cxLabel29: TcxLabel
              Left = 450
              Top = 33
              Caption = 'Hombre > 41 Mujeres > 38'
              Transparent = True
            end
            object cxLabel31: TcxLabel
              Left = 450
              Top = 50
              Caption = 'Hombre y Mujeres entre 3,500 y 12,000'
              Transparent = True
            end
            object cxLabel32: TcxLabel
              Left = 450
              Top = 71
              Caption = 'Hombre y Mujeres entre 150,000 y 400,000'
              Transparent = True
            end
            object cxButton25: TcxButton
              Left = 703
              Top = 180
              Width = 107
              Height = 25
              Cursor = crHandPoint
              Caption = 'Cancelar'
              TabOrder = 20
              OnClick = cxButton25Click
            end
            object cxCheckBox1: TcxCheckBox
              Left = 16
              Top = 107
              Caption = 'Hemograma rapido'
              ParentFont = False
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 21
              OnMouseUp = cxCheckBox1MouseUp
              Width = 143
            end
            object cxButton29: TcxButton
              Left = 20
              Top = 61
              Width = 132
              Height = 25
              Caption = 'Hemograma Rapido'
              TabOrder = 22
              OnClick = cxButton29Click
            end
            object cxDBTextEdit26: TcxDBTextEdit
              Left = 280
              Top = 16
              DataBinding.DataField = 'Hemoglobina_rapida'
              DataBinding.DataSource = dsHemograma
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 23
              OnExit = cxDBTextEdit26Exit
              Width = 150
            end
            object cxLabel35: TcxLabel
              Left = 167
              Top = 16
              Caption = 'Hemoglobina rapida'
              Transparent = True
            end
            object cxButton30: TcxButton
              Left = 476
              Top = 180
              Width = 107
              Height = 25
              Caption = 'Actualizar Pruebas'
              TabOrder = 25
              Visible = False
              OnClick = cxButton30Click
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'Recoleccion'
            ImageIndex = 3
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 151
              Top = 50
              DataBinding.DataField = 'CantidadRecogida'
              DataBinding.DataSource = dsDonacion
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 1
              Width = 85
            end
            object cxDBTimeEdit1: TcxDBTimeEdit
              Tag = 99
              Left = 151
              Top = 90
              DataBinding.DataField = 'HoraInicio'
              DataBinding.DataSource = dsDonacion
              ParentFont = False
              Properties.Circular = True
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
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 85
            end
            object cxDBTimeEdit2: TcxDBTimeEdit
              Tag = 99
              Left = 151
              Top = 130
              DataBinding.DataField = 'HoraFin'
              DataBinding.DataSource = dsDonacion
              ParentFont = False
              Properties.Circular = True
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
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 85
            end
            object cxButton9: TcxButton
              Left = 759
              Top = 34
              Width = 107
              Height = 41
              Cursor = crHandPoint
              Caption = 'Aceptar'
              TabOrder = 4
              OnClick = cxButton9Click
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 151
              Top = 10
              Width = 218
              Height = 21
              DataField = 'TipoFundaID'
              DataSource = dsDonacion
              KeyField = 'TipoFundaID'
              ListField = 'TipoFundaDes'
              ListSource = DMB.dsTipoBolsa
              TabOrder = 0
            end
            object cxDBMemo5: TcxDBMemo
              Left = 392
              Top = 34
              DataBinding.DataField = 'NotaEntrevista'
              DataBinding.DataSource = dsDonacion
              TabOrder = 5
              Height = 127
              Width = 361
            end
            object cxLabel2: TcxLabel
              Left = 10
              Top = 10
              Caption = 'Tipo de funda'
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 10
              Top = 50
              Caption = 'Cantidad recogida'
              Transparent = True
            end
            object cxLabel14: TcxLabel
              Left = 10
              Top = 90
              Caption = 'Hora al comenzar'
              Transparent = True
            end
            object cxLabel15: TcxLabel
              Left = 10
              Top = 130
              Caption = 'Hora al terminar'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 392
              Top = 11
              Caption = 'Notas'
              Transparent = True
            end
            object cxButton26: TcxButton
              Left = 759
              Top = 81
              Width = 107
              Height = 41
              Cursor = crHandPoint
              Caption = 'Cancelar'
              TabOrder = 11
              OnClick = cxButton16Click
            end
          end
          object cxTabSheet5: TcxTabSheet
            Caption = 'Notas'
            ImageIndex = 4
            object cxDBMemo1: TcxDBMemo
              Left = 548
              Top = 40
              DataBinding.DataField = 'NotaEntrevista'
              DataBinding.DataSource = dsDonacion
              TabOrder = 0
              Height = 89
              Width = 325
            end
            object cxButton1: TcxButton
              Left = 697
              Top = 172
              Width = 102
              Height = 41
              Cursor = crHandPoint
              Caption = 'Aceptar'
              TabOrder = 1
              OnClick = cxButton1Click
            end
            object cxButton18: TcxButton
              Left = 594
              Top = 172
              Width = 102
              Height = 41
              Cursor = crHandPoint
              Action = ActImprimir
              TabOrder = 2
            end
            object cxButton19: TcxButton
              Left = 491
              Top = 172
              Width = 102
              Height = 41
              Cursor = crHandPoint
              Caption = 'Etiqueta'
              TabOrder = 3
              OnClick = cxButton19Click
            end
            object cxLabel10: TcxLabel
              Left = 548
              Top = 17
              Caption = 'Notas'
              Transparent = True
            end
            object cxGrid2: TcxGrid
              Left = 3
              Top = 17
              Width = 478
              Height = 200
              TabOrder = 5
              object cxGrid2DBCardView1: TcxGridDBCardView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsResumen
                DataController.DetailKeyFieldNames = 'DonacionID'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CardWidth = 454
                object cxGrid2DBCardView1DonacionTipo: TcxGridDBCardViewRow
                  Caption = 'Tipo'
                  DataBinding.FieldName = 'DonacionTipo'
                end
                object cxGrid2DBCardView1Comentario: TcxGridDBCardViewRow
                  DataBinding.FieldName = 'Comentario'
                end
                object cxGrid2DBCardView1Temperatura: TcxGridDBCardViewRow
                  DataBinding.FieldName = 'Temperatura'
                end
                object cxGrid2DBCardView1Peso: TcxGridDBCardViewRow
                  DataBinding.FieldName = 'Peso'
                end
                object cxGrid2DBCardView1PulsoMinimo: TcxGridDBCardViewRow
                  Caption = 'Pulso'
                  DataBinding.FieldName = 'PulsoMinimo'
                end
                object cxGrid2DBCardView1TensionArteriar: TcxGridDBCardViewRow
                  Caption = 'Tension Arteriar'
                  DataBinding.FieldName = 'TensionArteriar'
                end
                object cxGrid2DBCardView1DirigidoNombre: TcxGridDBCardViewRow
                  Caption = 'Receptor'
                  DataBinding.FieldName = 'DirigidoNombre'
                end
                object cxGrid2DBCardView1Hospital: TcxGridDBCardViewRow
                  DataBinding.FieldName = 'Hospital'
                end
                object cxGrid2DBCardView1FechaTranfusion: TcxGridDBCardViewRow
                  Caption = 'Fecha de Tranfusion'
                  DataBinding.FieldName = 'FechaTranfusion'
                end
                object cxGrid2DBCardView1Medico: TcxGridDBCardViewRow
                  DataBinding.FieldName = 'Medico'
                end
                object cxGrid2DBCardView1Hemoglobina: TcxGridDBCardViewRow
                  DataBinding.FieldName = 'Hemoglobina'
                end
                object cxGrid2DBCardView1Hematocito: TcxGridDBCardViewRow
                  DataBinding.FieldName = 'Hematocito'
                end
                object cxGrid2DBCardView1GlobulosBlancos: TcxGridDBCardViewRow
                  Caption = 'Globulos Blancos'
                  DataBinding.FieldName = 'GlobulosBlancos'
                end
                object cxGrid2DBCardView1Plaquetas: TcxGridDBCardViewRow
                  DataBinding.FieldName = 'Plaquetas'
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBCardView1
              end
            end
            object cxButton27: TcxButton
              Left = 800
              Top = 172
              Width = 102
              Height = 41
              Cursor = crHandPoint
              Caption = 'Cancelar'
              TabOrder = 6
              OnClick = cxButton16Click
            end
          end
          object cxTabSheet6: TcxTabSheet
            Caption = 'Rechazo'
            ImageIndex = 5
            object cxDBComboBox4: TcxDBComboBox
              Left = 160
              Top = 10
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
              TabOrder = 0
              Width = 129
            end
            object cxDBMemo2: TcxDBMemo
              Left = 160
              Top = 97
              DataBinding.DataField = 'RechazoNota'
              DataBinding.DataSource = dsDonacion
              TabOrder = 1
              Height = 89
              Width = 291
            end
            object cxButton2: TcxButton
              Left = 457
              Top = 50
              Width = 102
              Height = 41
              Cursor = crHandPoint
              Caption = 'Rechazar'
              TabOrder = 2
              OnClick = cxButton2Click
            end
            object cxLabel9: TcxLabel
              Left = 16
              Top = 10
              Caption = 'Tipo de rechazo'
              Transparent = True
            end
            object Comentario: TcxLabel
              Left = 16
              Top = 90
              Caption = 'Notas'
              Transparent = True
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 160
              Top = 50
              Width = 291
              Height = 21
              DataField = 'CausaRechazoId'
              DataSource = dsDonacion
              KeyField = 'Id'
              ListField = 'Causa'
              ListSource = DMB.dsCausasRechaso
              TabOrder = 5
            end
            object cxLabel33: TcxLabel
              Left = 16
              Top = 50
              Caption = 'Causa de rechazo'
              Transparent = True
            end
            object cxButton28: TcxButton
              Left = 457
              Top = 100
              Width = 102
              Height = 41
              Cursor = crHandPoint
              Caption = 'Cancelar'
              TabOrder = 7
              OnClick = cxButton16Click
            end
          end
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 113
          Top = 43
          TabStop = False
          DataBinding.DataField = 'ISTBDonacion'
          DataBinding.DataSource = dsDatos
          Properties.ReadOnly = True
          Properties.OnChange = cxDBTextEdit1PropertiesChange
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 0
          Width = 135
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 296
          Top = 43
          TabStop = False
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsDatos
          Properties.ReadOnly = True
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 1
          Width = 227
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 564
          Top = 43
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
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 734
          Top = 43
          TabStop = False
          DataBinding.DataField = 'MuestraNoAS'
          DataBinding.DataSource = dsDatos
          Properties.ReadOnly = True
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 3
          Width = 726
        end
        object cxButton14: TcxButton
          Left = 893
          Top = 359
          Width = 69
          Height = 25
          Action = ActActualizar
          TabOrder = 6
          TabStop = False
        end
        object cxButton15: TcxButton
          Left = 893
          Top = 390
          Width = 69
          Height = 25
          Action = ActNueva
          TabOrder = 7
          TabStop = False
        end
        object cxGrid1: TcxGrid
          Left = 23
          Top = 359
          Width = 836
          Height = 183
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Delete.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Post.Visible = False
            NavigatorButtons.Cancel.Visible = False
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = dsHistoria
            DataController.DetailKeyFieldNames = 'DonacionID'
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
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGridDBTableView1Fecha: TcxGridDBColumn
              DataBinding.FieldName = 'Fecha'
              Options.Editing = False
              Options.Focusing = False
              Width = 58
            end
            object cxGridDBTableView1DonacionID: TcxGridDBColumn
              DataBinding.FieldName = 'DonacionID'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 62
            end
            object cxGridDBTableView1DonacionStatus: TcxGridDBColumn
              Caption = 'Estatus'
              DataBinding.FieldName = 'DonacionStatus'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 61
            end
            object cxGridDBTableView1Comentario: TcxGridDBColumn
              DataBinding.FieldName = 'Comentario'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 75
            end
            object cxGridDBTableView1rechaso: TcxGridDBColumn
              Caption = 'Rechazo'
              DataBinding.FieldName = 'rechaso'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 64
            end
            object cxGridDBTableView1rechasonota: TcxGridDBColumn
              Caption = 'Nota del Rechazo'
              DataBinding.FieldName = 'rechasonota'
              PropertiesClassName = 'TcxBlobEditProperties'
              Properties.BlobEditKind = bekMemo
              Properties.ReadOnly = True
              Options.Filtering = False
              Options.ShowEditButtons = isebAlways
              Width = 105
            end
            object cxGridDBTableView1tiposangre: TcxGridDBColumn
              Caption = 'Tipo Sangre'
              DataBinding.FieldName = 'tiposangre'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 74
            end
            object cxGridDBTableView1rh: TcxGridDBColumn
              Caption = 'Rh'
              DataBinding.FieldName = 'rh'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 62
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'Doctor Autoriza'
              DataBinding.FieldName = 'DoctorNombreAutoriza'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 183
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = 'Nota Autoriza'
              DataBinding.FieldName = 'NotaAutoriza'
              PropertiesClassName = 'TcxBlobEditProperties'
              Properties.BlobEditKind = bekMemo
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 78
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object DBEdit1: TDBEdit
          Left = 56
          Top = 556
          Width = 260
          Height = 17
          BorderStyle = bsNone
          DataField = 'rechaso'
          DataSource = dsHistoria
          TabOrder = 8
        end
        object dxLayoutGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group4: TdxLayoutGroup
            ShowCaption = False
            object dxLayoutGroup1: TdxLayoutGroup
              Caption = 'Datos Generales'
              LayoutDirection = ldHorizontal
              object dxLayoutControl1Item10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'ISBT Donaci'#243'n'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item11: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Nombre'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item12: TdxLayoutItem
                Caption = 'Fecha'
                Control = cxDBTextEdit9
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Muestra'
                Control = cxDBTextEdit13
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              Control = cxPageControl1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            Caption = 'Historial del paciente'
            LayoutDirection = ldHorizontal
            object dxLayoutItem1: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'cxGrid1'
              ShowCaption = False
              Control = cxGrid1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Group5: TdxLayoutGroup
              ShowCaption = False
              Visible = False
              ShowBorder = False
              object dxLayoutControl1Item4: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton14
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton15
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'DBEdit1'
            Visible = False
            Control = DBEdit1
          end
        end
      end
    end
  end
  object dgDatos: TcxGrid [4]
    Left = 537
    Top = 537
    Width = 218
    Height = 111
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    LookAndFeel.NativeStyle = True
    object tvDatos: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsDatos
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'DonacionID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = tvDatosDonacionStatus
            end>
          SummaryItems = <>
        end>
      OptionsBehavior.IncSearch = True
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
      object tvDatosDonacionID: TcxGridDBColumn
        Caption = 'Donacion'
        DataBinding.FieldName = 'DonacionID'
      end
      object tvDatosFecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
      end
      object tvDatosNombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
      end
      object tvDatosTelefono: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono'
      end
      object tvDatosDonacionStatus: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'DonacionStatus'
      end
    end
    object lvDatos: TcxGridLevel
      GridView = tvDatos
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 32
    Top = 322
  end
  inherited alEdit: TActionList
    Left = 412
    Top = 368
    object Action1: TAction
      Caption = 'F2-Pruebas'
      ShortCut = 113
      OnExecute = Action1Execute
    end
    object ActCancel: TAction
      Caption = 'ActCancel'
    end
    object ActActualizar: TAction
      Caption = 'F5 Actualizar'
      ShortCut = 116
      OnExecute = ActActualizarExecute
    end
    object ActNueva: TAction
      Caption = 'F6 Nueva'
      ShortCut = 117
      OnExecute = ActNuevaExecute
    end
    object ActBorrar: TAction
      Caption = 'Borrar'
    end
    object ActActualizarHemograma: TAction
      Caption = 'Actualizar'
      OnExecute = ActActualizarHemogramaExecute
    end
    object ActImprimir: TAction
      Caption = 'F12 Imprimir'
      ShortCut = 123
      OnExecute = ActImprimirExecute
    end
    object ActAddPrueba: TAction
      Caption = 'F3 Otras Pruebas'
      ShortCut = 114
      OnExecute = ActAddPruebaExecute
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Borrar'
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsEntradaPacienteDetalle
    end
    object ActDetalle: TAction
      Caption = 'ActDetalle'
    end
    object ActPruebas: TAction
      Caption = 'ActPruebas'
      OnExecute = ActPruebasExecute
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 468
    Top = 4
  end
  object qrDonaciones: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.DonacionID, dbo.BSDonacion.MuestraNoAS' +
        ', dbo.BSDonacion.Fecha, dbo.BSDonacion.PacienteID, dbo.PTCliente' +
        '.Identificacion, dbo.PTCliente.Nombre, '
      
        '                      dbo.PTCliente.Direccion, dbo.PTCliente.Tel' +
        'efono, dbo.PTCliente.email, dbo.PTCliente.FechaNacimiento, dbo.P' +
        'TCliente.Sexo, dbo.PTCliente.CiudadID, '
      
        '                      dbo.BSDonacion.NotaEntrevista, dbo.BSDonac' +
        'ion.DonacionStatus, dbo.BSDonacion.CausaRechazoId'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCliente.ClienteID'
      'WHERE (DonacionStatus <> '#39'Rechasado'#39') '
      'AND  (DonacionStatus <> '#39'Pendiente'#39')')
    Left = 328
    Top = 355
    object qrDonacionesDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionesMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDonacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrDonacionesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDonacionesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrDonacionesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrDonacionesemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object qrDonacionesFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrDonacionesSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrDonacionesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrDonacionesNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionesDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionesCausaRechazoId: TIntegerField
      FieldName = 'CausaRechazoId'
    end
  end
  object dsDatos: TDataSource
    AutoEdit = False
    DataSet = DMB.qrDonaciones
    Left = 404
    Top = 427
  end
  object dsPaciente: TDataSource
    DataSet = qrPaciente
    Left = 272
  end
  object dsDonacion: TDataSource
    DataSet = DMB.qrDonacion
    Left = 440
    Top = 64
  end
  object dsDonante: TDataSource
    DataSet = qrDonante
    Left = 552
    Top = 40
  end
  object qrPaciente: TADOQuery
    Connection = DM.Database
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
    Left = 392
    Top = 115
    object qrPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrPacienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrPacienteCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrPacienteTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrPacienteGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object qrPacienteINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object qrPacienteAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object qrPacienteEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object qrPacienteCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrPacienteDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object qrPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrPacienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrPacienteIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object qrPacienteORIGEN: TIntegerField
      FieldName = 'ORIGEN'
    end
    object qrPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrPacienteCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrPacientePRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object qrPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrPacientePRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object qrPacienteENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object qrPacientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrPacienteFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrPacienteSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object qrPacienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrPacientePOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object qrPacienteCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object qrPacienteENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object qrPacienteACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object qrPacienteUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object qrPacienteUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object qrPacienteSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object qrPacienteIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object qrPacienteIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object qrPacienteIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object qrPacienteIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object qrPacienteUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object qrPacienteALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object qrPacienteQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object qrPacienteTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrPacienteENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object qrPacienteTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object qrPacienteSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object qrPacienteTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object qrPacientePACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object qrPacienteSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object qrPacienteUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrPacienteCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrPacienteTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object qrPacienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPacienteRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPacientemsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
    object qrPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPacienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
  end
  object qrDonacionkk: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DonacionID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM      BSDonacion'
      'WHERE     (DonacionID = :DonacionID)')
    Left = 744
    Top = 443
    object qrDonacionkkDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionkkFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionkkPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionkkNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionkkDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionkkDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrDonacionkkComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrDonacionkkCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrDonacionkkTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrDonacionkkPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrDonacionkkPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrDonacionkkPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrDonacionkkTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrDonacionkkHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrDonacionkkHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrDonacionkkDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrDonacionkkHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrDonacionkkFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrDonacionkkMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrDonacionkkTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDonacionkkTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrDonacionkkDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrDonacionkkPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrDonacionkkTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrDonacionkkHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrDonacionkkHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrDonacionkkGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrDonacionkkPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrDonacionkkNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrDonacionkkProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDonacionkkReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDonacionkkMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDonacionkkMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDonacionkkDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrDonacionkkUsuarioAS: TStringField
      FieldName = 'UsuarioAS'
      FixedChar = True
      Size = 15
    end
    object qrDonacionkkDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrDonacionkkDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrDonacionkkUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object qrDonacionkkUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object qrDonacionkkUserIdHemograma: TStringField
      FieldName = 'UserIdHemograma'
      Size = 50
    end
  end
  object qrDonante: TADOQuery
    Connection = DM.Database
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
      'FROM       BSDonante'
      'WHERE     (PacienteID = :PacienteID)')
    Left = 552
    Top = 65531
    object qrDonantePacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonanteTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object qrDonanteEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object qrDonanteRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object qrDonanteDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object qrDonanteTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDonanteRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDonanteUltimaDonacionId: TStringField
      FieldName = 'UltimaDonacionId'
    end
    object qrDonanteFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
    object qrDonanteRechasoNota: TMemoField
      FieldName = 'RechasoNota'
      BlobType = ftMemo
    end
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPaciente'
      'Where EntradaID = :rec')
    Left = 832
    Top = 456
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
    object qrEntradaPacienteMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    BeforeDelete = qrEntradaPacienteDetalleBeforeDelete
    Parameters = <
      item
        Name = 'rec'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPacienteDetalle '
      'Where MuestraNo = :rec')
    Left = 576
    Top = 392
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaPacienteDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
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
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
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
    object qrEntradaPacienteDetallePermitirBorrar: TBooleanField
      FieldName = 'PermitirBorrar'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    OnDataChange = dsEntradaPacienteDetalleDataChange
    Left = 832
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 712
  end
  object ppEntradaPaciente: TppDBPipeline
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 744
    object ppEntradaPacienteppField1: TppField
      FieldAlias = 'EntredaID'
      FieldName = 'EntredaID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object ppEntradaPacienteppField3: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppEntradaPacienteppField4: TppField
      FieldAlias = 'ClienteID'
      FieldName = 'ClienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppEntradaPacienteppField5: TppField
      FieldAlias = 'DoctorID'
      FieldName = 'DoctorID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppEntradaPacienteppField6: TppField
      FieldAlias = 'PolizaID'
      FieldName = 'PolizaID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppEntradaPacienteppField7: TppField
      FieldAlias = 'EnClinica'
      FieldName = 'EnClinica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object ppEntradaPacienteppField8: TppField
      FieldAlias = 'RecordClinica'
      FieldName = 'RecordClinica'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppEntradaPacienteppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ResultadoPaciente'
      FieldName = 'ResultadoPaciente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppEntradaPacienteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ResultadoDoctor'
      FieldName = 'ResultadoDoctor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppEntradaPacienteppField11: TppField
      FieldAlias = 'FechaPrometida'
      FieldName = 'FechaPrometida'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object ppEntradaPacienteppField12: TppField
      FieldAlias = 'HoraPrometida'
      FieldName = 'HoraPrometida'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object ppEntradaPacienteppField13: TppField
      FieldAlias = 'FlebotomistaID'
      FieldName = 'FlebotomistaID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object ppEntradaPacienteppField14: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField15: TppField
      FieldAlias = 'CoberturaConfirmada'
      FieldName = 'CoberturaConfirmada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 14
    end
    object ppEntradaPacienteppField16: TppField
      FieldAlias = 'ProyectoID'
      FieldName = 'ProyectoID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object ppEntradaPacienteppField17: TppField
      FieldAlias = 'Recid'
      FieldName = 'Recid'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 16
    end
    object ppEntradaPacienteppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bruto'
      FieldName = 'Bruto'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 17
    end
    object ppEntradaPacienteppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 18
    end
    object ppEntradaPacienteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 19
    end
    object ppEntradaPacienteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaSeguro'
      FieldName = 'CoberturaSeguro'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 20
    end
    object ppEntradaPacienteppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Neto'
      FieldName = 'Neto'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 21
    end
    object ppEntradaPacienteppField23: TppField
      FieldAlias = 'NombrePaciente'
      FieldName = 'NombrePaciente'
      FieldLength = 80
      DisplayWidth = 80
      Position = 22
    end
    object ppEntradaPacienteppField24: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField25: TppField
      FieldAlias = 'Telefonos'
      FieldName = 'Telefonos'
      FieldLength = 16
      DisplayWidth = 16
      Position = 24
    end
    object ppEntradaPacienteppField26: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object ppEntradaPacienteppField27: TppField
      FieldAlias = 'ClienteNombre'
      FieldName = 'ClienteNombre'
      FieldLength = 80
      DisplayWidth = 80
      Position = 26
    end
    object ppEntradaPacienteppField28: TppField
      FieldAlias = 'SucursalId'
      FieldName = 'SucursalId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 27
    end
    object ppEntradaPacienteppField29: TppField
      FieldAlias = 'UserID'
      FieldName = 'UserID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 28
    end
    object ppEntradaPacienteppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalPendiente'
      FieldName = 'TotalPendiente'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppEntradaPacienteppField31: TppField
      FieldAlias = 'CobroID'
      FieldName = 'CobroID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 30
    end
    object ppEntradaPacienteppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalPagado'
      FieldName = 'TotalPagado'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 31
    end
    object ppEntradaPacienteppField33: TppField
      FieldAlias = 'HoraEntrada'
      FieldName = 'HoraEntrada'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object ppEntradaPacienteppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'Prioridad'
      FieldName = 'Prioridad'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppEntradaPacienteppField35: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 16
      DisplayWidth = 16
      Position = 34
    end
    object ppEntradaPacienteppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoDocumento'
      FieldName = 'TipoDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppEntradaPacienteppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaPorc'
      FieldName = 'CoberturaPorc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 36
    end
    object ppEntradaPacienteppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaValor'
      FieldName = 'CoberturaValor'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 37
    end
    object ppEntradaPacienteppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoPorc'
      FieldName = 'DescuentoPorc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 38
    end
    object ppEntradaPacienteppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoValor'
      FieldName = 'DescuentoValor'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 39
    end
    object ppEntradaPacienteppField41: TppField
      FieldAlias = 'AprobadoPor'
      FieldName = 'AprobadoPor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object ppEntradaPacienteppField42: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object ppEntradaPacienteppField43: TppField
      FieldAlias = 'AprobacionNo'
      FieldName = 'AprobacionNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 42
    end
    object ppEntradaPacienteppField44: TppField
      FieldAlias = 'MonedaID'
      FieldName = 'MonedaID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 43
    end
    object ppEntradaPacienteppField45: TppField
      FieldAlias = 'FechaEntrada'
      FieldName = 'FechaEntrada'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 44
    end
    object ppEntradaPacienteppField46: TppField
      FieldAlias = 'CoberturaExpPorc'
      FieldName = 'CoberturaExpPorc'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 45
    end
    object ppEntradaPacienteppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'EdadPaciente'
      FieldName = 'EdadPaciente'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 46
    end
    object ppEntradaPacienteppField48: TppField
      FieldAlias = 'NombreDoctor'
      FieldName = 'NombreDoctor'
      FieldLength = 80
      DisplayWidth = 80
      Position = 47
    end
    object ppEntradaPacienteppField49: TppField
      FieldAlias = 'PublicarInternet'
      FieldName = 'PublicarInternet'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 48
    end
    object ppEntradaPacienteppField50: TppField
      FieldAlias = 'Origen'
      FieldName = 'Origen'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object ppEntradaPacienteppField51: TppField
      FieldAlias = 'Carnet'
      FieldName = 'Carnet'
      FieldLength = 20
      DisplayWidth = 20
      Position = 50
    end
    object ppEntradaPacienteppField52: TppField
      FieldAlias = 'PublicarInternetDoctor'
      FieldName = 'PublicarInternetDoctor'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 51
    end
    object ppEntradaPacienteppField53: TppField
      FieldAlias = 'CuadreGlobal'
      FieldName = 'CuadreGlobal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 52
    end
    object ppEntradaPacienteppField54: TppField
      FieldAlias = 'CuadreUsuario'
      FieldName = 'CuadreUsuario'
      FieldLength = 20
      DisplayWidth = 20
      Position = 53
    end
    object ppEntradaPacienteppField55: TppField
      FieldAlias = 'DescAutorizadoPor'
      FieldName = 'DescAutorizadoPor'
      FieldLength = 10
      DisplayWidth = 10
      Position = 54
    end
    object ppEntradaPacienteppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'GastosVarios'
      FieldName = 'GastosVarios'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 55
    end
    object ppEntradaPacienteppField57: TppField
      FieldAlias = 'NoAS400'
      FieldName = 'NoAS400'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 56
    end
    object ppEntradaPacienteppField58: TppField
      FieldAlias = 'NoAxapta'
      FieldName = 'NoAxapta'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 57
    end
    object ppEntradaPacienteppField59: TppField
      FieldAlias = 'NoFactura'
      FieldName = 'NoFactura'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 58
    end
    object ppEntradaPacienteppField60: TppField
      FieldAlias = 'FactExterior'
      FieldName = 'FactExterior'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 59
    end
    object ppEntradaPacienteppField61: TppField
      FieldAlias = 'Hold'
      FieldName = 'Hold'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 60
    end
    object ppEntradaPacienteppField62: TppField
      FieldAlias = 'RepMuestra'
      FieldName = 'RepMuestra'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 61
    end
    object ppEntradaPacienteppField63: TppField
      FieldAlias = 'EntradaIdAnt'
      FieldName = 'EntradaIdAnt'
      FieldLength = 20
      DisplayWidth = 20
      Position = 62
    end
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 864
    object ppEntradaPacienteDetalleppField1: TppField
      FieldAlias = 'PruebaID'
      FieldName = 'PruebaID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteDetalleppField2: TppField
      FieldAlias = 'ComboPruebaID'
      FieldName = 'ComboPruebaID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppEntradaPacienteDetalleppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Precio'
      FieldName = 'Precio'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 2
    end
    object ppEntradaPacienteDetalleppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 3
    end
    object ppEntradaPacienteDetalleppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoExtra'
      FieldName = 'DescuentoExtra'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object ppEntradaPacienteDetalleppField6: TppField
      FieldAlias = 'CodigoAutorizacion'
      FieldName = 'CodigoAutorizacion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppEntradaPacienteDetalleppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalLinea'
      FieldName = 'TotalLinea'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object ppEntradaPacienteDetalleppField8: TppField
      FieldAlias = 'RefRecid'
      FieldName = 'RefRecid'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 7
    end
    object ppEntradaPacienteDetalleppField9: TppField
      FieldAlias = 'Secuencia'
      FieldName = 'Secuencia'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object ppEntradaPacienteDetalleppField10: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
    object ppEntradaPacienteDetalleppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescPct'
      FieldName = 'DescPct'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object ppEntradaPacienteDetalleppField12: TppField
      FieldAlias = 'CoberturaAplica'
      FieldName = 'CoberturaAplica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 11
    end
    object ppEntradaPacienteDetalleppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaEspecial'
      FieldName = 'CoberturaEspecial'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object ppEntradaPacienteDetalleppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaEspecialPorc'
      FieldName = 'CoberturaEspecialPorc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object ppEntradaPacienteDetalleppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaAplicada'
      FieldName = 'CoberturaAplicada'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object ppEntradaPacienteDetalleppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoLineaAplicado'
      FieldName = 'DescuentoLineaAplicado'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 15
    end
    object ppEntradaPacienteDetalleppField17: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object ppEntradaPacienteDetalleppField18: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteDetalleppField19: TppField
      FieldAlias = 'CoberturaExpPorc'
      FieldName = 'CoberturaExpPorc'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 18
    end
    object ppEntradaPacienteDetalleppField20: TppField
      FieldAlias = 'RepMuestra'
      FieldName = 'RepMuestra'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 19
    end
    object ppEntradaPacienteDetalleppField21: TppField
      FieldAlias = 'MuestraAnt'
      FieldName = 'MuestraAnt'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
  end
  object dsPruebas: TDataSource
    AutoEdit = False
    DataSet = dmPruebas.qrPruebasDonantes
    Left = 104
    Top = 520
  end
  object qrProductos: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSProductos'
      'where Inicial = 1')
    Left = 144
    Top = 464
  end
  object dsProductos: TDataSource
    AutoEdit = False
    DataSet = qrProductos
    Left = 224
    Top = 424
  end
  object dsHemograma: TDataSource
    AutoEdit = False
    DataSet = qrHemograma
    Left = 264
    Top = 536
  end
  object qrResultados: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         dbo.BSResultados '
      'Where MuestraNo = :MuestraNo')
    Left = 296
    Top = 480
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
  object dsResultados: TDataSource
    AutoEdit = False
    DataSet = qrResultados
    Left = 360
    Top = 480
  end
  object qrDoctor: TADOQuery
    Connection = DM.Database
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
    Left = 592
    Top = 475
    object qrDoctorDoctorID: TStringField
      FieldName = 'DoctorID'
      Size = 10
    end
    object qrDoctorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
  object dsDoctor: TDataSource
    DataSet = qrDoctor
    Left = 640
    Top = 472
  end
  object ppImpDatos: TppReport
    AutoStop = False
    DataPipeline = DMB.plDonacion
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 473
    Top = 428
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'plDonacion'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 94192
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape1'
        mmHeight = 45244
        mmLeft = 2646
        mmTop = 42598
        mmWidth = 198173
        BandType = 0
      end
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
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDonacion'
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
        DataField = 'Nombre'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDonacion'
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
        Caption = 'DONACION'
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
        DataField = 'DonacionID'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plDonacion'
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
      object ppLabel1: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hemoglobina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 6615
        mmTop = 51329
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Hemoglobina'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDonacion'
        mmHeight = 4763
        mmLeft = 44450
        mmTop = 51329
        mmWidth = 48683
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hematocito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 7144
        mmTop = 59796
        mmWidth = 22225
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Hematocito'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDonacion'
        mmHeight = 4763
        mmLeft = 44450
        mmTop = 59531
        mmWidth = 48683
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GlobulosBlancos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 7408
        mmTop = 68263
        mmWidth = 32015
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'GlobulosBlancos'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDonacion'
        mmHeight = 4763
        mmLeft = 44450
        mmTop = 68263
        mmWidth = 48683
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plaquetas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 7938
        mmTop = 77258
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Plaquetas'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDonacion'
        mmHeight = 4763
        mmLeft = 43921
        mmTop = 76994
        mmWidth = 48683
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'NotaEntrevista'
        DataPipeline = DMB.plDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDonacion'
        mmHeight = 21696
        mmLeft = 16669
        mmTop = 1323
        mmWidth = 107156
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qrDatosDonante: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonante.PacienteID, dbo.BSDonante.TipoDonante, ' +
        'dbo.BSDonante.Estado, dbo.BSDonante.Rechaso, dbo.BSDonante.Recha' +
        'soNota, '
      
        '                      dbo.BSDonante.DonanteActivo, dbo.BSDonante' +
        '.TipoSangre, dbo.BSDonante.RH, dbo.BSDonante.FechaUltimaDon, dbo' +
        '.PTCliente.Nombre, '
      
        '                      dbo.PTCliente.Contacto, dbo.PTCliente.Tele' +
        'fono, dbo.PTCliente.Telefono2, dbo.PTCliente.Direccion, dbo.PTCl' +
        'iente.Sexo, '
      '                      dbo.BSDonante.UltimaDonacionId'
      'FROM         dbo.BSDonante INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonante.PacienteID ' +
        '= dbo.PTCliente.ClienteID'
      'WHERE     (dbo.BSDonante.PacienteID = :PacienteId)')
    Left = 56
    Top = 400
    object qrDatosDonantePacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDatosDonanteTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object qrDatosDonanteEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object qrDatosDonanteRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object qrDatosDonanteDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object qrDatosDonanteTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDatosDonanteRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDatosDonanteFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
    object qrDatosDonanteNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDatosDonanteContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrDatosDonanteTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrDatosDonanteTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object qrDatosDonanteDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrDatosDonanteSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrDatosDonanteUltimaDonacionId: TStringField
      FieldName = 'UltimaDonacionId'
    end
    object qrDatosDonanteRechasoNota: TMemoField
      FieldName = 'RechasoNota'
      BlobType = ftMemo
    end
  end
  object dsDatosDonante: TDataSource
    AutoEdit = False
    DataSet = qrDatosDonante
    Left = 264
    Top = 376
  end
  object qrReceptor: TADOQuery
    Connection = DM.Database
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
    Left = 600
    Top = 67
    object qrReceptorClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrReceptorNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
  object dsReceptor: TDataSource
    DataSet = qrReceptor
    Left = 632
  end
  object qrSecuencia: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select Max(Secuencia) As Ultima  from PTEntradaPacienteDetalle'
      'Where MuestraNo = :rec')
    Left = 912
    object qrSecuenciaUltima: TIntegerField
      FieldName = 'Ultima'
      ReadOnly = True
    end
  end
  object qrOtrasPruebas: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PruebaId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTPrueba'
      'WHERE PruebaId = :PruebaId')
    Left = 40
    Top = 464
    object qrOtrasPruebasPRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrOtrasPruebasALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 80
    end
    object qrOtrasPruebasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrOtrasPruebasPRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrOtrasPruebasCOSTO: TBCDField
      FieldName = 'COSTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrOtrasPruebasCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
    end
  end
  object qrHemograma: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DonacionId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   *'
      'FROM       BSDonacion'
      'WHERE DonacionId = :DonacionId')
    Left = 192
    Top = 531
    object qrHemogramaDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrHemogramaMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrHemogramaHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrHemogramaHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrHemogramaGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrHemogramaPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrHemogramaMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrHemogramaUsuarioAS: TStringField
      FieldName = 'UsuarioAS'
      FixedChar = True
      Size = 15
    end
    object qrHemogramaUserIdHemograma: TStringField
      FieldName = 'UserIdHemograma'
      Size = 50
    end
    object qrHemogramaHemoglobina_rapida: TStringField
      FieldName = 'Hemoglobina_rapida'
      Size = 15
    end
  end
  object tbHistoria: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    IndexFieldNames = 'PacienteID'
    MasterFields = 'PacienteID'
    MasterSource = dsDatos
    TableName = 'viewBSDonacion_BSDonante'
    Left = 96
    Top = 328
    object tbHistoriaDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object tbHistoriaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object tbHistoriaPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object tbHistoriaDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object tbHistoriaComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object tbHistoriarechaso: TWideStringField
      FieldName = 'rechaso'
    end
    object tbHistoriatiposangre: TWideStringField
      FieldName = 'tiposangre'
      FixedChar = True
      Size = 10
    end
    object tbHistoriarh: TWideStringField
      FieldName = 'rh'
      FixedChar = True
      Size = 10
    end
    object tbHistoriaDoctorNombreAutoriza: TStringField
      FieldName = 'DoctorNombreAutoriza'
      Size = 80
    end
    object tbHistoriaNotaAutoriza: TMemoField
      FieldName = 'NotaAutoriza'
      BlobType = ftMemo
    end
    object tbHistoriarechasonota: TMemoField
      FieldName = 'rechasonota'
      BlobType = ftMemo
    end
  end
  object dsHistoria: TDataSource
    AutoEdit = False
    DataSet = tbHistoria
    Left = 416
  end
  object qrUser: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM     sysUsuarios')
    Left = 920
    Top = 544
    object qrUserUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qrUserNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
  end
  object dsUser: TDataSource
    AutoEdit = False
    DataSet = qrUser
    Left = 448
    Top = 504
  end
  object Timer1: TTimer
    Interval = 30000
    OnTimer = ActActualizarHemogramaExecute
    Left = 576
    Top = 264
  end
  object qrResumen: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DonacionId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.*, dbo.PTCliente.Identificacion, dbo.P' +
        'TCliente.Nombre, '
      
        '                      dbo.PTCliente.Direccion, dbo.PTCliente.Tel' +
        'efono, dbo.PTCliente.email, dbo.PTCliente.FechaNacimiento, dbo.P' +
        'TCliente.Sexo, dbo.PTCliente.CiudadID, '
      
        '                      dbo.BSDonacion.NotaEntrevista, dbo.BSDonac' +
        'ion.DonacionStatus'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCliente.ClienteID'
      'WHERE (DonacionId = :DonacionId)')
    Left = 312
    Top = 427
    object qrResumenDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrResumenMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrResumenMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrResumenNoAsCorto: TStringField
      FieldName = 'NoAsCorto'
      ReadOnly = True
      Size = 8
    end
    object qrResumenFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrResumenPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrResumenNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrResumenDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrResumenDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrResumenComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrResumenCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrResumenTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrResumenPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrResumenPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrResumenPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrResumenTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrResumenHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrResumenHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrResumenDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrResumenDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrResumenHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrResumenFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrResumenMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrResumenTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrResumenTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrResumenDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrResumenPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrResumenTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrResumenHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrResumenHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrResumenGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrResumenPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrResumenUsuarioAS: TStringField
      FieldName = 'UsuarioAS'
      FixedChar = True
      Size = 15
    end
    object qrResumenNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrResumenProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrResumenReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrResumenDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrResumenDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrResumenUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object qrResumenUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object qrResumenUserIdHemograma: TStringField
      FieldName = 'UserIdHemograma'
      Size = 50
    end
    object qrResumenIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrResumenNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrResumenDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrResumenTelefono_1: TStringField
      FieldName = 'Telefono_1'
    end
    object qrResumenemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object qrResumenFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrResumenSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrResumenCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrResumenNotaEntrevista_1: TMemoField
      FieldName = 'NotaEntrevista_1'
      BlobType = ftMemo
    end
    object qrResumenDonacionStatus_1: TWideStringField
      FieldName = 'DonacionStatus_1'
      FixedChar = True
    end
  end
  object dsResumen: TDataSource
    AutoEdit = False
    DataSet = qrResumen
    Left = 364
    Top = 65531
  end
  object qrResultados1: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MUESTRA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         dbo.BSResultados '
      'Where Pruebaid in(516,7)'
      'AND MUESTRANOAS =:MUESTRA')
    Left = 896
    Top = 208
    object qrResultados1MuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrResultados1PruebaId: TStringField
      FieldName = 'PruebaId'
    end
    object qrResultados1Resultado: TStringField
      FieldName = 'Resultado'
      Size = 15
    end
    object qrResultados1MuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = dsDatos
    UserName = 'BDEPipeline1'
    Left = 256
    Top = 208
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'DonacionID'
      FieldName = 'DonacionID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'MuestraNoAS'
      FieldName = 'MuestraNoAS'
      FieldLength = 11
      DisplayWidth = 11
      Position = 2
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'NotaEntrevista'
      FieldName = 'NotaEntrevista'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'DonacionStatus'
      FieldName = 'DonacionStatus'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'DonacionTipo'
      FieldName = 'DonacionTipo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CantidadRecogida'
      FieldName = 'CantidadRecogida'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object ppBDEPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Temperatura'
      FieldName = 'Temperatura'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object ppBDEPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso'
      FieldName = 'Peso'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object ppBDEPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PulsoMinimo'
      FieldName = 'PulsoMinimo'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object ppBDEPipeline1ppField14: TppField
      FieldAlias = 'PulsoEstado'
      FieldName = 'PulsoEstado'
      FieldLength = 10
      DisplayWidth = 10
      Position = 13
    end
    object ppBDEPipeline1ppField15: TppField
      FieldAlias = 'TensionArteriar'
      FieldName = 'TensionArteriar'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
    object ppBDEPipeline1ppField16: TppField
      FieldAlias = 'HoraInicio'
      FieldName = 'HoraInicio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
    end
    object ppBDEPipeline1ppField17: TppField
      FieldAlias = 'HoraFin'
      FieldName = 'HoraFin'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object ppBDEPipeline1ppField18: TppField
      FieldAlias = 'DirigidoPacienteId'
      FieldName = 'DirigidoPacienteId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object ppBDEPipeline1ppField19: TppField
      FieldAlias = 'DirigidoNombre'
      FieldName = 'DirigidoNombre'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object ppBDEPipeline1ppField20: TppField
      FieldAlias = 'Hospital'
      FieldName = 'Hospital'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object ppBDEPipeline1ppField21: TppField
      FieldAlias = 'FechaTranfusion'
      FieldName = 'FechaTranfusion'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 20
    end
    object ppBDEPipeline1ppField22: TppField
      FieldAlias = 'Medico'
      FieldName = 'Medico'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
    object ppBDEPipeline1ppField23: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 16
      DisplayWidth = 16
      Position = 22
    end
    object ppBDEPipeline1ppField24: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 16
      DisplayWidth = 16
      Position = 23
    end
    object ppBDEPipeline1ppField25: TppField
      FieldAlias = 'DireccionMedico'
      FieldName = 'DireccionMedico'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pagina'
      FieldName = 'Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppBDEPipeline1ppField27: TppField
      FieldAlias = 'TipoFundaID'
      FieldName = 'TipoFundaID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 26
    end
    object ppBDEPipeline1ppField28: TppField
      FieldAlias = 'Hemoglobina'
      FieldName = 'Hemoglobina'
      FieldLength = 15
      DisplayWidth = 15
      Position = 27
    end
    object ppBDEPipeline1ppField29: TppField
      FieldAlias = 'Hematocito'
      FieldName = 'Hematocito'
      FieldLength = 15
      DisplayWidth = 15
      Position = 28
    end
    object ppBDEPipeline1ppField30: TppField
      FieldAlias = 'GlobulosBlancos'
      FieldName = 'GlobulosBlancos'
      FieldLength = 15
      DisplayWidth = 15
      Position = 29
    end
    object ppBDEPipeline1ppField31: TppField
      FieldAlias = 'Plaquetas'
      FieldName = 'Plaquetas'
      FieldLength = 15
      DisplayWidth = 15
      Position = 30
    end
    object ppBDEPipeline1ppField32: TppField
      FieldAlias = 'NotasCuestionario'
      FieldName = 'NotasCuestionario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField33: TppField
      FieldAlias = 'ProductoID'
      FieldName = 'ProductoID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object ppBDEPipeline1ppField34: TppField
      FieldAlias = 'Reservado'
      FieldName = 'Reservado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 33
    end
    object ppBDEPipeline1ppField35: TppField
      FieldAlias = 'Disponible'
      FieldName = 'Disponible'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 34
    end
    object ppBDEPipeline1ppField36: TppField
      FieldAlias = 'DoctorId'
      FieldName = 'DoctorId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 35
    end
    object ppBDEPipeline1ppField37: TppField
      FieldAlias = 'UserIdCuestionario'
      FieldName = 'UserIdCuestionario'
      FieldLength = 10
      DisplayWidth = 10
      Position = 36
    end
    object ppBDEPipeline1ppField38: TppField
      FieldAlias = 'UserIdMuestra'
      FieldName = 'UserIdMuestra'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppBDEPipeline1ppField39: TppField
      FieldAlias = 'Identificacion'
      FieldName = 'Identificacion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object ppBDEPipeline1ppField40: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 80
      DisplayWidth = 80
      Position = 39
    end
    object ppBDEPipeline1ppField41: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 255
      DisplayWidth = 255
      Position = 40
    end
    object ppBDEPipeline1ppField42: TppField
      FieldAlias = 'Telefono_1'
      FieldName = 'Telefono_1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object ppBDEPipeline1ppField43: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 80
      DisplayWidth = 80
      Position = 42
    end
    object ppBDEPipeline1ppField44: TppField
      FieldAlias = 'FechaNacimiento'
      FieldName = 'FechaNacimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 43
    end
    object ppBDEPipeline1ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sexo'
      FieldName = 'Sexo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
    object ppBDEPipeline1ppField46: TppField
      FieldAlias = 'CiudadID'
      FieldName = 'CiudadID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 45
    end
    object ppBDEPipeline1ppField47: TppField
      FieldAlias = 'NotaEntrevista_1'
      FieldName = 'NotaEntrevista_1'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField48: TppField
      FieldAlias = 'DonacionStatus_1'
      FieldName = 'DonacionStatus_1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 47
    end
    object ppBDEPipeline1ppField49: TppField
      FieldAlias = 'NoAsCorto'
      FieldName = 'NoAsCorto'
      FieldLength = 8
      DisplayWidth = 8
      Position = 48
    end
    object ppBDEPipeline1ppField50: TppField
      FieldAlias = 'UsuarioAS'
      FieldName = 'UsuarioAS'
      FieldLength = 15
      DisplayWidth = 15
      Position = 49
    end
    object ppBDEPipeline1ppField51: TppField
      FieldAlias = 'UserIdHemograma'
      FieldName = 'UserIdHemograma'
      FieldLength = 50
      DisplayWidth = 50
      Position = 50
    end
    object ppBDEPipeline1ppField52: TppField
      FieldAlias = 'DoctorIdAutoriza'
      FieldName = 'DoctorIdAutoriza'
      FieldLength = 10
      DisplayWidth = 10
      Position = 51
    end
    object ppBDEPipeline1ppField53: TppField
      FieldAlias = 'ObservacionAutoriza'
      FieldName = 'ObservacionAutoriza'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField54: TppField
      FieldAlias = 'UserIdRechaza'
      FieldName = 'UserIdRechaza'
      FieldLength = 50
      DisplayWidth = 50
      Position = 53
    end
    object ppBDEPipeline1ppField55: TppField
      FieldAlias = 'FechaRechaza'
      FieldName = 'FechaRechaza'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 54
    end
    object ppBDEPipeline1ppField56: TppField
      FieldAlias = 'RechazoNota'
      FieldName = 'RechazoNota'
      FieldLength = 1000
      DisplayWidth = 1000
      Position = 55
    end
    object ppBDEPipeline1ppField57: TppField
      FieldAlias = 'ISTBDonacion'
      FieldName = 'ISTBDonacion'
      FieldLength = 15
      DisplayWidth = 15
      Position = 56
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 480
    Top = 176
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ISTBDonacion'
        DataPipeline = BSReportes.ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 17198
        mmLeft = 2910
        mmTop = 0
        mmWidth = 49477
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
  end
end
