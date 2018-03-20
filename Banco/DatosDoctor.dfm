inherited frmDatosDoctor: TfrmDatosDoctor
  Caption = 'Doctores'
  ClientHeight = 559
  ClientWidth = 743
  ExplicitWidth = 759
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 743
    Height = 526
    ExplicitWidth = 743
    ExplicitHeight = 526
    inherited pcDatos: TcxPageControl
      ActivePage = tsDatos
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'DoctorID'
              object tvDatosDoctorID: TcxGridDBColumn
                DataBinding.FieldName = 'DoctorID'
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
              end
              object tvDatosTelefono: TcxGridDBColumn
                DataBinding.FieldName = 'Telefono'
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
        inherited lcDatos: TdxLayoutControl
          object eddoctor: TcxDBTextEdit [0]
            Tag = 99
            Left = 131
            Top = 36
            DataBinding.DataField = 'DoctorID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 131
            Top = 63
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 300
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 131
            Top = 402
            DataBinding.DataField = 'Contacto'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 300
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 131
            Top = 429
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 121
          end
          object cxDBTextEdit5: TcxDBTextEdit [4]
            Left = 131
            Top = 456
            DataBinding.DataField = 'CELULAR'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit [5]
            Left = 131
            Top = 483
            DataBinding.DataField = 'eMail'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 300
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [6]
            Left = 131
            Top = 194
            DataBinding.DataField = 'Comision'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object cxDBTextEdit7: TcxDBTextEdit [7]
            Left = 131
            Top = 167
            DataBinding.DataField = 'CodigoResultado'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object cxDBImageComboBox1: TcxDBImageComboBox [8]
            Left = 131
            Top = 90
            DataBinding.DataField = 'ResultadoDoctor'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Personal'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Fax'
                Value = 1
              end
              item
                Description = 'Email'
                Value = 2
              end
              item
                Description = 'Ninguno'
                Value = 3
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 121
          end
          object cxDBMemo1: TcxDBMemo [9]
            Left = 131
            Top = 280
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Height = 89
            Width = 300
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [10]
            Left = 131
            Top = 375
            RepositoryItem = DM.elcCiudad
            DataBinding.DataField = 'CIUDADID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 121
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [11]
            Left = 131
            Top = 221
            RepositoryItem = DM.elcEspecialidad
            DataBinding.DataField = 'EspecialidadID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox [12]
            Left = 131
            Top = 117
            DataBinding.DataField = 'PublicarInternet'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 54
          end
          object DBCheckBox1: TDBCheckBox [13]
            Left = 131
            Top = 144
            Width = 22
            Height = 17
            DataField = 'AutorizarDonacion'
            DataSource = dsDatos
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Doctor'
                Control = eddoctor
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Nombre'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Entrega de Resultado'
                Control = cxDBImageComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Publicar en Internet'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Autorizar Donaci'#243'n'
                Control = DBCheckBox1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo Internet'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Comisi'#243'n'
                Visible = False
                Control = cxDBCurrencyEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Especialidad'
                Control = cxDBExtLookupComboBox2
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Contacto'
              object lcDatosItem11: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Direcci'#243'n'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem12: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ciudad'
                Control = cxDBExtLookupComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Contacto'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Telefono'
                Control = cxDBTextEdit4
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Celular'
                Control = cxDBTextEdit5
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Email'
                Control = cxDBTextEdit6
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 743
    ExplicitWidth = 743
  end
  inherited formStorage: TJvFormStorage
    Left = 392
    Top = 62
  end
  inherited dsDatos: TDataSource
    DataSet = qrDoctor
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 292
    Top = 236
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.435714699070000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.435714699070000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 408
    Top = 304
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 568
    Top = 228
  end
  inherited SaveDialog: TSaveDialog
    Left = 441
    Top = 240
  end
  inherited qryHelper: TADOQuery
    Left = 628
    Top = 115
  end
  inherited alEdit: TActionList
    Left = 460
    Top = 80
  end
  inherited pmCustom: TPopupMenu
    Left = 624
    Top = 196
  end
  inherited qrDefaultView: TADOQuery
    Left = 152
    Top = 23
  end
  inherited strView: TJvStrHolder
    Left = 372
    Top = 164
  end
  inherited strTableNames: TJvStrHolder
    Left = 424
    Top = 164
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 352
    Top = 60
  end
  inherited qrUserFields: TABSQuery
    Left = 288
    Top = 164
  end
  inherited qrVistas: TABSQuery
    Left = 332
    Top = 160
  end
  object qrDoctor: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    BeforePost = qrDoctorBeforePost
    OnNewRecord = qrDoctorNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTDoctor')
    Left = 208
    Top = 88
    object qrDoctorDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrDoctorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrDoctorCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrDoctorTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrDoctorFAX: TStringField
      FieldName = 'FAX'
    end
    object qrDoctorCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrDoctorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrDoctorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrDoctorDIRECCION: TMemoField
      FieldName = 'DIRECCION'
      BlobType = ftMemo
    end
    object qrDoctorCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrDoctorRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrDoctorESPECIALIDADID: TStringField
      FieldName = 'ESPECIALIDADID'
      Size = 10
    end
    object qrDoctorPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrDoctorCODIGORESULTADO: TStringField
      FieldName = 'CODIGORESULTADO'
      Size = 10
    end
    object qrDoctorUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrDoctorCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrDoctorCOMISION: TBCDField
      FieldName = 'COMISION'
      Precision = 28
      Size = 12
    end
    object qrDoctorDIRECCIONCONSULTA2: TMemoField
      FieldName = 'DIRECCIONCONSULTA2'
      BlobType = ftMemo
    end
    object qrDoctorDIRECCIONCONSULTA1: TMemoField
      FieldName = 'DIRECCIONCONSULTA1'
      BlobType = ftMemo
    end
    object qrDoctorESPECIALIDAD: TStringField
      FieldName = 'ESPECIALIDAD'
      Size = 80
    end
    object qrDoctorCODIGOWEB: TStringField
      FieldName = 'CODIGOWEB'
      Size = 10
    end
    object qrDoctorDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrDoctorRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrDoctormsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
    object qrDoctorAutorizarDonacion: TBooleanField
      FieldName = 'AutorizarDonacion'
    end
  end
end
