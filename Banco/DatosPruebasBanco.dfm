inherited frmDatosPruebasBanco: TfrmDatosPruebasBanco
  Caption = 'Pruebas Banco '
  ClientHeight = 559
  ClientWidth = 797
  ExplicitWidth = 805
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 797
    Height = 526
    ExplicitWidth = 797
    ExplicitHeight = 526
    inherited pcDatos: TcxPageControl
      Width = 497
      Height = 429
      ActivePage = tsDatos
      ExplicitWidth = 497
      ExplicitHeight = 429
      ClientRectBottom = 429
      ClientRectRight = 497
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 673
        ExplicitHeight = 502
        inherited lcGrid: TdxLayoutControl
          Width = 497
          Height = 405
          ExplicitWidth = 673
          ExplicitHeight = 502
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'PruebaID'
              object tvDatosPruebaID: TcxGridDBColumn
                DataBinding.FieldName = 'PruebaID'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
              end
              object tvDatosEstatus: TcxGridDBColumn
                DataBinding.FieldName = 'Estatus'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
              end
              object tvDatosGrupoPruebaID: TcxGridDBColumn
                DataBinding.FieldName = 'GrupoPruebaID'
              end
              object tvDatosPrecio: TcxGridDBColumn
                DataBinding.FieldName = 'Precio'
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                Caption = 'Codigo Axapta'
                DataBinding.FieldName = 'CodigoAxapta'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 673
        ExplicitHeight = 502
        inherited lcDatos: TdxLayoutControl
          Width = 497
          Height = 405
          ExplicitWidth = 673
          ExplicitHeight = 502
          object edprueba: TcxDBTextEdit [0]
            Tag = 99
            Left = 205
            Top = -87
            DataBinding.DataField = 'PruebaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 205
            Top = -60
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object CbGrupoPrueba: TcxDBExtLookupComboBox [2]
            Left = 205
            Top = -6
            RepositoryItem = DM.elcGrupoPrueba
            DataBinding.DataField = 'GRUPOPRUEBAID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 145
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
            Left = 205
            Top = 48
            DataBinding.DataField = 'Precio'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 145
          end
          object cxDBCheckBox1: TcxDBCheckBox [4]
            Left = 205
            Top = 129
            DataBinding.DataField = 'PermiteCambioPrecio'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 20
          end
          object cxDBCheckBox2: TcxDBCheckBox [5]
            Left = 205
            Top = 156
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 20
          end
          object cxDBCurrencyEdit2: TcxDBCurrencyEdit [6]
            Left = 205
            Top = 75
            DataBinding.DataField = 'PrecioDolares'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 145
          end
          object cxDBCurrencyEdit3: TcxDBCurrencyEdit [7]
            Left = 205
            Top = 102
            DataBinding.DataField = 'Costo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 145
          end
          object cxDBCheckBox3: TcxDBCheckBox [8]
            Left = 205
            Top = 183
            DataBinding.DataField = 'Exterior'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 20
          end
          object cxDBCheckBox4: TcxDBCheckBox [9]
            Left = 205
            Top = 210
            DataBinding.DataField = 'FacturarCabecera'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ReadOnly = False
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 20
          end
          object CbTipoPrueba: TcxDBImageComboBox [10]
            Left = 205
            Top = 21
            DataBinding.DataField = 'Tipo'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'COMBO'
                ImageIndex = 0
                Value = 'C'
              end
              item
                Description = 'PRUEBA'
                Value = 'P'
              end
              item
                Description = 'SERVICIO'
                Value = 'S'
              end>
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 145
          end
          object cxDBExtLookupComboBox4: TcxDBExtLookupComboBox [11]
            Left = 205
            Top = 323
            RepositoryItem = DM.elcDiasProcesamiento
            DataBinding.DataField = 'CodDiaProc'
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
          object cxDBSpinEdit1: TcxDBSpinEdit [12]
            Left = 462
            Top = 323
            DataBinding.DataField = 'DiasResultado'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 15
            Width = 145
          end
          object cxDBTextEdit1: TcxDBTextEdit [13]
            Left = 205
            Top = 296
            DataBinding.DataField = 'CondMuestra'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit [14]
            Left = 205
            Top = 269
            DataBinding.DataField = 'CondPaciente'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [15]
            Left = 205
            Top = 350
            RepositoryItem = DM.elcUnidades
            DataBinding.DataField = 'Unidad'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 16
            Width = 145
          end
          object cxDBTextEdit4: TcxDBTextEdit [16]
            Left = 205
            Top = 409
            DataBinding.DataField = 'Abreviacion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 17
            Width = 121
          end
          object CbDeptos: TcxDBExtLookupComboBox [17]
            Left = 205
            Top = 436
            RepositoryItem = DM.elcDepartamento
            DataBinding.DataField = 'Departamento'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 18
            Width = 145
          end
          object cxDBImageComboBox3: TcxDBImageComboBox [18]
            Left = 205
            Top = 463
            DataBinding.DataField = 'Medio'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Tubo'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Envase'
                Value = 1
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 20
            Width = 145
          end
          object cxDBImageComboBox4: TcxDBImageComboBox [19]
            Left = 462
            Top = 463
            DataBinding.DataField = 'Color'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Blanco'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Negro'
                Value = 1
              end
              item
                Description = 'Azul'
                Value = 2
              end
              item
                Description = 'Rojo'
                Value = 3
              end
              item
                Description = 'Amarillo'
                Value = 4
              end
              item
                Description = 'Verde'
                Value = 5
              end
              item
                Description = 'Marron'
                Value = 6
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 21
            Width = 145
          end
          object EdAlias: TcxDBTextEdit [20]
            Left = 205
            Top = -33
            DataBinding.DataField = 'Alias'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object CbMuestras: TcxDBExtLookupComboBox [21]
            Left = 462
            Top = 436
            RepositoryItem = DM.elcMuestras
            DataBinding.DataField = 'TipoMuestra'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 19
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object lcDatosGroup1: TdxLayoutGroup
                AutoAligns = []
                AlignHorz = ahClient
                Caption = 'General'
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Prueba'
                  Control = edprueba
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem2: TdxLayoutItem
                  Caption = 'Descripci'#243'n'
                  Control = cxDBTextEdit2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem22: TdxLayoutItem
                  Caption = 'Alias'
                  Control = EdAlias
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGrupos: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Grupo'
                  Control = CbGrupoPrueba
                  ControlOptions.ShowBorder = False
                end
                object lcDatosTipos: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo de Prueba'
                  Control = CbTipoPrueba
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Precio RD$'
                  Control = cxDBCurrencyEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Precio US$'
                  Control = cxDBCurrencyEdit2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Costo RD$'
                  Control = cxDBCurrencyEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Permite Cambiar el Precio'
                  Control = cxDBCheckBox1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Activo'
                  Control = cxDBCheckBox2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem9: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Prueba Exterior'
                  Control = cxDBCheckBox3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Facturar Cabecera'
                  Control = cxDBCheckBox4
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroupMuestra: TdxLayoutGroup
                Caption = 'Muestra'
                object lcDatosItem13: TdxLayoutItem
                  Caption = 'Condiciones del Paciente'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem11: TdxLayoutItem
                  Caption = 'Condiciones y Volumen de la Muestra'
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup7: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem14: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Dias de Procesamiento'
                    Control = cxDBExtLookupComboBox4
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem15: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Dias para Resultados'
                    Control = cxDBSpinEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem16: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Unidad'
                  Control = cxDBExtLookupComboBox2
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroupImpresion: TdxLayoutGroup
              Caption = 'Impresi'#243'n C'#243'digo de Barra'
              object lcDatosItem17: TdxLayoutItem
                Caption = 'Abreviaci'#243'n'
                Control = cxDBTextEdit4
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem18: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Departamento'
                  Control = CbDeptos
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem23: TdxLayoutItem
                  Caption = 'Tipo de Muestra'
                  Control = CbMuestras
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem20: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Medio'
                  Control = cxDBImageComboBox3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem21: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Color'
                  Control = cxDBImageComboBox4
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object BtPruebas: TcxButton [1]
      Left = 685
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Registrar Pruebas'
      TabOrder = 1
      OnClick = BtPruebasClick
      LookAndFeel.Kind = lfOffice11
    end
    object BtMateriales: TcxButton [2]
      Left = 685
      Top = 38
      Width = 100
      Height = 25
      Caption = 'Materiales'
      TabOrder = 2
      OnClick = BtMaterialesClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtPruebas
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtMateriales
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 797
    ExplicitWidth = 797
  end
  inherited formStorage: TJvFormStorage
    Left = 464
    Top = 278
  end
  inherited dsDatos: TDataSource
    DataSet = qrPruebas
    Left = 344
    Top = 223
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 404
    Top = 316
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 296
    Top = 48
  end
  inherited SaveDialog: TSaveDialog
    Left = 457
    Top = 184
  end
  inherited qryHelper: TADOQuery
    Left = 524
    Top = 2
  end
  inherited alEdit: TActionList
    Left = 556
    Top = 240
  end
  inherited qrDefaultView: TADOQuery
    Left = 448
    Top = 2
  end
  inherited strTableNames: TJvStrHolder
    Left = 408
    Top = 108
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 376
    Top = 276
  end
  inherited qrUserFields: TABSQuery
    Left = 424
    Top = 52
  end
  inherited qrVistas: TABSQuery
    Left = 356
    Top = 48
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeInsert = qrPruebasBeforeInsert
    BeforePost = qrPruebasBeforePost
    AfterScroll = qrPruebasAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSPrueba')
    Left = 128
    Top = 3
    object qrPruebasPRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrPruebasALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 80
    end
    object qrPruebasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrPruebasESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPruebasGRUPOPRUEBAID: TStringField
      FieldName = 'GRUPOPRUEBAID'
      OnChange = qrPruebasGRUPOPRUEBAIDChange
      Size = 10
    end
    object qrPruebasDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 10
    end
    object qrPruebasPRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPruebasPERMITECAMBIOPRECIO: TIntegerField
      FieldName = 'PERMITECAMBIOPRECIO'
    end
    object qrPruebasCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
    end
    object qrPruebasPRECIODOLARES: TBCDField
      FieldName = 'PRECIODOLARES'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPruebasCOSTO: TBCDField
      FieldName = 'COSTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPruebasEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrPruebasFACTURARCABECERA: TIntegerField
      FieldName = 'FACTURARCABECERA'
    end
    object qrPruebasPRUEBAS: TIntegerField
      FieldName = 'PRUEBAS'
    end
    object qrPruebasTIPO: TStringField
      FieldName = 'TIPO'
      OnChange = qrPruebasTIPOChange
      Size = 5
    end
    object qrPruebasORINA: TIntegerField
      FieldName = 'ORINA'
    end
    object qrPruebasSANGRE: TIntegerField
      FieldName = 'SANGRE'
    end
    object qrPruebasCODDIAPROC: TStringField
      FieldName = 'CODDIAPROC'
      Size = 5
    end
    object qrPruebasDIASRESULTADO: TIntegerField
      FieldName = 'DIASRESULTADO'
    end
    object qrPruebasUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object qrPruebasABREVIACION: TStringField
      FieldName = 'ABREVIACION'
    end
    object qrPruebasTIPOMUESTRA: TIntegerField
      FieldName = 'TIPOMUESTRA'
    end
    object qrPruebasMEDIO: TIntegerField
      FieldName = 'MEDIO'
    end
    object qrPruebasCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object qrPruebasDEPID: TStringField
      FieldName = 'DEPID'
      Size = 10
    end
    object qrPruebasTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrPruebasCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
    end
    object qrPruebasMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrPruebasNOPROCESAR: TIntegerField
      FieldName = 'NOPROCESAR'
    end
    object qrPruebasDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPruebasRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPruebasCONDPACIENTE: TStringField
      FieldName = 'CONDPACIENTE'
      Size = 255
    end
    object qrPruebasCONDMUESTRA: TStringField
      FieldName = 'CONDMUESTRA'
      Size = 255
    end
    object qrPruebasCOMENTARIONOPROCESAR: TStringField
      FieldName = 'COMENTARIONOPROCESAR'
      Size = 255
    end
  end
end
