inherited frmDatosClientesPlanes: TfrmDatosClientesPlanes
  ActiveControl = pcDatos
  Caption = 'Pacientes Chequeos Anuales'
  ClientHeight = 575
  ClientWidth = 931
  ExplicitWidth = 939
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 931
    Height = 542
    ExplicitWidth = 931
    ExplicitHeight = 542
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
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 781
            Height = 420
            ExplicitWidth = 781
            ExplicitHeight = 420
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'EmpleadoID'
              object tvDatosPlanId: TcxGridDBColumn
                DataBinding.FieldName = 'PlanId'
                Options.Editing = False
                Width = 85
              end
              object tvDatosEmpresaID: TcxGridDBColumn
                Caption = 'Empresa Id'
                DataBinding.FieldName = 'EmpresaID'
                Options.Editing = False
                Width = 110
              end
              object tvDatosEmpleadoID: TcxGridDBColumn
                Caption = 'Paciente Id'
                DataBinding.FieldName = 'EmpleadoID'
                Options.Editing = False
                Width = 110
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
                Options.Editing = False
                Width = 200
              end
              object tvDatosDepartamento: TcxGridDBColumn
                DataBinding.FieldName = 'Departamento'
                Options.Editing = False
                Width = 125
              end
              object tvDatosCargo: TcxGridDBColumn
                DataBinding.FieldName = 'Cargo'
                Width = 125
              end
              object tvDatosSucursal: TcxGridDBColumn
                DataBinding.FieldName = 'Sucursal'
                Width = 150
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object edcliente: TcxDBTextEdit [0]
            Tag = 99
            Left = 95
            Top = 89
            DataBinding.DataField = 'EmpresaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 95
            Top = 170
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 395
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 95
            Top = 327
            DataBinding.DataField = 'Contacto'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 15
            Width = 395
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 95
            Top = 354
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 16
            Width = 145
          end
          object cxDBTextEdit5: TcxDBTextEdit [4]
            Left = 95
            Top = 381
            DataBinding.DataField = 'Fax'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Width = 145
          end
          object cxDBTextEdit6: TcxDBTextEdit [5]
            Left = 95
            Top = 408
            DataBinding.DataField = 'email'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 19
            Width = 395
          end
          object cxDBTextEdit7: TcxDBTextEdit [6]
            Left = 95
            Top = 435
            DataBinding.DataField = 'Cargo'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            Width = 395
          end
          object cxDBTextEdit8: TcxDBTextEdit [7]
            Left = 246
            Top = 354
            DataBinding.DataField = 'Telefono2'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 17
            Width = 145
          end
          object cxDBTextEdit1: TcxDBTextEdit [8]
            Left = 95
            Top = 143
            DataBinding.DataField = 'Identificacion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 145
          end
          object cxDBMemo1: TcxDBMemo [9]
            Left = 95
            Top = 256
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Height = 38
            Width = 395
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [10]
            Left = 95
            Top = 300
            RepositoryItem = DM.elcCiudad
            DataBinding.DataField = 'CiudadID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 14
            Width = 145
          end
          object cxDBImageComboBox3: TcxDBImageComboBox [11]
            Left = 633
            Top = 62
            DataBinding.DataField = 'Sexo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Femenino'
                ImageIndex = 0
                Value = 'F'
              end
              item
                Description = 'Masculino'
                Value = 'M'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 140
          end
          object cxDBDateEdit1: TcxDBDateEdit [12]
            Left = 633
            Top = 116
            DataBinding.DataField = 'FechaNacimiento'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 140
          end
          object EdPlan: TcxDBTextEdit [13]
            Left = 95
            Top = 62
            DataBinding.DataField = 'PlanId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 145
          end
          object cxDBTextEdit10: TcxDBTextEdit [14]
            Left = 95
            Top = 197
            DataBinding.DataField = 'Departamento'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 395
          end
          object cxDBTextEdit11: TcxDBTextEdit [15]
            Left = 633
            Top = 143
            DataBinding.DataField = 'TipoSangre'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 121
          end
          object EdEmpleado: TcxDBTextEdit [16]
            Left = 95
            Top = 116
            DataBinding.DataField = 'EmpleadoID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          object cxDBTextEdit9: TcxDBTextEdit [17]
            Left = 95
            Top = 462
            DataBinding.DataField = 'Alias'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 21
            Width = 395
          end
          object cxDBTextEdit12: TcxDBTextEdit [18]
            Left = 633
            Top = 256
            DataBinding.DataField = 'MuestraId'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 140
          end
          object cxDBCheckBox1: TcxDBCheckBox [19]
            Left = 633
            Top = 364
            DataBinding.DataField = 'Sangre'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 26
            Width = 121
          end
          object cxDBCheckBox2: TcxDBCheckBox [20]
            Left = 633
            Top = 391
            DataBinding.DataField = 'Orina'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 27
            Width = 121
          end
          object cxDBTextEdit13: TcxDBTextEdit [21]
            Left = 633
            Top = 283
            DataBinding.DataField = 'ComboId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 23
            Width = 140
          end
          object cxDBDateEdit2: TcxDBDateEdit [22]
            Left = 633
            Top = 310
            DataBinding.DataField = 'FechaSangre'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 24
            Width = 121
          end
          object cxDBDateEdit3: TcxDBDateEdit [23]
            Left = 633
            Top = 337
            DataBinding.DataField = 'FechaOrina'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 25
            Width = 121
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [24]
            Left = 633
            Top = 89
            DataBinding.DataField = 'Edad'
            DataBinding.DataSource = dsDatos
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          object cxDBTextEdit14: TcxDBTextEdit [25]
            Left = 633
            Top = 170
            DataBinding.DataField = 'PacienteCiaId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 121
          end
          object Barra1: TProgressBar [26]
            Left = 11
            Top = 11
            Width = 775
            Height = 20
            TabOrder = 0
          end
          object cxDBCheckBox3: TcxDBCheckBox [27]
            Left = 633
            Top = 418
            DataBinding.DataField = 'Garganta'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 28
            Width = 121
          end
          object cxDBCheckBox4: TcxDBCheckBox [28]
            Left = 633
            Top = 445
            DataBinding.DataField = 'Esputo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 29
            Width = 121
          end
          object cxDBCheckBox5: TcxDBCheckBox [29]
            Left = 633
            Top = 472
            DataBinding.DataField = 'Nail'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 30
            Width = 121
          end
          object EdImpresion: TcxDBTextEdit [30]
            Left = 633
            Top = 197
            DataBinding.DataField = 'TipoImpresion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosItem22: TdxLayoutItem
              Control = Barra1
              ControlOptions.ShowBorder = False
            end
            object lcDatosGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosGroup1: TdxLayoutGroup
                AutoAligns = [aaVertical]
                Caption = 'General'
                object lcDatosItem23: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Plan Id'
                  Control = EdPlan
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Empresa Id'
                  Control = edcliente
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem15: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Paciente Id'
                  Control = EdEmpleado
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem11: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cedula'
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = cxDBTextEdit2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Departamento'
                  Control = cxDBTextEdit10
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup6: TdxLayoutGroup
                AutoAligns = []
                AlignVert = avClient
                Caption = 'Paciente'
                object lcDatosItem20: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Sexo'
                  Control = cxDBImageComboBox3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem28: TdxLayoutItem
                  Caption = 'Edad'
                  Control = cxDBCurrencyEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem21: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fecha de Nacimiento'
                  Control = cxDBDateEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem14: TdxLayoutItem
                  Caption = 'Tipo de Sangre'
                  Control = cxDBTextEdit11
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem29: TdxLayoutItem
                  Caption = 'Codigo de Paciente'
                  Control = cxDBTextEdit14
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem31: TdxLayoutItem
                  Caption = 'Impresion Resultados'
                  Control = EdImpresion
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroup8: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosGroup2: TdxLayoutGroup
                AutoAligns = []
                AlignVert = avClient
                Caption = 'Contacto'
                object lcDatosItem12: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Direcci'#243'n'
                  Control = cxDBMemo1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem13: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ciudad'
                  Control = cxDBExtLookupComboBox1
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
                  Caption = 'Cargo'
                  Control = cxDBTextEdit7
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Alias'
                  Control = cxDBTextEdit9
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup7: TdxLayoutGroup
                AutoAligns = []
                AlignVert = avClient
                Caption = 'Pruebas'
                object lcDatosItem16: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Numero de Laboratorio'
                  Control = cxDBTextEdit12
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem18: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Prueba Id'
                  Control = cxDBTextEdit13
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem26: TdxLayoutItem
                  Caption = 'Fecha Sangrado'
                  Control = cxDBDateEdit2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem27: TdxLayoutItem
                  Caption = 'Fecha Orina'
                  Control = cxDBDateEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem17: TdxLayoutItem
                  Caption = 'Sangre'
                  Control = cxDBCheckBox1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem19: TdxLayoutItem
                  Caption = 'Orina'
                  Control = cxDBCheckBox2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem24: TdxLayoutItem
                  Caption = 'Garganta'
                  Control = cxDBCheckBox3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem25: TdxLayoutItem
                  Caption = 'Esputo'
                  Control = cxDBCheckBox4
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem30: TdxLayoutItem
                  Caption = 'U'#241'a'
                  Control = cxDBCheckBox5
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object BtImportar: TcxButton [1]
      Left = 809
      Top = 7
      Width = 110
      Height = 25
      Caption = 'Importar Pacientes'
      TabOrder = 1
      OnClick = BtImportarClick
    end
    object BtExportar: TcxButton [2]
      Left = 809
      Top = 193
      Width = 110
      Height = 25
      Caption = 'Exportar Pacientes'
      TabOrder = 7
      OnClick = BtExportarClick
    end
    object BtEtiquetas: TcxButton [3]
      Left = 809
      Top = 131
      Width = 110
      Height = 25
      Caption = 'Imprimir Etiquetas'
      TabOrder = 5
      OnClick = BtEtiquetasClick
    end
    object BtOrdenes: TcxButton [4]
      Left = 809
      Top = 100
      Width = 110
      Height = 25
      Caption = 'Generar Ordenes'
      TabOrder = 4
      OnClick = BtOrdenesClick
    end
    object BtCombos: TcxButton [5]
      Left = 809
      Top = 255
      Width = 110
      Height = 25
      Caption = '&Asignar Pruebas'
      TabOrder = 9
      OnClick = BtCombosClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
    end
    object BtProcesar: TcxButton [6]
      Left = 809
      Top = 69
      Width = 110
      Height = 25
      Caption = 'Procesar Carga'
      TabOrder = 3
      OnClick = BtProcesarClick
    end
    object btActualizar: TcxButton [7]
      Left = 809
      Top = 224
      Width = 75
      Height = 25
      Caption = 'Actualizar Toma Ext'
      TabOrder = 8
      OnClick = btActualizarClick
    end
    object cxButton1: TcxButton [8]
      Left = 809
      Top = 38
      Width = 75
      Height = 25
      Caption = 'Ver Carga Temporal'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object BtPrintLista: TcxButton [9]
      Left = 809
      Top = 162
      Width = 75
      Height = 25
      Caption = 'Imprimir Listados'
      TabOrder = 6
      OnClick = BtPrintListaClick
    end
    object BtVerTest: TcxButton [10]
      Left = 809
      Top = 286
      Width = 75
      Height = 25
      Caption = 'Ver Pruebas'
      TabOrder = 10
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtImportar
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtProcesar
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'cxButton4'
            ShowCaption = False
            Control = BtOrdenes
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'cxButton3'
            ShowCaption = False
            Control = BtEtiquetas
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtPrintLista
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtExportar
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btActualizar
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtCombos
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtVerTest
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 931
    ExplicitWidth = 931
  end
  inherited formStorage: TJvFormStorage
    Left = 344
    Top = 143
  end
  inherited dsDatos: TDataSource
    DataSet = qrClientes
    Left = 132
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 404
    Top = 100
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
    Left = 408
    Top = 3
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 464
    Top = 141
  end
  inherited SaveDialog: TSaveDialog
    Left = 465
    Top = 96
  end
  inherited qryHelper: TADOQuery
    Left = 876
    Top = 387
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 3
  end
  inherited pmCustom: TPopupMenu
    Left = 512
    Top = 3
  end
  inherited qrDefaultView: TADOQuery
    Left = 824
    Top = 387
  end
  inherited strView: TJvStrHolder
    Left = 252
    Top = 100
  end
  inherited strTableNames: TJvStrHolder
    Left = 296
    Top = 100
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 408
    Top = 141
  end
  inherited qrUserFields: TABSQuery
    Left = 256
    Top = 143
  end
  inherited qrVistas: TABSQuery
    Left = 300
    Top = 142
  end
  object qrClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrClientesBeforePost
    OnNewRecord = qrClientesNewRecord
    Parameters = <
      item
        Name = 'plan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTClientesPlanes'
      'WHERE PlanId = :plan')
    Left = 88
    Top = 3
    object qrClientesPlanId: TStringField
      FieldName = 'PlanId'
      Size = 10
    end
    object qrClientesEmpresaID: TStringField
      FieldName = 'EmpresaID'
      Size = 10
    end
    object qrClientesEmpleadoID: TStringField
      FieldName = 'EmpleadoID'
      Size = 10
    end
    object qrClientesClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrClientesCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object qrClientesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrClientesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrClientesDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
    object qrClientesContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrClientesTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrClientesTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrClientesFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrClientesDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrClientesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrClientesemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object qrClientesFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrClientesAlias: TStringField
      FieldName = 'Alias'
      Size = 100
    end
    object qrClientesTipoSangre: TStringField
      FieldName = 'TipoSangre'
      Size = 5
    end
    object qrClientesLinea: TLargeintField
      FieldName = 'Linea'
    end
    object qrClientesSangre: TBooleanField
      FieldName = 'Sangre'
      OnChange = qrClientesSangreChange
    end
    object qrClientesOrina: TBooleanField
      FieldName = 'Orina'
      OnChange = qrClientesOrinaChange
    end
    object qrClientesEsputo: TBooleanField
      FieldName = 'Esputo'
      OnChange = qrClientesEsputoChange
    end
    object qrClientesGarganta: TBooleanField
      FieldName = 'Garganta'
      OnChange = qrClientesGargantaChange
    end
    object qrClientesNail: TBooleanField
      FieldName = 'Nail'
      OnChange = qrClientesNailChange
    end
    object qrClientesFechaSangre: TDateTimeField
      FieldName = 'FechaSangre'
    end
    object qrClientesFechaOrina: TDateTimeField
      FieldName = 'FechaOrina'
    end
    object qrClientesFechaEsputo: TDateTimeField
      FieldName = 'FechaEsputo'
    end
    object qrClientesFechaGarganta: TDateTimeField
      FieldName = 'FechaGarganta'
    end
    object qrClientesFechaNail: TDateTimeField
      FieldName = 'FechaNail'
    end
    object qrClientesComboId: TStringField
      FieldName = 'ComboId'
    end
    object qrClientesMuestraId: TStringField
      FieldName = 'MuestraId'
    end
    object qrClientesEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 2
    end
    object qrClientesCargo: TStringField
      FieldName = 'Cargo'
    end
    object qrClientesSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 2
    end
    object qrClientesEdad: TIntegerField
      FieldName = 'Edad'
    end
    object qrClientesSucursal: TStringField
      FieldName = 'Sucursal'
      Size = 50
    end
    object qrClientesPacienteCiaId: TStringField
      FieldName = 'PacienteCiaId'
      Size = 10
    end
    object qrClientesTomado: TBooleanField
      FieldName = 'Tomado'
    end
    object qrClientesImpreso: TBooleanField
      FieldName = 'Impreso'
    end
    object qrClientesGenerado: TBooleanField
      FieldName = 'Generado'
    end
    object qrClientesTipoImpresion: TStringField
      FieldName = 'TipoImpresion'
    end
  end
  object pmAcuerdoComercial: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmCustomPopup
    Left = 456
    Top = 3
    object Precios1: TMenuItem
      Caption = 'Precios'
    end
    object Descuentos1: TMenuItem
      Caption = 'Descuentos'
    end
  end
  object ActionList1: TActionList
    Left = 584
    Top = 3
  end
  object ppClientesPlanesRep: TppDBPipeline
    DataSource = dsClienteReporte
    UserName = 'ClientesPlanesRep'
    Left = 840
    Top = 3
    object ppClientesPlanesRepppField1: TppField
      FieldAlias = 'PlanId'
      FieldName = 'PlanId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppClientesPlanesRepppField2: TppField
      FieldAlias = 'EmpresaID'
      FieldName = 'EmpresaID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppClientesPlanesRepppField3: TppField
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppClientesPlanesRepppField4: TppField
      FieldAlias = 'ClienteID'
      FieldName = 'ClienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppClientesPlanesRepppField5: TppField
      FieldAlias = 'ComboId'
      FieldName = 'ComboId'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppClientesPlanesRepppField6: TppField
      FieldAlias = 'CodigoAxapta'
      FieldName = 'CodigoAxapta'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppClientesPlanesRepppField7: TppField
      FieldAlias = 'Identificacion'
      FieldName = 'Identificacion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppClientesPlanesRepppField8: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 80
      DisplayWidth = 80
      Position = 7
    end
    object ppClientesPlanesRepppField9: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppClientesPlanesRepppField10: TppField
      FieldAlias = 'Contacto'
      FieldName = 'Contacto'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
    object ppClientesPlanesRepppField11: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 16
      DisplayWidth = 16
      Position = 10
    end
    object ppClientesPlanesRepppField12: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 16
      DisplayWidth = 16
      Position = 11
    end
    object ppClientesPlanesRepppField13: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 16
      DisplayWidth = 16
      Position = 12
    end
    object ppClientesPlanesRepppField14: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppClientesPlanesRepppField15: TppField
      FieldAlias = 'CiudadID'
      FieldName = 'CiudadID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
    object ppClientesPlanesRepppField16: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 15
    end
    object ppClientesPlanesRepppField17: TppField
      FieldAlias = 'FechaNacimiento'
      FieldName = 'FechaNacimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object ppClientesPlanesRepppField18: TppField
      FieldAlias = 'Alias'
      FieldName = 'Alias'
      FieldLength = 100
      DisplayWidth = 100
      Position = 17
    end
    object ppClientesPlanesRepppField19: TppField
      FieldAlias = 'TipoSangre'
      FieldName = 'TipoSangre'
      FieldLength = 5
      DisplayWidth = 5
      Position = 18
    end
    object ppClientesPlanesRepppField20: TppField
      FieldAlias = 'Linea'
      FieldName = 'Linea'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 19
    end
    object ppClientesPlanesRepppField21: TppField
      FieldAlias = 'Sangre'
      FieldName = 'Sangre'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 20
    end
    object ppClientesPlanesRepppField22: TppField
      FieldAlias = 'Orina'
      FieldName = 'Orina'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 21
    end
    object ppClientesPlanesRepppField23: TppField
      FieldAlias = 'Esputo'
      FieldName = 'Esputo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 22
    end
    object ppClientesPlanesRepppField24: TppField
      FieldAlias = 'Garganta'
      FieldName = 'Garganta'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 23
    end
    object ppClientesPlanesRepppField25: TppField
      FieldAlias = 'Nail'
      FieldName = 'Nail'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 24
    end
    object ppClientesPlanesRepppField26: TppField
      FieldAlias = 'FechaSangre'
      FieldName = 'FechaSangre'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object ppClientesPlanesRepppField27: TppField
      FieldAlias = 'FechaOrina'
      FieldName = 'FechaOrina'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 26
    end
    object ppClientesPlanesRepppField28: TppField
      FieldAlias = 'FechaEsputo'
      FieldName = 'FechaEsputo'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 27
    end
    object ppClientesPlanesRepppField29: TppField
      FieldAlias = 'FechaGarganta'
      FieldName = 'FechaGarganta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 28
    end
    object ppClientesPlanesRepppField30: TppField
      FieldAlias = 'FechaNail'
      FieldName = 'FechaNail'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object ppClientesPlanesRepppField31: TppField
      FieldAlias = 'MuestraId'
      FieldName = 'MuestraId'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppClientesPlanesRepppField32: TppField
      FieldAlias = 'Estatus'
      FieldName = 'Estatus'
      FieldLength = 2
      DisplayWidth = 2
      Position = 31
    end
    object ppClientesPlanesRepppField33: TppField
      FieldAlias = 'Cargo'
      FieldName = 'Cargo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
    object ppClientesPlanesRepppField34: TppField
      FieldAlias = 'Sexo'
      FieldName = 'Sexo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 33
    end
    object ppClientesPlanesRepppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'Edad'
      FieldName = 'Edad'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppClientesPlanesRepppField36: TppField
      FieldAlias = 'Sucursal'
      FieldName = 'Sucursal'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object ppClientesPlanesRepppField37: TppField
      FieldAlias = 'PacienteCiaId'
      FieldName = 'PacienteCiaId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 36
    end
    object ppClientesPlanesRepppField38: TppField
      FieldAlias = 'Tomado'
      FieldName = 'Tomado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 37
    end
    object ppClientesPlanesRepppField39: TppField
      FieldAlias = 'Impreso'
      FieldName = 'Impreso'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object ppClientesPlanesRepppField40: TppField
      FieldAlias = 'Generado'
      FieldName = 'Generado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 39
    end
  end
  object dsClienteReporte: TDataSource
    AutoEdit = False
    DataSet = qrClienteReporte
    OnStateChange = dsDatosStateChange
    Left = 718
    Top = 3
  end
  object qrClienteReporte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrClientesBeforePost
    OnNewRecord = qrClientesNewRecord
    Parameters = <
      item
        Name = 'plan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTClientesPlanes'
      'WHERE PlanId = :plan')
    Left = 680
    Top = 3
    object qrClienteReportePlanId: TStringField
      FieldName = 'PlanId'
      Size = 10
    end
    object qrClienteReporteEmpresaID: TStringField
      FieldName = 'EmpresaID'
      Size = 10
    end
    object qrClienteReporteEmpleadoID: TStringField
      FieldName = 'EmpleadoID'
      Size = 10
    end
    object qrClienteReporteClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrClienteReporteComboId: TStringField
      FieldName = 'ComboId'
    end
    object qrClienteReporteCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object qrClienteReporteIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrClienteReporteNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrClienteReporteDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
    object qrClienteReporteContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrClienteReporteTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrClienteReporteTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrClienteReporteFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrClienteReporteDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrClienteReporteCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrClienteReporteemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object qrClienteReporteFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrClienteReporteAlias: TStringField
      FieldName = 'Alias'
      Size = 100
    end
    object qrClienteReporteTipoSangre: TStringField
      FieldName = 'TipoSangre'
      Size = 5
    end
    object qrClienteReporteLinea: TLargeintField
      FieldName = 'Linea'
    end
    object qrClienteReporteSangre: TBooleanField
      FieldName = 'Sangre'
    end
    object qrClienteReporteOrina: TBooleanField
      FieldName = 'Orina'
    end
    object qrClienteReporteEsputo: TBooleanField
      FieldName = 'Esputo'
    end
    object qrClienteReporteGarganta: TBooleanField
      FieldName = 'Garganta'
    end
    object qrClienteReporteNail: TBooleanField
      FieldName = 'Nail'
    end
    object qrClienteReporteFechaSangre: TDateTimeField
      FieldName = 'FechaSangre'
    end
    object qrClienteReporteFechaOrina: TDateTimeField
      FieldName = 'FechaOrina'
    end
    object qrClienteReporteFechaEsputo: TDateTimeField
      FieldName = 'FechaEsputo'
    end
    object qrClienteReporteFechaGarganta: TDateTimeField
      FieldName = 'FechaGarganta'
    end
    object qrClienteReporteFechaNail: TDateTimeField
      FieldName = 'FechaNail'
    end
    object qrClienteReporteMuestraId: TStringField
      FieldName = 'MuestraId'
    end
    object qrClienteReporteEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 2
    end
    object qrClienteReporteCargo: TStringField
      FieldName = 'Cargo'
    end
    object qrClienteReporteSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 2
    end
    object qrClienteReporteEdad: TIntegerField
      FieldName = 'Edad'
    end
    object qrClienteReporteSucursal: TStringField
      FieldName = 'Sucursal'
      Size = 50
    end
    object qrClienteReportePacienteCiaId: TStringField
      FieldName = 'PacienteCiaId'
      Size = 10
    end
    object qrClienteReporteTomado: TBooleanField
      FieldName = 'Tomado'
    end
    object qrClienteReporteImpreso: TBooleanField
      FieldName = 'Impreso'
    end
    object qrClienteReporteGenerado: TBooleanField
      FieldName = 'Generado'
    end
    object qrClienteReporteTipoImpresion: TStringField
      FieldName = 'TipoImpresion'
    end
  end
  object ppClientesPlanesReport: TppReport
    AutoStop = False
    Columns = 4
    DataPipeline = ppClientesPlanesRep
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 5000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 5000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 760
    Top = 3
    Version = '10.04'
    mmColumnWidth = 51500
    DataPipelineName = 'ppClientesPlanesRep'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6500
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MuestraId'
        DataPipeline = ppClientesPlanesRep
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppClientesPlanesRep'
        mmHeight = 4233
        mmLeft = 23813
        mmTop = 1852
        mmWidth = 19000
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Nombre'
        DataPipeline = ppClientesPlanesRep
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppClientesPlanesRep'
        mmHeight = 3683
        mmLeft = 7408
        mmTop = 7144
        mmWidth = 35560
        BandType = 4
      end
      object LbNumero: TppLabel
        UserName = 'LbNumero'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbNumero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7408
        mmTop = 1852
        mmWidth = 15875
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6500
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Textos(.txt)|*.txt'
    InitialDir = 'C:\'
    Title = 'Laboratorio - Guardar Archivo'
    Left = 256
    Top = 3
  end
  object OpenDialog: TOpenDialog
    Filter = 'Textos(.txt)|*.txt'
    InitialDir = 'C:\'
    Title = 'Laboratorio - Abrir Archivo'
    Left = 304
    Top = 3
  end
  object ppClientesPlanesListado: TppReport
    AutoStop = False
    DataPipeline = ppClientesPlanesRep
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
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
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 800
    Top = 3
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppClientesPlanesRep'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 2381
        mmWidth = 17198
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 144727
        mmTop = 7408
        mmWidth = 8805
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 129646
        mmTop = 2381
        mmWidth = 12319
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 1323
        mmTop = 13229
        mmWidth = 198438
        BandType = 0
      end
      object ppDBText40: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 5821
        mmLeft = 2117
        mmTop = 2646
        mmWidth = 104246
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 129382
        mmTop = 7144
        mmWidth = 13674
        BandType = 0
      end
    end
    object ppColumnHeaderBand3: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EmpresaID'
        DataPipeline = ppClientesPlanesRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppClientesPlanesRep'
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 635
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EmpleadoID'
        DataPipeline = ppClientesPlanesRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppClientesPlanesRep'
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 635
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = ppClientesPlanesRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppClientesPlanesRep'
        mmHeight = 3969
        mmLeft = 49742
        mmTop = 529
        mmWidth = 50800
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Departamento'
        DataPipeline = ppClientesPlanesRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppClientesPlanesRep'
        mmHeight = 3969
        mmLeft = 101071
        mmTop = 529
        mmWidth = 57150
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MuestraId'
        DataPipeline = ppClientesPlanesRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppClientesPlanesRep'
        mmHeight = 3969
        mmLeft = 160020
        mmTop = 265
        mmWidth = 31750
        BandType = 4
      end
    end
    object ppColumnFooterBand3: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'Tipo'
      DataPipeline = ppClientesPlanesRep
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppClientesPlanesRep'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Save = True
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -2147483640
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 3969
          mmTop = 264
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Empleado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -2147483640
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 24077
          mmTop = 264
          mmWidth = 16806
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Nombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -2147483640
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 49477
          mmTop = 264
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Departamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -2147483640
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 101336
          mmTop = 264
          mmWidth = 23664
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Muestra No.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -2147483640
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 160020
          mmTop = 264
          mmWidth = 20193
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
