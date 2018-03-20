inherited frmDatosClientes: TfrmDatosClientes
  ActiveControl = pcDatos
  Caption = 'Pacientes'
  ClientHeight = 559
  ClientWidth = 931
  ExplicitWidth = 939
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 931
    Height = 526
    ExplicitWidth = 931
    ExplicitHeight = 526
    inherited pcDatos: TcxPageControl
      ActivePage = tsDatos
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 807
        ExplicitHeight = 502
        inherited lcGrid: TdxLayoutControl
          ExplicitWidth = 807
          ExplicitHeight = 502
          inherited dgDatos: TcxGrid
            Width = 781
            Height = 420
            ExplicitWidth = 781
            ExplicitHeight = 420
            inherited tvDatos: TcxGridDBTableView
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
                Caption = 'Telefono'
                DataBinding.FieldName = 'TELEFONO'
                Width = 75
              end
              object tvDatosTELEFONO2: TcxGridDBColumn
                Caption = 'Telefono'
                DataBinding.FieldName = 'TELEFONO2'
                Width = 72
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 807
        ExplicitHeight = 502
        inherited lcDatos: TdxLayoutControl
          ExplicitWidth = 807
          ExplicitHeight = 502
          object edcliente: TcxDBTextEdit [0]
            Tag = 99
            Left = 99
            Top = 36
            DataBinding.DataField = 'CLIENTEID'
            DataBinding.DataSource = dsDatos
            Enabled = False
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 99
            Top = 63
            DataBinding.DataField = 'NOMBRE1'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 145
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 99
            Top = 323
            DataBinding.DataField = 'CONTACTO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 395
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 99
            Top = 350
            DataBinding.DataField = 'TELEFONO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Width = 145
          end
          object cxDBTextEdit5: TcxDBTextEdit [4]
            Left = 99
            Top = 377
            DataBinding.DataField = 'FAX'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 16
            Width = 145
          end
          object cxDBTextEdit6: TcxDBTextEdit [5]
            Left = 99
            Top = 404
            DataBinding.DataField = 'EMAIL'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 17
            Width = 395
          end
          object cxDBTextEdit7: TcxDBTextEdit [6]
            Left = 99
            Top = 431
            DataBinding.DataField = 'DIRECCIONWEB'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Width = 395
          end
          object cxDBTextEdit8: TcxDBTextEdit [7]
            Left = 250
            Top = 350
            DataBinding.DataField = 'TELEFONO2'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 15
            Width = 145
          end
          object cxDBMemo1: TcxDBMemo [8]
            Left = 99
            Top = 203
            DataBinding.DataField = 'DIRECCION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Height = 60
            Width = 395
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [9]
            Left = 639
            Top = 36
            RepositoryItem = DM.elcPacientes
            DataBinding.DataField = 'PRINCIPAL'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 5
            Width = 145
          end
          object cxDBImageComboBox3: TcxDBImageComboBox [10]
            Left = 639
            Top = 63
            DataBinding.DataField = 'SEXO'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'FEMENINO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'MASCULINO'
                Value = 1
              end>
            Properties.OnChange = cxDBImageComboBox3PropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Width = 145
          end
          object cxDBDateEdit1: TcxDBDateEdit [11]
            Left = 639
            Top = 90
            DataBinding.DataField = 'FECHANACIMIENTO'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 145
          end
          object CbTipodeCliente: TcxDBImageComboBox [12]
            Left = 99
            Top = 117
            DataBinding.DataField = 'TIPOCLIENTE'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'ACCIONISTAS'
                Tag = 1
                Value = 'ACC'
              end
              item
                Description = 'COMPANIA'
                Tag = 2
                Value = 'CIA'
              end
              item
                Description = 'CLINICA'
                ImageIndex = 0
                Tag = 3
                Value = 'CLI'
              end
              item
                Description = 'EMPLEADO'
                Tag = 4
                Value = 'EMP'
              end
              item
                Description = 'LABORATORIO'
                Tag = 5
                Value = 'LAB'
              end
              item
                Description = 'PRIVADO'
                Tag = 6
                Value = 'PRI'
              end
              item
                Description = 'SEGURO'
                Tag = 7
                Value = 'SEG'
              end
              item
                Description = 'VIP'
                Tag = 8
                Value = 'VIP'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 145
          end
          object cxDBTextEdit10: TcxDBTextEdit [13]
            Left = 250
            Top = 63
            DataBinding.DataField = 'APELLIDOS'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 215
          end
          object EdAseguradora: TcxDBTextEdit [14]
            Left = 639
            Top = 117
            DataBinding.DataField = 'SEGURO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          object cxDBTextEdit9: TcxDBTextEdit [15]
            Left = 99
            Top = 269
            DataBinding.DataField = 'SECTOR'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 395
          end
          object cxDBImageComboBox1: TcxDBImageComboBox [16]
            Left = 639
            Top = 144
            DataBinding.DataField = 'TIPOSANGRE'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'A+'
                ImageIndex = 0
                Value = 'A+'
              end
              item
                Description = 'A-'
                Value = 'A-'
              end
              item
                Description = 'B+'
                Value = 'B-'
              end
              item
                Description = 'B-'
                Value = 'B-'
              end
              item
                Description = 'O+'
                Value = 'O+'
              end
              item
                Description = 'O-'
                Value = 'O-'
              end
              item
                Description = 'AB+'
                Value = 'AB+'
              end
              item
                Description = 'AB-'
                Value = 'AB-'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 121
          end
          object cxDBMaskEdit1: TcxDBMaskEdit [17]
            Left = 99
            Top = 90
            DataBinding.DataField = 'Identificacion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '\d+'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [18]
            Left = 99
            Top = 296
            DataBinding.DataField = 'CIUDADID'
            DataBinding.DataSource = dsDatos
            Properties.View = DM.vwCiudad
            Properties.KeyFieldNames = 'CiudadID'
            Properties.ListFieldItem = DM.vwCiudadDescripcion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 12
            Width = 395
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosGroup1: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'General'
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
                    Control = cxDBTextEdit10
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem14: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cedula/RNC'
                  Control = cxDBMaskEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo de Cliente'
                  Control = CbTipodeCliente
                  ControlOptions.ShowBorder = False
                end
                object lcDatosTipos: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo de Cliente'
                  ShowCaption = False
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGrpPacientes: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'Paciente'
                object lcDatosItem17: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Principal'
                  Visible = False
                  Control = cxDBExtLookupComboBox2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem20: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Sexo'
                  Control = cxDBImageComboBox3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem21: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fecha de Nacimiento'
                  Control = cxDBDateEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem15: TdxLayoutItem
                  Caption = 'Aseguradora'
                  Visible = False
                  Control = EdAseguradora
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem19: TdxLayoutItem
                  Caption = 'Tipo de Sangre'
                  Visible = False
                  Control = cxDBImageComboBox1
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Contacto'
              object lcDatosItem12: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Direcci'#243'n'
                CaptionOptions.AlignVert = tavTop
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem16: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Sector'
                Control = cxDBTextEdit9
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem11: TdxLayoutItem
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
                Caption = 'Direcci'#243'n Web'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object BtTransacciones: TcxButton [1]
      Left = 819
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Transacciones'
      TabOrder = 1
      OnClick = BtTransaccionesClick
    end
    object BtBalance: TcxButton [2]
      Left = 819
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
    Width = 931
    ExplicitWidth = 931
  end
  inherited formStorage: TJvFormStorage
    Left = 656
    Top = 395
  end
  inherited dsDatos: TDataSource
    DataSet = qrClientes
    Left = 188
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 682
    Top = 305
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
    Left = 512
    Top = 3
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 729
    Top = 347
  end
  inherited SaveDialog: TSaveDialog
    Left = 729
    Top = 304
  end
  inherited qryHelper: TADOQuery
    Left = 892
    Top = 323
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 3
  end
  inherited pmCustom: TPopupMenu
    Left = 616
    Top = 3
  end
  inherited qrDefaultView: TADOQuery
    Left = 840
    Top = 323
  end
  inherited strView: TJvStrHolder
    Left = 588
    Top = 304
  end
  inherited strTableNames: TJvStrHolder
    Left = 635
    Top = 304
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 682
    Top = 347
  end
  inherited qrUserFields: TABSQuery
    Left = 588
    Top = 347
  end
  inherited qrVistas: TABSQuery
    Left = 635
    Top = 347
  end
  object qrClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeInsert = qrClientesBeforeInsert
    BeforeEdit = qrClientesBeforeEdit
    BeforePost = qrClientesBeforePost
    AfterScroll = qrClientesAfterScroll
    OnNewRecord = qrClientesNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTCliente ')
    Left = 136
    Top = 3
    object qrClientesCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 81
    end
    object qrClientesNOMBRE1: TStringField
      FieldName = 'NOMBRE1'
      Size = 30
    end
    object qrClientesAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Size = 50
    end
    object qrClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrClientesFAX: TStringField
      FieldName = 'FAX'
    end
    object qrClientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object qrClientesINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object qrClientesAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object qrClientesEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object qrClientesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrClientesDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object qrClientesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrClientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrClientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object qrClientesORIGEN: TIntegerField
      FieldName = 'ORIGEN'
    end
    object qrClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrClientesCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrClientesPRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object qrClientesCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrClientesPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object qrClientesENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object qrClientesPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrClientesFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrClientesSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object qrClientesCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrClientesPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object qrClientesCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object qrClientesENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object qrClientesACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object qrClientesUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object qrClientesUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object qrClientesSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object qrClientesIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object qrClientesIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object qrClientesIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object qrClientesUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object qrClientesALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object qrClientesQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object qrClientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrClientesENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object qrClientesTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object qrClientesSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object qrClientesTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object qrClientesPACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object qrClientesSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object qrClientesUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrClientesCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrClientesTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object qrClientesCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrClientesDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrClientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrClientesRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrClientesmsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
    object qrClientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrClientesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrClientesTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrClientesSEX: TStringField
      FieldName = 'SEX'
      ReadOnly = True
      Size = 9
    end
  end
  object pmAcuerdoComercial: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmCustomPopup
    Left = 560
    Top = 3
    object Precios1: TMenuItem
      Caption = 'Precios'
    end
    object Descuentos1: TMenuItem
      Caption = 'Descuentos'
    end
  end
  object ActionList1: TActionList
    Left = 688
    Top = 3
  end
end
