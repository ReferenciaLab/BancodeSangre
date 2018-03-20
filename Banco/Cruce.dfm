inherited frmCruce: TfrmCruce
  Caption = 'Cruce'
  ClientHeight = 615
  ClientWidth = 773
  ExplicitWidth = 789
  ExplicitHeight = 653
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 168
    Top = 208
    Width = 42
    Height = 13
    Caption = 'NOMBRE'
  end
  inherited pnCaption: TPanel
    Width = 773
    ExplicitWidth = 773
  end
  object dxLayoutControl1: TdxLayoutControl [3]
    Left = 0
    Top = 33
    Width = 773
    Height = 582
    Align = alClient
    TabOrder = 1
    LookAndFeel = dmAppActions.lnfWeb
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 124
      Top = 36
      DataBinding.DataField = 'PACIENTEID'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 251
      Top = 36
      DataBinding.DataField = 'NOMBREPACIENTE'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 360
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 124
      Top = 63
      DataBinding.DataField = 'TELEFONOS'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 139
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 269
      Top = 63
      DataBinding.DataField = 'TELEFONO2'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 154
    end
    object cxButton1: TcxButton
      Left = 629
      Top = 43
      Width = 75
      Height = 25
      Action = AtcNuevo
      TabOrder = 6
    end
    object cxButton2: TcxButton
      Left = 656
      Top = 357
      Width = 75
      Height = 25
      Action = Adicionar
      TabOrder = 17
    end
    object cxButton3: TcxButton
      Left = 656
      Top = 388
      Width = 75
      Height = 25
      Action = ActBorrar
      TabOrder = 18
    end
    object GridPruebas: TcxGrid
      Left = 23
      Top = 319
      Width = 594
      Height = 194
      Align = alClient
      TabOrder = 15
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
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'PruebaID'
          Width = 94
        end
        object GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn
          Caption = 'Prueba'
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 242
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
          Width = 151
        end
        object GridPruebasEntradasPacienteDetResultado: TcxGridDBColumn
          DataBinding.FieldName = 'Resultado'
          MinWidth = 40
          Width = 105
        end
      end
      object GridPruebasLevel1: TcxGridLevel
        GridView = GridPruebasEntradasPacienteDet
      end
    end
    object cxButton4: TcxButton
      Left = 656
      Top = 326
      Width = 75
      Height = 25
      Action = Pruebas
      TabOrder = 16
    end
    object cxButton5: TcxButton
      Left = 656
      Top = 419
      Width = 75
      Height = 25
      Action = Etiquetas
      TabOrder = 19
    end
    object cxButton6: TcxButton
      Left = 656
      Top = 450
      Width = 75
      Height = 25
      Action = ActToAS
      TabOrder = 20
    end
    object cxButton7: TcxButton
      Left = 656
      Top = 481
      Width = 75
      Height = 25
      Action = actCaja
      TabOrder = 21
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 472
      Top = 63
      DataBinding.DataField = 'NoAsCorto'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 139
    end
    object cxButton8: TcxButton
      Left = 629
      Top = 74
      Width = 75
      Height = 25
      Caption = 'Modificar'
      TabOrder = 7
      OnClick = cxButton8Click
    end
    object cxButton9: TcxButton
      Left = 629
      Top = 105
      Width = 75
      Height = 25
      Action = Eliminar
      TabOrder = 8
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 124
      Top = 206
      DataBinding.DataField = 'DonacionID'
      DataBinding.DataSource = DSdatosdonacion
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 10
      Width = 182
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 347
      Top = 206
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = DSdatosdonacion
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 11
      Width = 264
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 124
      Top = 233
      DataBinding.DataField = 'NOMBRE'
      DataBinding.DataSource = DSdatosdonacion
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 12
      Width = 487
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 124
      Top = 260
      DataBinding.DataField = 'TipoSangre'
      DataBinding.DataSource = DSdatosdonacion
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 13
      Width = 487
    end
    object cxButton10: TcxButton
      Left = 629
      Top = 213
      Width = 102
      Height = 41
      Caption = 'Buscar'
      TabOrder = 14
      OnClick = cxButton10Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00292929003939
        420039394200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00395A9400395A
        9400395A9400395A9400FF00FF00FF00FF00FF00FF00FF00FF00292929005252
        5200292929003131310031313100396BB500395A9400395A94002963BD002963
        C6003173CE003984D600395A9400395A9400FF00FF00FF00FF0029292900736B
        730029292900F7F7F7004A4A4A005AC6FF005ABDFF005AA5E70063A5E70063AD
        E7006B94CE0073B5E70063C6FF0073BDEF00395A9400FF00FF00292929008C8C
        940029292900F7F7F7004A4A4A00C6FFFF00BDF7FF00C6F7FF00C6FFFF00ADE7
        F7008C9CB500636384008494BD009CC6E700B5E7F7008484AD0029292900949C
        A500292929004A4A4A004A4A4A00B5B5CE00E7EFF700CED6DE00ADB5C6007B7B
        9C007373940000CEFF0000CEFF0000CEFF009494B5008C94B500292929003939
        420029292900FF00FF00FF00FF00009CCE009494B5008484AD007373940039DE
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE009CFFFF0094FFFF0084FFFF006BEF
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE0084F7FF0063DEEF0039BDDE00009C
        CE00009CCE00009CCE0000ADDE0000BDEF0000C6FF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE00009CD60008ADDE0000B5EF0000C6
        F70000A5DE0000C6FF0000BDEF0000ADDE0000A5D600009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE0063EFFF0042E7FF0021DEFF0008CE
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE008CFFFF0073F7FF0052EFFF0039DE
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE009CFFFF0094FFFF0084FFFF006BEF
        FF0000A5DE0000CEFF0000CEFF0000CEFF0000CEFF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE0084F7FF0063DEEF0039BDDE0018AD
        D60018ADDE0000A5D60000ADDE0000BDEF0000C6FF00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009CCE00009CCE00009CCE0052D6EF009CFF
        FF0073F7FF0031DEFF0000B5E700009CCE00009CCE00009CCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009CCE00009C
        CE00009CCE00009CCE00009CCE00FF00FF00FF00FF00FF00FF00}
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 124
      Top = 90
      DataBinding.DataField = 'RESULTADO_CRUCE'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.Items.Strings = (
        'COMPATIBLE'
        'NO COMPATIBLE')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 5
      Width = 121
    end
    object cxButton11: TcxButton
      Left = 617
      Top = 143
      Width = 99
      Height = 25
      Caption = 'Guardar'
      TabOrder = 9
      OnClick = cxButton11Click
    end
    object Acutali: TcxButton
      Left = 656
      Top = 512
      Width = 75
      Height = 25
      Caption = 'Acutalizar'
      TabOrder = 22
      OnClick = ActualizarClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Datos del paciente'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group8: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item5: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Paciente'
              Control = cxDBTextEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = [aaVertical]
              Control = cxDBTextEdit2
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Telefono'
              Control = cxDBTextEdit3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              Control = cxDBTextEdit4
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item14: TdxLayoutItem
              Caption = 'Muestra'
              Control = cxDBTextEdit5
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Item23: TdxLayoutItem
            Caption = 'Resultado del Cruce'
            Control = cxDBComboBox1
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group13: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group9: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'New Group'
            ShowCaption = False
            object dxLayoutControl1Item4: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item15: TdxLayoutItem
              Caption = 'cxButton8'
              ShowCaption = False
              Control = cxButton8
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item16: TdxLayoutItem
              Caption = 'cxButton9'
              ShowCaption = False
              Control = cxButton9
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Item18: TdxLayoutItem
            Caption = 'Guardar'
            ShowCaption = False
            Control = cxButton11
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'Datos Doancion'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group12: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group11: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = []
              Caption = 'ID Donaci'#243'n'
              Control = cxDBTextEdit6
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item17: TdxLayoutItem
              AutoAligns = []
              Caption = 'Fecha'
              Control = cxDBTextEdit7
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Item20: TdxLayoutItem
            AutoAligns = []
            Caption = 'Nombre'
            Control = cxDBTextEdit10
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item19: TdxLayoutItem
            AutoAligns = []
            Caption = 'Tipo de Sangre'
            Control = cxDBTextEdit11
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group10: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avClient
          ShowCaption = False
          object dxLayoutControl1Item21: TdxLayoutItem
            Caption = 'cxButton10'
            ShowCaption = False
            Control = cxButton10
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group6: TdxLayoutGroup
        Caption = 'Pruebas'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Control = GridPruebas
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group7: TdxLayoutGroup
          ShowCaption = False
          object dxLayoutControl1Item8: TdxLayoutItem
            Caption = 'cxButton4'
            ShowCaption = False
            Control = cxButton4
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = cxButton2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Caption = 'cxButton3'
            ShowCaption = False
            Control = cxButton3
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            Caption = 'cxButton5'
            ShowCaption = False
            Control = cxButton5
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            Caption = 'cxButton6'
            ShowCaption = False
            Control = cxButton6
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            Caption = 'cxButton7'
            ShowCaption = False
            Control = cxButton7
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item22: TdxLayoutItem
            Caption = 'cxButton12'
            ShowCaption = False
            Control = Acutali
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Caption = 'New Group'
    end
  end
  object cxButton12: TcxButton [4]
    Left = 512
    Top = 177
    Width = 99
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = cxButton12Click
  end
  inherited formStorage: TJvFormStorage
    Left = 472
    Top = 10
  end
  inherited alEdit: TActionList
    Left = 404
    Top = 8
    object AtcNuevo: TAction
      Caption = 'Nuevo'
      OnExecute = AtcNuevoExecute
    end
    object Adicionar: TAction
      Caption = 'Adicionar'
      OnExecute = AdicionarExecute
    end
    object Eliminar: TAction
      Caption = 'Eliminar'
    end
    object Pruebas: TAction
      Caption = 'Pruebas'
      OnExecute = PruebasExecute
    end
    object Etiquetas: TAction
      Caption = 'Etiquetas'
      OnExecute = EtiquetasExecute
    end
    object ActToAS: TAction
      Caption = 'Enviar a Lab'
      OnExecute = ActToASExecute
    end
    object actCaja: TAction
      Caption = 'Caja'
      OnExecute = actCajaExecute
    end
    object ActBorrar: TAction
      Caption = 'Borrar'
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 340
    Top = 12
  end
  object qrEntradaPaciente: TADOQuery
    Active = True
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
      'Select *  from PTEntradaPaciente '
      'Where entradaid = :rec')
    Left = 536
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
    object qrEntradaPacienteNoAsCorto: TStringField
      FieldName = 'NoAsCorto'
      ReadOnly = True
      Size = 11
    end
    object qrEntradaPacienteMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrEntradaPacienteRESULTADO_CRUCE: TStringField
      FieldName = 'RESULTADO_CRUCE'
      Size = 15
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 584
  end
  object qrEntradaPacienteDetalle: TADOQuery
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
      'Select *  from PTEntradaPacienteDetalle '
      'Where MuestraNo = :rec')
    Left = 632
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
    object qrEntradaPacienteDetalleResultado: TStringField
      FieldName = 'Resultado'
      Size = 15
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 672
  end
  object dsPruebas: TDataSource
    AutoEdit = False
    DataSet = qrPruebas
    Left = 208
    Top = 368
  end
  object qrPruebas: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSPruebaCruce')
    Left = 136
    Top = 400
    object qrPruebasPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrPruebasalias: TStringField
      FieldName = 'alias'
      Size = 80
    end
    object qrPruebasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrPruebasPRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPruebasCOSTO: TBCDField
      FieldName = 'COSTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPruebasCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
    end
  end
  object tbCruce: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    TableName = 'BSCruce'
    Left = 40
    Top = 376
    object tbCruceId: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbCruceMuestraId: TStringField
      FieldName = 'MuestraId'
    end
    object tbCruceProductoId: TStringField
      FieldName = 'ProductoId'
    end
    object tbCruceFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object tbCruceReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object tbCruceDonanteId: TStringField
      FieldName = 'DonanteId'
      Size = 10
    end
    object tbCruceCompatible: TBooleanField
      FieldName = 'Compatible'
    end
  end
  object dsCruce: TDataSource
    AutoEdit = False
    DataSet = tbCruce
    Left = 88
    Top = 368
  end
  object qrSQLEncabezado: TADOQuery
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
      
        'SELECT     dbo.BSDonacion.MuestraNoAS AS Muestra, dbo.PTCLIENTE.' +
        'NOMBRE, ISNULL(SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRADA, 1, 2' +
        ') '
      
        '                      + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTR' +
        'ADA, 4, 2) + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRADA, 7, 2),' +
        ' '#39'000000'#39') AS Hora, '
      
        '                      dbo.PTCLIENTE.DIRECCION, DATEDIFF(year, db' +
        'o.PTCLIENTE.FECHANACIMIENTO, dbo.PTENTRADAPACIENTE.FECHA) AS Eda' +
        'd, '
      
        '                      dbo.PTCLIENTE.FECHANACIMIENTO AS FechaNaci' +
        'miento, ISNULL(dbo.PTCLIENTE.TELEFONO, '#39'0'#39') AS Telefono, '#39'PRIVAD' +
        'O'#39' AS Categoria, '
      
        '                      dbo.PTENTRADAPACIENTE.FECHA AS FechaEntrad' +
        'a, dbo.PTENTRADAPACIENTE.USERID, dbo.PTCLIENTE.SEXO, '
      
        '                      case when dbo.PTCLIENTE.tipodocumentoid = ' +
        '1 then REPLACE(dbo.PTCLIENTE.IDENTIFICACION, '#39'-'#39', '#39#39') else '#39'0000' +
        '0000000'#39' end AS Cedula, '
      
        '                      dbo.PTENTRADAPACIENTE.SUCURSALID, ISNULL(d' +
        'bo.PTENTRADAPACIENTE.DOCTORID, '
      
        '                      '#39'0'#39') AS DoctorId, '#39#39' AS Doctor, REPLACE(db' +
        'o.PTENTRADAPACIENTE.PACIENTEID, '#39'-'#39', '#39#39') AS Cliente, 0 AS Factur' +
        'ado, 0 AS Pagado, 0 AS Resto, '
      
        '                      1 AS TipResPaciente, 0 AS Internet, 0 AS T' +
        'ipResDoctor, 0 AS InternetDoctor, 1 AS TipResCliente, 0 AS Inter' +
        'netCliente, '
      '                      '#39'BANCO DE SANGRE'#39' AS Comentario'
      'FROM         dbo.PTENTRADAPACIENTE INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.PTENTRADAPACIENTE.PAC' +
        'IENTEID = dbo.PTCLIENTE.CLIENTEID INNER JOIN'
      
        '                      dbo.BSDonacion ON dbo.PTENTRADAPACIENTE.EN' +
        'TRADAID = dbo.BSDonacion.DonacionID'
      'WHERE dbo.PTEntradaPaciente.MuestraNo = :MuestraNo')
    Left = 192
    Top = 467
    object qrSQLEncabezadoMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLEncabezadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrSQLEncabezadoHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLEncabezadoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrSQLEncabezadoEdad: TIntegerField
      FieldName = 'Edad'
      ReadOnly = True
    end
    object qrSQLEncabezadoFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrSQLEncabezadoTelefono: TStringField
      FieldName = 'Telefono'
      ReadOnly = True
    end
    object qrSQLEncabezadoCategoria: TStringField
      FieldName = 'Categoria'
      ReadOnly = True
      Size = 9
    end
    object qrSQLEncabezadoFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLEncabezadoUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrSQLEncabezadoSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrSQLEncabezadoCedula: TStringField
      FieldName = 'Cedula'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrSQLEncabezadoDoctorId: TStringField
      FieldName = 'DoctorId'
      ReadOnly = True
      Size = 10
    end
    object qrSQLEncabezadoDoctor: TStringField
      FieldName = 'Doctor'
      ReadOnly = True
      Size = 1
    end
    object qrSQLEncabezadoCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoFacturado: TIntegerField
      FieldName = 'Facturado'
      ReadOnly = True
    end
    object qrSQLEncabezadoPagado: TIntegerField
      FieldName = 'Pagado'
      ReadOnly = True
    end
    object qrSQLEncabezadoResto: TIntegerField
      FieldName = 'Resto'
      ReadOnly = True
    end
    object qrSQLEncabezadoTipResPaciente: TIntegerField
      FieldName = 'TipResPaciente'
      ReadOnly = True
    end
    object qrSQLEncabezadoInternet: TIntegerField
      FieldName = 'Internet'
      ReadOnly = True
    end
    object qrSQLEncabezadoTipResDoctor: TIntegerField
      FieldName = 'TipResDoctor'
      ReadOnly = True
    end
    object qrSQLEncabezadoInternetDoctor: TIntegerField
      FieldName = 'InternetDoctor'
      ReadOnly = True
    end
    object qrSQLEncabezadoTipResCliente: TIntegerField
      FieldName = 'TipResCliente'
      ReadOnly = True
    end
    object qrSQLEncabezadoInternetCliente: TIntegerField
      FieldName = 'InternetCliente'
      ReadOnly = True
    end
    object qrSQLEncabezadoComentario: TStringField
      FieldName = 'Comentario'
      ReadOnly = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = qrSQLEncabezado
    Left = 280
    Top = 376
  end
  object DSdatosdonacion: TDataSource
    DataSet = DM.Qdatosdonacion
    Left = 464
    Top = 360
  end
  object Qdatosdonacion: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMERO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM V_DONACION_DONANTE'
      'WHERE DONACIONID =:NUMERO')
    Left = 376
    Top = 368
    object QdatosdonacionDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object QdatosdonacionMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object QdatosdonacionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QdatosdonacionPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object QdatosdonacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object QdatosdonacionNOMBRE1: TStringField
      FieldName = 'NOMBRE1'
      Size = 30
    end
    object QdatosdonacionAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Size = 50
    end
    object QdatosdonacionTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object QdatosdonacionTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object QdatosdonacionDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
  end
  object tbConfig: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    TableName = 'BSConfig'
    Left = 312
    Top = 152
    object tbConfigSendToAs400: TBooleanField
      FieldName = 'SendToAs400'
    end
  end
  object qrASEncabezado: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM INTERFASE.INP00301'
      'WHERE IN3MUE = :Muestra')
    Left = 216
    Top = 155
    object qrASEncabezadoIN3MUE: TBCDField
      FieldName = 'IN3MUE'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoIN3NOM: TStringField
      FieldName = 'IN3NOM'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoIN3HOR: TIntegerField
      FieldName = 'IN3HOR'
    end
    object qrASEncabezadoIN3DIR: TStringField
      FieldName = 'IN3DIR'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoIN3EDA: TIntegerField
      FieldName = 'IN3EDA'
    end
    object qrASEncabezadoIN3NAC: TIntegerField
      FieldName = 'IN3NAC'
    end
    object qrASEncabezadoIN3TEL: TStringField
      FieldName = 'IN3TEL'
      FixedChar = True
      Size = 10
    end
    object qrASEncabezadoIN3CAT: TStringField
      FieldName = 'IN3CAT'
      FixedChar = True
    end
    object qrASEncabezadoIN3FEC: TIntegerField
      FieldName = 'IN3FEC'
    end
    object qrASEncabezadoIN3USU: TStringField
      FieldName = 'IN3USU'
      FixedChar = True
      Size = 10
    end
    object qrASEncabezadoIN3SEX: TStringField
      FieldName = 'IN3SEX'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoIN3CED: TBCDField
      FieldName = 'IN3CED'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoIN3SUC: TIntegerField
      FieldName = 'IN3SUC'
    end
    object qrASEncabezadoIN3CDO: TIntegerField
      FieldName = 'IN3CDO'
    end
    object qrASEncabezadoIN3DOC: TStringField
      FieldName = 'IN3DOC'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoIN3CLI: TBCDField
      FieldName = 'IN3CLI'
      Precision = 10
      Size = 0
    end
    object qrASEncabezadoIN3FAC: TBCDField
      FieldName = 'IN3FAC'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3PAG: TBCDField
      FieldName = 'IN3PAG'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3RES: TBCDField
      FieldName = 'IN3RES'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3EPA: TIntegerField
      FieldName = 'IN3EPA'
    end
    object qrASEncabezadoIN3IPA: TIntegerField
      FieldName = 'IN3IPA'
    end
    object qrASEncabezadoIN3EDO: TIntegerField
      FieldName = 'IN3EDO'
    end
    object qrASEncabezadoIN3IDO: TIntegerField
      FieldName = 'IN3IDO'
    end
    object qrASEncabezadoIN3RCL: TIntegerField
      FieldName = 'IN3RCL'
    end
    object qrASEncabezadoIN3ICL: TIntegerField
      FieldName = 'IN3ICL'
    end
    object qrASEncabezadoIN3COM: TStringField
      FieldName = 'IN3COM'
      FixedChar = True
      Size = 50
    end
    object qrASEncabezadoIN3ABR: TIntegerField
      FieldName = 'IN3ABR'
    end
    object qrASEncabezadoIN3REL: TBCDField
      FieldName = 'IN3REL'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoIN3REF: TStringField
      FieldName = 'IN3REF'
      FixedChar = True
    end
  end
  object qrASDetalle: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end
      item
        Name = 'Codigo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 4
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM INTERFASE.INP00401'
      'WHERE (IN4MUE = :Muestra)'
      'AND (IN4COD = :Codigo)')
    Left = 432
    Top = 163
    object qrASDetalleIN4MUE: TBCDField
      FieldName = 'IN4MUE'
      Precision = 11
      Size = 0
    end
    object qrASDetalleIN4COD: TIntegerField
      FieldName = 'IN4COD'
    end
    object qrASDetalleIN4NOM: TStringField
      FieldName = 'IN4NOM'
      FixedChar = True
      Size = 50
    end
    object qrASDetalleIN4STS: TStringField
      FieldName = 'IN4STS'
      FixedChar = True
      Size = 1
    end
    object qrASDetalleIN4DEP: TIntegerField
      FieldName = 'IN4DEP'
    end
    object qrASDetalleIN4FEC: TIntegerField
      FieldName = 'IN4FEC'
    end
    object qrASDetalleIN4HOR: TIntegerField
      FieldName = 'IN4HOR'
    end
    object qrASDetalleIN4USU: TStringField
      FieldName = 'IN4USU'
      FixedChar = True
      Size = 10
    end
    object qrASDetalleIN4COM: TStringField
      FieldName = 'IN4COM'
      FixedChar = True
      Size = 100
    end
    object qrASDetalleIN4PET: TIntegerField
      FieldName = 'IN4PET'
    end
    object qrASDetalleIN4ANT: TBCDField
      FieldName = 'IN4ANT'
      Precision = 11
      Size = 0
    end
    object qrASDetalleIN4TIP: TStringField
      FieldName = 'IN4TIP'
      FixedChar = True
      Size = 1
    end
    object qrASDetalleIN4VAL: TBCDField
      FieldName = 'IN4VAL'
      Precision = 11
      Size = 2
    end
    object qrASDetalleIN4ACT: TStringField
      FieldName = 'IN4ACT'
      FixedChar = True
      Size = 1
    end
  end
  object ppPaciente: TppBDEPipeline
    DataSource = dsEntradaPaciente
    UserName = 'Paciente'
    Left = 136
    Top = 168
    object ppPacienteppField1: TppField
      FieldAlias = 'ENTRADAID'
      FieldName = 'ENTRADAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppPacienteppField2: TppField
      FieldAlias = 'FECHA'
      FieldName = 'FECHA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object ppPacienteppField3: TppField
      FieldAlias = 'HORAENTRADA'
      FieldName = 'HORAENTRADA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppPacienteppField4: TppField
      FieldAlias = 'PACIENTEID'
      FieldName = 'PACIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppPacienteppField5: TppField
      FieldAlias = 'CLIENTEID'
      FieldName = 'CLIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppPacienteppField6: TppField
      FieldAlias = 'DOCTORID'
      FieldName = 'DOCTORID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppPacienteppField7: TppField
      FieldAlias = 'POLIZAID'
      FieldName = 'POLIZAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppPacienteppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENCLINICA'
      FieldName = 'ENCLINICA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppPacienteppField9: TppField
      FieldAlias = 'RECORDCLINICA'
      FieldName = 'RECORDCLINICA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppPacienteppField10: TppField
      FieldAlias = 'NUMEROHABITACION'
      FieldName = 'NUMEROHABITACION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppPacienteppField11: TppField
      FieldAlias = 'FECHAENTRADA'
      FieldName = 'FECHAENTRADA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object ppPacienteppField12: TppField
      FieldAlias = 'FECHADEALTA'
      FieldName = 'FECHADEALTA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object ppPacienteppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADOPACIENTE'
      FieldName = 'RESULTADOPACIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppPacienteppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADODOCTOR'
      FieldName = 'RESULTADODOCTOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppPacienteppField15: TppField
      FieldAlias = 'FECHAPROMETIDA'
      FieldName = 'FECHAPROMETIDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object ppPacienteppField16: TppField
      FieldAlias = 'HORAPROMETIDA'
      FieldName = 'HORAPROMETIDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object ppPacienteppField17: TppField
      FieldAlias = 'FLEBOTOMISTAID'
      FieldName = 'FLEBOTOMISTAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object ppPacienteppField18: TppField
      FieldAlias = 'NOTA'
      FieldName = 'NOTA'
      FieldLength = 255
      DisplayWidth = 255
      Position = 17
    end
    object ppPacienteppField19: TppField
      FieldAlias = 'PROYECTOID'
      FieldName = 'PROYECTOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object ppPacienteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECORDID'
      FieldName = 'RECORDID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppPacienteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'BRUTO'
      FieldName = 'BRUTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 20
    end
    object ppPacienteppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTO'
      FieldName = 'DESCUENTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 21
    end
    object ppPacienteppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBTOTAL'
      FieldName = 'SUBTOTAL'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 22
    end
    object ppPacienteppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'NETO'
      FieldName = 'NETO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 23
    end
    object ppPacienteppField25: TppField
      FieldAlias = 'NOMBREPACIENTE'
      FieldName = 'NOMBREPACIENTE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 24
    end
    object ppPacienteppField26: TppField
      FieldAlias = 'DIRECCION'
      FieldName = 'DIRECCION'
      FieldLength = 255
      DisplayWidth = 255
      Position = 25
    end
    object ppPacienteppField27: TppField
      FieldAlias = 'TELEFONOS'
      FieldName = 'TELEFONOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppPacienteppField28: TppField
      FieldAlias = 'TELEFONO2'
      FieldName = 'TELEFONO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppPacienteppField29: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppPacienteppField30: TppField
      FieldAlias = 'CLIENTENOMBRE'
      FieldName = 'CLIENTENOMBRE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 29
    end
    object ppPacienteppField31: TppField
      FieldAlias = 'SUCURSALID'
      FieldName = 'SUCURSALID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 30
    end
    object ppPacienteppField32: TppField
      FieldAlias = 'USERID'
      FieldName = 'USERID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 31
    end
    object ppPacienteppField33: TppField
      FieldAlias = 'COBROID'
      FieldName = 'COBROID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object ppPacienteppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALPAGADO'
      FieldName = 'TOTALPAGADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 33
    end
    object ppPacienteppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRIORIDAD'
      FieldName = 'PRIORIDAD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppPacienteppField36: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppPacienteppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPODOCUMENTO'
      FieldName = 'TIPODOCUMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppPacienteppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAPORC'
      FieldName = 'COBERTURAPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 37
    end
    object ppPacienteppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURASEGURO'
      FieldName = 'COBERTURASEGURO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 38
    end
    object ppPacienteppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAVALOR'
      FieldName = 'COBERTURAVALOR'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 39
    end
    object ppPacienteppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOPORC'
      FieldName = 'DESCUENTOPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 40
    end
    object ppPacienteppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOVALOR'
      FieldName = 'DESCUENTOVALOR'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 41
    end
    object ppPacienteppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOBONO'
      FieldName = 'DESCUENTOBONO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 42
    end
    object ppPacienteppField44: TppField
      FieldAlias = 'ORIGEN'
      FieldName = 'ORIGEN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 43
    end
    object ppPacienteppField45: TppField
      FieldAlias = 'APROBACIONNO'
      FieldName = 'APROBACIONNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 44
    end
    object ppPacienteppField46: TppField
      FieldAlias = 'APROBACIONPOR'
      FieldName = 'APROBACIONPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 45
    end
    object ppPacienteppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURARECHAZADA'
      FieldName = 'COBERTURARECHAZADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 46
    end
    object ppPacienteppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURACONFIRMADA'
      FieldName = 'COBERTURACONFIRMADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 47
    end
    object ppPacienteppField49: TppField
      FieldAlias = 'FECHAASEGURADORA'
      FieldName = 'FECHAASEGURADORA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 48
    end
    object ppPacienteppField50: TppField
      FieldAlias = 'MUESTRANO'
      FieldName = 'MUESTRANO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object ppPacienteppField51: TppField
      FieldAlias = 'MONEDAID'
      FieldName = 'MONEDAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 50
    end
    object ppPacienteppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAEXPPORC'
      FieldName = 'COBERTURAEXPPORC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 51
    end
    object ppPacienteppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'EDADPACIENTE'
      FieldName = 'EDADPACIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppPacienteppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEXO'
      FieldName = 'SEXO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppPacienteppField55: TppField
      FieldAlias = 'NOMBREDOCTOR'
      FieldName = 'NOMBREDOCTOR'
      FieldLength = 80
      DisplayWidth = 80
      Position = 54
    end
    object ppPacienteppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNET'
      FieldName = 'PUBLICARINTERNET'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object ppPacienteppField57: TppField
      FieldAlias = 'CARNET'
      FieldName = 'CARNET'
      FieldLength = 20
      DisplayWidth = 20
      Position = 56
    end
    object ppPacienteppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNETDOCTOR'
      FieldName = 'PUBLICARINTERNETDOCTOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppPacienteppField59: TppField
      FieldAlias = 'CUADREGLOBAL'
      FieldName = 'CUADREGLOBAL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 58
    end
    object ppPacienteppField60: TppField
      FieldAlias = 'CUADREUSUARIO'
      FieldName = 'CUADREUSUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 59
    end
    object ppPacienteppField61: TppField
      FieldAlias = 'DESCAUTORIZADOPOR'
      FieldName = 'DESCAUTORIZADOPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 60
    end
    object ppPacienteppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'GASTOSVARIOS'
      FieldName = 'GASTOSVARIOS'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 61
    end
    object ppPacienteppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOAS400'
      FieldName = 'NOAS400'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppPacienteppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOAXAPTA'
      FieldName = 'NOAXAPTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppPacienteppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOFACTURA'
      FieldName = 'NOFACTURA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 64
    end
    object ppPacienteppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'FACTEXTERIOR'
      FieldName = 'FACTEXTERIOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 65
    end
    object ppPacienteppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOLD'
      FieldName = 'HOLD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object ppPacienteppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPMUESTRA'
      FieldName = 'REPMUESTRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object ppPacienteppField69: TppField
      FieldAlias = 'ENTRADAIDANT'
      FieldName = 'ENTRADAIDANT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 68
    end
    object ppPacienteppField70: TppField
      FieldAlias = 'TIPOENTRADA'
      FieldName = 'TIPOENTRADA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 69
    end
    object ppPacienteppField71: TppField
      FieldAlias = 'FORMADEPAGO'
      FieldName = 'FORMADEPAGO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 70
    end
    object ppPacienteppField72: TppField
      FieldAlias = 'DESCUENTOCARD'
      FieldName = 'DESCUENTOCARD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 71
    end
    object ppPacienteppField73: TppField
      FieldAlias = 'DESCUENTOTEXTO'
      FieldName = 'DESCUENTOTEXTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 72
    end
    object ppPacienteppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACUERDOPROPIO'
      FieldName = 'ACUERDOPROPIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object ppPacienteppField75: TppField
      FieldAlias = 'CLIENTEPADRE'
      FieldName = 'CLIENTEPADRE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 74
    end
    object ppPacienteppField76: TppField
      FieldAlias = 'DESCUENTOPLANID'
      FieldName = 'DESCUENTOPLANID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object ppPacienteppField77: TppField
      FieldAlias = 'FECHAREGISTRO'
      FieldName = 'FECHAREGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 76
    end
    object ppPacienteppField78: TppField
      FieldAlias = 'HORAREGISTRO'
      FieldName = 'HORAREGISTRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 77
    end
    object ppPacienteppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASA'
      FieldName = 'TASA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 78
    end
    object ppPacienteppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTATUS'
      FieldName = 'ESTATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 79
    end
    object ppPacienteppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOCLIENTEAS400'
      FieldName = 'TIPOCLIENTEAS400'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 80
    end
    object ppPacienteppField82: TppField
      FieldAlias = 'CLASECREDITO'
      FieldName = 'CLASECREDITO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 81
    end
    object ppPacienteppField83: TppField
      FieldAlias = 'CARNETNUMERO'
      FieldName = 'CARNETNUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 82
    end
    object ppPacienteppField84: TppField
      FieldAlias = 'CLIENTEPADREAXAPTA'
      FieldName = 'CLIENTEPADREAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 83
    end
    object ppPacienteppField85: TppField
      FieldAlias = 'PACIENTEIDAXAPTA'
      FieldName = 'PACIENTEIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 84
    end
    object ppPacienteppField86: TppField
      FieldAlias = 'CLIENTEIDAXAPTA'
      FieldName = 'CLIENTEIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 85
    end
    object ppPacienteppField87: TppField
      FieldAlias = 'DOCTORIDAXAPTA'
      FieldName = 'DOCTORIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 86
    end
    object ppPacienteppField88: TppField
      FieldAlias = 'DATAAREAID'
      FieldName = 'DATAAREAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 87
    end
    object ppPacienteppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECID'
      FieldName = 'RECID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object ppPacienteppField90: TppField
      FieldAlias = 'NoAsCorto'
      FieldName = 'NoAsCorto'
      FieldLength = 11
      DisplayWidth = 11
      Position = 89
    end
    object ppPacienteppField91: TppField
      FieldAlias = 'MuestraNoAS'
      FieldName = 'MuestraNoAS'
      FieldLength = 11
      DisplayWidth = 11
      Position = 90
    end
    object ppPacienteppField92: TppField
      FieldAlias = 'RESULTADO_CRUCE'
      FieldName = 'RESULTADO_CRUCE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 91
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppPruebas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
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
    Left = 384
    Top = 168
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppPruebas'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 129117
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          07544269746D61702E790400424D2E7904000000000036000000280000002702
          0000B10000000100180000000000F8780400C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFEFF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFCFF
          FFFCFFFFFBFFFFFBFFFFF9FFFFF9FFFFF9FFFFF8FFFFF9FFFFFBFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFCFFFFFCFFFFFBFFFFFB
          FFFFF9FFFFF9FFFFF8FFFFF8FFFFF8FFFFF9FFFFFEFFFFFFFFFEFFFFFFFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFDFFFFFEFFFFFD
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFCFFFFFCFFFF
          FBFFFFFBFFFFFBFFFFFCFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFDFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFDFFFFFDFFFFFCFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFEFFFFFEFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFEFFFFFCFFFFFCFFFFFCFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFFFFFFFFFCFFFFFBFFFFFBFFFFFBFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFCFFFFFBFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFEFFFFFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFEFDFEFAFBFCF8FCFDF9FEFFFBFFFFFCFFFFFCFF
          FFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFEFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FDFEFCFCFDFBFDFEFCFEFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFCFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFCFBFCFAFDFDFDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8FAF4FBFEF5
          FEFFFAFEFFFAFCFEF8FBFDF7FDFEFAFFFFFCFFFFFCFFFFFCFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFEFBFAFCFCFBFFFEFDFFFFFEFFFFFEFFFDFCFEFBFAFCFA
          F9FBFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFBFFFFFCFFFFFCFFFF
          FCFFFFFCFEFFFDFDFEFCFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFDFFFFFCFFFFFCFFFFFCFFFEFCFFFFFDFFFFFDFFFFFEFFFFFEFFFFFEFF
          FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFEFEFDFFFFFEFFFFFEFFFBFAFEF7
          F6FAFDFCFFFDFBFFFDFBFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFF
          FDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFA
          FFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFD
          FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFF
          FDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFA
          FFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFD
          FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFF
          FDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFA
          FFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFD
          FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDF9FFFAF6FFFCF7FF
          FDF8FFFCF8FFFBF7FFFCF8FFFFFCFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFCFBFFFAF8FEF9F7FDFCFAFFFFFDFFFFFCFFFFFCFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFAFFFFFAFFFFFAFFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9
          FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFF
          F9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FF
          FFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9
          FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFF
          F9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FF
          FFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9
          FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFF
          F9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FF
          FFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFFA
          FFFDF9FFFCF8FFFDFAFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFFFFFCFF
          FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFBFF
          FFFBFFFDF9FFF7F3FFF5F0FFF9F4FFFEF8FFFAF4FFFAF4FFFAF4FFFAF3FFFAF3
          FFFAF3FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFA
          F2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FF
          FAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2
          FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFA
          F2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FF
          FAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2
          FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFA
          F2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FF
          FAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2
          FFFAF2FFFAF2FFFAF2FFFBF3FFFCF4FFFDF6FFFAF3FFF7F1FFFAF4FFFFFBFFFF
          FBFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFFFFFCFFFFFCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDF9FFFEF8FFF6F1FFDFDAF7C5BB
          E5B4ABD6B5AED1BBB5D4BAB3D6BCB1D7BCB1D7BCB1D9BCB0DABCAFDBBAB0DBBA
          B0DBBAB0DBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DB
          BCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAF
          DBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBA
          B0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DB
          BCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAF
          DBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBA
          B0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBAB0DB
          BCAFDBBAB0DBBCAFDBBAB0DBBCAFDBBCAFDBBCAFDBBCAFDBBCAFDDBCAFDBBCAF
          DBBCB0DABCB0DABCB0DABCAFDBBAAFDDBCAFDDBAAFDDBAAFDDBAB0DBBAB0DBBA
          B0DABBB2DABBB1DCB9AAE3B9ABE1C0B8DDD3CFE8EBEAFAFBFCFFFBFEFFFDFFFF
          FDFFFEFDFFFBFFFFFBFFFFFCFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFDFFFCFDFFFBFDFFFCFDFFFFFFFBFFFFFBFFFFFEFFFFFFFFFFFFFEFFFFFE
          FFFEFFFDFFFFFDFFFFFDFFFFFDFDFFFDFCFFFFFDFFFFFEFFFFFEFFFFFEFFFFFF
          FFFFFFFFFFFFFEFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFCFF
          FFFEFFFDFFFDFDFFFDFFFFFDFFFCFDFFFCFFFFFEFFFEFFFFFDFFFFFEFFFFFEFF
          FFFFFFFFFFFEFFFFFEFDFFFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFF
          FEFFFFFDFFFFFDFFFFFEFFFFFFFEFFFFFCFDFFFCFDFFFFFFFEFFFFFEFFFFFEFF
          FFFDFFFFFEFFFFFFFFFFFFFEFDFFFEFDFFFFFDFEFFFDFFFFFDFFFEFDFFFCFDFF
          FCFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFEFF
          FFFCFFFFFCFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFFFEFDFFFCFDFFFCFDFFFE
          FDFFFFFDFDFFFDFDFFFDFEFFFDFFFFFDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFDFF
          FEFDFFFCFDFFFBFDFFFBFDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFCFFFEFFFFFEFFFFFC
          FFFFFCFFFFFDFFFFFEFFFFFFFFFFFFFEFFFFFCFFFFFCFFFFFEFFFFFFFFFDFFFF
          FDFFFFFFFFFFFFFFFFFEFFFDFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFCFFFFFCFFFFFFFFFEFFFDFEFFFDFDFFFFFBFFFFFDFFFFFFFEFFFFF8FFFF
          F7FFFFF8FFFFFEFFFEFFFFFDFFFFFCFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFFFF
          FFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFBFFFFFBFFFFFCFFFFFFFFFDFFFFFCFFFFFDFFFFFEFFFFFFFFFDFFFE
          FDFFFFFDFEFFFDFDFFFDFEFFFDFFFEFDFFFCFFFFFFFFFEFFFFFEFFFFFFFFFFFF
          FFFFFFFEFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFCFFFFFEFFFEFFFFFDFFFFFDFFFFFEFF
          FFFFFCFFFFFBFFFFFCFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFFFEFFFFFCFFFF
          FEFFFFFFFFFEFFFFFEFFFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFF
          FFFEFFFFFCFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFF
          FEFFFFFEFFFEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFEFFFFFFFEFFFFF9FF
          FFF8FDFFFBFDFFFEFFFEFFFFFEFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFDFFFE
          FDFFF9FDFFF9FFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFFFFFFFFFBFFFFFBFFFFFCFFFFFFFFFEFFFFFFFFFFFFFCFFFFFB
          FFFFFCFFFFFEFFFEFFFFFFFFFFFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFAFFEBE4F9FAF5FFB2A9E1301E7B402F90382F7239
          336C3C316F3E3072402E75402D76402C793E2B7A3C2B7C3A2B7C3B2B793B2B78
          3D2B783B2B783D2B783B2B783D2B783B2B783E2C793C2C793E2C793C2C793E2C
          793C2C793E2C793C2C793D2B783B2B783D2B783B2B783D2B783B2B783D2B783B
          2B783D2B783B2B783D2B783B2B783D2B783B2B783D2B783B2B783E2C793C2C79
          3E2C793C2C793E2C793C2C793E2C793C2C793D2B783B2B783D2B783B2B783D2B
          783B2B783D2B783B2B783E2C793C2C793E2C793C2C793E2C793C2C793E2C793C
          2C793D2B783B2B783D2B783B2B783D2B783B2B783D2B783B2B783E2C793C2C79
          3E2C793C2C793E2C793C2C793E2C793C2C793D2B783B2B783D2B783B2B783D2B
          783B2B783D2B783D2B783F2A793F2A793F297B3F2A793F2B763F2C753D2D743D
          2C7542307D37267744308338267939287942327F35267041337A463A7C311F72
          482CA433178E483B85F4F3FFF4FBFFEFFAFEF6FFFFEBF4F1F6FFF1FBFFF2FDFF
          F4FCFEF8FDF9FFFFF9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFCFBFFF7FBFFF4
          FBFFF7FBFFFFFDF5FFFDF4FFFDFAFFFDFFFFFDFFF9FDFFFBFDFCFFFBFDFFFBFF
          FEFBFFFFFAFAFFFBF8FFFDF9FFFFFAFFFDFCFFFDFDFFFDFFFFFDFFFEFDFFFCFD
          FFFCFFFEFFFFFCFFFFFAFFFFFAFFFFFCFFFFFEFFFFFFF8FFFFFCFDF9FFFBF9FF
          FBFFFFFBFFF8FBFFF8FDFFFCFDFCFFFDFAFFFDFAFFFDFCFFFDFFFEFDFFF9FDFF
          FBFBFFFCFDFFFFFDFEFFFDFFFFFDFFFFFFFEFFFFFFFFFFFFFEFFFFFCFFFFFEFF
          FFFFFFFDFFFFFDFFFFFFFFFFFFFCFFFFF9FFFFFBFFFEFFFFFBFFFFF9FFFFF9FF
          FFFCFFFFFFFCFDFFF7FBFFF7FBFFFEFDFEFFFFFDFFFFFCFFFFFAFFFFFCFFFFFF
          FFFDFFFCFBFFFBFAFFFFF8FDFFF8FEFFFAFFFBFAFFF7FBFFF8FBFFFBFBFFFFFD
          FFFFFDFFFEFDFFFFFDFDFFFDFCFFFDFAFFFDFCFFFDFFF9FDFFF5FFFFF7FFFFFB
          FFFCFFFFFAFFFDFAFFFDFDFFFDFFFBFBFFF5FBFFF5FBFFFBFBFDFFFBFAFFFBF9
          FFFBFBFFFBFFFFFBFFFCFAFFFEF8FFFEF8FFFFF8FFFEFAFFF9FAFFF5FBFFF2FB
          FFF4FBFFF9FBFFFEFBFFFFFBFEFFFAFFFFFAFFFFFAFFFFFBFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCFFFFF5FFFFF8FDFEFFFDFAFFFDF7FFFDF6FFFDF8FFFD
          FBFFFFFFFFFFFFF9FFFFF5FFFFF5FFFFF9FFFEFFFFFAFFFFFBFFFFFEFFFFFFFF
          FDFCFFFBFDFFFDFFFFFDFFFBFFFFF9FFFFF9FFFFFBFFFFF9FFFFF7FFFFF8FFFF
          FEFFFEFFFAFCFFFAFAFFFFF5FFFFF8FFFFFFF9FFFFEBFFFFE6FFFFEAFFFFF9FF
          FCFFFFF7FFFFF7FFFFFAFFFFFDFFFFFFFCFFFFFCFFFFFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFF
          FFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFFF4FDFFF2
          FDFFF8FDFFFFFDFAFFFDF7FFFDF8FFFDFBFFFDFFFEFBFFFCFBFEFFFBFBFFFAFA
          FFFAFCFFF8FFF9FAFFF8FDFFFFFDFCFFFDFEFFFDFFFFFDFFFEFDFFFCFDFFFCFD
          FFFEFFFEFFFFFEFFFFFDFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFFFFFFFE
          FFFFF9FFFFF8FFFFF7FFFFFCFFFAFFFFF8FFFFF9FFFFFDFFFFFFF5FFFFF1FFFF
          F5FFFFFBFFFDFFFFFBFFFFFBFFFDFDFFFFFFFBFFFFF8FFFFF9FFFFFEFFFCFFFF
          FAFFFFFBFFFFFCFFFFFCFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFCFFFFF8FFFFFB
          FFFCFFFFFAFFFFFAFFFFFCFFFFFFFEFFFFF9FDFFF8FDFFF7FDFFF7FDFFF8FFFF
          F9FFFFFCFFFEFFFFFCFFFEF9FFF2EDF6FFFDFFFFFDFFFFFFFBFAFBF7FCFBFFFD
          FAFFFDFBFFF7F8FCFDFFFCF9FDF8F9F8FCFFFFFCF8FFE6FDFFE9FBFFF4FBFFFC
          FDFCFFFFFCFFFFFEFFFFFEFFFFFCFFFFFBFFFDFCFFFBFFFCFBFFEDFBFFEEFFFF
          FFFFFAFFFFFCFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFEFFFDFFFE
          FDFFF4FDFFF1FDFFF8FDFFFEFDFEFFFDFFFFFDFFF5FDFFF2FFFFF7FFFFFCFFFD
          FFFFFEFFFFFFF7FFFFF5FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFCFFFFF9FFFAF6FFB6AEEA4934A1CFBDFFE6E2FFEFEFFFEEE6FFF1E5FF
          F5E3FFF5E3FFF3E2FFF1E1FFEEE1FFEEE1FFF1E4FFF1E6FFF1E6FFF1E6FFF1E6
          FFF1E6FFF1E6FFF1E6FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4FFEF
          E4FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FF
          F1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4
          FFEFE4FFEFE4FFEFE4FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1
          E6FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4FFF1E6FFF1E6FF
          F1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFEFE4FFEFE4FFEFE4FFEFE4FFEFE4
          FFEFE4FFEFE4FFEFE4FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF1E6FFF3
          E5FFF5E4FFF5E4FFF5E2FFF5E4FFF5E7FFF5E8FFF5E9FFF3E8FFE6D8FFF4E5FF
          EEDEFFEEDEFFF4E6FFE8DDFFEAE1FFEEE3FFE9D9FFE8D2FF684BD0351C94D1CA
          FFDEE1FFF1F7FFF0F5FFEAEEFFF6FCFFF8FFF7F1FFE5F7FFEBFBFFF7FFF9FFFF
          F8FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFF5FBFFF2FDFFF5FDFEFFFDF3
          FFFDF2FFFFFAFFFFFFFCFFFFF5FDFFF9FDFCFFFBFBFFFBFFFCFBFFFEFAFAFFFB
          F8FFFDF9FFFFFAFFFDFCFFFDFDFFFDFFFFFDFFFEFDFFFCFDFFFCFFFEFFFFFCFF
          FFFAFFFFFAFFFFFBFFFFFEFFFFFFF7FFFFFCFDF8FFFBF8FFFBFFFFFBFFF7FDFF
          F5FDFFF9FFFCFFFFFAFFFFFBFFFFFEFFFFFFFBFFFFF8FDFFFBFDFFFFFDFDFFFD
          FCFFFDFEFFFDFFFFFFFEFFFFFFFFFFFFFCFFFFFBFFFFFCFFFFFFFFFDFFFFFDFF
          FFFFFFFFFFFBFFFFF8FFFFF9FFFEFFFFFBFFFFF7FFFFF8FFFFFCFFFFFFFCFBFF
          F5FAFFF5FBFFFEFDFEFFFFFDFFFFFBFFFFF9FFFFFBFFFFFFFFFDFFFBFAFFFBF8
          FFFCF8FEFFFAFFFFFAFFF9FAFFF7FBFFFBFBFFFFFDFDFFFDFEFFFFFFFBFFFFF9
          FFFFFEFDFEFFFFFBFFFDFCFFFDFFFCFDFFF7FFFFF5FFFFF9FFFBFFFFF9FFFDF9
          FFFDFCFFFBFFF9FBFFF4FBFFF2FAFFF9FBFCFFFAF9FFFBF8FFFBFAFFFBFFFFFB
          FFFBFAFFFCF8FFFCF8FFFEF8FFFBFAFFF7FAFFF4FBFFF2FBFFF5FBFFFCFBFFFF
          FBFEFFFBFFFFFAFFFFFAFFFEFAFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFFFFF1FFFFF4FDFEFFFDFAFFFDF7FFFDF7FFFDFAFFFDFDFFFFFFFCFFFFF8
          FFFFF7FFFFF7FFFFFCFFFDFFFFF9FFFFFAFFFFFEFFFFFFFEFDFCFFFBFDFFFBFF
          FFFBFFFBFFFFFBFFFFFBFFFFFCFFFFFBFFFFF8FFFFF9FFFFFEFDFEFFFAFCFFF8
          FBFFFFF6FFFFF9FFFFFFF9FFFFEEFFFFE7FFFFEAFFFFF7FFFDFFFFF9FFFFF8FF
          FFFAFFFFFCFFFFFFFFFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFD
          FFFFFEFFFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFF4FFFFF2FFFFF7FFFFFFFFF9
          FFFFF7FFFFF8FFFFFBFFFDFFFCFDFFFBFBFEFFFBFBFFFAFAFFFAFCFFFAFFF9FA
          FFF8FBFEFFFDFCFFFDFDFFFDFFFFFDFFFEFDFFFCFDFFFCFDFFFEFFFEFFFFFEFF
          FFFDFFFFFDFFFFFEFFFFFEFFFFFFFCFFFFFEFFFEFFFFFFFFFFFFF8FFFFF5FFFF
          F4FFFFF9FFFAFFFFF7FFFFF8FFFFFDFFFFFFF4FFFFEEFFFFF4FFFFFBFFFCFFFF
          F9FFFFFBFFFDFEFFFFFFF9FFFFF7FFFFF8FFFFFCFFFCFFFFFAFFFFFBFFFFFBFF
          FFFCFFFFFDFFFFFDFFFFFEFFFFFFFEFFFFFBFFFFF7FFFFF9FFFCFFFFFAFFFFFA
          FFFFFBFFFFFFFEFFFFF9FDFFF7FDFFF5FDFFF5FDFFF5FFFFF8FFFFFCFFFEFFFF
          FCFFFFFCFFFBF9FFFAF9FBF4F5F1FFFFF7FDFFFBFDFBFFFBF9FFFDFDFFF5F8F6
          FDFFF8FDFFFCFFFAFFFFFDFFF3FCE2F6FFE0FAFFF1FAFFFCFDFCFFFFFAFFFFFE
          FFFFFEFEFFFBFFFFFAFFFDFCFFFBFFFBFAFFE7FBFFE9FFFEFFFFF9FFFFFBFFFF
          FCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFCFFFDFFFFFDFFF2FDFFF1FDFF
          F9FDFFFFFDFBFFFDFCFFFDFFF8FDFFF5FFFFFBFFFEFFFFFAFFFFFBFFFFFFF7FF
          FFF4FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F5F4FFFEFF
          EEEFFDA8A6D02D1E79EFE2FFEFF1FFF1F7FFF4F5FFF8F4FFFBF4FFFBF4FFFAF3
          FFF8F3FFF4F3FFF3F4FFF4F6FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6
          F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FF
          F6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7
          FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6
          F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FF
          F6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7
          FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6
          F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF6F7FFF8F6FFFAF5FF
          FAF3FFFAF5FFFAFAFFF8FEFFF8FFFFF8FCFFF8F6FFEAE5FFF6EFFFF4F0FFE9E8
          FFF4F6FFF4F7FFECE8FFEEDBFF7B64D14A3A92EBE5FFF1FBFFEFF9FFF2EEFFE3
          D9FF50458BDAD5FFF8FFFFFAFFF0FDFFF0F9FFF4FFFBFFF6EFFEFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCFFFFF8FFFFF5FFFFF8FFFDFFFFF4FFFFF4FFFFFDFFFF
          FFF7FFFFF2FFFFF7FFFBFFFFFBFFFFFFFCFDFFFBFDFDFFFDFCFFFFFDFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFFFFFEFFFFFCFFFFFBFFFFFBFFFFFD
          FFFFFFFFFFFFF9FFFFFCFFFBFFFDFBFFFFFFFCFFFFF5FFFFF4FFFFF7FFFFFCFF
          FFFEFFFFFCFFFFFBFFFFF8FFFFF9FFFFFFFFFDFFFFF9FFFFF9FFFFFCFFFDFEFF
          FFFEFFFFFFFFFFFFFCFFFFFBFFFFFCFFFFFEFFFEFFFFFEFFFFFFFFFFFFFCFFFF
          F9FFFFF9FFFFFCFFFEFFFFF9FFFFFAFFFFFDFFFDFFFCFAFFF7FAFFF7FBFFFCFD
          FFFFFFFDFFFFFCFFFFFAFFFFFBFFFFFFFFFDFFFCFAFFFBFAFFF9FDFFF7FFFFF7
          FFFFF8FFFFFEFFFAFFFFF8FFFFF9FFFFFDFFFFFFF7FFFFF0FFFFEEFFFFF2FFFF
          FCFFFEFFFFFCFFFFFEFFFFFFF9FFFFFBFFFBFFFFF9FFFDF8FFFDFBFFFDFFFBFD
          FFF5FDFFF4FBFFF9FDFDFFFBFBFFFDFAFFFDFCFFFDFFFEFDFFF9FBFFFCFBFFFC
          FBFFF9FBFFF7FDFFF5FDFFF7FDFFFBFDFFFFFFFCFFFFFBFFFFFEFFFFFFFFFFFF
          FBFFFFFBFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFF0FFFFF1
          FDFFFFFDFCFFFDFCFFFDFFFFFFFFF7FFFFF4FFFFF7FFFFF9FFFFFEFFFEFFFFFC
          FFFFFBFFFFF9FFFFFBFFFFFFFCFFFFFBFDFFFFFBFFFFFAFFFEFBFFFEFFFFFFFF
          FDFFFFFBFFFFFBFFFFFCFFFFFDFFFFFEFFFDFFFFFAFFFFF8FFFFFFFEFFFFFEFF
          FFFFFFFFFFFEFFFFF9FFFFF7FFFFF5FFFFF7FFFFFCFFFEFFFFFBFFFFFAFFFFFB
          FFFFFDFFFFFFFFFDFFFCFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFF9FFFFF9FFFFFBFFFFFFFFFBFFFFFAFFFFFCFFFF
          FFFFFFFFF8FFFFF8FFFFFCFFFEFFFFFBFFFDFDFFFDFFFCFDFFFBFDFEFFFDFCFF
          FDFEFFFDFFFFFDFFFEFDFFFEFDFFFEFDFFFFFFFEFFFFFEFFFFFDFFFFFDFFFFFE
          FFFFFFFEFFFFFBFFFFFEFFFDFFFFFEFFFFFFF9FFFFF4FFFFF2FFFFF8FFFCFFFF
          F9FFFFF9FFFFFCFFFFFFF8FFFFF4FFFFF7FFFFFCFFFBFFFFFAFFFFFCFFFDFFFF
          FFFFF9FFFFF7FFFFF7FFFFF9FFFFFFFFFEFFFFFDFFFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFCFFFFF9FFFFF7FFFFF9FFFEFFFFFBFFFFFBFFFFFCFFFFFFFFFF
          FFFBFFFFF9FFFFF8FFFFF7FFFFF7FFFFF9FFFFFCFFFEFFFFFEFFFAFAFAFDFFFB
          FAFFF2FBFFF1FBFFF1FBFFF7F8F9FFF6F8FFFBFFF8FBFFF1FBFFF0E8EFE8EFE7
          FFFDF5FFFFFFFEFDFFF4FAFFF5FAFFFBFDFCFFFFFAFFFFFFFEFFFFFCFFFCFFFF
          FBFFFDFDFFFBFFFBFAFFEAFAFFEBFDFFFFFFFAFFFFFDFFFFFDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFF9FFFFFAFFFFFFFBFFFFF7FFFFFFFFFBFFFFF7FFFF
          F8FFFFFBFFFFFCFFFFF9FFFFF7FFFFF5FFFFF8FFFFFFFCFFFFF7FFFFFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF6FFFFFCF5F8FDBDBCDC3B2E
          7CEFE8FFE7ECFFEAF5FDF4FAFFF8FAFFFBFAFFFBFAFFF9FCFFF8FCFFF4FCFFF2
          FDFFF2FCFCF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF6FEFDF6FEFD
          F6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF4FCFBF4FCFBF4FCFBF4FCFBF4FC
          FBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4
          FCFBF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF4FCFBF4FCFB
          F4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF6FEFDF6FEFDF6FEFDF6FEFDF6FE
          FDF6FEFDF6FEFDF6FEFDF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4
          FCFBF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF6FEFDF4FCFBF4FCFB
          F4FCFBF4FCFBF4FCFBF4FCFBF4FCFBF4FCFCF6FBFEF6FBFEF7FAFFF6FBFCF6FE
          F7F6FFF3F6FFF3F4FFF7F3F9FEF4F7FFF2F4FFF6FBFFF6FCFFE1E9F6EBEFFFF4
          F1FF705FB63B2986F3EDFFE2E6FFF3FFFFEEF8FFC5BBFF2F1D7B2C1976EDE2FF
          F8FDFFFAFFF2FDFFF4F0F5ECFFFDFFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFBFFFFF9FFFFFBFFFDFFFFF5FFFFF7FFFFFFFCFFFFF2FFFFF0FFFFF7
          FFFBFFFFFAFFFFFFFEFFFFF9FFFFFCFFFFFCFFFFFCFFFFFCFFFFFEFFFFFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFEFF
          FFFCFFFFFBFFFFF9FFFFF7FFFFF7FFFFF8FFFFF9FFFFFCFFFFFCFFFFFBFFFFFB
          FFFFFBFFFFFCFFFDFFFFFCFFFFFAFFFFFAFFFFFCFFFDFEFFFFFEFFFFFFFFFFFF
          FCFFFFFBFFFFFCFFFFFEFFFFFFFFFEFFFFFFFFFFFFFEFFFFFBFFFFF9FFFFF9FF
          FFFCFFFCFFFFFBFFFFFEFFFDFFFEFAFFF9F8FFF9FAFFFCFDFFFFFFFEFFFFFDFF
          FFFBFFFFFCFFFFFEFFFDFFFEFAFFFCFBFFF8FFFFF4FFFFF4FFFFF9FFFEFFFFFA
          FFFFF8FFFFFAFFFFFEFFFFFFF7FFFFF0FFFFEDFFFFF0FFFFF8FFFFFFFFFBFFFF
          FDFFFFFFF9FFFFFBFFFBFFFFF9FFFDF8FFFDFBFFFDFFFEFDFFF7FFFFF5FDFFF8
          FFFEFFFDFCFFFFFBFFFDFDFFFFFFFBFDFFF9FFFFFEFDFFFCFFFFF7FFFFF5FFFF
          F5FFFFF9FFFDFFFFFAFFFFF8FFFFFAFFFFFDFFFFFFFCFFFFF9FFFFF9FFFFFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFF0FFFFF1FDFFFFFDFDFFFDFF
          FCFDFFF5FFFFEBFFFFEBFFFFF7FFFFFFFFFBFFFFFAFFFFFDFFFFFDFFFFFDFFFF
          FEFFFFFFFBFFFFF9FDFFFBFAFFFEFAFFFEFAFFFFFDFDFFFFFBFFFFF8FFFFF8FF
          FFF9FFFFFAFFFFFDFFFFFFFFFAFFFCFAFFFBFFFFFCFFFEFFFFFBFFFFFAFFFFFA
          FFFFFDFFFFFFF9FFFFF5FFFFF5FFFFF8FFFFFFFDFDFFFFFCFFFDFEFFFDFFFCFD
          FFFBFFFFFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFDFFFFFEFFFFFFFEFFFFFBFFFFF7FFFFF7
          FFFFF9FFFFFCFFFEFFFFFEFFFFFFFFFFFFFFFFFEFFFDFEFFFDFFFFFDFFFFFDFF
          FFFDFFFEFDFFFEFDFFFFFFFEFFFFFEFFFFFDFFFFFEFFFFFFFFFFFFFCFFFFFBFF
          FFFEFFFBFFFDFCFFFFFFFBFFFFF5FFFFF2FFFFF7FFFEFFFFFBFFFFFAFFFFFBFF
          FFFFFEFFFFF9FFFFFBFFFFFFFFFAFFFFFAFFFFFEFFFDFFFCFFFFF9FFFFF8FFFF
          F7FFFFF8FFFFFBFFFFFCFFFFFCFFFFFEFFFFFEFFFFFCFFFFFCFFFFFCFFFFFBFF
          FFF9FFFFF8FFFFF9FFFFFEFFFDFFFFFDFFFFFDFFFFFEFFFFFFFEFFFFFCFFFFF9
          FFFFF9FFFFF9FFFFFBFFFFFEFFFEFFFFFEFFF5F7F7FBFFFFEDF0F4FAFCFFF3F6
          FFF7F5FFF3EBFFF8F2FFF7FBFFF0FBF1FAFFF2FBFFFBFBF6FFF5ECFFEFEEF8FD
          FFFBFAFFF7FAFFFBFDFCFFFFFBFFFFFFFCFFFFFBFFFDFFFFFCFFFDFEFFFAFFFB
          F8FFF0FAFFF1FDFFFFFFFBFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FCFFFFF7FFFFF9FFFFFFFEFFFFF8FFFFFCFFFEFFFFFAFFFFF9FFFFFCFFFFFBFF
          FFF9FFFFF6FFFFF4FFFFF7FFFFFFFFFFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFCFAF2FDFDF7F3F4F8B0AECC382C74EEE7FFEBF2FFF4
          FFFEF8FFFCFBFFFBFFFFF8FFFFF5FDFFF4FBFFF2F8FFF2F8FFF5FAFFF8FAFFFB
          FAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFF
          FBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFA
          FFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFB
          FAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFF
          FBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFA
          FFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFB
          FAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBFAFF
          FBFAFFFBFAFFFBFBFFFBFBFFF9FBFFF8FDFFF4FBFFF5FBFFF9FBFFFEFBFEFFFA
          FEFFF1F8F5FAFFF9F9FFF3F8FFF5F8FFFFF6FAFFEFE8FF7269A1433975CCC6FD
          F0EDFFF3F5FFDEE3FCEFEFFF3B2D7F7B66CC4B3699F6E8FFEFF2FFF1FAF0FDFF
          FBF9FCFAFFFDFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
          FFFEFFFFFCFFFFF8FFFFFAFFFFFFF5FFFFEEFFFFEEFFFFF8FFF9FFFFF8FFFFFE
          FFFFFFF9FFFFF5FFFFF4FFFFF4FFFFF5FFFFF9FFFFFCFFFFFFFFFDFFFFFCFFFF
          FCFFFFFDFFFFFEFFFDFFFEFDFFFCFDFFFEFDFFFFFDFEFFFDFFF9FFFFE9FFFFE4
          FFFFF0FFFFF8FFFEFFFFFCFFFFFBFFFFFBFFFFFCFFFFFCFFFFFDFFFFFDFFFFFE
          FFFFFEFEFFFEFEFFFEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFCFFFFFCFFFFFBFF
          FFFCFFFFFEFFFFFFFFFEFFFFFEFFFFFFFFFFFFFCFFFFF7FFFFF8FFFFFEFFFEFF
          FFFFFFFBFFFFFAFFFFF8FFFEFAFFFCFBFFFEFFFFFFFFFEFFFFFCFFFFFDFFFFFD
          FFFFFEFFFAFFFEFBFFFBFFFFFBFFFFFBFFFFFCFFFFFCFFFFFCFFFFFBFFFFFBFF
          FFFBFFFFFCFFFFFCFFFFFCFFFFFBFFFFFBFFFFFCFFFFFFFFFFFCFFFFF8FDFFFB
          FDFCFFFDF9FFFFF8FFFFFAFFFFFEFFFFFFF9FFFFF7FFFFF8FFFFFEFFFEFFFFFD
          FFFFFFFFFFFFF9FFFFF9FFFFFFFFFFFFFFFFF7FFFFF5FFFFF8FFFFFFFFF9FFFF
          F6FFFFF6FFFFF9FFFFFDFFFFFFFBFFFFF9FFFFF9FFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF9FDFFF0FDFFF2FFFEFFFFFDFFFFFFF9FFFFF0FFFFE6FF
          FFEAFFFFFCFFFBFFFFF9FFFFFAFFFFFFFEFFFFF7FFFFF8FFFFF8FFFFF9FDFFF9
          FBFFF8FAFFF9F8FFFFF8FEFFFBFBFFFFF9FFFFF6FFFFF6FFFFF5FFFFF8FFFFFB
          FFFFFFFEFAFFF7FAFFF8FFFEFFFFFAFFFFF8FFFFF6FFFFF6FFFFF9FFFFFDFFFD
          FFFCFFFFF7FDFFF2FDFFF2FBFFF4FDFFF7FBFFF8FBFFFBFDFFFCFFFFFEFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFAFF
          FFFBFFFFFDFFFFFFFEFFFFFBFFFFF9FFFFF8FFFFF8FFFFF8FFFFF7FFFFF8FFFF
          F9FFFFFCFFFCFFFFFCFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFCFDFFFFFDF9FFFBFAFF
          FDFFFEFDFFF7FDFFF4FDFFF5FDFFFCFDFEFFFFFBFFFFFBFFFFFDFFFFFFFFFFFF
          FEFFFEFFFFFAFFFFFBFFFFFFFEFFFFFBFFFFFBFFFFF9FDFFF8FDFFF7FDFFF7FD
          FFF7FFFFF9FDFFFBFFFFFBFFFFFBFFFFF9FFFFF9FFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFCFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFCFFFFFCFFFFFCFFFF
          FEFFFFFEFFFFFFFDFFFFFBFEFFF8F8FFEADEFFE5D2FFBDA6FFAE92FFA686FFB6
          9CFFEEE1FFF4F4FFF0FAFAE5F0E8EDEEFCFBFAFFFDFDFFF6FCF7FAFFF8FAFFFB
          FFFCFFFFFBFFFFFFFBFFFFF9FFFDFFFFFDFFFBFFFFFAFFFBF8FFF5FAFFF8FBFE
          FFFFFCFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFF7FFFFF8FF
          FFFFFBFFFFF4FFFFF2FFFFF5FFFFF9FFFFF9FFFFF7FFFFF9FDFEFFFDFBFFFDF8
          FFFDFAFFFDFFFFFDFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFEFFFFFBFFAEA9C93B2C76F3E9FFF3FAFFF6FFFCF7FFF8FAFFF4
          FEFFF1FEFFEDFCFFEBFAFFEAF8FFEAF7FFEEF9FFF6F9FFFAFBFFFAF9FFFAFBFF
          FAF9FFFAFBFFFAF9FFFAFAFEF9F8FEF9FAFEF9F8FEF9FAFEF9F8FEF9FAFEF9F8
          FEF9FBFFFAF9FFFAFBFFFAF9FFFAFBFFFAF9FFFAFBFFFAF9FFFAFBFFFAF9FFFA
          FBFFFAF9FFFAFBFFFAF9FFFAFBFFFAF9FFFAFAFEF9F8FEF9FAFEF9F8FEF9FAFE
          F9F8FEF9FAFEF9F8FEF9FBFFFAF9FFFAFBFFFAF9FFFAFBFFFAF9FFFAFBFFFAF9
          FFFAFAFEF9F8FEF9FAFEF9F8FEF9FAFEF9F8FEF9FAFEF9F8FEF9FBFFFAF9FFFA
          FBFFFAF9FFFAFBFFFAF9FFFAFBFFFAF9FFFAFAFEF9F8FEF9FAFEF9F8FEF9FAFE
          F9F8FEF9FAFEF9F8FEF9FBFFFAF9FFFAFBFFFAF9FFFAFBFFFAF9FFFAFBFFFAFB
          FFF9FBFFF7FBFFF3FBFFEEFBFFF0FBFDFDF9F9FFF9F4FFF9F7FFFBFFFCEFFCE6
          FAFFEDECF8E6FAFCFFF4EFFF7C6EAE3F3270E1DDFFEFF0FFF5F0FFF4EFFFDEDB
          FF2D285F675BA7EDDCFF2F1B7AEEDFFFE8E8FFF9FFFEFDFFFFFDFFFFFEFEFEFD
          FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFBFFFFFCFFFFFBFFFFFA
          FFFFFDFFFFFFF2FFFFEEFFFFF2FFFFFCFFF8FFFFF6FFFFFCFFFFFFFBFFFFF4FF
          FFF0FFFFF1FFFFF2FFFFF5FFFFF9FFFFFFFFFDFFFFFBFFFFFBFFFFFDFFFFFFFF
          FDFFF9FDFFF8FDFFFBFBFFFFFBFCFFFBFFFEFFFFE6FFFFE4FFFFF5FFFDFFFFFA
          FFFFFAFFFFFDFFFFFEFFFFFDFFFFFDFFFFFBFFFFFCFFFFFDFFFFFEFEFFFFFCFF
          FFFEFFFDFFFFFDFFFFFFFFFFFFFCFFFFFEFFFFFCFFFFFCFFFFFBFFFFFBFFFFFE
          FFFDFFFFFBFFFFFCFFFDFFFFFFFFF7FFFFF4FFFFF9FFFFFEFFFFFFFBFEFFF8FD
          FFF8FEFFFAFFFEFBFFFCFFFFFFFFFEFFFFFEFFFFFDFFFFFCFFFFFDFFFAFFFFFD
          FFFCFFFFFCFFFEFEFFFDFFFFFEFEFFFFF9FFFFF8FFFFF8FFFFFBFFFEFFFFFDFF
          FFFDFFFFFDFFFFFFFEFFFFFCFFFFFEFFFFFCFDFFF8FDFFFBFDFCFFFDFAFFFFF8
          FFFFF9FFFFFDFFFFFFFCFFFFF8FFFFF8FFFFFBFFFFFCFFFFFEFFFFFCFFFFF9FF
          FFFCFFFCFFFFFDFFFFFFFBFFFFF8FFFFFCFFFDFFFFF7FFFFF6FFFFF7FFFFFBFF
          FFFFFEFFFFFBFFFFFBFFFFFCFFFEFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFDFFF2FDFFF7FFFCFFFFFBFFFFFFFBFFFFF1FFFFEAFFFFF1FFFCFFFFF7FF
          FFF8FFFDFCFFFDFFF4FBFFEDFBFFF1FBFFF5FDFFFEFDFFFFFAFFF8F8FFF8F6FF
          FFF6FDFFFAFBFFFFF9FFFFF7FFFFF6FFFFF4FFFFF6FFFFFBFFFFFFFCFAFFF4FA
          FFF7FFFDFFFFF8FFFFF8FFFFF7FFFFF7FFFDF8FFFDFBFFFBFEFFFBFFFBFBFFF5
          FBFFF0FAFFF0FBFFF2FAFFF7FBFFFEFBFFFFFDFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFAFFFFF9FFFFFAFFFFFCFFFFFF
          FEFFFFF9FFFFF9FFFFF9FFFFFEFFFFFEFFFFF9FFFFF8FFFFF7FFFFFBFFFBFFFF
          FBFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFDFFFFFDFFFFFDFFFFFBFCFFFBF6FFFAF8FFFBFFFFFBFFF8FBFF
          F7FDFFF8FDFFFBFDFFFFFFFDFFFFFBFFFFFBFFFFFCFFFFFFFFFFFEFFFFFBFFFF
          FCFFFFFFFCFFFFF9FFFFFEFFFFFEFDFFFBFDFFF8FDFFF7FBFFF7FDFFF9FBFFFB
          FDFFFCFDFFFBFDFFF9FFFFF9FFFFFEFDFFFFFDFEFFFDFFFFFDFFF9FFFFF8FFFF
          FBFFFFFEFFFDFFFFFCFFFFFEFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFEFD
          FCFFEEEAFF8A7CC441259D2B079B2B069C3F1BB5320CAB320FA53015949C8BE6
          F0EEFFF6FBFFF3F7FFEBEFF4FDFFFFF6FCF7FAFFF8FAFFF9FFFDFFFFFCFFFFFF
          F9FFFFF8FFFEFFFFFEFFFBFFFEFAFFFCF8FFFFF8FFFFFBFCFFFFFCFFFFFFFCFF
          FFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFAFFFFFCFFFFFFF9FFFFF2FFFF
          F1FFFFF2FFFFF4FFFFF4FFFFF0FFFFF1FDFFF8FDFFFFFDFCFFFDFDFFFDFFFCFD
          FFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF9F0FAFEF4FF
          FFF8FFAAA0CE372479F4E5FFEBEDFFF3FAFDFBFFFFFFFFFCFFFFF9FFFFF5FFFF
          F4FFFFF4FDFFF4FDFFF8FDFFFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFD
          FCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFF
          FFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFC
          FFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFD
          FCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFF
          FFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFC
          FFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFD
          FCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFFFDFFFFFEFFFFFFFB
          FFFFF5FDFFFBFDF8FFFDF2FFFDF0FFFBF4FFFBFFFEEEF8E7FBFFF7FAFDFFF6EC
          FF7D6AB3240D61E6D9FFEEF3FCF6FDFFE8DEFFD2C3FF3B2F777E75B4F4EEFFED
          E5FF3F2C81F6E7FFF8F5FFFAFCFFF7F7FDF9FBFCFBFCFAFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFFAFFFFF9FFFFFBFFFFFCFFFFFDFFFFFFFCFFFFF4FF
          FFF2FDFFF9FDFCFFFDF5FFFDF4FFFDFAFFFDFFFFFFFFF4FFFFF0FFFFF1FFFFF2
          FFFFF4FFFFF8FFFFFFFFFCFFFFF9FFFFF9FFFFFCFFFFFFFEFDFFF7FDFFF4FBFF
          F8FAFFFFFAFBFFFAFCFFFBFFF5FDFFF7FBFAFFFBF6FFFBF7FFFBFBFFFBFFF9FD
          FFF2FDFFF4FFFFF8FFFFFFFFFDFFFFFCFFFFFCFFFFFBFFFFFAFFFFFBFFFFFDFF
          FFFFFEFFFFFCFFFFFEFFFFFEFDFFFCFDFFFBFDFFF9FDFFFEFDFBFFFDF9FFFDF8
          FFFBFDFFFDFFF7FDFFF1FFFFF5FFFFFBFDFFFFFAFCFFF6F9FFF6FAFFF8FFFFFB
          FFFBFFFFFFFFFEFFFFFFFCFFFEFFFFFBFFFFFBFFFBFFFFFDFFFBFFFFF8FFFFF9
          FFFDFFFFFBFFFFFDFFFFFEFFFFFFFFFFFEFFFFFBFFFDFBFFFDFCFFFBFEFFFBFF
          FEFBFFFFFBFEFFFBFEFFFBFFFBFBFFFBFDFDFFFDFAFFFFF9FFFFF9FFFFFBFFFF
          FEFFFFFFF9FFFFF8FFFFF8FFFFF9FFFFFCFFFFFEFFFFFEFFFDFFFFF9FFFDFAFF
          FDFEFFFDFFFFFDFCFFFDFAFFFDF7FFFDF9FFFFFDFFFFFFFEFFFFFBFFFFFBFFFE
          FFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFF8FDFFFC
          FFFAFFFFF9FFFFFEFFFFFFF9FFFFF8FFFEFFFDF5FFFDF4FFFDFAFFFBFFFBFAFF
          E9FAFFE4F8FFEEFAFFF9FBFBFFFBFBFFF8FFF9F6FFF8F4FFFFF4FCFFF8FBFFFB
          FBFFFFFBFFFFF9FFFFF5FFFFF6FFFFFBFFFFFFFCFBFFF5FBFFF7FFFDFFFFFBFF
          FFFCFFFFFCFFFDFCFFFBFCFFFBFBFFFAFCFFFAFFFFFAFFFEFAFFF8F8FFF7FAFF
          F9F8FFFEFAFDFFFAFCFFFDFFFFFFFFFCFFFFFCFFFFFCFFFFFCFFFFFBFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFAFFFFF9FFFFFAFFFFFCFFFDFFFFFDFFFCFDFFFEFD
          FEFFFFFBFFFFFBFFFFFDFFFFFFFCFFFFF8FFFFF9FFFDFFFFFCFFFFFFFFFFFFFC
          FFFFFEFFFFFFFFFEFFFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFDFFFFFDFEFFFBFE
          FFFAFDFFFAFCFFFAF9FFFAF5FFF8F6FFFAFEFFFAFFFCFAFFFCFBFFFCFBFFFBFB
          FFFCFDFFFFFDFCFFFFFAFFFFFBFFFFFFFFFFFFFFFFFCFFFFFDFFFFFFFCFFFFFB
          FFFEFFFFFEFFFDFFFFFBFFFCFBFFFBFAFFFBFBFFFFFAFFFFFBFFFFFBFFFCFBFF
          F9FDFFFCFDFCFFFDFAFFFBF9FFFBFCFFFBFFF9FDFFF4FDFFF7FDFFFCFFFCFFFF
          FBFFFFFCFFFFFDFFFFFFFFFFFFFFFDFEFFFDFFFFFDFFFCFBF7FF806CC52A0797
          3F0FCB3D0ECE3513AD381FA52C15993B1EAF330FB71F00984B359FD3CBFFF8F9
          FFF6FCFBF1F5F0FBFFF9FAFFF7FBFFF9FFFDFFFFFCFFFFFFF8FFFFF7FFFFFEFF
          FFFFFBFFFCF8FFFFF6FCFFF6FAFFFAFAFFFDFCFFFFFFFCFFFFF9FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFCFFFFF9FFFFF7FFFFF5FFFFF8FFFFF9FFFFF9FF
          FFF7FDFFF1FDFFF0FDFFF1FDFFF4FDFFF9FDFFF9FDFFF8FDFFF8FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFFFFF7FFFCF3FFBAADE13D28
          84F4E3FFE7E5FFF8FDFFFDFCFFFFFDFFFFFEFFFFFFFCFFFFFCFFFFFBFFFFFCFF
          FFFEFEFCFFFEFBFFFEFAFFFEFBFFFEFAFFFEFBFFFEFAFFFEFBFFFFFBFFFFFCFF
          FFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFEFAFFFEFBFFFEFAFFFEFBFFFEFA
          FFFEFBFFFEFAFFFEFBFFFEFAFFFEFBFFFEFAFFFEFBFFFEFAFFFEFBFFFEFAFFFE
          FBFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFEFAFFFEFBFF
          FEFAFFFEFBFFFEFAFFFEFBFFFEFAFFFEFBFFFFFBFFFFFCFFFFFBFFFFFCFFFFFB
          FFFFFCFFFFFBFFFFFCFFFEFAFFFEFBFFFEFAFFFEFBFFFEFAFFFEFBFFFEFAFFFE
          FBFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFEFAFFFEFBFF
          FEFAFFFEFBFFFEFAFFFEFBFFFEFAFFFEFBFFFEFDFFFEFFFDFEFFFAFEFEFEFCF7
          FFFCF4FFFCF3FFFCF6FFFBFFFEFBFFFCF5F5FFFBF1FF725FA8422B80E2CEFFF8
          ECFFF6F8FFF8FBFFE4D5FF38257A7265A9EFEAFFF4F6FFECE9FF372479EFDDFF
          F8F0FFF8FAFFF8F8FEFDFFFFFCFEF8FCFEF8FFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFF9FFFFF8FFFFFAFFFFFDFFFFFFFFFDFFFBFBFFF8FAFFFCF8FEFFF8F9FF
          F8F4FFF8F4FFF8F9FFF8FEFFFAFFF7FBFFF2FDFFF5FDFFF7FDFFF7FFFFF8FFFF
          FEFFFCFFFFF8FFFFF8FFFFFBFFFFFFFEFDFFF4FBFFF1FBFFF5FAFFFEF8FAFFF8
          FAFFF8FFFFF8FEFFF8F3FFF6F0FFF6F3FFF6FAFFF6FFFBF6FFF2F8FFF7FAFFFB
          FBFEFFFDFCFFFFFEFFFFFFFFFFFEFFFFFDFFFFFCFFFFFDFFFFFFFCFFFFFBFFFF
          FEFFFFFFFDFFFEFDFFFBFDFFF9FDFFFFFDF9FFFBF5FFFBF4FFFBF9FFFBFFF8FB
          FFF0FFFFF4FFFFFBFBFEFFF8F9FFF6F3FFF4F6FFF8FFFFFBFFFBFFFEFFFFFEFF
          FFFFFBFFFFFCFFFBFFFFFBFFFBFFFFFDFFFBFFFFF9FFFFFCFFFCFFFFFBFFFFFC
          FFFDFCFFFBFCFFFAFCFFF8F9FFF8F9FFF6FBFFF6FDFFF6FFFFF6FFFFF8FFFFF8
          FFFFFAFFFBFBFFFCFDFEFFFDFBFFFFF9FFFFF9FFFFFBFFFFFDFFFFFFFBFFFFF8
          FFFFF7FFFFF8FFFFFCFFFEFFFFFCFFFFF9FFFBF7FFFAF8FFFAFCFFF8FDFFF8FA
          FFF8F9FFF8FAFFF8FEFFFAFFF8FBFFF4FBFFF7FDFFFCFFFBFFFFFAFFFFFCFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFDFEFFFFF9FFFFFAFFFFFE
          FFFFFFFFFFFEFFFFF9FFFDF2FFFDF4FFFBFDFFFAFFF5F8FFE9F6FFEBF4FFFFF6
          FAFFFBF5FFFBF9FFF8FFFBF4FFF8F3FEFFF3FCFFF6FCFFFAFEFFFFFFFEFFFEFF
          FFF8FFFFF8FFFFFBFFFFFFFEFBFFF9FBFFF8FFFFFCFFFFFCFFFFFCFDFFFCFBFF
          FCFAFFFFFAFFFFF8FEFFF6FDFFF6FCFFF6FCFFF6FCFFF6FCFFF8FBFFF8FBFFFA
          FCFFFDFFFFFFFFFEFFFFFEFFFFFCFFFFFCFFFFFBFFFFFBFFFFFBFFFFFCFFFFFC
          FFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FEFFFDFBFFFBFBFFFBFBFFFAFDFFFAFFFFF8FFFFF8FEFFF8FBFFFAF8FFFAF7FF
          FBFAFFFDFCFFFFFFFFFFFFFEFFFDFFFFFDFFFFFFFEFFFFFBFFFFFEFFFFFFFFFE
          FFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFFFDFFFFFBFDFFFAFBFFF8F9FFF6F7FFF6
          F6FFF6F4FFF6F7FFF6FEFFF8FFFFF8FEFFFAFFFFFAFFFBFBFFF9FBFFFCFDFEFF
          FFFAFFFFFBFFFFFFFEFFFFFCFFFDFFFFFDFFFFFFFCFFFFFEFFFCFFFDFCFFFBFE
          FFFAFFFFFAFFFFF8FEFFF8FAFFF8FAFFF8FEFFFAFFFEFAFFF9FBFFFFFBF9FFFB
          F4FFFAF2FFFAF7FFFAFFFCFBFFF1FBFFF4FDFFF9FFFBFFFFF9FFFFFBFFFFFDFF
          FFFEFFFFFEFFFDFDFFFDFEFFFDFFFCFAF8FFEEDEFF3B1EAA2900B9310ABE6855
          CE928AE7706BC75A48C33F17CD2F03C13C1CA9A08EE7EFECFFF9FDFEFDFFFEFC
          FFFAFBFFF7FBFFF9FFFDFFFFFDFFFFFFF8FFFFF5FFFFFCFFFFFFFBFFFBF8FEFF
          F6F5FFF4F3FFF8F7FFFBFBFFFFFFFCFFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFCFDFFF7FDFFF7FDFFFCFDFEFFFDFAFFFDFAFFFDFAFFFDFDFFFDFFFBFDFFF4
          FDFFF0FDFFF0FDFFF2FDFFF5FDFFF8FDFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFFAFFFFF7FFFFF5FFB5A9DD3D2885F0DEFFF6F2FFF7
          FAFFFDFAFFFFFAFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFCFFFFFEFFFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFEF7F8F6FFFEFFFCFBFDFDFFFFF3F6F4FDFFF7FC
          FFF4FBFFFBECEBFBFBECFF7761B0472F87E0CCFFF1E8FFFAF5FFFAF3FFEAE0FF
          3F2E71796CAAF5F2FFF5FAFFEDF4FDF1EFFF3A2483F4DDFFF7EFFFFAFDFFFAFD
          FBFCFFF8FFFFF8FFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF6FFFFF7FF
          FAF7FFFAFDFFF2FCF6F6FFFCF1FDFFF3FCFFEEF5FFE8EDFFF1F5FFF1F6FFF3FA
          FFEBF7FDF4FFFBF5FFF7F0F5F6F7FAFEFBFFFCFDFFFBF9FAF8FFFDFFFFF9FFF8
          EFFFFFFBFFFFFFFEFDFFF2FBFFEEFBFFF2F9FFFBF7F9FFF5F8FFEDF9FFF1FBFF
          F1EEFFDDD6FFEFEEFFE8EEFFEDFCFFEFFFFFEEFAFFF3FBFFEFF4FFF3F9FFF1FA
          F0FBFFF1FDFFEEFAFFEDFFFEFFFFFDFFFFFFFBFFFFF9FFFFFFFFFEFFFDFFFEFD
          FFFCFAFFF8F8FCFDF7F2FFFAF0FFF4E7FFF4EDFFFAFFFCF9FFF0FEFFF4FDFFFC
          ECEDFBF6F5FFECE5FFECE8FFF8FCFFF6FDF8FFFEFFFFFEFFFFFFF8FFFFFBFFFA
          FFFFF9FFFBFFFFFBFFFEF2F1F5FFFDFFF2EFF8FAF9FFFAFCFFF8FCFFF1F5FFF3
          F9FFEDF2FFF1F6FFECF2FFF1FAFFF1FEFFEDFEFBEFFFF5EEFFF1F7FFF8FAFFFB
          FCFEFFFDFCFFFFFAFFFFF9FFFFFAFFFFFCFFFFFFFCFFFFF5FFFFF5FAF9EFFAF8
          F8FFFBFFECE3FEFBF4FFF4F2FFF2F6FFF1F8FFF3FCFFF3F9FFEAF1FFF1FDFFF1
          FFFCEBFFE3F4FFE9F2FFECFAFFFEFBF9FFF6F0FFFFFBFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFCFFFDFCFFFFFBFFFFFDFFFFFFFFFFFFFFFFFBFFFF
          F6FFFBF1FFF5F0FFFAFFFEF8FFF4E6F9E6F3FFFFF1EEFFE9DEFFFAEDFFEFECFF
          F3FFF6F1FFF5EDF9FFEAF4FFF3FEFFEFFBF5FDFFF1FFFFF2FFFDFFFFFAFFFFFC
          FFFFFEFFFDFFFFFDFFFBFFFFF1FFFFEEFFFFF2F9FFF1F1FBEBFAFFF7EEFCF0EF
          FDF9F3FDFFE5E9FFF1EEFFF4EFFFF2EFFFEFEDFFF6FAFFF8FEFFFAFCFDFBFBFB
          FFFFFFFFFFFEFAFBF7FFFFFCF9FBF5FFFFFBFFFFFBFFFFFCFFFFFEFFFFFEFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFEFFF8FEFF
          F6FEFFF1FAFEF2FEFFF3FFFFF0F9FFECF3FFF2F6FFEDEFFFF4F6FFF1F3FFF7FA
          FFF5F7FFFAFDFFFDFFFFFFFFFCFFFFFBFFFFFEFFFFFFFFFEFFFFFDFFFFFEFFFF
          FFFFFFFFFFF0F2F2FBFEFFF9FAFFF6F8FFF4F5FFE9E8FFF3F2FFF4F5FFF4FAFF
          E6F2F4E5EEF1F6FBFFF7FAFFEAF3F0FAFFF7FBFFF7FBFFFCFDFBFFFDFBFFFFFF
          FBFFFFF8FFFEFFFFFDFFFFFFFEFFFEFFFBF7FFF8F5FFF9F9FFFAFCFFF8F9FFF6
          F6FFEEEAFFF6F3FFF3F7FFF8FFFFF2FDF5F7FCFFFBF3FFEFE2FFF8EBFFF6F2FF
          F8FFFFFAFFF1F6FFECFDFFF8FEFAFFFFF8FFFFFAFFFFFDFFFFFEFFFFFEFFFDFC
          FFFDFDFFFBFFFBF8FFFFF1F8FF9A99DB5F50C3D1C6FFE1E9FFE6F8FFDDEAFFE6
          E4FF6042E9370DCA4020B56752B8F8F2FFF4F6FEF8F6FCFFFFFFFBFFF9FBFFFB
          FFFDFFFFFDFFFFFFF7FFFFF5FFFFFCFFFFFFF9FFF9F6FCFFF1EBFFEAE2FFF8F4
          FFF0F0FFFBFDFDFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFAFEF9FBFFF8FAFFFE
          F1EFFFF0E8FFFBEEFFF9EAFFF1E5FFFBF3FFF4F2FFF5F9FAF9FFF3F4FFEAFDFF
          F1FDFFF5EFF2F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFBFFFFFAFFFDF7FFB5ABDA3D2A81F0E0FFF6F4FFF7FBFFFDFBFFFFFAFF
          FFFAFFFFFAFFFFF9FFFFF9FFFFF9FFFFFBFFFFFFFFFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBF5F6F2FFFFFFFFFCFFFDFEFFEFF6E9FDFFEEFDFFE9EDFAE2F6F7FFF8EEFF
          846EBC4E368EEAD6FFFAECFFFAF5FFF5F0FFE1D1FF433174B6A7E0FAF2FFF1F3
          FEF0F8F7EFF6F9F6F5FF3A2483F6DEFFF7F2FFFAFFFEF8FEF9FCFFFAFFFFF9FF
          FFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFCF6FFFDFAFFF7FAFFF8FFFFF3FF
          FDEEFAFFB1B7DA9798D2AAA6F2B3ADFFA8A4EF9D9BE1A39FE6B5B4F4E5E4FFED
          EDFFF6F2FFF6F5FFF0F3FBFBFFFEF9FDF8FFFEFFF5EEFDFFF8FFFFFAFFFFFFFF
          FFFFF2FDFFEEFBFFF1F9FFFAF7F9FFF3F5FFEFF7FFE5E9FFABA3FA8075DB645C
          B96865B5AEB0F0DEE1FFC9C6FF7871C26A64ABCBC9F7F4FFFFF1FFEAF7FFE7FB
          FFEDFFFFFEFFFDFFFFFFF9FFFFF9FFFFFFFFFEFFFDFFFFFDFFFEF6FDF6F7FAFF
          E3DBFFBBABEBB09DE6C8BEF3F6FDFFF7FFF1FCFFF6FDFFFFF5F2FFBBB4E7AC9E
          ECA79EE1F6FAFFF1F7F6FFFDFFFFFEFFFFFFF7FFFFF9FFF9FFFFF9FFFBFFFFFB
          FFFEFDFCFFF1F1FDFBFEFFF2F9FCEFF5FFE8EDFFF0F1FFDFDFFFA9A6EE706ABB
          6B64B95F58A96B68ADAFB0E3DEE6FFF1FDFFF7FFFFF9FFFDFCFEFEFDFDFFFFFB
          FFFFFAFFFFFAFFFFFBFFFCF7F6FFFFF8FFFFF5FEFFF6FFFCFFF4EDFFFBEFFFDE
          D0FFC6B7FF887CCE6F6AAF7A76B75F5BA3B0ADF2DFE3FFE8F6FFEFFFF8ECFFE9
          F0FFF2F6FFFFF9F7FFF9F5FFFDFDFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFDFAFFFDFBFFFFFEFFFFFFFCFFFFF8FFFFFCFFFBFFFFF8FFFDF7FFF0F0FE
          F7FFFAE3F0E8F3FCFFE3E3FFD1BEFF694DD66546B9826EC19A98C2D1D4FABDB9
          FBACA6ED9D9DCDF4F9FFFBFFF7FFFFF2FFFEFFFFFCFFFFFEFFFFFFFFFDFFFFFD
          FFFBF6FCE5FFFFEDF6FEE7F3FCE8FAFFF7EFF9F3EFF9FFF3F7FFE7E4FFB0A7F7
          806ED35F48B56E59C07F6DC6958ACEE9E2FFFDF9FFFFFEFFFCFBFDFCFCFCFAFB
          F9FFFFFCF8F9F5FFFFFBFFFFFBFFFFFBFFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFFEF6FFFFDDE7EEF3FAFFEBEE
          FFC5C5FB7975BC7069BA6E65BC7066C08F83DBE4DAFFF3EDFFEFF0FFF3FBFFF8
          FFF9FDFFFBFFFFFBFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFFFEF5F3F2FDFFFF
          FBFCFFEBECFFF0EFFFEBE7FFB9B1F76861AC6A60AC594F95C3BDF6F4ECFFE0D2
          FF64569E76739AD6D8EAFAFEFFFBFEFFFDF9FFFDFBFFFFFFF7FFFFF1FFFFF9FF
          FFFEFFFAFBFFFDFFFFFAFFF8F4FFFBFBFFF8F9FFD4D1F8A09AD1A99DE5CBC2FF
          EFF2FFF6FFFFF2FFF5F8FEFFFAEDFFBAA4F6A896F1B1A7E9F4FBFFF8FFF1FAFF
          F0FDFFF7FAF6FFFEF5FFFFFAFFFFFDFFFFFFFFFFFEFFFFFBFFFDFDFFFBFFFBF6
          FFFEE4F1FFEAF0FFA69CFFABA2FFA8AFF48997CCC7CDFFACA6FF5032DF2400B6
          240793705EBBEBE6FFFBFDFFFFFDFFFFFFFEFBFFF9FBFFFBFFFDFFFFFDFFFFFF
          F7FFFFF5FFFFFEFFFFFFF3FAF5F6FAFFAC9FE9AA9BEFBAB4E5FAF8FFFDFDFFFF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFAFCFCE7EEF1F6FAFFE6DEFFD0BCFF664B
          B37254C59376E3573C9C9B87D2E0D4FFF8F5FFF7FAFEFDFFFCFBFFFAFDFDFFF6
          F5FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFF
          FDFCFFB3AFD23B2E7AF0E4FFF6F8FFF7FFFFFDFEFFFFFDFFFFFCFFFFFCFFFFFB
          FFFFFAFFFFFAFFFFFCFFFFFFFEFFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FF
          FFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9
          FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFF
          F9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FF
          FFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9
          FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFF
          F9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FF
          FFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFFBFFFFFCFCFEFF
          FDFBFFFDFEFFF6FFE9FBFFE7E7F6D6FBFFFCFBF0FF816EB736226FF3E2FFFAF2
          FFF6F3FFF0E9FFE9DAFF432D7C7864ACF5ECFFF0F0FFF6FBFEF8FFFFF4F9FFF5
          F0FF3C267EF6E5FFF7FAFFFAFFF2F8FDFCFCFDFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFBFDFEFBFFFFF5FFF8F6FFFCF3FFFFE4EBFF7A71CB37
          22A61A009E3417C0371CB93C21BE2C0BB42200B03D14CE4B27C7C2ADFFF4EEFF
          F3F4FFF8FEFFEDF3EEFDFFFEF9F5FFFFF9FFFFF9FFFFFDFFFFFFF4FFFFEEFBFF
          F1F9FFF8F7FAFFF3F2FFE7E6FF6B62C327139C1D05A12F17B11C079F2F1BB03D
          25C5411FD82A05BF2203A09582F1E2E1FFEEFAFAF8FFF1E6F3DBFFFFFEFFFEFF
          FFFFF8FFFFF8FFFEFFFFFDFFFDFEFFFDFFFFFBFFFCF3F4FFB6A9E1422E813C24
          837B6DB5EFF4FFF8FFF8FBFFFBFBFCFFE4DFFF3D32763D288F42328AF1F1FFF9
          FEFFFFFBFFFFFDFFFFFFF5FFFFF8FFF9FFFFF8FFFDFFFFFBFFFEFAFCFFEEF4FB
          F3FEF6F4FFFEF1FBFFEDF1FF9188E2402FA8351EAE120098421CD2320AC72C04
          BA3D1BBC422AA8A99EEEF7F6FFF9FFFDFCFEFEFDFFFFFFFDFFFFFBFFFFFAFFFF
          FBFFFFFDFCFFFFF9F8FCF0FDFFFEFBF9FFEDE6FFECDDFF7F63DA2400A9390BCF
          2804AF300EB24221C92E10AF25119AB0A9FFECF4FFE6F8FFF1FFFFF4FFFFF4F5
          FFFAFBFFFDFFF9F8FFEFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFAFFFDFCFF
          FFFFF9FFFFF1FFFFF0FFFFF4FFFFFEFFFEFFF9FBFCFAFFFFF6FFFCF3FCFFEFEC
          FF513FB42000B03804DA3D00D54209C92200923011A22B03B6320DBB30159BEC
          DDFFFAF7FFFDFFFFFFFCFFFFFCFFFFFFFBFFFFF8FDFFF9FFFFF9FFFFF9F8F9EF
          FFFFF4FBFFF7F8FFFFECEEFFF3EBFFBFAEFF270B9A3612BA2C00B73205C03D10
          C43206B1380FB14829A2D5C9F9F9F5FFF2EFF8FFFEFFFFFEFFFFFFFFF5F6F2FD
          FEFAFFFFFBFFFFFBFFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFFFEFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFBEAF8E6F5FFF7F4FCFFF1F0FF402F962A0EA12A05B934
          09CE2500C12A00C32F08C23B19BE7159D7EBE1FFF3FDFFF4FFF2FBFFF8FFFFFC
          FFFFFFFFFEFFFFFDFFFFFEFFFFFFFEFFFFFCFFFFFCEEF0F0EEEFFDF6F6FFF3EE
          FF6B64AF4A3E9E2F1A953F1ABC3409B83C14BA3A0EB93602C44616C83C1C9985
          72C3FAF0FFFBF5FFFDF4FFFDFAFFFFFFF1FFFFE7FFFFF0FFFFF7FEFAF9FFFCFF
          FFFAFFF5F2FFFAFAFFF8F6FFB0A8E44A3B8F38238A7F6FC7E9EAFFF4FFFFF6FF
          F7F8FEFFE0CEFF4C309B361B93473893DDE2F7F3FFF1FAFFF0FDFFF5FFFBFFFF
          F8FFFFFBFFFFFEFFFFFFFEFFFEFFFFFBFFFDFCFFFBFFFBF6FEFFEFF0FF0C0169
          2509A92B09C13920C81701A7351AC83213CC3009D02A06B64630A6C0B5F9EEEB
          FFFAFCFDFFFDF8F0F2E6FDFFF8FDFFFCFFFCFFFFFCFFFFFFF8FFFFF7FFFEFFFF
          FEFFFAFFFFEBEEFF4633943B24903D3271E9E7FFF7F7FFFDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFDFDFDF8FAFFF4F7FFDBD7FF523EA82A07974518C53703C22400AF4F
          1CD13607AA340D919076D0FBECFFECE5FFFCF9FFFFF9FFF6F1FFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFCFBFEFFB1B2CE3B30
          74EFE7FFF4FBFFF7FFFAFBFFFCFFFFFEFFFEFEFFFEFEFFFDFFFFFDFFFFFBFFFF
          FDFFFFFFFFFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFEFDFFFFF1F4F8FDFAFFF3F5FDF9FF
          F3FAFFF0FBFFFBE9E6FF69569F3E267EEBD9FFF3ECFFF8FAFFEAEDFFD1C5FF45
          33807C64B2F4E2FFFAF4FFFBFEFFF5F8FDF5F8FFF8FBFFE9E5FF3C2A77F6E9FF
          F7FFF8FAFFEEF8FBFFFAFAFFFDFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFFFFFBFFFCF9FFF7F4FFF7F3FFFFE7EDFF6D5DD31F01A83F1ADC2100BE
          1D02A53116B33211BF3209C92D00CF3F12D331159EF1E4FFD9D8FFE9EFFCFAFF
          FBF8FDF4FFFDFFF9F2FFFFF9FFFFFCFFFFFFF7FFFFF0FDFFF1FAFFF7F9FBFFF3
          F0FFBDB2FF301E9F371EBC1B01A93B26C32914B02511B02508BB2800D53004DB
          2B05BBE6CEFFF3F0FFF4FFFFF8FFF4FBFFF2FFFFFEFFFFFFFFFFF7FFFFF7FFFE
          FFFFFCFFFDFCFFFBFEFFF4FAF9F5F4FFB9AAEE30187C33168B705BB7F5F6FFF1
          FCF9F3F8F9FAF9FFF6EDFF2D1C733418942E1986F4F3FFF5FAFFFDFAFFFFFCFF
          FFFFF4FFFFF5FFF9FFFFF8FFFDFFFFFBFFFBF4F9FCF8FFFFF4FFF6F3FFFFE4E7
          FFA39CF12E1A9B1E059D3018B2280BAE2E0CBE1E00B33D12D13007B634169FF2
          E2FFF7F5FFF9FFFEFCFFFDFDFFFEFFFEFFFFFDFFFFFBFFFFFCFFFFFFFEFCFCF6
          F8FDF4FAFFFFF5F3FFF4EBFF7F6DD22F10A13C0CD03A09D53F1AC82102A53511
          C32603B72E0DBB28149DB7B6FFECF7FFF1FEFFF2FEFFF8FBFFF8FAFFFDFFF8F9
          FFEEFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFDFAFFFBFDFFFFFFF4FFFFEDFFFF
          EEFFFFF4FFFFFBFFFFFCFDFFF8EAF3E9ECF4FBDFE0FF4F41A72B0EAB2A00D135
          00E63300D14109CC461FBB300CAC3504D43A0BDD3410B6E7D3FFF8F4FFFDFFFF
          FFFCFFFFFDFFFFFFF9FFFFF7FFFFF9FFFEFFFFF8FFF6EEFFFEFFFBFBFFFBEBF1
          F8F0EDFFC4B2FF482BBE421AD01F00B63910CA3912C22300A2360FB1380FB82D
          0A90E6D7FFFFF9FFF9F5FFFFFCFFFDFBFFFCFBFDF7F8F6FFFFFCFFFFFCFFFFFC
          FFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFBFAFFF1F6FFF3F6FDFFEFECFF3C28992C0CAB3209C82800CA3009D0320BD2
          2900CC2D03C64220C47767D2E2EDFFF3FFF4FBFFF9FFFFFEFFFEFFFFFEFFFFFD
          FFFFFEFFFFFFFBFFFFF9FFFFF9F0F2F2FAFAFFEDECFFBEB6FC25187A22108B31
          17AA2703AB340ABD3205B93705C73D00E03500CF330DA3F6DFFFF8EEFFFAF5FF
          FBF4FFFDFAFFFFFFEEFFFFE6FFFFF1FFFFF9FFFEFFFFFCFFFFFCFFF3F2FCF9FB
          FFF6F5FFA79BE72F1A873013986F59C9ECEDFFEEFCFBF0FFEEF5FDFFEDD9FF36
          1497300DA3331E92F3F5FFF6FFF7FAFFF0FDFFF5FEFAFFFFF8FFFFFCFFFFFFFE
          FFFFFCFFFFFFFFFBFFFBFCFFFBFFFBF6FCFFDCDAFF4839B33313C51E00C22400
          C8310FD81300BD2703CC1300AE3A1FB56A5EB8E6E3FFF8F6FFFAF7F9FFFFFBFF
          FFF7FDFFF8FDFFFCFFFCFFFFFCFFFFFFF8FFFFF8FFFEFFFDFDFFF6FEFEEFEEFF
          33198F3014962B1E6AF6F2FFF6F5FFF6F8FFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF7
          F6FFE6E4FF3C32963F26B02C09AD3C14C73206BD3105B63609B33D12AF411CA0
          CBB1FFF3E4FFF2EAFFFDFAFFF4EDFFFFF9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFBFDFFFCFAFFFFAFB3CC3A3273EDE8FFF3FCFFF5
          FFF7FBFFF9FFFFF9FFFFF9FFFFF9FFFFFCFFFFFEFFFEFFFFFEFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFF8FBFFFAFEFFFBFBFFFAFBFFF2F5FDF3F3FFFAF2FF68
          5A9A462F8BD5C0FFF0E7FFF6F7FFEDF3FEE3E5FF3E2D7E6E58B0F3E3FFFFF6FF
          FDFBFFFBFDFFF2F0FFF9F7FFF6F9FFF6F4FF3C2D71F6EBFFF7FFF6FAFFF1F8F7
          FFFAF6FFFDFDFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFEFF
          FBFFF9F4FFF4F2FFFCEDF1FF7562DB2C0EB3290AB9553ED6CBC5FFD6D8FF9C97
          EC695BC52C129B27099E381BAE231085EFECFFF3FAFFDCE7DFFBFFF5FAFAFAFF
          F9FFFFF9FFFFFBFFFFFFF9FFFFF2FFFFF1FCFFF6FAFCFFF5EFFF6D5DC813008B
          2910A66D5BE4D2CEFFE3E5FFB5B6FF3A33A6280FB32909B42B119FF1E2FFF4F8
          FFEFFCECE7F4DCFDFFF2FFFFFEFFFFFEFFFFF4FFFFF5FFFEFFFFFBFFFDFCFFFB
          FDFFF7FCFFF8F4FFBDA9FC3A1C934622AA745BC9F4F3FFF2FAFFF5F7FFF8F6FF
          F6EAFF3C278E3E1DAE3A1F9EF4EFFFF8FBFFFDF8FFFFFBFFFFFFF2FFFFF4FFF9
          FFFFF7FFFDFFFEFBFFF7F9FFF8F8FFFBF6FFFBEBF1FFE3D8FF2F189C290AAB47
          2EC62920889696E4E7E3FFEDE6FFD1C2FF6D5CB759518DECEBFFF7FBFFF9FFFE
          FCFFFAFDFFFBFFFFFCFFFEFFFFFCFFFFFCFFFFFFFEF5F6F2FBFFFBF8FDFFF2F1
          FFC8BEFF3822A3280C9F3C21A77260CBD3D0FFECEBFFA69CFF3722A6391BBA27
          0E9E665FB4EDF4FFF3FFFFEEFBF3FBFEFFF6F4FAFFFFFFFEFDF9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFEFFFDFBFFFBFEFFFFFFF2FFFFEDFFFFF4FFFFF9FFFFFEFF
          FFFCFAFFEFFAFFFBF4F7FFBFB5FF230B934120CF1A00BA2B08BDCFAFFFD9C3FF
          E1D9FF978EE42D0FAE2804B62F14A4E6DAFFF6FAFFFBFFF7FFFFFEFFFFFEFFFF
          F8FFFFF9FFFEFFFFF6FFF8E3FFFFEEFFF8F4FFE8EDECF6FCFFF3EFFF553FB51F
          009E3511C12F10B1BDAFFFE3DEFFE1E2FFEDEBFF9A8EE09285D1EEE4FFFFF7FF
          F5EFFFFFFAFFFDFAFFFFFEFFF8F8F8FFFFFEFFFFFCFFFFFCFFFFFEFFFFFEFFFE
          FFFFFEFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEAEEE3F7FDF2
          FAFFFCF5F6FF8C84C5392C884537A0A39AFFDAD8FFAAA3FF3922B41D00A5401C
          C730189AE8ECFFF3FFFEFBFFFFFFFFFFFFFEFFFFFEFFFFFDFFFFFEFEFFFFF9FF
          FFF7F9F8EEF9FBFBFAF8FFE5E1FF7E73C93522992B12A8705AE8ECE1FFEDE7FF
          CDC0FF341C9A3508BC2A00AC4C31A6D7CBFFF8F7FFFAFCFFFBF9FFFDFCFFFFFF
          F0FFFFEDFFFFFEFFFCFFFFFCFFFFFDFFFFFFFFFBFDFDF7FDFFF3F3FFAA9BF739
          1EA3401CBC6F55D7EFF0FFF1FFFEF2FFEBF6FFFFF8E0FF3C13AA3B11C23318A4
          F1F1FFF4FFFBF6FFEEF8FFF1FFFBFFFFF8FFFFFDFFFFFFFBFFFFF9FFFFFEFFFB
          FFFBFBFFFBFFFCF6FCFFE7E6FF1E13813119B3280EB8DCC7FF8876FF9C89FFA2
          8FFFAF9DFFDFD2FFE4E1FFF6F5FFFDF7FFFFF7FFFFFBFFFFFFFEFFFFFBFDFFFE
          FFFBFFFFFBFFFFFFF9FFFFF9FFFCFFFDFCFFF8FEFFF0EEFF3E20A93C19B03B29
          84F6F0FFFAF6FFF9F9FFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF5F1FF8072DC2613A6
          250DA91200909C8BFFEBE0FFE7E3FFEDE9FFC6BEFA4F497AE8E3FFFBFAFFFDFF
          FFE5E7E8FFF9FFFFF8FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFBFFFFF8FEFFAFB1CF383076EBE8FFF1FCFFF3FFF8FAFFF9FFFFF9
          FFFFF8FFFFF8FFFFFBFFFFFCFFFFFFFFFEFFFFFDFFFFFDFFFFFCFFFFFDFFFFFC
          FFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFF
          FDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFF
          FFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFC
          FFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFF
          FDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFF
          FFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFC
          FFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFF
          FDFFEFF3F4FAFFFFFAFDFFFAFAFFFAF6FFF8F1FF8779BB4A3786E6D3FFF1E4FF
          F4EFFFEFF1FFE0E2FF2A27547D71B9F8E9FFEFE8FFFFFDFFFEFDFFDFDFE5FBFA
          FFFAFBFFF6FBFCF8F9FF3C2A77F6E6FFF7FAFFFAFFF8F8F6FFFAF6FFFDFEFFFD
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFFFF8FFFFFFF9F9FFF5F3FF
          F9EFEEFF7059D9310FBA2B0BB65E4CCFEAF0FFEAFBFFEAF5FFE9EAFFA494F23B
          21A32E0FB0280F9FB3ADFCEDF3FFF6FFF9EEFAE4FFFFFCFFFBFFFFF8FFFFF9FF
          FFFFFCFFFFF5FFFFF1FEFFF4FCFDFFF7EEFF6E56D24B2CC7341AADBFB2FFE6EC
          FFE4F4FFDFEEFF8F93E12110973E24B8654DC9E6DAFFF2F5FFFBFFF2FDFFF2F7
          FBEFFFFFFEFFFFFCFFFFF2FFFFF4FFFEFFFDFBFFFDFAFFFBFBFFFAFDFFF3EFFF
          A994F12E0B913811A96749C6F4EFFFF5FAFFF8F9FFF8F3FFE2D2FF33198F2C05
          A73515A2ECE6FFF8F9FFFDF7FFFFFBFFFFFFF1FFFFF2FFF8FFFFF7FFFDFFFCFB
          FFF5FBFFF7F1FAF0F0FDF5F4F5FFB9A2FF2F0CB04219D2180098BCBAFFDFEAFF
          E9F8FFF1FAFFF3F0FFDFDBFFF4F6FFFAFFFCF9FEFFFAFEFFFCFFFAFDFFF8FFFF
          FBFFFFFEFFFDFFFFFDFFF9FAF8FDFFFCF8FFFEEDF4FFEFEFFF6458BC2A11A736
          1BB14F40A2F1F0FFF1FFFFEDFFFFEBEEFFB2A4FF3412B63513B8301F8EE2DEFF
          F4FEFFF0FDEDFFFFFBFAF5F6FFFDFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFCFFFBFFFFFFFFF2FFFFF1FFFFFEFFFDFFFFFBFFFFFEFFF6FEEDFAFFFF
          EBE7FF5A4AAF371BB52508B7210BAAD9CBFFEAE2FFF4F6FFF1FDFFEDF3FF2C16
          9E2C0DB62A12A0E8DDFFF4FBFFFAFFF4FFFFFBFFFFFCFFFFF8FFFFFBFFFCFFFF
          F5FFFFE8FFFFEEFFFBF7FFFBFFFFF6FAFFE0DBFF2C14963414B92F0FBAB9A2FF
          EAE6FFEAF4FFECFCFFE5F2FFE5E4FFE6DEFFFBF2FFFCF3FFFFF7FFFDF7FFFFFB
          FFFFFCFFFCFBFDF9F9F9FFFFFEFFFFFCFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFF5F4F9F8DDDB
          FFB2AEE2C7CBFCEAF5FFDEF2FFE8F4FFE6DBFF3618B72100B12809A0BEBCF7F1
          FAFFFDFEFFFFFEFFFFFDFFFFFDFFFFFEFFFFFFFCFFFFF7FFFFF5FFFFF7F7F9FA
          EBE8FFF3EDFF5D4FB4311AA4280BB5CBB4FFECF0FFE2F0FFEFF2FFA397F13F1A
          B62F09A9745FC6F4EEFFF6FCFFF8FFFEFBFBFFFBFEFFFFFFF0FFFFF1FFFBFFFF
          F8FFFFFBFFFBF7F6FFFFF8FDFFF8F8FFFFF0F0FFAB97FF3D1CB32F07BA6043D4
          EFF0FFEFFFFBF3FFE7F2FFFDEFD7FF2E02A92B00C02806A7EBE9FFEFFDFBF5FF
          EEFAFFF3FFFBFFFFF8FFFFFEFFFFFFF9FFFFF8FFFFFCFFFBFFFBFBFFFBFFFCF4
          FDFFEDEFFF5C56BB2E17AF2309B52C17BA2817B42515B01B0C9D8376F6D7CFFF
          EFF2FFF0F5FFF5F4FDFFFDFFFFFCFFFFF7FAFFFFFCFDFFFEFFFBFFFFFBFFFFFF
          FBFFFFFBFFFBFFFDFBFFF8FEFFE6E2FF3815AC2A01AA311C82E8DFFFF7F3FFFB
          F9FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF3EEFF2A169E2C15C53B23CF9584FFD2CE
          FFE5EAFFE8F2FFEDF9FFE9EBFFF4F4FFF8F7FFEAECF7FDFFFBFFFFF9FFFDFFF2
          EDF6FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFCFFFBFBFF
          F8F9FFAEAED6362D7DEBE4FFF1FAFFF3FFFDFAFFFCFFFFFCFFFFFBFFFFFBFFFF
          FBFFFFFCFFFFFFFFFEFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFE
          FFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFF
          FFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFDFFFEF9FFFAF4FFF7
          F8FFFEEEF1FFF1EAFFB7A9E9403077ACA1E0E8E4FFF4F4FFF4F0FFD7CFFF382B
          75756DAEEEEFFFEDF1FFFDFFFFF8F7F3FCFDF9FDFFFCFBFFFBE9F3E6FAFFF1EA
          EDFC3C2286F6D9FFF7EFFFFAFCFFF8F6FFFAFAFFFDFFFCFDFFF8FFFFFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFF9FFFEF3FBFFFFF8FEFFF3F9FFFBF2ECFF6D4DDA30
          05C0320BBF735EE2ECF5FFEBFFFEE8F5FFEFF0FFDECCFF35179E3410C23012B7
          A79EF9E6EDFFF4FFF8F5FFE9FFFFF9FFF8FFFFF8FFFFF8FFFFFEFFFFFFF7FFFF
          F2FEFFF4FEFEFEF9EDFF6645D02F07B33314ABB4A7FFE7F1FFDFF5FFE6FAFFE2
          E7FF2B18973115A8735AD4F2E2FFF8F7FFF5F9EDFFFFFCFFFEFFFFFEFFFFFFFC
          FFFFF1FFFFF4FFFEFFFDFAFFFDFAFFFBFBFFEFF1FBF8F3FFB29AFF451EAF461B
          C07150D7F3EDFFEAEFFFF0EFFFF8F0FFEDDDFF4628A93C11C03E1AB4EBE3FFF2
          F3FFFDF6FFFFFAFFFFFFF1FFFFF2FFF8FFFFF7FFFDFFFCFBFFF5F9FFF7FBFFFB
          F7FFFAF6F5FF664AC53006B73C0DD52806ABEBE7FFEFFBFFEEFEFDF4FEFFF2EE
          FFF9F4FFFFFFF7F5FDE6FAFFFDFAFEFFFCFFFAFDFFF8FFFFF8FFFFFCFFFEFFFF
          FDFFFBFCFAFBFFFEF3FEFCF0F9FFE7E7FF261A8A2B11B83115B5AD9EFAF1F4FF
          DFF5D8F1FFEEF1F5FFE4D2FF2F03C13502CE310EA4BAAAFFF8FBFFF9FFEFFFFF
          F3FFFFF9FFFCFFFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFE
          FFFFF5FFFFF9FFF8FFFFF5FFFFF5FFFFF9FFFDFFFCF1F2FFF4E8FF3C269D2D11
          B12814AD5F5FC3D0DBFFEFF6FFEEF9FDEAFEF2ECF6FF27119F310DC53819BAEB
          DBFFF4F7FFFAFFF9FFFFFFFFFFFEFFFFF7FFFFF8FFFDFFFFFAFFFDF3FFF9F2F9
          F6FBECFBFFF9E6E9FEB6AEF42F169C3211B92B0BB6E6D0FFE5DFFFE8ECFFECF2
          FFD6D8FFEFE4FFEADBFFFBEFFFDFD4F4FFF6FFF9F1FFF7F1FFFFFBFFFFFEFFFF
          FFFFFFFFFEFFFFFCFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFCFFF7EDEDFFFFF4FFFFFBEFEAFFF6F3FFF1F7FFE1
          F1FDECFFF8D8EBFAEAE0FF3412B62D00C83D14C38F86CFF6FAFFFDFCFFFFFDFF
          FFFDFFFFFDFFFFFEFFFFFFFBFFFFF5FFFFF4FFFFF6FDFFFFF8F4FFF1E9FF6A59
          C82E15AD300ECC9B84FFE7F0FFECFFFFE9F2FFEDE4FF2D09A9370EB7664FBCF0
          E9FFF6FCFFF8FFFCFBFBFFFBFEFFFFFFF1FFFFF4FFF8FFFFF5FFFFFBFFFCF8F3
          FFFFF2FDFFF2F6FFF7F2F3FFAD97FF340EB43E11D26F50EBEAEDFFEFFFF7E6FF
          D5F4FFFBF6DDFF4315C63704D8411BCBEFEBFFF3FFFFF8FFF2FAFFF3FCF8FFFE
          F6FFFFFFFEFFFFF7FFFFF7FFFFFCFFFBFFFBFBFFFBFFFCF4FFFFE7EDFFADA8FF
          2407B12400CB2807CE1F02C32E15CB250FB52815A77368CEE3E9FFF6FFFCFDFF
          EFFFFFF1FFFFFBFFFDFFFFFFFCFDFFFFFFFBFFFFFBFFFFFFFBFFFFFBFFFBFFFD
          FAFFF1F6FFE5DFFF411ABC3A0DC1452E9BF2E9FFF8F2FFF7F4FFFDFCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFDFDFDF3EDFF2E1BAE0F00B62008C0C3B1FFE3DCFFE6E6FFEAECFFEC
          EBFFEADCFFF3E2FFECDDFFFAF0FFF8F8FEF6FCEBFFFFF1FFFFF2FFFFFBFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFBFAFFF8F9FFAFACD9382B
          7FEBE3FFF3F8FFF5FFFFFBFFFFFFFFFEFFFFFCFFFFFCFFFFFCFFFFFEFFFFFFFD
          FFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFF
          FEFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFBFF
          FFF9FFFFF8FFFFF8FFFFF8FFFFF9FDFFFCFDFFFEFDFFFFFBFEFFFBFBFFFBFAFF
          FAF9FFFAF7FFFAF7FFFAF5FFFAF5FFF8F4FFFAF2FFFAF2FFFAF4FFFAF6FFFAF8
          FFFAFAFFFBFCFFFBFEFFFBFFFFFDFFFEFDFFFCFDFFFBFFFFFBFFFFFBFFFFFCFF
          FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFCFFFFFCFFFFFC
          FFFFFEFFFFFEFFFFFEFFFFFCFDFFF9FBFFF8FAFFFBF8FFFFF1F6FFF8F6FFB3A7
          E1433478A398D6F6F0FFF6F7FFF4F3FFE6DBFF4333806D5EAFF4EDFFEAF3FDF8
          FFF8FAFFF5FDFEF5FEFFFBFCFFFAF2F9EAFBFFF1F5FFEBF7F9FF3C2189F6D7FF
          F7ECFFFBFAFFF8F7FFFCFBFFFDFFF9FFFFF7FFFFFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFF9FFFAEFF7FFFFF5FCFFEEFAFFF9F4F1FF6D4CDC3105C32C05B96E5ADB
          DEE8FFECFFFEEFFCFFE9E8FFF3DEFF3210A4310BC1280CACAAA4F6EFF9FFECFE
          EDF6FFE9FFFFFBFEF6FFFFF8FFFFF9FFFFFFFEFFFFF7FFFFF5FEFFF7FEFDFFFA
          F0FFCAAFFF3816AA3715B0281195A2A2F0DEE7FFE4ECFFCECCFF3018AC2F13AC
          6754C3F4E9FFF4F2FFFFFFFEFAF3FAFFF9FFFFFDFFFFFFF9FFFFF1FFFFF4FFFE
          FFFDFBFFFBFCFFFAFDFFF7FDFFF6F3FFAC94FF3610A82F02AF6646D3F1EEFFF1
          FDFFF3FDFFF4F6FFEADCFF30149D2900B03311ABF3EBFFF6F9FFFBF9FFFFFDFF
          FFFFF4FFFFF7FFF9FFFFF8FFFFFFFEFDFFF8FBFFF7FBFFFBF8FFF9F3F1FF8465
          E62F00BA2E00CA5E39E3EBE6FFF1FDFFEDFEF3F6FFFCFBF6FFF7F1FFFAFFE7FF
          FFEAFCFFFBFAFDFFFCFFFAFDFFF7FFFFF7FFFFF9FFFEFFFFFDFFFFFFFFF6FCFB
          EAF4F4EFF9FFDBD9FF30249C2C11BF280DB1DBCAFFE4E7FCF6FFE4ECFFDDEFF4
          FFF1DDFF501EE83B02E1471BC69780E8FAF8FFFDFFF2F7F8E4FFFFF7FFF8FCFF
          FAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFDFFFEFFFFF8FFFFFEFFF5
          FFFFF1FFFFF3FFFFF8FFF0F5F3F8FAFFF3E5FF281195290CB52918AF7D88D8E3
          F8FFEFFEFFF4FFF8F1FFF7DCE5FF3116AC2500BE3E1EC3DCCAFFF4F5FFFAFFFF
          FFFDFFFFFEFFFFFFF7FFFFF8FFFDFFFFFCFFF8F4F3FFFFF7FCFFEFF7FEF9F6F5
          FFAEA2F42E14A02F10B92609B2301DAF2A25881F236A3234753633822C1C8C3A
          23953827784D3F79F1E7FFFBF6FFFDFAFFFDFDFFFAF9FBFCFCFCFFFFFEFFFFFE
          FFFFFCFFFFFCFFFFFEFFFFFFFDFDFFFDFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFEFEFFFEFCFFFFF8FFFFFEF9F7FFF3F7FFF1F9FFE8F7FFEAFFFFE4EFFF
          9284F42C0AAF4211D92E06ACB1A5EDF8FAFFFDFCFFFFFEFFFFFDFFFFFDFFFFFD
          FFFFFFFCFFFFF5FFFFF2FFFFF4F4F5F1FAF9FFEDE7FFBDAEFF2F18A22608B528
          13ABA0A3EDE1EAFFE3E1FFDCC9FF350DC33911C46D59CAF3EEFFF6FFFFF8FFF7
          FAFFFFFDFFFFFFFFF5FFFFF9FFF8FFFFF5FFFFF8FFFEF8F9FFFFF0F9FFE9F2FD
          EDF4F5FFB19AFF2C05AF2B00BF6E4FEAEDEFFFEFFFFBE8FFDEF3FFFFEED6FF32
          07B02500C23C17C5DFDAFFF3FFFFF7FFF4F8FFF4FFFAFFFFF8FFFFFEFFFFFFF7
          FFFFF5FFFFF9FFFCFFFBFBFFFBFFFFF6FBFFE8E8FF3426962404AF3211CD1E06
          AA604FE62615AC220EA72C13B1281594A09BD8F6FBFFEEF5E8FFFFF1FAF2EBFF
          FFFCFFFFF9FFFFFEFFFAFFFFFAFFFFFFF8FFFFF7FFFDFFFBFBFFF6FCFFEEE6FF
          380EB92700B52E188EEFE9FFF4F6FFF8FEFFFBFFFFFFFFFCFFFFFCFFFFFEFFFF
          FEFFFFFFFFFEFFFFFEFFFEFDFFFFFEFFFFFEFFFFFEFFFFFFFEFEFFFBFDFFF9F5
          EDFF2E16B0280BD3270DCB2411B427209922237E2122732F2A8534209B2D1395
          3F2698362674F5F2FFFDFFF9FDFFECFEFFEDFFFFF9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFDFFFDFCFFFAFAFFB1ADD73B2B7EEFE3FFF6F7FFF9
          FEFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFFFFFEFDFFFFFBFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFAFFFDF9FFFFFBFFFFFEFFFFFFFCFFFFF9FFFFF8FF
          FFF8FFFFF9F5F3EBFFFFFBFFFFFBFFFFF7FFFFF8FBFBEFFFFFF2FBFFE7FFFFEB
          FDFFEEF6FFEBF5FDF2FAFFFFF8FCFFF1F3FFF4F3FFEFECFFE2DCFFEAE3FFEFE4
          FFEDE2FFD2C4FFB2A3FFA18DFFC1ADFFE3D3FFEFE2FFEAE3FFE6E3FFF0F2FFF4
          FAFFF3FBFFF8FFFEFAFFF9F6FFF2F7FEF1FDFFF7FFFFF8F9FBF5FDFFFFF3F3F9
          FFFEFFFFFCFFFFFEFFF9F4F5FFFFFCFFFFF9FFFFF5F1EEE6FFFFFCFFFEFDFAFB
          F7FCFFF7FBFFF0F4FFECF8FFFFF5F8FFF6F2FFA59CD4514685D3CAFFEBE7FFF8
          F5FFF8F2FFA89CD6493685B3A2ECFAEFFFFAF9FFFAFFF9F3FEEAFFFFF8FFFEFD
          FEFDFFFCFFFDFDFFF8FBFFF7F8FFFCF6F1FF3E267EF8DFFFF8F1FFFBFDFFFAF9
          FFFEFCFFFFFFFCFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFFFFCFF
          FFFFF2FBFFEDF4FFF3F1F4FF674FD32E0CBE280AB76B5FDDDAEAFFE8FFFFE2ED
          FFE8E3FFA58AFF3812BE3110B93924A8C0C1F9E2EEF2F6FFF0FBFFEEF5F5F5FF
          F9FFFFF9FFFFFBFFFFFFFBFFFFF8FFFFF9FDFFFEFBFEFFFAFAFFF8F4FF9B8CDD
          2E0AAA370EC8280FAD2511AA2F1AC31C04BC3312D81600A36E67C2EEF0FFEEEF
          FFFFFBFFFFF9FFFBF1FDFFFFFEFFFFF7FFFFF1FFFFF4FFFFFFFDFEFFFAFFFCF8
          FFF9F1FFF8F2F5FFAF98FF3E1ABA2903B3654FD7EAF5FFDFFEE9EBFFE6ECFFFF
          DBD3FF3418AB320DB7280A99F3EBFFF4FBFFF8FFFFFBFFF9FFFFFBFFFFFEFFFB
          FFFFFBFFFFFDFFFFFFFEF9FBF5FBFFF9F5FDF6EEEAFF7F5EE42C00BA3200D049
          24CEEFEBFFE0EFF2F3FFF4F6FFF8FBF9FFF9F4FFFFFFEDFFFFE9FDFFFFFBFDFF
          FDFFFBFDFFF7FFFFF5FFFFF8FFFFFEFFFEFFFEFDFFF7FCFDF5FDFFEFF7FFE7E4
          FF2F239B2E13C12408AFD3C0FFE9EAFFF6FFE6F3FFE4F0F7FFE7D5FF6B3AFF2C
          00D13C0EBE937AE8FAF5FFFDFFF8F7F6E8FFFFF8FFF9FBFFFCFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFDFFFFFEFFFFFFF8FFFFFCFFF6FFFFF3FFFFF5FFFF
          FBFFFBFFF9E4E9F8EFE5FF311AA42103B62A16BD7A80E3D9ECFFF0FFFEF4FFF3
          F3FFFEEDEFFF2E0FAC3108C73213AEEFDEFFF6F4FFFBFDFFFFF9FFFFFAFFFFFF
          F8FFFFF8FDFCFFFFFAFFFFFEFFFFFFFBFBFDF7F9FAFFF6EEFFA291F2381BB026
          09B3240BAF21119E2F2E90262C792D2F7D312D8D200C953218AC29119537238D
          F3E9FFECEAFFFAFCFFFBFFFEFBFCFAFFFFFEFFFEFFFFFEFFFFFFFBFFFFF9FFFF
          F9FDFFFEFBFDFFFBFCFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFF4FFFDF3
          FFF7FFFFFAFFF2F9FFF1FDFFE4F2FFE2EDFFE4E6FF655CCA3821B32E0CB13710
          B93B1B9EEDE3FFFAFCFFFBFFFFFBFFFFFDFFFFFFFEFFFFFDFFFFFFFEFFFFF7FF
          FFF2FFFFF0FFFFF4F0F5F4F6F7FFF1ECFF877BDB32209D3221AE281BAD2615B8
          2205C61D00CB3306E52802C05A49BCEFF0FFF3FFFCF6FFEDFAFFF2FDFFF8FFFF
          FCFFFEFFFFFBFFFFF8FFFFF3FFFFF2FFFFFFEEFBFFE2F3FDECF6F5FFB399FF2C
          06AC2F08B86E54E2E1E2FFEFFFFFF1FFFBF3FBFFEAD6FF3917A42600B13719B2
          EDE9FFF3FDFFF6FFF7F8FFF8F8F2FFFFF7FFFFFCFFFFFFF9FFFFF2FFFFF4FFFF
          FFFBFDFFFBFCFFF6F2FF6F5CC3391EAA2F12A86554CDE8EFFFE6F6FFE6EDFF6C
          65CE2E0EB3330EB8331995F3E3FFFDF3FFFCF7FFFFFFFEFFFDF3FFFFF2FFFFFB
          FFF6FFFFF8FFFFFFF2FDFFEDFBFFFBF8FEFFEFF8FFF1EBFF320AB63407C83621
          A0ECECFFE3F8F9EFFFF0F1FEEEFDFFF8F6FCF1FBFFF7FDFFFCFDFFFFFDFCFFFF
          FCFFFFFBFFFFFBFFFFFBFFFFFDFFFFFFFBFFFFF6FEFFEFF6EFFF290BA42C07D3
          2D0ECD230EB0251F942A2D88282D822A278E2C1AA92E13B0290E9A331F89ECE7
          FFF8FCFFFBFFF9F5FCEDFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFF9FFFFF9FFFFFBFFFFFEFFFFFFFEFFFFFBFFFFF9FFFFF8FFFFF9FFFFFA
          FFFEFBFBF6F3FDFAF6FFFFFBFFFFF9F9FAF0FDFFF8FAFFFBFAFFFFF8FCFFF6F7
          FFF3F2FFE6E0FFD8CFFF968AE47263CC4434AA29179824129B2816A52814A925
          10A9240CAC2811AF2914AC25129F2716954032A26B5EC08E85D6D8D1FFE7E4FF
          F4F3FFF6F7FFF8FBFFFAFDFFFBFEFFFBFFFFFBFFFFFBFFFFFDFDFFEFEDF3FFFD
          FFFFFEFFFFFFFBFFFFF9FFFEF9FFFFFCEEE9EAFFFEFFFFFFFEFDFFF9F1FBEAFA
          FFF9F8FAFFF1EEFFB0A9DC393068C8C0F5F6F0FFF8F2FFF8F1FFABA0D82E215F
          B5A6E4FAEFFFF8F3FFF1F4F8F1FAEDFDFFF4FFFFFBFFFEFEFEFDFFFCFEFEFDFF
          F9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFFFFBFFFDFFF8F8FFF4F2FF
          F7EFF5FF6452CD2C0FB9290CBD4F3DD0DFE3FFE4EFFFA1A0F07B6BE13413BC2D
          07BF2809AC4534A7E4E8FFF3FFFCDFF1D4EDFAE2FFFEFFF8F0FFFFF9FFFFFCFF
          FFFFF9FFFFF8FFFFFEFBFEFFFBFDFFFAFFFFEEFBEDF6F7FFA98DFF3D19C32F19
          AD2D1CB30E00AA270CD11500C54028D45954AFEEF2FFF8F6FFF5EFFFEEE5EFFF
          FCFFFFFDFFFFFEFFFFFFF9FFFFFBFFFDFFFBFEFFFAFFFBF6FFF8EAFAEFF1F6FF
          AA96FF2C0AAB310CC06650DEDDE8FFE6FFFBE8FFF0DCF2FED9CFFF1B009C330F
          B74227ADF1E9FFE3EAFBF8FFFCFAFFF8FBFFFFFFFCFFFFFDFFFFFCFFFFFDFFFF
          FEFFFCFDF9FBFFFBF0FAF4F6F4FF7054CF3A10C15021E9150097D7D4FFEFFDFF
          EDFFF8F4FFFFE2E1FBF8F6FFFCFFEEF1FADFFBFFFFFBFDFFFDFFFBFDFFF7FFFF
          F5FFFFF8FFFFFEFFFEFFFDFCFEFBFEFFF6FEFFE3E9FFECEBFF25188B2D14B82D
          11B1A693FAF4F2FFD3E7D0F1FFEDECF3FFEFE1FF2A01B73604CE401AB9BEAAFF
          F7F4FFF1F7F2FFFFFAFFFFFBFFFDFFFFFBFEFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFCFFFFFEFFFFFFF5FFFFF8FFFAFFFFF7FFFFF9FFFFFEFFFBFFF7E3EBF2
          EFE9FF513EBD2609B8220BB92E2CA8DEE7FFEEF9FFF4FFFAF3FDFFEDE9FF2808
          A73610C8341AA8DCD0FFF6F7FFFBFEFFFFF9FFFFFAFFFFFFF7FFFFF5FDFCFFFD
          FAFFFEF6FFFFFEFFF8F9F5F7F8FFF6F0FFB7A7FF21049A3A19C72C12B9E3D5FF
          CFD1FFD9E3FFDDE4FFCDC9FFE5CFFF3012B93A1EB7332099E4DCFFF3F4FFF5FB
          FFF8FFF6FFFFFBFFFEFDFFFDFFFFFEFFFFFFF9FFFFF8FFFFF8FBFFFCFBFDFFFB
          FCFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFF3FFFDF6FFFAFFF1EFFFF4FD
          FFE1ECFFE8ECFF8783EA2E1EAB351EBC2109A52C0FA43B1FA1A794F1FAF3FFFB
          FEFFFAFFFFFAFFFFFDFEFFFFFCFFFFFBFFFFFCFFFFFFFEFFFFF8FDFFECFFFFF2
          FBFFF9F2F7FFEBEDFFEFEDFFAEA7FC3229972A20A90C00A33719E41E00D32000
          CC3919CB8478E2DFE1FFF3FFFFF6FFF1FAFFF5FDFFFBFFFDFFFFFBFFFFFEFFFF
          FBFFFFF2FFFEEEFFFFFFEEFFFFE6F8FFF2F4F3FFAD96FF3211AF3614B86E59DE
          ECECFFEDF9FFCAD7E5F1F6FFE4D3FF37199A3816B62B139BEAE8FFEDF7FFF8FF
          FBFBFFFCFEF7FFFEF3FFFFFBFFFFFFFBFFFFF2FFFFF2FFFFFCFBFEFFFBFBFFF6
          EEFF7052D33814B44022B7C0B5FFE0F4FFE6FFFFDAECFFD8D5FF3213B63710C4
          2A0B96F6E0FFFBEFFFF6F1FFF5F3F2FFFFF7FFFFF4FFFFFCFFF4FFFFF7FFFFFF
          F0FBFFE9FAFFF8F6FFFFEDF6FFF1ECFF2E07B03B0FCE240F94D6D8FFE8FFFFEC
          FFF2F6FFFBFBFFFFFDFFFEF9FCFAFDFFFEFCFEFEFDFCFFFFFCFFFFFBFFFFFBFF
          FFFBFFFFFDFFFFFFFBFFFFF5FFFFEFF7F0FF492AC11900BB2F0DCBCFBAFFDCDB
          FFCDD9FFDBE8FFCFD4FFD5C3FF4225CE371AB73F29A0E3DDFFE8ECFEFAFFFFFD
          FFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFDFF
          FFFDFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEF9F7F6FFFFFFFFFFFFFFFEFFF6F5
          F9F4F3F7FDFEFFEFEEFEE9E6FFEDE8FFE9E0FFC4B8FF8575DA4D39B0361CA834
          18B23B1DC43314C32A0BC02608BF250ABE250DBF260FBF2611BA2513B22816B5
          2A16BD270DBE2304BF2502C4310BCF3C15D5330EC23514B54D33BC8572DFC4B9
          FFE9E6FFEFF0FFE9F0FFE8F5EDEDFAECF8FDFEFBFDFFFAFBFFFEFEFEFCFCF6F9
          F6F2FFF9FEFFFBFFFFFBFFFFFBFFF0EEF4FDFEFFFBFDFFF8F7FFEAE3FFB3ACDF
          48446DB3B3D1F8F7FFE7E2FFEFDEFFAF9BEE4B3881B4A9DBFAFAFFE6EBECFBFB
          FFFBFBFFF1F4F8FDFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6
          F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFF8FFFFF8FFFDFCFFF8FEFFF2FBFFEFF2FF6454CA2C
          10B73310D20C00A9301BB82713A81F04A83A18CA2701BF340EC6381AB9C2B1FF
          EFF4FFEFFFF7F8FFEEFBFFF0EEEDF1FFFAFFFFFAFFFFFDFFFFFFFBFFFFF8FFFF
          FEFBFEFFFBFDFFFAFFFCFAFFE9DBEADCECE5FFEDE6FFCFD9FFD9E8FFDFE4FF91
          88FF280EC0250AB46154C2EEE7FFF8F2FFFDF8FFFFFFF7FFFFF7FFF8FFFFF5FF
          FFFAFFFFFAFFFFF8FFFBF9FFFAFDFFF8FFFFF6FFFEEFF1FFAF9BFF2B0AA82E06
          BC8064FEE5E4FFE6F4FFE3ECFFDDDAFF987DFF360FC3340FB92E1496F3ECFFF4
          FAFFF8FFFFFAFFFFFBFCFFFFFAFFFFFCFFFFFDFFFFFFFEFFFFFEFDFFFFE7EDEC
          F6FFFCEAEDFFAF9DFF3517AC2803B1371CB29996E5E5EEFFDFEBFFEAF1FFF4F1
          FFECEBFFFAFFFBFAFFF4FAFFFFFBFEFFFDFFFBFDFFF7FFFFF7FFFFF9FFFEFFFF
          FEFFFCFBFDFDFFFFF8FFFFE1E5FDEFEDFF665ABE2A13A53117AB4936A3F1ECFF
          F1FFFFE0F5F3EDF3FFCBC0FF2607A43D1BBF241186DBD3FFF4F9FFF2FAF9FFFE
          FFFBF6F8FFFFFEFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFFFFFE
          FFFFF0FFFFF0FFFFFBFFFEFFFFFCFFFFFFFEFCFFF1F8FFFEE8E6FF7164C62F15
          AF3A1FCD2A18B7D1C8FFF1F0FFEEF4FFF1F7FFEDE8FF3519B32705B0341F9DEF
          E9FFF6FCFFFAFFF9FFFDFFFFFEFFFFFFF1FFFFF0FDFFFCFFFBFFFFF4FFFFFAFF
          FFFFF1F9FFF2F6FAFFDDD5FF371AAB2D08BC3012BF9889FFE4ECFFE5F5FFE6F4
          FFE8E8FF8D72FF2E0CB73318A86050BCE4E0FFF3F6FFF6FDFFF7FFF4FFFFFBFF
          FFFEFFFDFFFFFDFFFFFFFBFFFFF8FFFFF8FBFFFCFBFEFFFBFDFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFBFFFFF7FFF7F5FBFAFCFFF3F8FFBCBBFB4B39BA1D
          02AC1600B33516CB2713A2312191A396ECF6EDFFF3F1FFF3F6FAFAFFFFFAFFFF
          FDFCFFFFF9FFFFF7FFFFF6FFFFF9FFFFFCFFFFFFFCF2F5ECFBFFFBF8FFFFE1E9
          FAEFF5FFE8EBFFE8EFFFE3F3FFDCEAFFD0CDFF9B8BFF2C17AF251199584FA9F1
          F0FFF4FBFFF8FFFFFBFBFFFFF9FFFFF8FFFFFBFFFFFFFBFFFFFEFFF5FFFBF0FF
          FFFFF0FBFFE9F6FFF7EFF1FFA797FF381EB1270DA76654D5EAE9FFE4EEFFECF7
          FFE1E5FF9E8CEF2E14963214A92F1A94EBECFFEAF6FAF8FFF9FBFFFBFFF9FFF9
          EFFFFFFAFFFFFFFCFFFFF4FFFFF4FFFFFCFBFEFFFBFBFFF6EEFF7055DA2501AB
          3010B5A695FFE6F0FFD7ECFFDBE8FF9D9CF8250EA6371AB7352291F3EBFFF4F5
          FFFBFFFEFDFFF9FFFFF6FFFFFBFFFBFFFFF2FFFFF6FFFFFFF1FBFFEAFAFFF8F8
          FFFFF6FFFFEFE9FF2701A03309C22E159F9E98F1E3EEFFE5F3FFE9EAFFDCD7F4
          FDF8FFFCFAFFFDFDFFF6F8F8FEFEFEFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFE
          FDFFFFF9FFFFF5F7EDFF3313A83910D7300AC77E68FCD4D9FFE3F8FFE3FBFFE3
          EFFFBFAFFF2506AF2D0CAD331A92F4F1FFF8FEFFFBFFFEF5F9F3FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF9FFFFF9FFFFFEFFFEFFFFFD
          FFFFFCFFFFFDFFFFFEFFFDFFFFFDFFFFF0F3F7FBFCFFFAFAFFF4F1FFF8F4FFF4
          EDFFEDE2FF9C8CFF412EAD1D0795270EAC3215C42D0BC92000C51900C61E00CE
          2200D52301D72304D52305D22408D0260DCD210DBE220EBF2209C72204D12100
          D92100DF2100E32000E11E00D82B00D9330ECE270BB21E0A934134A79E96F5ED
          EBFFF1F8FFF0F9FFEBF2FBF8FDFFF4F8FDFBFEFFFBFCFFFFFEFFFDF9FFFFFDFF
          FFFEFFFCFBFFFDFCFFEEE8FFF5ECFFFAEDFFBDAFEF362D659D9CBCF6F9FFF7F6
          FFF2EAFFC1ACFF37217AA595D5FAF5FFEFF7F0FAFFF4F7FCFBF1F2FCFBFBFFF7
          F5FFFFFEFFFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FF
          F8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFAFFFFFAFFFDFCFFFAFCFFF2F9FFEFF0FF6653CA2C10B72F0BCF300DD3
          270DB92810B61F00B52100BB3E18DC4521D9EBCDFFEDDEFFE5E9FFF0FFF7E5F6
          DBFBFFF1FFFEFFE9E2F1FFFBFFFFFDFFFFFFFBFFFFF9FFFFFFFBFEFFFBFDFFFA
          FFFEF5FFEBF8FFFFABA0E6DDD2FFE9F0FFE6F1FFCACDFF342AA62D15B72811A9
          AFA4FFDAD5FFFAF5FFFFFCFFF9F6E7FFFFF5FFF9FFFFF6FFFFFCFFFFFDFFFFFA
          FFFBFAFFFBFCFFF8FFFFF3FDFDEDEEFFA794FB3917B23509C71E00A85948BBEA
          E4FFE6D9FFC3AEFF320EB92C03B82F0DA8644EBEE8E3FFECF1FFF8FEFFFAFEFF
          FDFAFFFFF9FFFFFBFFFFFEFFFFFFFCFFFFFBFBFFFFEAF2F1EEFBF3F3FBFFECE4
          FF37249D3D21BA260FA1241A84918FE1E4DEFFEDE4FFE3D4FF7262B98B87B8E7
          E9FFF8FBFFFAFFFFFDFFFBFDFFF8FFFFF8FFFFF9FFFEFFFFFEFFFFFFFFF6F6F6
          FBFFFFF7FAFFF3F1FFCCC3FF36239C260C983518A35C47BBE2DEFFE7E8FFC0B9
          FF5040B63419AF2A139E5047A1E8ECFFF3FBFFF5FEFFFBFCFFF3F1F7FFFFF9FF
          FFF7FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFFFFFEFFFFEEFFFFEBFFFF
          F4FFFFF9FFFEFFFFFFFEFFFFF4F8FFF7F6F9FFEAE4FF37249B170099260AB71E
          079FC1B0FFEFE5FFEBE5FF9385EE1F00AA2F0DBF3B28A7D5CFFFF4FDFFFAFFF8
          FFFEFFFFFFFEFFFFF0FFFFEDFFFFF7FFFEFFFFF7FFFAF0FDFFFFF1FDFFEEECF4
          F3F3F1FF8A74EB1D009D2907B2371EB6B1A7FFE3E2FFE8E4FFAEA1FF2F0DB12D
          09B12B1395B1A7FFF1EEFFEDF1FFF8FFFFFBFFF8F5F7F1FFFFFEFFFDFFFFFDFF
          FFFFFCFFFFF9FFFFF9FBFFFBFBFEFFFBFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFF7FFFFFAFFF6F7FBF4F5FFDBD7FF2617832C0FB82F0CCE3819D218029E
          8079E2E3E1FFF3F1FFE2E3FDF7F9FFFBFEFFFAFFFFFAFFFFFDFCFFFFFAFFFFF8
          FFFFF8FFFFFAFFFFFDFFFEFEF8FFFFF9F3FAF3F8FFFFF4FAFFF1F5FFA6A9DCDF
          E4FFD5E2FFE0E9FFD2CEFF3B2DAB301BA02B198EB4ABFBF3F1FFF6FAFFF8FCFF
          FBF9FFFFF7FFFFF7FFFFFAFFFFFFF9FFFFF9FFFAFFFEFBFFFBFFF0F6FFEBF3FF
          FBEEF4FFA597FF321BAD371EBC3520B25C52BCE8E5FFEAE6FFAFA2FF290E9A3D
          1EB72004936355BBF1F4FFF3FFFEF8FFF7F7FFF5FFF9FFFFF6FFFFFBFFFFFFFE
          FFFFF5FFFFF4FFFFFCFBFEFFFBFCFFF6F0FF8A75F0381ABF2A08BA2C14B0C3BF
          FFD3D7FFDFDCFF2115973015BF2B0EB14C3DA9F1ECFFEFF5FFEDF7F1F9FFF9FD
          FFF9FFFFFBFFFDFFFFF5FFFFF9FFFFFFEEFBFFE9FBFFF9F8FEFFEAF0FBE9E1FF
          421CBB3506C62E0BAF3B23A9B9ACFFEFE6FFF8E9FFCFC1F7FDF1FFEBE3FFFDFB
          FFFDFFFFFFFFFBF8FCF1FFFFF8FFFFF9FFFFFCFFFFFEFFFFFFFFFEFEFFFCFDFA
          EFFFCFB8FF3212B12502B0260DA59490F0D6DDFFD6E2FFC6C8FF4E33D02904B8
          4320BE7C65D2EFEDFFEEF3F4F7F7FDFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFBFFFFF1FFFFF1FFFFFBFFFDFFFFF9FFFFF9FFFDFAFFFB
          FDFFEBF1F0F8FFFEF2FBFEEBF2FFF1F1FFF3EBFFDACDFF7B68DD2611AA1B04B4
          1B02B62207C22106C81E00CB2202D32B0AE12303DE2302DF2100DF1D00DD1A00
          D81700D71700D61700D51D03D91900D71500D41800D81C00DD2200E32300E423
          01E22804E41F00D51C00CC2003CA2206C31D04B81F06B42814A9897BE5EDE6FF
          F3F6FFE9F2FCEFF7FEF8FCFFECEAFFFBFAFFFBFEFCFFFFF2FFFFEDFAFFF1FAF7
          FFF8EBFFFDE5FFA38AE23A2973B3ABE0F8F7FFF5F4FFF2E7FFAC9BE43E2A77BC
          ADEBFAF5FFE9ECF4EFF5F0FBFFF9F6FEF4FBFFFFF5F4FFF9F6FFFFFEFFFFFEFE
          FEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9
          FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFF9
          FFFFF8FAFFFBF2FCFFEFF0FF6651D02E0EB91700AF4E35DD8A83FCA7A2FF776B
          ED2813AC1200AA2C0CBF593ECEE5D7FFF3F6FFF6FFFBFAFFF1FDFFF2F6F4FAFF
          FAFFFFFBFFFFFEFFFFFFFBFFFFF9FFFFFFFBFEFFFBFEFFFAFCFFF0EEFFFAE8FF
          4219B13201BB320FB3290CA92508AB2E13B61F04A138299CF1F3FFF6FFFFEFF4
          F2FAF9F5FFFEFEF7EFEFFFFFFBFFFFF5FFFFEBFFFFEBFFFFF7FBFFFCFBFFFFF8
          FFFFF6FFFFEBEBFFBBA6FF401AB92900C24412E23712BC290CA22E0FA63716B4
          300AB6330EB04B32ACD3C6FFEAEDFFF6FFFFF8FFFFFAFCFFFDF8FFFFF8FFFFFA
          FFFFFEFFFFFFFBFFFFF9EFF6EFF8FFF9F0FFF1E6F2F6EFF0FFCDC3FF3520A523
          0AA22D17AB3118B02305AC3B17C93209C32700AD4928B8F3E1FFF8F4FFFAFFFF
          FDFFFBFDFFF9FFFFF9FFFFFBFFFEFFFFFEFFFFFFFEFFFEFAF7FBF6FAFEFFF7F4
          FFF4ECFF8071CD3B1FA83A0BCC3302D03B17C23416B52F0EB73617C02F11B626
          1398C7C6FFECF5FFECF6FFEBF4FEF8FBFFFBFEFFFDFFF2FBFFECFFFFF9FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFDFFFFFFFEFFFFF0FFFFEBFFFFF1FFFFF8FFFDFFFF
          FCFFFFFFF9FDFFF9EFF6F3F4F8FF948BD43D29A03213B63D17C73A18B232129F
          3117A02507A63005D82100C62B10A6EDE3FFF4F8FFFAFFFEFFFDFFFFFEFFFFFF
          F1FFFFEEFFFFF5FFFFFCFFFBFFFFF5FDFFFFF7F9FFEEF7FEF9F6F8FFDCD1FF5F
          49C03815B93409C83103CB3305CD390CCD3409C43407C24622C26D5AC7E7E2FF
          F3F3FFEEF3FFFAFFFCFDFFF7F9FBF5FFFFFEFFFDFFFFFDFFFFFEFFFFFFFCFFFF
          F9FBFFFBFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBF6F7F5
          F8FCFFF4F2FF412F9A381CB61E00B53014C5352AA9B4B6FFE7F2FFECFBFFE9F2
          FFF8FEFFFBFEFFF2F6F7FAFFFEFAFFFEFDFFFFFFFFFFFFFFFEFFFFFBFFFFF5FF
          FFF1F6FCE5FFFFF2F4F8F2F1F3FEF6F3FFD9D1FF362A823C2B9A3C25AF1D009F
          330FC12500B13A18B8371D99E4D9FFF3F2FFF8FEFFFAFFFEFDFCFFFFF9FFFFF8
          FFFFFAFFFFFFFCFFFFF8FFFFFCFBFFF9FAFFEEECFEE7F2FEFFEDF1FF9E91FD26
          0DA52101B32708BD2E13B72F13B33314BD2E06C3420FE72B00C44127B1BFB6FF
          F0F5FFF6FFFBFAFFF4FAFFF5FFFBFFFFF8FFFFFAFFFFFEFFFFFFF8FFFFF5FFFF
          FBFBFFFFFBFEFFF6F2FFE5D7FF381FB51F00B32000B9351FBE2510AD1100A827
          04CA2000D12D06CE7F68F2EFE6FFF3F5FFF4FDFFF8FEFFEFF4F2FFFFF4FFFFF4
          FFFEFFFFFFFCFFFFE6FBFFE7FBFFFCF8FAFFF6F7FFF4E5FF380BB82E00CC3D09
          D92100BA2A00BE2F07AC2A0C7D493382E9D6FFFDF1FFFDF8FFEEF0F1FDFFF6FF
          FFF2FEFFF1FEFFF3FFFFF8FFFFFCFFFEFFFFFCFFFFF9FFFAF5FFE6E3FF5D52A8
          5437CA2500AE3615BD2F10B1280DAA3515C02D00CB3507CC2D0AA0F4E1FFF5F3
          FFFBFEFFFFF7FFECE3FDFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFFFFF2FFFFF2FFFFFBFFFDFFFFFAFFFFF9FFFBFAFFF8FCFFF4FDFFE8F1FE
          ECF3FFEFF1FFC2BCFF6052BC3A23A73217BA2005C71F01D62408DD2A0EE3270B
          E01E02D71600D21600D21300D11600D51A00D92004E02005E41F04E41900DE15
          00DC1D00E61C00E51D00E51F03E62205E41F04DE1900D51300CE1300CC1400CD
          1D01D6260ADF290CE52407E02000DB2104CB3820BC2512898178CEEFEDFFEAEA
          FFE6E7FFF6F5FFF4F6FFFAFFF9F6FFE9FBFFEAF5FFEEEAE7F7FDEDFFA68AE44E
          3391AA9CDEEBE5FFF8F2FFF5EDFFA998E14F3E88AC9FD7F2EDFFEFF2FAFAFFFC
          FBFFFFDCE1DFFBFFFBFBFFFEE4E4F0FDFBFFFFFEFFFFFEFEFEFDFFFCFEFEFDFF
          F9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFF6FFFFF1FFFFEDFBFFF1F4FE
          FEF1EFFF674DD72E0BC03313C65F4EDFD6DCFFDBEAFFD3D7FFA89FFF2C11BF31
          11C44228B1DBCEFFF0F3FFE6F3EBF0FCE8FDFFF5F7F5FBFEF7FFFFFBFFFFFEFF
          FFFFFBFFFFFBFFFEFFFDFEFFFBFEFFFBFBFFFDF5FFB097E72F009F420CCB390E
          BB3F1CC02000A03D22B8452EB2C3B7FFEEF5FFF2FFEFFDFFF5FFFFF8FFFEFEFF
          FDFFFFFFFEFFFFF7FFFFEBFFFFEBFFFFF5FDFFFCFBFFFFFAFFFFF5FEFBF6FAFF
          A59AE02A10863912B45D34E33B19B43414A84221B82B0AA12F0E9F3E259F9588
          D8F3F1FFF6FFFFF3FEF4FAFFFFFBFDFFFDF9FFFDF9FFFFFBFFFFFEFFFFFFFCFF
          FFFBF9FFFAF8FFFCEEFAEEF4FFFFE4EBFFEDEDFFCEC3FF5846C13622AB240BA3
          3312BB300CBC330CBF300DB1391DA6B3A4FFF8F6FFFAFFFEFDFFFBFDFFFBFFFF
          FBFFFFFCFFFEFFFFFEFFFFFEFAFFFFF9F4F7EEFDFFFFFBF9FFEDE8FFEEE3FF96
          7DEB3005B4390CCD2100A73919B83213B41E03992F1D9EA8A3FFECF5FFE9FAFF
          F1FFFFF4FDFFF4F5FFFAFCFFFDFFF4FCFFEFFFFFF9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFDFDFFFDFFFFFFFFF5FFFFF1FFFFF4FFFFF9FFFAFFFFF9FFF4ECF6FFFFFE
          FDFFF5F7FEF9F6F7FFA99EE72F15973613B12C08A23111A6391DB02D0FB6370B
          E22F05D62E15ADE6DBFFF4F7FFFAFFFFFFFDFFFFFEFFFFFFF7FFFFF5FFFFFCFF
          FEFFFFF6FFFFFBFFFFFFFBF0F3EAFBFFF9ECF2F7F4F5FFD2CAFF4B32AC340FB1
          3607C82700BF3000BF3E14BF3A17A75F47B7D9CFFFEDEDFFF0F4FFF6FEFFF7FF
          F8F9FFF3FFFFFBFDFBFAFFFDFFFFFCFFFFFEFFFFFFFEFFFFFBFDFFFBFBFFFEFB
          FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FFEEFBFFF5EFF5FAEAE4FF3E22
          B12200B53917D5311CB8DCE0FFDFF1FFE0F3FFEDFFFFF4FEFFF3F9FEFBFFFFF2
          F5F3FBFFFEFBFFFEFDFFFEFDFFFEFFFFFBFFFFF8FFFFF2FFFFF0FFFFEEFEFFF1
          F6FAF4FAFBFFF1EEFFB2A9E836297F2C18892E0FA04E29CD1F00A23C16B63C1D
          A29985E4F6F1FFF8FDFFFAFFF8FBFFF7FDFFFFFFFBFFFFF9FFFFFBFFFFFFFBFF
          FFF7F8FEF3FBFFF7F8FFF2EEFDEFF3FEFFEFF3FFA8A1F64130A93D26B65F47E1
          1F069C331AB21F00A3330FC12700BE2F09B59986F5F1EEFFEBF3FFF3FFF4F8FF
          F0FDFFF7FBF7FFFFF6FFFFF9FFFFFCFFFFFFF9FFFFF7FFFFF9FDFFFEFBFEFFF6
          F7FFECEBFFB5AAFF2E17A7351BBB2810AA1E07A55134E32A08C63109D32E0BBF
          2F1C936964A9DDE2FBEDF8FCECF2F7FBFFFFFFFFF8FFFFF8FFFFFFFFFFF9FFFF
          E7FDFFE9FBFFFEFAFAFFECEDFFF6ECFF3C1AA43103B32C00B1572BE23304C43C
          10BB3D1C95462D85BBA6EBECDFFFFDF7FFFDFFFFFFFFF7F9FFEBFDFFEEFEFFF0
          FFFFF6FFFFFBFFFEFFFFFBFFFFF8FFFDF9FFF6FFFFEBF0FF7969CE3314A52705
          A63914BE3917BC3713B9380FBE310EA5F4DDFFE6DBFFFBFCFFFDFFFFE3D9F0FF
          F5FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFC
          FFFFFCFFFFFEFFFFFFFBFEFFF8FEFFF4FBFFF1F7FFEDF1FFD6D5FF7B73D72E1F
          9F230EA7270AB92101C42307DD1900DE1000D20E00CE1700D41F09D91E0AD517
          04CD220FD81D0AD31601CF1200CC1200CF1600D41900DA1B00DF1A00E11700DE
          1400D61200D21400CE1A07D0210FD42615D81604C91D0AD11E09D71600D30E00
          D01000D71800E12506DD0D00A5381DC02505B02C0EADA893FFEDE5FFF1F5FFEC
          F8FCF6FFF9F2FFEFF4FFF4F2F8F7FBF9FFBDB3DE37206AB19DE6F6EEFFF8F2FF
          E6D5FFC2ADFF513D8AADA0D8ECEAFFFAFFFFFBFFFCFBFFFBFBFFFFF7FAFFFDFD
          FFEDEEF2FDFFFFFDFFFEFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6
          F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCFFFFF4FFFFEDFFFFE3FBFFE7F6FFF9F3EEFF6947E130
          06C92905BD6759DCE3F6FFE3FFFFE1F5FFCBCDFF2A11BF2503BC1E0486B7AAF6
          F6F8FFF8FFFBF2FEECFDFFF7FFFDFFFFFAFFFFFDFFFFFFFEFFFFFBFFFFFCFFFE
          FFFDFDFFFBFFFFFBFEFFFDFAFFFFF3FFBFA6FE795EC56051A26B63AA6A61B197
          8CE2D7C8FFF3E9FFEEF0FFFBFFFFF8FAF4FDFCF2FFFFF7F7EFEFFFF6FFFFF6FF
          FFFDFFFFFFFFFFFBFFFDFAFFFBFBFFFAFFFFF0FEECF4FFF3E6EEF5B1B2D4BAAF
          F3F3E6FFD8CEFF655BA75E4BB27A66D18E7DD8D2C9FFF4F6FFE6EFF2F6FFF4F1
          FFEAFAFFF9FBFFFFFDFCFFFDFBFFFFFCFFFFFDFFFFFFFFFFFEFFFFFCFFF0F3F8
          FBFFFFEDF5F4F6FEFFF3FAFFEDEFFFDEDFFFC6C3FF857FD17169C04941947D79
          C1A1A1D7CFD6F7F1FBFFF8FFFFFAFFFCFDFFFCFDFFFCFFFFFEFFFFFEFFFEFFFF
          FFFEFDF9F4FFFFF8FDFDF1FFFFFBFFFDFFF6F1FFFBF3FFEEE2FFD4C6FF897ECE
          716DAE6D6BA76260A29797D3E6ECFFE4F4FFE8FFF0E7FFE4F3FFF7F6FFFFFAF8
          FFF5F3FFFBFDFDFFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFFFDFDFF
          FFFFFFFFFFFCFFFFFBFFFEFFFFF8FFFFF5FFFFF5FFEEE6F1FFFFF2FDFFEDF0FB
          EBF8FAFFE1D2FF9E8AED796AC6665BB7786DD39283FF3011C61600AC1E0A92ED
          E6FFF4F9FFFAFFFCFFFDFFFFFCFFFFFDFFFFFCFFFFF8FFFFF7FFFFF5FFFFF9FF
          FFFDFFF9F7F6FDFFF9EDF5EBF8FFFFF4FBFFF4F2FFBCB4F57566BA7161B9776A
          B67871AABDBCDCF6F9FFF4F6FFEBEFFFF2F8FFF8FFFFF7FFF6F6FCF1FFFFFBF9
          F7F6FFFDFFFFFCFFFFFDFFFFFFFFFFFFFCFDFFFBFBFFFBFBFFFCFDFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFF8EEFCE0FAFFF0F6FEFFF1E9FF2400A6370DD62000B3BB
          ADFFE4F2FFE5FCFFECFBFFE1ECFFF4F8FFF9F9FFFDFFFEFDFFF8FBFFFCFBFFFF
          FDFEFFFDFDFFFFFDFFFFFDFFFFFEFFFFFFFCFEFFF6F9FCF3FBFFFAFAFEFFF8F9
          FFF1F0FFB2AFDD746EA96D62A86F62AE7364B59E90D8F6EEFFF8F7FFFAFFFCF4
          FFE9FBFFEDFDFFF1FFFFFFFFFBFFFFFAFFFFFDFFFFFFF7FFFFF4FBFDF7FDFFFE
          FAFFFCF3FCF9F4FEFFF3FAFFCDD3F8999CCF9596D2ECECFFD6D7FF7778B46968
          A8615EA38D85D2DAD1FFE6E0FFF4F4FFF1FBFBF5FFF1F4FFEBFDFFF5F8F6FCFF
          FAFFFFF9FFFFFBFFFFFFFCFFFFF8FFFFF9FDFFFBFBFFFFF8FEFFF1FFFFDFEAFF
          ECECFF918EDE5E5BAB6964B9524AA9877CE4B0A1FF1E11736A68A3F3F9FFF4FF
          FCF7FFF4FAFFFBEEF2F3FFFBFFFFF8FFFFF8FFFFFCFFFFFFF2FDFFF0FBFFFEFA
          FFFFF5FFF4F6FFFFA39DCEB7ABF3BAAEF6E7DAFF907EDC6D59BA775EBA806AB9
          C7B4F3F8ECFFFDF9FFF7F9F9FFFFF5FDFFEFFDFFEFFEFFF1FFFFF7FFFFFCFFFD
          FFFFFAFFFFF9FFFDFBFFF6FFF7F4FFFFDFDFFFE2D9FF7D71C3695CB27F74C45D
          559BA29BD8F4F2FFECF1FFF9FFFBF1FAE6FFFFF5FEFAFFFFFBFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFBFFFFFEFEFFFFFBFDFF
          F9FAFFFEF4FDFFEFF5FFD9D8FF6F67CB3726AB220DAA260CBE2F10CF1E00C627
          08D91400D31D03E32007E51901DB1500D51902D61B05D61802D21700CE1A03D1
          1E07D52008D82008D81E05D71C03D51B01D71800D71C00DC2005DE2007DB1C04
          D41802CD1600CA1401CA1704CD1A05D31802D31300D41800DC1F04E81B00E513
          00D32A0FD01D00BD330AE12600D12000B63D29B2ACA7F6EDF5FFEDF7FFEDF8FF
          F3FAFFF8F8FFA29DBD49416ADBCFFFFBEFFFFAF5FFF2EBFF735FB2422C85E7D8
          FFF4EFFFFAFFFFF5FFF3F7FDF8FBFFFFF4F7FBFBFEFFF6F5FEFDFEFFFDFFFCFA
          FCF6FFFFFCFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FF
          F8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFBFFFFF5FFFFE9FDFFEAF8FFFAF4EEFF6B48DF3305CA3007C76752E4
          D3DDFFE3F8FFE0ECFF9F9CFF2104B73210C83B229AB7ACEBF3F5FFF2FAF3FBFF
          F7FDFFF9F1EFF5FFFBFFFFFEFFFFFFFEFFFFFBFFFFFCFDFDFFFDFDFFFBFFFFFD
          FFFCF8FBF2FFFDFFF2E6FFF3E7FFF8F8FFEDF1FFF4F7FFEDECFFF4EDFFE9E2FF
          FAF9FFFCFEFFFFFFFEFFFDF3FFFFF4FFFCF7FFF6FFFFF5FFFFFBFFFFFDFFFFF9
          FFFDF7FFFDF8FFFBFDFFFAFFF2F0FFE3F3FFE9F6FFF8EBF1FCEBF0FFF4FAFFF3
          F5FFF3EBFFF4EBFFEAE6FFF5F9FFF5FFFDF5FFF1F2FFEAFAFFF1FBFFF8FBFFFC
          FDFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFDFFFEF9FFFFFCFFF9F8FCFDFFFFF8FF
          FCF8FFFFEEF6FDF3FAFFEFF4FFF1F3FFF1F3FFF1F6FFE0EAFBF1FFFFF3FFF9F1
          FFF4F8FFF9FBFFFCFDFFFCFDFFFEFFFFFFFFFFFFFFFEFFFFFFFCFFFFF9FFFFF7
          FFFFF7FFFFF8FFFDFCFFFDFFE1DCEBFBF8FFF2F1FFF4F9FFE7F0FAF3FDFFF3FB
          FFF2FAFFE5F3F9F1FFF9F3FFEAF4FFE6F1FFE9FAFFFCFBFAFFF9F4FFFFFDFFFF
          FEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFFFDFCFFFFFBFFFFFCFFFFFE
          FFFFFEFFFFFAFFFFF6FFFEEDFFFFF8FFFBFBEFFFFFE8FFFFE6F4FCEBF8F3FFF8
          EFFFF1F1FFECEFFFECECFFE5DDFF220CA83920C43B28A7DAD4FFF4FAFFFBFFFB
          FFFFFFFFFCFFFFFAFFFFF9FFFFF4FFFFF4FFFFF7FFF1E7F4FFFDFFFFFFFEF0F4
          E9FDFFF7FAFFF8EDF6F3F3FBFFF1F5FFF6F8FFF1F3FFF7FAFFF8FFFFECF6EAF8
          FFF9EFF8FCF6FDFFF8FFFFF7FEF9FBFFF9F8FEF3FFFFFBFDFBFAFFFEFFFFFDFF
          FFFDFFFFFEFFFDFFFFFDFFFCFBFFFBFDFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFBFBFFF5F2FFF1ECF7FBE8E4FF3112AB330ACA2405B48E7DFFE6ECFFCFDBFF
          EDEEFFEEE9FF877FB4F9F4FFFDFFFEF7FCEDFDFFFCFBFFFFFDFDFFFDFCFFFFFB
          FFFFFAFFFFFBFFFFFDFFFFFFFFFFFFFEFBFEFCF6FAFBF9FCFFF5F8FFF6F9FFF0
          F1FFF8F7FFEBE8FFFAF5FFF9F6FFECECFAFBFFFFFBFFF2FAFFEDFDFFF2FFFFFB
          FFFBFFFFF9FFFFFAFFFFFEFFFFFFF4FFFFF1FFFFFBFFFEFFF9FAFEF6F9FDF6FC
          FFF6FEFFF4FDFFF3FDFFF1FDFFEFFBFFF1FCFFEAF5FFF2FBFFF3FCFFE5ECFDF0
          F6FFF6F7FFE5E9FBF8FFFCFAFFF2F3FFE8FDFFF5F7F6F8FFFAFFFFF9FFFFFBFF
          FFFFFFFFFFF9FDFFF8FDFFF9FBFFFFFAFFFCEAFDE8F1FFF7E2ECFDF1F6FFEFF6
          FFEFF5FFEEF3FFEFF2FFEEEBFFF3F0FFF4F7FFF3FCFFF3FDF0FBFFF4EEF2EDFF
          FEFFFFFAFFFFF8FFFFF8FFFFFCFFFFFFF5FDFFF2FDFFFEFBFFFBFAFFEDE7F8DD
          F8FFFEF6FEFFEDF6FAF4FCFFEBEDFFF6F0FFFAEBFFF0E0FFF6E9FFFDF5FFFDFB
          FFF5F8F6FFFFF7FFFFF4FDFFF3FDFFF5FFFFFAFFFFFFFFFDFFFFFCFFFFFAFFFE
          FDFFF4FEF2F6FFF8F6FFFFF6FAFFF4F7FFF3F5FFF0F2FFF4F9FFF6FCFFEAF2F1
          FAFFF7F2FDE9FFFFF0FEFFEEFFFFF5FAF8F0FFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFF4FFFFF8FFF6F1F2FFFFF8FAFFF4EFFAF7F1F8FFC5
          C3FF2D1D9A280FB72602D02400DD2200DE2100D92103D01F05CD1B04D21902D6
          1901D71900DA1B00DE1B00E11B00E21B00E41D00E21D00E11D00DE1D00DA1F01
          D61F02D31F04D01F04D01F02D31F01D61F00D71F00D91D00DB1D00DD1D00DE1D
          00E01D00E01B00E01B00DE1900DE1B00DD1900DB1900DA1B02D62103D02102CF
          2500DA2900DE2500D82400C73A21BF5548BBDDDBFFEFF1FFECECFFAEA9DC3E35
          6DDED7FFF1F1FFFAFAFFF8F1FF7568A047347DDBCCFFFAF5FFEAEDF5FBFFFCF6
          FCF7FBFDFFFBFCFFFDFEFFFDFFFEFDFFFCFDFFFBFFFFFBFFFFFCFFFFFEFFFEFE
          FEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3F297BF8E4FFF7F2FFFBFEFFFDFA
          FFFFFEFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF8EEFEFFFAFF
          FFFFFCFDFFFBFAFFFFF6EFFF6949D03508C32F00CD2B02C1543FCA5E51CB2C1C
          A5200BA83110CC2607B03C2690E9DDFFFAFBFFFAFFFAFBFFF8F0F4EEFFFCFFFB
          F7FFFFFFFFFFFFFCFFFFFCFFFFFEFDFCFFFDFCFFFDFFFFFDFFF9FFFFF5FFFFFB
          FFF8FFFDF7FFFBFEFFFAFFFFF8FDFFF8F9FFF8F5FFFAF6FFFBFDFFFDFFFCFFFF
          FCFFFFF9FFFFF8FFFFF9FFFFFEFFFFFCFFFFF5FFFFF8FFFEFFFDFAFFFDF7FFFB
          FBFFFBFFF9FAFFF1FAFFEEF8FFF1F8FFFCF8FEFFF8FEFFF6FCFFF6F8FFF6FAFF
          F8FFFFF8FFF9F8FFF4FAFFF2FAFFF7FBFFF8FBFFF9FDFFFBFFFFFBFFFFFCFFFF
          FEFFFFFFFFFEFFFFFEFFFFFFFEFFFEFEFFFDFFFFFEFFFFFFFEFDFFFEFBFFFFFA
          FCFFF8F8FFF8F6FFF6F7FFF6F9FFF6FCFFF6FFFFF8FFFFF8FFFFFAFFFBFBFFFB
          FDFFFEFDFFFFFFFDFFFFFEFFFFFFFEFFFFFBFFFFF8FFFFF7FFFFF7FFFFF8FFFF
          FBFFFFFCFFFFFEFFFEFFFBFAFFFAFAFFFAFDFFF8FEFFF8FBFFF8FAFFF8FBFFF8
          FFFFFAFFF5FBFFF0FBFFF2FDFFF9FFFDFFFFFBFFFFFDFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFEFFFDFCFFFFF8FFFFF9FFFFFEFFFFFFFBFFFFFCFF
          FCFFFFF5FFFFF6FFFFFEFFFFFFF1FFFFE4FFFFE9FFFFFFFBFDFFF6FFFEEAF9FC
          EBF4FFEAE7FF2916A3351DB9281392EFE6FFF6FAFFFBFFF9FFFFFBFFFEFFFFFB
          FFFFF8FFFFF4FFFFF4FFFFF7FFFFFBFFFFFFFCFFFFF8FFFFF7FDFFF9FDFFFFFB
          FCFFFAFAFFFAFAFFFAFCFFFAFDFFFAFEFFFAFCFFFBFAFFFBFBFFFAFFFFFAFFFE
          FAFFFEFBFFFCFBFFFBFDFFF9FFFFFBFFFFFCFFFFFFFFFDFFFFFDFFFFFDFFFDFF
          FFFDFFFEFDFFFBFDFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFBF9FFEFF2FF
          F6FFFEE9EDFF4C39A620009F300EC02C0EB56855DAA493FF6146CB351A923A27
          7ED9CFFEFBFDFDFCFFF1FDFFFBFDFFFFFDFEFFFDFCFFFFFBFFFFFBFFFFFCFFFF
          FDFFFFFEFFFFFFFFFDFFFFFBFFFFFBFEFFFAFDFFFAFCFFFAFBFFFBFBFFFDFAFF
          FDF9FFFDF8FFFDF9FFFDFAFFFFFBFFFFFBFFFFF9FFFFF5FFFFF2FFFFF3FFFFF7
          FFFFFDFFFFFFF2FFFFEEFFFFF7FFFFFEFFFDFFFFFCFFFFFCFFFDFEFFFBFFFEFA
          FFFCF8FFFEF8FFFFF8FCFFF8FBFFF8FAFFF8FBFFFAFCFFFAFDFFFAFDFFFAFFFF
          FAFFF9FBFFF4FBFFF1FDFFF5FFFFFEFFFCFFFFFAFFFFFAFFFFFEFFFFFFFBFDFF
          F8FDFFF9FDFFFFFBFFFCFAFFF2F8FFF4F8FFFFF6FCFFF6FCFFF6FCFFF6FDFFF6
          FBFFF8F6FFFAF5FFFBF6FFFDF9FFFFFEFFFFFEFEFFF9FFFFFBFFFFFFFCFFFFF9
          FFFFFBFFFFF8FFFFF1FDFFF2FDFFFEFBFFFCFBFFEEFAFFEBFAFFF2F8FFF4F8FF
          F2F8FFF8F8FEFFF8F9FFFAF5FFFBF5FFFDF7FFFDFBFFFDFFFFFDFFFCFFFFF9FF
          FFF9FFFFFCFFFFFEFFFEFFFFFDFFFFFDFFFFFDFFFFFEFFFFFFFFFAFFFDF8FFFB
          F8FFFBF8FFFCF8FFFFF8FDFFF8FAFFF8F9FFFAF7FFFAF6FFFAF6FFFEFAFFFFFF
          FEFFFFF4FFFFE9FEFFE8FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFFAFFFFFAFFFFFEFFF1F5F6E5EDF4F1F7FF9B99DF35299F280DBB2400D7
          2200EC2100F31F00EC1F00E21F02D41D06CD1B05CF1B05D01D02D41D00D91D00
          DE1D00E21F00E71F00E81F00E81F00E52100E22100DD2100D92101D42203D021
          03D02202D32101D62200D92100DB2100DE1F00E12100E41F00E51F00E41D00E2
          1D00E11D00DE1D00DB1D00D91B02D61D01D62304DB1F00D71F00D82400DF2300
          E01E00D72B06D23A1ECB4230B3E8DDFF9D95E83A3279B0A9E6F1EEFFF6F9FFF3
          F3FF72659B433472E3D8FFF3EEFFF1F4FCFAFFFCFBFFFCFBFFFFFBFCFFFBFBFF
          FDFDFFFDFFFEFDFFF8FDFFF7FFFFFBFFFFFCFFFFFEFFFEFEFEFDFFFCFEFEFDFF
          F9FBFFF9F8FBFFF6F0FF3F297BF8E4FFF7F2FFFBFEFFFDFAFFFFFEFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFF6FFFFF5FFF4EFFEF3F3F9F8FB
          FFF8F4FF785FC7431DB74113D12E00C42B07B23617BA381AC12C10B7280EAE34
          1DA1A997EAFBF1FFFBFDFFFCFFF8FDFFF9F9FCFAFFFCFFF7F4FDFFFFFEFFFFFB
          FFFFFCFFFFFFFDFCFFFDFCFFFDFFFEFFFFF8FFFFF2FFFFF5FFFEFFFFFEFFFDFF
          F9FBFFF7FBFFFCFBFEFFFBFBFFFBFBFFFDFFFFFFFFFBFFFFFCFFFFFBFFFFFBFF
          FFF8FFFFF5FFFFF1FFFFF0FFFFF4FFFEFFFFF9FFFDF6FFFDF7FFFDFDFFFBFFF9
          FBFFF4FAFFF2FBFFF9FAFFFEFAFFFFFAFFFFFAFFFFFAFFFFFAFFF7FAFFF4FBFF
          F7FBFFFCFBFEFFFDFDFFFDFFFFFDFFFBFFFFF8FFFFF9FFFFFCFFFFFFFFFEFFFF
          FFFEFFFFF8FFFFF8FFFDFFFFFDFFFFFEFFFFFFFEFFFFFEFFFEFFFFFBFFFDFAFF
          FDFBFFFBFDFFFBFEFFFBFEFFFBFBFFFBFDFFFBFFFCFBFFFBFDFFFFFDFEFFFFFD
          FFFFFDFFFFFFFEFFFFF9FFFFF8FFFFF8FFFFF9FFFFFBFFFFFBFFFFF9FFFFF7FF
          FFF9FFFCFFFDFCFFFDFFFFFDFFFFFDFCFFFDFAFFFDF8FFFDFAFFFFFEFFFFFFF9
          FFFFF5FFFFF7FFFFFCFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFFFFFDFCFFFFF7FFFFF9FFFFFFFEFFFFF4FFFFF0FFFFF7FFFAFFFFF7FF
          FFFAFFFFFFFBFFFFEDFFFFEDFFFFF9FFFFFCF9FFF3F4FFFCF1F7FFE3DFFF1E08
          90361AB3281191E9DCFFF8F8FFFDFFF9FFFFF7FFFFF9FFFDFFFFFBFFFFF9FFFF
          FAFFFFFBFFFFFDFFFFFFFCFFFFF9FFFFF9FFFFFCFDFEFFFDFCFFFDFBFFFBFBFF
          FDFCFFFBFDFFFDFCFFFDFAFFFDF7FFFDFAFFFBFFFEFBFFF8FBFFFCFDFFFEFDFF
          FEFDFFFCFFFFFBFFFFFBFFFFFCFFFEFFFFFCFFFFFCFFFDFDFFFDFFFFFDFFFBFD
          FFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFBF3FFFAF6FFE9F5E9F4FFFFBBB4
          F75946BB1C009A4221CA2203A03414AF3713B34C29B931197FA193CDEAE9F2FF
          FFF7FDFFFCFDFFFFFDFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFE
          FDFFFFFDFEFFFDFCFFFBFBFFFBFAFFFBFAFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFAFFFFF7FFFFF4FFFFF1FFFFF2FFFFF6FFFFFCFFFFFFF7FF
          FFF2FFFFF5FFFFFBFFFBFFFFFAFFFFFBFFFFFEFFFFFFF9FFFFF5FDFFF5FDFFFB
          FDFDFFFDFAFFFDFAFFFDFBFFFFFEFFFDFFFCFBFFFCFBFFFBFBFFF9FDFFF7FDFF
          F4FDFFF5FFFFFBFFFEFFFFFAFFFFFAFFFFFEFFFFFFFCFDFFF7FDFFF8FDFFFFFD
          FFFEFDFFF4FDFFF2FBFFF9FBFFFFFBFFFFFBFFFFFBFFFBFDFFFCFDFCFFFFF8FF
          FFF5FFFFF6FFFFFBFFFFFBFCFFFBFFFFFDFEFFFFF7FFFFF4FFFFF7FFFFF8FFFF
          F7FFFFFBFDFCFFFDFCFFFDFFF8FBFFF2FBFFF2FAFFF1FBFFEEFAFFF2FAFFFEFA
          FEFFFBFCFFFBFDFFFDFEFFFDFFFEFDFFFBFDFFFBFFFFFCFFFFFEFFFEFFFFFDFF
          FFFCFFFFFCFFFFFDFFFFFFFFFFFFFEFFFFFCFDFFFEFAFFFEFBFFFCFAFFFCFBFF
          FCFAFFFEFAFDFFFAFAFFFBF7FFFCF5FFFDF4FFFEF8FFFFFEFFFFFFF8FFFFF1FF
          FFF0FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFF7FCFFF8
          EFF2FAF6F6FFE3DEFF695DC12A17A4270CC02200D92100E91F00F21F00F21D00
          EB1D00E21D00D91D03D21F04D01F04D01F02D31F01D61F00D91F00DB2100DE21
          00E02100E02100E02200DE2200DD2200DB2200D92400D72200D72400DA2200DB
          2400DD2200DD2200DE2100DE2200DE2100DE2100DD2100DB2100DA1F00D91F00
          D91F00D71F01D61F00D92402E21C00DB1B00D62102D92405D61F00D11F00D224
          00D22D0AD02208B0271891B2ACFEE1E2FFE6E7FFEDE7FF7062A9433081DDCEFF
          F0F0FFFAFFFBFBFFFCF5FAF8FBFFFFFBFEFFFDFEFFFDFDFFFFFBFFFFFDFFFFFF
          F8FFFFF5FFFFF9FFFFFCFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6
          F0FF3F297BF8E4FFF7F2FFFBFEFFFDFAFFFFFEFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFCFFF8EEFFFFF5FFFFF8FFFDFCFFFBFFFBF3F6FE6B60982D
          157922008D3B15B53613B12D0EA72D10A6250E92524AA9B7B2F7F4EBFFFDF5FF
          F7F8FCFCFFF6FFFFFBFFFFFFFFFCFFFFFCFFFFFFFCFFFFF9FFFFFEFFFEFFFFFB
          FFFFFCFFFFFFFEFFFFF7FFFFF1FFFFF1FFFFF8FFFFF8FFFFF2FDFFF1FDFFF5FD
          FFF9FDFFFFFDFFFFFFFFFEFFFFFCFFFFFEFFFFFEFFFFFEFFFFF9FFFFF4FFFFF1
          FFFFF2FFFFF9FFFCFFFFF7FFFFF4FFFFF4FFFFF8FFFDFCFFFDFFFFFBFFFCFDFF
          FEFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFBFBFFFCFDFCFFFDF7FFFDF5FFFF
          F6FFFFFBFFFFFFFEFFFFF8FFFFF8FFFFFCFFFFFEFFFFFEFFFFFBFFFFF5FFFFF7
          FFFEFEFFFCFFFFFCFFFFFCFFFFFEFFFFFFFEFFFEFFFFFFFFFFFFFCFFFFFBFFFF
          FBFFFFFFFFFBFFFFFBFFFDFFFCFDFFFBFDFEFFFDFCFFFFFCFFFFFEFFFFFFFCFF
          FFF8FFFFF7FFFFF9FFFFFEFFFFFFFFFFFEFFFFF9FFFFF4FFFFF5FFFFFEFFFFFF
          FFFFF8FFFFF9FFFFFFFFFAFFFFF6FFFFF5FFFFF9FFFFFDFFFFFFF8FFFFF5FFFF
          F8FFFFFBFFFDFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFEFF
          FFF9FFFFFBFFFFFFF7FFFFEAFFFFE0FFFFE6FFFFF9FFFBFFFFF9FFFFF9FFFFFE
          FFFFFFFEFFFBFFFFFCFFF4F6F6F8FCFFF4F1FFF1E3FF452BB53718B12E1496F3
          E3FFFAF6FFFFFFFBFFFFF4FFFFF4FFFFFBFFFFFCFFFFF8FFFFF8FFFFFBFFFFFE
          FFFDFFFFFDFFFFFEFFFFFFFFFFFFF9FFFFF9FFFFFEFDFDFFFFF8FFFDF6FFFFF5
          FFFFF7FFFFFBFFFDFFFFFDFFF7FDFFF7FDFFFEFFFEFFFFFEFFFFFEFFFFFFFCFF
          FFF9FFFFFBFFFFFEFFFCFFFFFBFFFFFCFFFFFEFFFFFFFBFFFFF9FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFBFFF2E6FFFBF5FFF5FFEFF6FFF2F4F8FFA29AE02F1B8C29
          0F99391FA93C1FAB3615A5311293341B7DAA9BD9FDF7FFFDFFFFFFFFFFFFFFFC
          FFFFFBFFFFF8FFFFF5FFFFF4FFFFF2FFFFF2FFFFF5FFFFF9FFFEFFFFFBFFFFF7
          FFFDF5FFFDF2FFFDF3FFFFF7FFFFFAFFFFFBFFFFFDFFFFFFFCFFFFF8FFFFF7FF
          FFF8FFFFFCFFFDFFFFF9FFFFF8FFFFF8FFFFF9FFFFFCFFFFFFFEFFFFF8FFFFFB
          FFFBFFFFFAFFFFFBFFFFFDFFFFFFF7FFFFF1FFFFF1FFFFF5FFFEFFFFFBFFFFFB
          FFFFFDFFFFFFF9FFFFF5FDFFF7FDFFF8FDFFFCFFFFFCFFFFF8FFFFF7FFFFF9FF
          FFFEFFFBFFFFFBFFFFFEFFFFFFFCFFFFF7FFFFF7FFFEFFFFFEFFFFFFF8FFFFF5
          FFFFF8FFFFFCFFFDFFFFFEFFFFFFF8FFFFF8FFFEFFFFF9FFFFF4FFFFF5FFFFFD
          FEFFFFF5FFFFF1FFFFF2FFFFF7FFFFFBFFFEFFFFFCFFFFFBFFFFF8FFFFF4FFFF
          F4FFFFF9FFFDFCFFFDFFFFFBFFFCFDFFF9FBFFFBFBFFFFFBFFFFFBFFFBFBFFF8
          FDFFF7FDFFF7FDFFF7FDFFF9FFFFFEFFFEFFFFFBFFFFFBFFFFFAFFFFFBFFFFFD
          FFFFFFFEFFFFF9FFFFF8FDFFF8FBFFFCFDFCFFFAFAFFFCFCFFFAFFFEFCFFFAFC
          FFFBFDFDFFFEFAFFFCFBFFFFFDFCFFFFF9FFFFFCFFFBFFFFF9FFFFFDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF9F0FDE5F8FFF8F4F8FFE3DCFF9C89
          FF260BAE2B0AD01E00D71F00E71D00EB1D00E91D00E71D00E21D00E01D00DD1F
          00DA2101D62102D32102D32102D32102D32102D32101D42101D42200D62101D6
          2200D72200D92200DA2200DB2200DD2200DB2200DA2200DA2200DA2200DB2200
          DB2100DB2200DB2100DB2200DA2100D92100D72101D62101D42102D32103D21F
          01D61F00E31A00DF1A00D72107D7240DD42208D21F00D71F00DB1800CF2302C8
          3521B6C9BEFFECE8FFEDEBFF857ACA332478CFBCFFFAEFFFF6FBFEFAFFF4EAF2
          E7FBFFFEFBFEFFF7FAFFFDFFFFFDFFFEFFFDFFFFFDFFFFFFFFFFFFFCFFFFF9FF
          FFF9FFFFFCFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3F297BF8E4FF
          F7F2FFFBFEFFFDFAFFFFFEFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFAFFFFF9FFF8F2FFF5F2FBF7FEEFFBFFF8F5F4FFF8EFFFF6E3FFF6DCFF
          E4CBFFE5CEFFF1DDFFEDE4FFDBE1FFF3FAFFFAF7FFF6EFFFFDFDFDFFFFF9FDFE
          FCFBFAFCFDFAFFFFFDFFFFFFFBFFFFF9FFFFFEFFFEFFFFFBFFFFFBFFFFFFFCFF
          FFF7FFFFF7FFFFF7FFFFF9FFFFF9FFFFF7FFFFF7FFFFF7FFFFF9FFFFFBFFFFFC
          FFFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFFFCFFFFF7FFFFF5FFFFF9FFFFFFFFFB
          FFFFF7FFFFF5FFFFF4FFFFF6FFFFF9FFFFFBFFFFFDFFFFFEFFFFFEFFFFFFFFFF
          FEFFFFFEFFFFFEFFFFFFFEFFFEFFFFF7FFFFF3FFFFF1FFFFF4FFFFFBFFFFFFFC
          FFFFF9FFFFF9FFFEFFFFFEFFFFFFFBFFFFF8FFFFF5FFFFF7FFFFFCFFFDFFFFFB
          FFFFFBFFFFFDFFFFFFFEFFFFFBFFFFF8FFFFF7FFFFF7FFFFF9FFFFFFFFFBFFFF
          FCFFFFFFFCFDFFFCFDFDFFFDFBFFFFFBFFFFFEFFFFFFFBFFFFF7FFFFF7FFFFF9
          FFFDFFFFFDFFFFFDFFFFFFFCFFFFF4FFFFF2FFFFF9FFFFF9FFFFF5FFFFF7FFFF
          FEFFFCFFFFF6FFFFF5FFFFF7FFFFFBFFFFFFFBFFFFF5FFFFF5FFFFF9FFFDFFFF
          FBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFF9FFFFFCFFFBFFFFFBFFFFFF
          F7FFFFEAFFFFDDFFFFE0FFFFF2FFFEFFFFF9FFFFF7FFFFF9FFFFFAFFFFF8FFFF
          FAFFFFFFFEFDFEFFFAF5FFF4EAFF8E7AE4624DC14A359BDBCFFFFBFAFFFFFFF8
          FFFFF4FFFFF4FFFFFBFFFFF9FFFFF0FFFFEDFFFFF1FFFFF8FFFEFFFFFBFFFFFA
          FFFFFCFFFFFFFEFFFFF9FFFFF9FFFFFEFFFBFFFFF9FFFFF7FFFFF8FFFFFBFFFF
          FFFFFFFFF7FFFFF7FFFFFFFFFCFFFFFBFFFFFDFFFFFFFCFFFFF8FFFFF8FFFFFC
          FFFDFFFFFBFFFFFBFFFFFDFFFFFFFCFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FBFFF0E4FFFFF9FFFDFFF4F4FFEAF8FFFFF4F6FFEBE1FFCBBCFFA898F6AA98FB
          AD99FCCCB9FFF8E5FFFAECFFF7F2FFFBFAFFFFFEFFFFFFFEFFFFFBFFFFF9FFFF
          F7FFFFF5FFFFF5FFFFF7FFFFF9FFFFFCFFFEFFFFFCFFFFF9FFFFF8FFFFF7FFFF
          F7FFFFF9FFFFFAFFFFFDFFFFFFFEFFFFF8FFFFF4FFFFF2FFFFF2FFFFF5FFFFF8
          FFFFFEFFFDFFFFFCFFFFFBFFFFFCFFFFFEFFFFFFF9FFFFFBFFFBFFFFFAFFFFFA
          FFFFFDFFFFFFF7FFFFF1FFFFF1FFFFF5FFFEFFFFFCFFFFFCFFFFFFFFFFFFF7FF
          FFF2FFFFF2FFFFF8FFFEFFFFFEFFFFFFFCFFFFF9FFFFF8FFFFFBFFFDFFFFFBFF
          FFFEFFFFFFFCFFFFF5FFFFF7FFFEFFFFFCFFFFFEFFFFFFFEFFFFFCFFFEFFFFFB
          FFFFFDFFFFFFF4FFFFF0FFFFF4FFFFFEFFF7FFFFF4FFFFFDFDFFFFF2FFFFEEFF
          FFEFFFFFF5FFFFFCFFFEFFFFFBFFFFF9FFFFF6FFFFF4FFFFF4FFFFF7FFFFF9FF
          FFFCFFFFFEFFFFFFFEFFFFFCFFFFFEFDFFFBFBFFF7FBFFF4FDFFF2FDFFF4FDFF
          F7FDFFF9FFFFFEFFFEFFFFFBFFFFFAFFFFFAFFFFFAFFFFFDFFFFFFFEFFFFF8FF
          FFF7FFFFF7FDFFFEFDFAFFFDF8FFFCFBFFFDFFFEFDFFF5FDFFF5FFFFFCFEFFFD
          FEFEF8FEFFF6FFFFF6FFFDFFFFF4FFFFF4FFFFFBFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBFFFBF6FFF1E2F0EEEFEFFFD2C2FF2C0DBC2B04DC1300D624
          00EE1B00E51B00DE1B03D31B05D01D03D31D00DA1F00E22100E42100DD2100D9
          2101D42103D02105CD2107C92108C61F0AC52108C61F07C92105CD2103D22100
          D72100DB2100E02100DD2101D42103D02102D32101D42100D71F00D92100DB1F
          00DB2100DA2100D92101D62102D32104CF2106CC2107C91F04D01D00E11A00E3
          1B00D91E07D51E08D31C06D11E04D42006D5280CD4331AD60500992F1AB3BAA8
          FF5A4DBB241A74DED6FFF8F1FFDBD7F0FBFBFFF0F5F4F8FFF6FBFFFBFAFAFFFD
          FDFFFDFFFCFDFFF8FFFFF8FFFFFFFFF8FFFFF9FFFFFFF9FFFFF4FFFFFBFFFEFE
          FEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3F297BF8E4FFF7F2FFFBFEFFFDFA
          FFFFFEFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8FBF2FFFFFC
          FFFDFFFFFFFFF6FCE9FDFFF1F2F6F1F8F9FFE5E2FBF4EFFFF8F6FFF6F7FFF4F6
          FFEDF4FFF1FFF2F6FFF2FCFCFFF8F1FEFFFFFCFFFFF9F9F9F9FDFCFFFCF8FFFF
          FDFFFFFFF9FFFFF8FFFFFEFFFDFFFFFAFFFFFBFFFFFFFBFFFFF8FFFEFFFFFCFF
          FFFCFFFFFBFFFFFAFFFFFBFFFFFDFFFFFEFFFFFFFCFFFFF9FFFFF9FFFFF9FDFF
          FCFDFFFEFDFFFFFDFFFFFDFFFCFDFFFEFDFEFFFDFCFFFFFBFFFFFAFFFFFAFFFF
          F9FFFFF8FFFFF8FFFFF9FFFFFAFFFFFCFFFFFDFFFFFFFFFFFFFFFFFDFFFFFCFF
          FFFEFFFFFCFFFFF5FFFFF2FFFFF1FFFFF5FFFFFEFFFFFFF9FFFFFBFFFFFFFDFC
          FFFDFCFFFDFFFBFFFFF7FFFFF9FFFFFBFFFFFCFFFEFFFFFCFFFFFBFFFFFCFFFF
          FEFFFFFFF9FFFFF7FFFFF5FFFFF8FFFFFCFFFEFFFFFDFFFFFEFFFFFFFCFFFFFE
          FFFCFFFFFAFFFDFBFFFDFEFFFDFFF8FDFFF4FFFFF7FDFFFBFFFBFFFDFAFFFFFB
          FFFDFEFFFFFFF7FDFFF2FFFFF7FDFFF8FFFFF7FFFFF9FFFFFEFFFDFFFFFAFFFF
          F8FFFFFAFFFFFCFFFFFFFBFFFFF7FFFFF7FFFFFBFFFDFFFFFBFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFBFFFFF5FFFFF7FFFDFFFFFCFFFFFFFCFFFFF2FFFFE7FF
          FFE7FFFFF2FFFFFCFFFBFFFFF9FFFFF9FFFFF8FFFFF6FFFFFBFFF8FAE6FFFFED
          FDFFF8F4F6FFF4F5FFF3F2FFE9E6FFF8F9FFFDFFF9FFFFF1FFFFF5FFFFFBFFFC
          FFFFFEFFFFFFF0FFFFE9FDFFEBFDFFF2FDFFFEFDFCFFFDF7FFFDF7FFFFF9FFFF
          FCFFFFFFFBFFFFF4FFFFF1FFFFF4FFFFFCFFFCFFFFF8FFFFFAFFFFFFFBFFFFF8
          FFFDFFFFF9FFFFF9FFFFFBFFFFFFFCFFFFF7FFFFF5FFFFF9FFFDFFFFFBFFFFFA
          FFFFFBFFFFFFFEFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFCF8F7
          FDFEF5F9FDF2E7ECEAEAF0F7F6F9FFEFF2FFF2F7FFF4F8FFEEF0FFEDEAFFF8F0
          FFF6EDFFF2EDFFFDFAFFFFFDFFFFFEFFFFFEFFFFFEFFFFFDFFFFFCFFFFFBFFFF
          FBFFFFFBFFFFFBFFFFFEFFFFFFFEFFFFF8FFFFF2FFFFEEFFFFF1FFFFFCFFFEFF
          FFFFFFFFFFFEFFFFFCFFFFFBFFFFF9FFFFF9FFFFF8FFFFF7FFFFF5FFFFF5FFFF
          F7FFFFF8FFFFF9FFFFF9FFFFF8FFFFFBFFFCFFFFFAFFFFFAFFFFFDFFFFFFF9FF
          FFF5FFFFF5FFFFF8FFFEFFFFFDFFFFFDFFFFFFFFFFFFF7FFFFF2FFFFF2FFFFF9
          FFFBFFFFFAFFFFFEFFFFFFFCFFFFF7FFFFF8FFFEFFFFFCFFFFFEFFFFFFFCFFFF
          F5FFFFF8FFFDFFFFF9FFFFF8FFFFF8FFFFFBFFFFFCFFFFF9FFFFFDFFFFFFEDFF
          FFE2FFFFDFFFFFECFFFAFFFFF4FFFFFCFDFFFFFBFFFFF9FCFCF0FFFFF4FDFFF5
          FDFFFBFDFFFFFFFDFFFFFBFFFFFCFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFCFFFF
          FBFFFFF8FFFFF4FFFFF4FDFFF7FBFFF8FDFFF7FDFFF7FDFFF8FDFFF9FFFFFEFF
          FEFFFFFCFFFFFBFFFFFAFFFFFBFFFFFDFFFFFFFEFFFFF9FFFFF8FFFFFBFDFFFF
          FDFAFFFDFAFFFFFEFFFFFFF9FFFFF2FFFFF1FFFFF8FFFFFBFFFFF9FFFFF8FDFF
          F9FDFCFFFDF4FFFEF4FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          FFFFEDFAFCE8F2FFD9D1FF2F18A82400C91600D92F06FC1000E01900E01903D3
          190AC61B0BC41D07CB1F01D62100E42100E72100E01F00DA2100D71F02D32104
          CF1F06CC1F07C91D08C81D08C91D07CB1D05CF1D03D31D01D71D00DB1D00DE1D
          00DD1D01D61D03D31D02D41D01D61D01D71D00D91D00DA1D00DA1D00DA1F00D9
          1F01D61F02D42102D31F04D02104CF1F02D41C00E11C00E51D02DB1903D31601
          CF1501CC1803D11D07D21700C71901C5290ECF2208BA3D28C13C2DA7C7C2FFEF
          F0FFF0F2FFFBFEFFEBEBF7FBFCFFFBFFFFF0F5F3FDFEFFFDFEFFFDFFFBFDFFF7
          FFFFF5FFFFFCFFF9FFFFF9FFFFFFFEFFFFF8FFFFFCFFFEFEFEFDFFFCFEFEFDFF
          F9FBFFF9F8FBFFF6F0FF3F297BF8E4FFF7F2FFFBFEFFFDFAFFFFFEFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFF1FFFFF4FEFDFFFFFDFFFDFF
          F6FFFFF2FFFFF7FDFFF8FDFFFBFBFFFBFBFFFBF5FCF9E7EDF4F8FFFFF8FFEBFA
          FFEBFFFFFEFEFAFFFFFFFBFFFFF8FCFAFAFFFDFFFFFBFFFBFAFEFFFFF8FFFFF7
          FFFFFEFFFDFFFFF9FFFFFBFFFFFFF9FFFFF9FDFCFFFDF9FFFFFBFFFFFBFFFFF9
          FFFFFAFFFFFBFFFFFDFFFFFFFCFFFFFBFFFFFCFFFFFEFDFFFEFBFFFEFBFFFFFB
          FFFFFDFFFFFDFDFFFDFBFFFDFBFFFFFCFFFFFEFFFFFFFCFFFFFCFFFEFFFFFCFF
          FFFAFFFFFAFFFFFBFFFFFEFFFFFFFCFFFFFCFFFDFFFFFDFFFFFFFEFFFEFFFFF9
          FFFFF6FFFFF6FFFFFAFFFFFFF8FFFFF4FFFFFBFFFDFFFDF8FFFDFAFFFDFFFBFD
          FFF7FDFFFFFFFEFFFFFFFEFFFFFEFFFDFFFFFCFFFFFBFFFFFDFFFFFFFBFFFFF7
          FFFFF8FFFFFBFFFEFFFFFEFFFFFFFFFFFFFCFFFFFBFFFFFEFFFBFFFFFAFFFDFB
          FFFDFFFFFDFFF7FDFFF2FDFFF5FBFFFCFDFAFFFBF8FFFDF8FFFDFCFFFDFFF9FD
          FFF4FBFFF7FBFFF8FBFFFBFBFFFCFDFFFFFDFFFFFDFDFFFDFDFFFFFDFFFFFEFF
          FFFFFBFFFFF8FFFFF9FFFFFCFDFCFFFDFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFFFFF1FFFFF4FFFEFFFFFAFFFFFBFFFFFEFFFFFFF9FFFFF7FFFFF9FFFFFC
          FFFFFFFFFDFFFFFDFFFFFBFFFFF9FFFFFCFFFFFFF1FFFFEBFFFFEEEEF8E7F8FF
          FBF6FFFFF2FAF9F2F9F2FFFFF1FFFFF2FFFFFCFFFAFFFFF6FFFFFAFFFFFFF2FD
          FFEAFBFFF0FBFFF5FBFFFBFBFFFFFDFAFFFDF8FFFFF7FFFFFAFFFFFFFFFFFFF5
          FFFFEBFFFFEAFFFFF1FFFFFBFFFAFFFFFAFFFFFFFBFFFFFBFFFAFFFFF7FFFFF7
          FFFFFAFFFFFFFCFFFFF5FFFFF2FFFFF7FFFEFFFFFBFFFFF9FFFFFBFFFFFFFFFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFF4FEFAEFFFFDFEFFFEFFFFFF
          FCF9FFFAF2FAFAF2FCFCF5FFFDF6FFFCF6FFFBF8FFFFE3E0F9FAF6FFFBFAFFEC
          EEF6FFFEFFFFFEFFFFFEFFFFFDFFFFFCFFFFFBFFFFFAFFFFF9FFFFF9FFFFFBFF
          FFFDFFFFFFFCFFFFF4FFFFEDFFFFE6FFFFE9FDFFF5FDFFFBFDFFFBFFFFFCFFFF
          FFFFFEFFFFFDFFFFFEFFFFFFFCFFFFF9FFFFF4FFFFF2FFFFF4FFFFF5FFFFF9FF
          FFFBFFFFF9FFFFFCFFFDFFFFFBFFFFFBFFFFFDFFFFFFFEFFFFFBFFFFF9FFFFFC
          FFFDFFFFFDFFFFFDFFFDFFFFFDFFF8FFFFF4FFFFF3FFFFFAFFF8FFFFF6FFFFFA
          FFFEFFFDFEFFF4FEFFF6FFFEFFFFFDFFFFFEFFFFFFFCFFFFF5FFFFF8FFFCFFFF
          F9FFFDFAFFFDFBFFFFFDFFFFFBFFFFF6FFFFF9FFFFFFF2FFFFE4FFFFE1FFFFEB
          FFFDFFFCF4FFFFFCFFFFFFFEFFFFFEFBFDF7FFFFF7FDFFF7FDFFFBFDFFFEFFFE
          FFFFFEFFFFFFFBFFFFF9FFFFFCFFFFFEFFFFFFFFFFFFFFFEFFFFFFFBFFFFF4FF
          FFF4FDFFFCFBFFFFFDFFFEFDFFFBFDFFF9FDFFFBFFFFFCFFFFFFFFFEFFFFFCFF
          FFFBFFFFFCFFFFFDFFFFFFFFFFFFFCFFFFFBFEFFFAFDFFFEFDFEFFFDFEFFFFFE
          FFFFFFFEFFFFF9FFFFF7FFFFF7FFFFF7FFFFF7FFFFF9FFFFFEFFFDFFFFF9FFFF
          F9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFFEEEDFFB5B0FF
          170882220AAC2909D2320EEE0500CA2408EB1903D41807CC190BC41B0BC41F07
          C92102D32200DE2200E11F00DD1D00DA1F00DA1D00DA1F00DB1D00DB1D00DD1B
          00DD1B00DD1B00DD1B00DB1B00DB1900DA1900DA1900DA1900DB1900DE1900E0
          1900DE1900DD1B00DB1B00DA1B00D91B01D71B01D71D00D91D00DA1D00DB1F00
          DE1D00E01F00E11D00E11A00E01B00DE1900DA1700D41601CF1501CF1703D219
          01D7280CE81A00D81B00CE3015D015039636319AE6ECFFE8F3FFF6FFFCF2FBEE
          F4F7FBFBFBFFE6E6F4FBFCFFFDFFFFEDF1ECFFFFFBFFFFFBFFFFF9FFFFF9FFFF
          F9FFFFFEFFFBFFFFFAFFFFFEFFFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6
          F0FF3F297BF8E4FFF7F2FFFBFEFFFDFAFFFFFEFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF8FFFFEBFCFFEEFCF7FFFFF6FFFFFBFFFFFFFFFFFFFBFA
          FEF3FFFFF8F5F7F1FCFBFDFDFAFFFBF4FFFBF6FFFAFFFEF4FAEFFDFBFBFFFEFF
          FDFBF3FBFCF3FFFDFFFFFCFFFFFBFFFCFBFFFDFFF8FDFFF7FDFFFEFDFDFFFFF9
          FFFFFBFFFFFFF9FFFFF9FDFAFFFBFAFFFDFFFFFFFFFCFFFFFEFFFFFEFFFFFCFF
          FFFCFFFFFCFFFFFEFFFCFFFFFCFFFDFEFFFBFFFFFAFFFBFAFFFCFBFEFFFDFCFF
          FDFAFFFDFCFFFFFFFEFFFFF4FFFFEBFFFFEAFFFFF1FFFFF9FFFDFFFFFBFFFFFD
          FFFFFFFCFFFFF7FFFFF5FFFFFBFFFFFBFFFFF4FFFFF4FFFFFCFFFEFFFFFFFEFF
          FFF7FFFFEBFFFFEDFFFFFBFFFBFFFDF5FFFDF7FFFDFFFEFBFFF9FAFDFFFAFCFF
          FAFFFEFAFFFCFBFFFFFBFDFFFDFBFFFDFCFFFFFFFCFFFFF9FFFFFCFDFFFFFFFC
          FFFDFDFFFDFFFBFDFFF8FFFFF9FFFFFFFFFBFFFFF9FFFDFBFFFDFFFFFBFFF5FB
          FFF2FBFFF5FAFFFEFBF9FFFAF6FFFBF6FFFBFAFFFBFFFEFBFFF7FAFFF7F8FFF9
          F8FFFFF8FFFFFAFFFFFAFFFFFBFFFCFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFAFF
          FCFAFFFFFAFCFFFBFBFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFEEFFFFF1
          FFFEFFFFF8FFFFF4FFFFF3FFFDF5FFFDF8FFFDFCFFFDFFFEFDFFF8FFFFF5FFFF
          F5FFFFF8FFFFFCFFFEFFFFF9FFFFF8FCFFFCF4FFFFF4FBFFF1E9F7DFF4FFECFD
          FFF2FFFFF4FFFFFBFFF8FFFFF1FFFFEEFFFFF4FFFFFFF8FDFFF0FAFFFEFAFFFF
          FAFFF9FBFFF7FDFFF9FDFFFEFFFBFFFFFAFFFFFBFFFFFFFFFFFFF4FFFFEEFFFF
          EDFFFFF1FFFFF8FFFFFBFFFFF8FFFFFEFFF8FFFFF5FFFFF5FFFFF8FFFFFFFCFF
          FFF4FDFFF1FDFFF5FDFFFFFDFBFFFFF9FFFFFAFFFFFEFFFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFBFFFFF2FFFFF7FFFAFFF2E7F7FFFFFEFCFFFBFAFEFFF8
          FDFFF8FEFFE2EAEAEAF7E9F8FFF8F2F6FBF6F9FFFBFFFCFBFFF9FFFFFEFFFFFF
          FFFFFEFFFFFCFDFFFBFDFFFBFDFFFCFDFFFFFFFEFFFFFDFFFFFDFFFFFDFFFFFE
          FFFFFFFBFFFFF8FFFFF4FDFFF2FBFFF2FBFFF5FDFFFBFDFFFFFDFCFFFFFBFFFF
          FBFFFFFDFFFFFFFFFFFFF9FFFFF8FFFFFBFFFEFFFFFAFFFFFBFFFDFFFEFBFFFC
          FDFEFFFDFCFFFDFCFFFDFCFFFFFEFFFFFFFFFEFEFEFCFEFFFCFBFFFAFBFFFAFD
          FFFAFEFFF9FFFAFAFFF6FFFFF4FFFEFDFFF5FFFFF4FFFFF9FFFFFEFEFEFFF3FE
          FFF3FDFFFFFDFDFFFDFFFFFDFFFCFFFFF5FFFFF9FFFBFFFDFCFFFBFFF8FBFFF2
          FBFFF5FBFEFFFDF2FFFDF2FFFFFCFFFFFFF7FFFFF0FFFFF8FDF6FFF5ECFFF7F6
          FFFDFFFFFDFFFCFDFFFCFDFFFCFDFFFEFDFEFFFDFDFFFFFCFFFFFEFFFFFFF7FF
          FFF5FFFFFBFFFEFFFFFBFFFFF9FFFFF8FFFFFAFFFFFFFCFFFFFCFDFBFFFBFAFF
          FDFCFFFDFEFFFDFFFEFDFFFBFFFFFBFFFFFCFFFFFFFFFEFFFFFDFFFFFDFFFFFD
          FFFFFEFFFFFEFFFFFFFBFBFFF6FBFFF4FDFFF2FDFFF7FFFDFFFEF9FFFDF4FFFB
          F5FFF9FAF0FDFFEDFFFFF2FFFFF8FFFEFFFFFCFFFDFEFFFDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFDFFFFFFFFFEFFFFF9FFFFF9FFFFFEFFFEFFFFFEFFFFFFFFFFFFFEFFFFFE
          FFFFFEFDFFFEFBFFFCFBFFFFFBFBFFF4F1FFC9BDFF2F1FA82D17B62206BD1E00
          CC2203DC1C00DC1600D41805D01808CB1908C91D09C62209C5260AC2290CBB29
          0FB72910B42810B42610B6240DBD2207C82102D31F00DE1D00E41B00E41900E2
          1900E01900DD1900DB1900DA1901D71901D91900E01800E11800E01900DE1900
          DD1B00DA1B00D91B01D71D01D71D00D91D00DA1D00DD1F00E21D00E51F00E81D
          00E71D00E01B00DC1700DB1600D81705D41A09D61B06D71901D91C00DA2100D5
          3115CD937FFFD0C7FF3331835F61A8EDF1FFE9EFFAFBFFFEFDFEFFEAE8F4FFF6
          FFFBF5FFF7F8F4FFFFF8FDFFFFFBFBFFFAF7FFFAF7FFFAFCFFF8FBFFFAF1FFFA
          EFFFFAF4FFF9F4FFF9F4FFF9F5FFF8F9FFF6F9FFF4F3FFF2E9FF3B2682F4DFFF
          F4EAFFF8F4FFF8F1FFFBF4FFFBF6FFFBF8FFFAF8FFF8F8FFF8F7FFF8F6FFF6F6
          FFF6F6FFF6F7FFF6F7FFF6F8FFF8F6FFF8F4FFFAF4FFFAF6FFFBFAFFFDFFFEFD
          FFF4FEFFECFBFFF1FFF8FFFFF5FFFFF7FFF8F3FCFFFEFFFDFCFFF9F8FFF4F2FF
          F1EEFFF6EEFFF6E8FFEEE2FFF1F0FFFBFFFFFBF8FAFFFEFFFFFFF8FFFFFBFFFE
          FFFCF8FEFFFCFFFEFDFFFDFFF9FDFFF8FDFFFEFDFDFFFFFBFFFFFCFFFFFFFBFF
          FFFBFDFBFFFDFBFFFDFFFEFFFFF9FFFFF9FFFFF9FFFFF9FFFFFBFFFFFCFFFEFF
          FFFBFFFFFBFFFDFDFFFBFFFFFAFFF9FBFFF9FDFFFFFFFBFFFDF7FFFBF6FFFAF9
          FFF8FCFFF8FFFFF8FFFCF8FFFFFAFBFFFBF5FFFBF3FFFBF4FFFBF7FFFBFAFFFB
          FBFFFDF9FFFDFAFFFFFDFFFDFDFFFDFBFFFDFAFFFBFBFFFBFEFFFAFFFCFAFFFF
          FAF9FFFAF3FFFAEFFFF8F1FFFAF8FFF6FAFFF4F4FFF3F4FFF3F7FFF4F8FFF6F6
          FFF8F5FFF8F6FFFAF9FFFBFEFFFDFFFBFDFFFBFFFFFEFFFDFFFFFDFFFFFFFEFF
          FFFBFDFFFEFBFBFFFAF3FFF8F0FFF4F1FFF4F4FFF4F8FFF6FCFFF8FFFFFAFFFF
          FBF9FFFDF7FFFDF6FFFDF9FFFBFFFFFBFFFBFAFFF9F8FFFBF8FFFFF8FFFFFAFF
          FFFAFFFEFAFFFBFAFFF9FAFFF9FAFFF9FAFFF7FAFFF8FAFFFBFAFFFFFAFBFFFB
          FBFFFFFEFFFFFFFCFFFFFEFDFFFEFBFFFFFAFCFFF8F6FFF6F3FFF6F2FFF6F5FF
          F8FDFFFAFFFEFDFFFBFFFFFBFFFEFFFFFFFCFFFFF0FFFFF5FFF9FFFBF1FFFAEC
          FFF8EAFFF8EBFFF6EEFFF8F2FFF8F7FFF8FCFFF8FEFFF8FEFFF8FEFFF8FCFFFB
          F8FFFFF1FFFFF1FFF1E8FFFBFBFFEFF6F9F6FFFFF8FFFFEFF5FCFBFBFFFDF7FF
          FFEFFFFFEAFFFFE7FFFDEDFFFAF9FFF6FCFFF3F7FFF1F6FFF3F7FFF4F9FFF6FA
          FFFAFBFFFBFBFFFDFCFFFFFEFFFFFFFEFFFFF8FFFFF5FFFFF4FFFFF5FFFFF7FF
          FFFCFDFCFFFBF6FFFBEEFFFAEAFFFAEAFFFAEFFFFBF9FFFBFFFEFDFFF5FFFFF5
          FFFFFFFFFBFFFFF9FFFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFCFFFFF7F8F2EDFFF9FFFFF9FFFFFFFCF9F8EEFFFFFEF8FBFFF0F3FFF6FCFF
          F3FFFFF4FFFFF5FCFFF8FDFFF1F6F5F9FDF8FFFEFFFFFFFFFFFFF9FFFFF8FDFF
          FBFDFFFBFDFFF9FDFFF8FFFFF8FFFFFBFFFEFFFFFDFFFFFCFFFFFDFFFFFEFFFF
          FFF9FFFFF1FBFFF0FDFFF4FDFFF9FDFFFFFFFCFFFFFBFFFFFBFFFFFCFFFFFEFF
          FFFFFEFFFFFEFFFFFFFFFDFFFFF9FFFFFBFFFAFFFFF8FFFEF8FEFFF8FBFFF8F8
          FFF6F6FFF8F5FFF6F3FFF4F0FFF2EEFFF2EBFFF1EAFFEFEAFFEDECFFEDEEFFEF
          EFFFF5F0FFF7EDFFF9E4FFF9E7FFFAF4FFFCFDFFFCFFF4FCFFF3FDFFFEFDFCFF
          FBFBFFFAFBFFFAFCFFF8F9FFF6F3FFF6F5FFF4FDFFF6FFFCF8FFF7FBFFFEFDF5
          FFFFF3FFFDF9FFFAFCFFF5FCFFF1F5FFE7DEFFDDD4FFE4E5FFF7FCFFFFFFFCFD
          FDF7FFFFFEFDFEFFFDFCFFFDFBFFFFFBFFFFFEFFFFFFF8FFFFF5FFFFFBFFFEFF
          FFFBFFFFF9FFFFF8FFFFFAFFFFFEFFFFFEFFFFFAFFFDF9FFFDFBFFFDFDFFFDFF
          FFFDFFFCFFFFFBFFFFFCFFFFFEFFFFFFFFFDFFFFFDFFFFFDFFFFFEFFFFFFFFFF
          FFFEFCFFF8FDFFF4FFFFF0FFFFF4FFFDFFF8F2FFF3EAFFEDE8FFE7E6FFEAEDFF
          F1F3FFF7F8FFF9F9FFFAFAFFFCFFF5FDFFF3FFFFFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFFFBFEFFFDFFFC
          FDFFF0FFFFF0FFFFFCFFFDFFFFFDFFFFFFFFFFFFFCFBFDF7FDFFFCF6FEF7F3FF
          F5F4FFFFEAEAFFE1D8FF2815AC220AC42207C92204CF2100D71F00DA1D01D719
          03D41F0CD71100C81E05D91F01CE2E10C3AE95FFEFE4FFF4EFFFF5EBFFF6EEFF
          F3EEFFEFE7FFEADAFF2911B12505CE2000DC1D00DE1B00DD1B00D91B00D91D00
          DB1D00DB1F00D91D01D71B02D61901D71901D91B00DA1B00DB1D00DB1F00DA1F
          00D91F00D91F00D71F00D91F00DA2100DD1F00E02100E42100E52400E62200E5
          1F00E61500DD0B00CD0F03CF2611E21300C92F0CD82705B0A895FFF3EAFFE7E6
          FF807DB532228DA996FFEEE2FFF9F2FFFFFDFFFFFBFFFFF3FFFFF5FFFFFEF6FF
          FFF8F7F7FFF6F1FFDFD1FFEDE0FFE7E6FFDCDDFFE3DBFFE5DBFFE9DEFFECE0FF
          E9DDFFECE1FFEFE6FFE9DFFFE1D5FFE7D7FF402B9FCFB9FFF1DDFFEAD8FFEEDE
          FFEBDAFFEEDFFFEEE4FFEEE8FFEBE9FFE9E6FFE7E4FFE5E2FFE5E3FFE3E6FFE3
          E8FFDEE1FFD9D7FFECDEFFEDDEFFEDE0FFEAE6FFF8FFF9F9FFEAFDFFF7FCFBFD
          FFF9FFFFF6FFFFFAFFFCF4FFFBFAFFE2E1FFE7E1FFE4DDFFDDD9FFD7D2FFE8DA
          FFEADEFFDADAFFF8FDFFFDFEFFFFFFFFFFFFFEFFFFFEFFFFFFFFFEFFFFFEFFFF
          FFFFFFFFFEFFFFFCFFFFFFFFFEFFFFFEFFFFFEFFFFFFFEFFFFFEFFFEFFFFFEFF
          FFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFFFEFFFFFE
          FFFDFFFFFDFFFEFFFFFBF9F8EEFFFDFFFBF1FFE0D4FFEAE1FFECE6FFD5D5FFE5
          E6FFEAECFFE1DEFFEDE3FFEADDFFE4DAFFEAE4FFE4E3FFE8E7FFEEE7FFF0E8FF
          F2E9FFF0E9FFF0E8FFF0E8FFF0E8FFF0E9FFF0EBFFF0EAFFF0E8FFF0E6FFF0E4
          FFEEE5FFF0E7FFECE8FFE2DCFFEAE4FFE6DDFFEBE0FFE5D8FFF1E4FFEAE0FFF6
          F2FFF8F9FFFAFFFBFEFFF3FFFFF4FFFFF9FFFDFEFFFAFFFFF8FFFBFBFFDCDCFF
          EDE1FFE8DDFFD8D4FFDCDBFFE3DFFFE6E3FFE1E2FFFAFAFFFAF3FFFFFAFFFFF8
          FFFFFAFFFEFBFFFDFFFFFDFFFCFDFFF9FDFFF8FDFFF7FBFFF9FBFFFCFBFEFFFB
          FEFFFBFFFFFBFFF9FBFFF1FBFFF0FBFFF4FBFFFCFBFAFFFFF9FFFFF9FAFFFFF7
          FFFFF9F4FBF4EFFCFAEDF8FFD4D1FF2B1F955F54D0E6E2FFECF7FFE4F7EEF8FF
          F2FAFFF1FFFCFFFEF7FEFAFDEEFDFFFFE7DCFFF0E1FFEDE4FFE6E0FFE9E2FFE5
          DFFFE3DBFFEDE7FFE7E6FFEAEAFFECEAFFE1E0FFE6E7FFE6E4FFF0E6FFF2E5FF
          F2E7FFF0E8FFEEEAFFEEEAFFEEEAFFEEEAFFF0E8FFF0E7FFF2E5FFF2E2FFF2E2
          FFF0E3FFF0E8FFEBEAFFE0E8FFD2D8FFE3E1FFE5DEFFE8DDFFE1D9FFF2F2FFFA
          FFFFFDFFF2FFFFF0FFFFF8FFFEFFFDFBFFFDFBFFFBFEFFF8FBFFE6E9FFE7E5FF
          E2D4FFE8D4FFE2CDFFECDDFFE4DFFFF6F7FFFBFFFCFFFFF5FFFFFBFFFDFFFFFA
          FFFFFAFFFFFCFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFBFCFF
          FFFAFFFFFBFFFFFFF5FFFFF0FFFFF1F1F4EBF7FAFFECF0FFE1EAFFC6CEF3E3E7
          FFF6F5FFEEEAFFFDF7FFF9F4FFF5F4F6FFFFF7FFFFF8F6F5FEF6F4FFFDFFFFF4
          FAEFFFFFEEFFFFF0FFFFFCFFFDFFFFFEFFFFFEFFFFFFFEFFFFF9FFFFF1FDFFF0
          FFFFF7FFFFFBFEFEFEFDFAFCFFFDFDFFFFFEFFFFFFF4F2F2FFFEFFFFFEFFFCFA
          FFFDFBFFF1F2F6FBFFFFF6FFFFEFFCFEEBF4FFEAEFFFEDEEFFEDEAFFD3CBFFA4
          98FF6859D35644CD3B28BF2712B41F0BB1200DB62613BC2918BF1F0FB0210EB1
          2E0FC43117AAEDE8FFF3FAFFFAFFF9F7FEF1F8FBF9FBFBFFF8F4FFDED8FFEFEB
          FFE6E3FFD7D5FFE3E1FFE5E5FFEDF0FFF4FAFFF9FDF7FFFDFEFFFAFFF7F4FFF3
          F7FFDDE6FFB4BAFF3B31C4190D95B8B9F5F8FCFFFBF6F3FFFFF8FFFFFCFFFEFF
          FDFCFFFDFAFFFDFAFFFDFCFFFDFFFFFDFFFBFFFFFBFFFFFBFFFFFEFFFEFFFFFD
          FFFFFEFFFFFFFEFFFFFEFFFEFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFF
          FFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE
          FAF9EFFFFFF8FFFDFFF7F5FFF3F4FF8181BD2E2A894C46B7CCC5FFDDD9FFECF0
          FFF8FFFEEAF1D6FFFFEBFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFFFBFEFFFBFFFEFDFFEEFFFFEEFFFF
          FEFFFCFFFFFCFFFFFEFFFFFFFCFFFFFBFBFFFCF4FFFAF3FFFCD5E1F3EDEBFF4A
          3BB4220CBF1D02D42101D42101D62100DB1F00DA1D01D61904D21905D01500CF
          2001E02100D32A09B8AC97FFF1EEFFFDFFFBFEFDF9FFFFFEFBFFFFF6F7FFEEE5
          FF2D19A12908C72100D81D00DB1B00DA1B02D61B01D71F00DB1F00DD2100D91F
          01D61B03D31903D31B02D61B00D91D00DB1D00DB1F00DB2100D92100D72101D6
          2101D62100D72100D91F00DB2100E02100E22400E42300E31E00E31904DD1102
          D51E0EDD0E00C7341AD8270BAB755ED2ECE1FFF2F0FFF8FAFFF2F0FF6F5EBF37
          2491DACAFFFAEFFFEBE7F2FFFEFFFFF6FFFFF8FFFFFEF5FFFFF6F8F6FFB1A8EB
          341E9F210B9F2419972A239C2E21AB2616A92212A62816A92818A62617A12717
          A12C1CA62E1CAB2E1BAD1D069E4129C32B13AF260EA83A21B72E17A72A15A02F
          1CA12B1D9B291D9B281AA12618A62216AC2117AA211BA2211E9C2826A23329B1
          1A03A5270AAD2E159F3F338BE1EAF7F2FFF0F9FEFCF8F5FEFFF8FFFFF7FFFFFB
          FFFCF4FFF6F3FFBDB8F51F158D2317AB2520B11E17A82716AD3526A07773AEED
          F1FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFCFDFCF2FFFBFFE0D2FF4231923525A22F20AA2F24B0221BA2241C99261D9C
          2A17A92F1AB22613AA2A1AAD1E15A1241BA1281B9F291B9E2B1A9F291B9E2B1A
          9F291B9E2B1A9F291B9E2B1A9F291B9E2B1A9F291B9E2B1A9F291B9E2B1A9F29
          1B9F2819A025159F2712A4331BAF2F15A3321C9A423093988FD2F4F4FFF9FEFF
          FCFFF3FFFFF0FFFFF5FFFEFBFFF9FFFFF6FFF1EEFF7773AE3627A12716AD1F18
          A92520B12317AB1F158DBCB7F4F6F3FFFCF4FFFFFBFFFFF8FFFFFAFFFAF7FFFD
          FEFFFFFFFFFFFFFBFFFFF7FFFFF5FDFFF8FDFFFCFBFEFFFBFEFFFBFFFFFBFFFC
          FBFFF4FBFFF2FDFFF5FDFFFBFDFCFFFFFAFFFFFCFFFFF7F3FFFFF7F8FFFFE9F4
          FFDDE3FF5045CB1B09B02614BF362CB5CFD6FFECFAFFF3FFFFFBFFFCF6EEF9FF
          FAFFFDFFFFDCDBF5503E9B301A98231494261A9C2C21A7291CA62818A62F1CA7
          2A1A972819932B1B9E2D1FA62E23A7251B9D291B9E291B9E2B1A9F291B9E2B1A
          9F291B9E2B1A9F291B9E2B1A9F291B9E2B1A9F291B9E2B1A9F291B9E2B1A9F26
          1D9C2B2AA21B1B9D2415B31903A9230AA04331A2A9A5D9F0F6FDFBFFF1FDFFED
          FFFFFBFFFBFFFDF7FFFBF8FFFAFDFFF4F8FF7072B82E289717069D3018C4290F
          BB200B9D483F9AE4E3FFFBFEFFFFFFF5FFFFF9FFFEFFFFFAFFFFFAFFFFFDFFFD
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FEFFEEF4FBFEFDFFFFFFFCFFFF
          F4FCF6E3FFFFEDFFFFFCF5F8FFEFF0FFD5D4FF27247A392F897F72C6F8E7FFE4
          D5FFFDF3FFFFFBFFF9FDF2FFFFF8FDFAFFFCF7FFFDFDFFFDFFF8FFFFEBFFFFED
          FFFFFEFFFDFFFFFDFFFFFEFFFFFFFEFFFFF9FDFFF1FFFFF5FCFFF6F8F9F5FFFF
          FFFFFEFFFFFFFFF4F4F4F3F3F3F7F9F9FDFFFFFBFEFFF8F8FFFAFAFFFAF7FFEC
          EBFFEFF0FFE3E4FFC5C2FF837DCF392E941A0E8621109D2711B0230CBC2006C4
          1C02CC1B00D21B01D71900DA1600D81200D41B06D71A01D51D00D7250AB8E3E2
          FFEDF9FFFAFFF9FBFFF7F4F6F6EFEBFFA398D63F308C37279D25179F1C10A624
          18AC2015996B66C1F1F3FFFFFFF9FCF7EEFFFDFFF7EFFFD6D3FF3B3D9C1818A2
          1609C90E00B23E3C9CF1F0FFFFFBFFFFF5EEFFFFFBFFFFFFFDFCFFFDFBFFFDFA
          FFFDFBFFFDFDFFFDFFFFFFFFFBFFFFF9FFFFFBFFFFFCFFFFFEFFFFFEFFFFFCFF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFDF8F9FFFFFEFFFFFEF6F5
          F9F6F3FFEBEAFF312C8F1B10A62719C51C0CB7463BC7C9C6FFF1F1FFFFFFF8FD
          FFE9FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFAFFFFFBFDFFFBFFFFFDFFF5FFFFF5FFFFFFFFFCFFFFFBFFFF
          FCFFF7F5F4FDFFFCFAFFFCF4FEFEF1FAFFEFF2FF9B92ED12008A220AC41D02D4
          2101D42101D62100DB1F00DA1D01D61904D21501CC1B05D52001E02605D82403
          B2AB96FFF0EDFFFBFFF9FEFDF9FFFFFEFBFFFFF6F7FFEEE5FF2D19A12908C722
          00D91D00DB1B00DA1B02D61B01D71F00DB1F00DD2100D91F00D71D01D61B02D6
          1B01D71B00D91D00DA1D00DA1F00D91F00D71F02D41F02D31F02D31F02D41F01
          D61D00D91F00DB1F00DE2500E42200DE1700CC1400CB1703D81901D72108CE17
          01A04F43A3F4F0FFFBF8FFF9F7FFF8F3FFEFEEFFF0F2FF575A87504A85D6D0FF
          FBFBFFFFFFFFFFF8FFFFFEFFFFFFF3FFFFFBF8F7FFABA1EE2E12AB2507BA2B16
          B92816B7250EBE1B04BE1A04C81C08CD200DCE1A08C71501BE1E0AC7230ECE19
          03C7250BD52106D20C00BF1700C7260BD11A01C11E06C22911CB2708C12708C3
          2505C82303CC2101D22002CF1E07C71E0BC01602B32B13CD2100CE3208D9330C
          C63218A2F1ECFFF4FAFFFAFEFFFCFBFDFFFCFFFFF8FFFFFCFFFFFBFFF4F0FFA9
          A2E52C1EA11F0FB01B11B11A0DAF1904AD1E08966E64B1F6F5FFFDFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDF5FF
          F4E6FF230E88240EAA1500AE2D17CD1300B5240FBF301ACD1F00C22806CF1E00
          C72303CC1C02C4230CCC1E06CA1C05CB1E04CC1C05CB1E04CC1C05CB1E04CC1C
          05CB1E04CC1C05CB1E04CC1C05CB1E04CC1C05CB1E04CC2005CA290DCA2202BF
          2806C82B09C82805BA2A0BAC361F9FB9AAFFF2EDFFF7F9FFF9FFFAFDFFF4FFFF
          F4FFFFF8FFFDFFFDF7FFF8F4FF6D63B01E08961904AD190CAE1B11B11F0FB02C
          1EA1A9A2E5F4F0FFFFFBFFFFFCFFFFFAFFFFFCFFFEFDFFFDFFFFFFFEFFFFFFFF
          FFFFFEFFFFFCFDFFFBFDFFFBFDFFFCFDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFFFF
          FFFFFFFEFFFFFEFFFFFFFFFBFFFDF6FDFDFFFCF3FAFFEAE7FF6459D52711BD19
          00BE1F09BF10009D261999CDC3FFE6E0FFFBF5FFF9EFFFFFFAFFFBF9FFECE4FF
          32189A290AB3290DBE2B12C82309C71800C22806D62601CD2F0DCC2806C42200
          C62B08D42606CF1C00C81E04CC1C05CB1E04CC1C05CB1E04CC1C05CB1E04CC1C
          05CB1E04CC1C05CB1E04CC1C05CB1E04CC1C05CB1E04CC1C08C51403B21B09BA
          2707D02C07D32B07BF3519A8ADA0F0F8F6FFFBFFFEFDFFF5FFFFFEFFFCFFFDFA
          FFFBFBFFFAFFFEF4FAFF5957A92114981D06AF2C0ECB2A0AC71E04A434278DF3
          EFFFFBFCFFFFFFF8FFFFF9FFFEFEFFFBFFFFFBFFFFFFFFFDFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFAFEFFF6FBFCFFFFF8FFFFF7FFFEF5FFFDF9FFFDFFFA
          F7FFEAEAFFE3E1FF281C94260FA72A0AB53411B527088DA68DEFDFCFFFFDF6FF
          FDFFFEFDFFFBFDFAFFF8F4FFF4F3FCF8FCF6FFFFF1FFFFF2FFFDFFFFFAFFFFFB
          FFFFFEFFFFFFFEFFFFFCFFFEFEFAF8F8FFFFFEFFFFFFFFFEFFF4F1FAF5F2FFFB
          FBFFFBFDFFFAFFFFF2FDF5EFF9F9F5F9FFF4F1FFF4E7FFB09CFF4E34C03519B8
          2709AE2003AD1F01B42B0CC73414D72D0DD62405D22102D31E01D21C02D21D06
          D41D09D41E0AD51E0BD21905C92008CC2000CC3219B7E8E9FFF3FFFEF2FDEDFD
          FFF7FDFDFFFBF2FFAE9AF32E13982204AB2303C62303D82103D2240CB86C60D0
          ECEDFFFCFFF4FFFEFEFBECFF7F6AAF4E3BA82B1CAD1205B42212DC2715D42516
          A0BBAEFFFBEDFFFFFDFFFFFFFCFFFFFCFFFEFFFFFDFFFFFBFFFFFCFFFFFDFFFF
          FEFFFFFFFEFFFFFCFFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFBFBF8F3FFFEFFFFFDFFFDFDFFF8F3FF8779DE1F
          0BA02008C41B05CF1400BF2814C1381FB76E57C1C7BAE0FFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFA
          FFFFFBFDFFFDFEFFFFFFFCFFFFFCFFFDFFFFFCFFFFFBFFFFFDFFFEFEFEF9FDF8
          F8FFFAF4FDFFE2E6FFD9D5FF3120992F17B72107C91D02D42101D42100D72100
          DB1F00DA1D01D61904D21602CD210BDB1F00DF2A09DC2605B4AD98FFF5F2FFFD
          FFFBFFFEFAFFFFFEFBFFFFF5F6FFEDE4FF2C18A02908C72200D91D00DB1B00DA
          1B02D61B01D71F00DB1F00DD2100D91F00D71D00D91B00D91B00D91B00D91D00
          D91D00D91D01D71D02D41D03D31D03D21D03D21D03D31D02D41B01D71D00DA1D
          00DB2100DD2503DD1902C91700C6280FE30B00BB3017C54836B1F3F0FFF0F3FB
          F0EFF1FFFCFFFAF5FFE8EAFFE2F2F8EDFDFF44437B746CABF8F4FFFDFBFFF5F1
          F0FFFFF8FDFDEFFDFFFEF2F0FFA99EF43617C02E08D62608CB1A00C12203D02B
          0DE21B03DD1500DA1C07DF1C09DC1402D11806D51C07D81000CF0E00D01C01E0
          2409E82309E51A02DA1A01D51E07D51B00CE2903D72B02DA2900DD2700E12500
          E52400E32203DA2207D32207CD1A00C83208E92C00E02F02CD3817B5E5DBFFEF
          F1FFFAFCFFFFFFFEFFFDFFFEF4FAFFFDFFFFFAFFFAF5FFAEA5EE3322AF1E09B9
          1A0ABB2512C72F13D02C12B2695BBBEEE8FFFBFAFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF1F0F9F1EBFFF1E4FF2F1A9F381F
          CD1600C2280EDE1C01D31C00D03011E21600CD2902E02200DB2602DE1F00D422
          06DC1C01E01B00E41B00E41B00E41B00E41B00E41B00E41B00E41B00E41B00E4
          1B00E41B00E41B00E41B00E41B00E41E00E12603DD2600D73208E32400D22901
          CB3411C5290E9EA394FDEFEAFFF3F7FFF7FFFEFAFFF5FBFFF5FCFFF7FEFFFDF9
          F7FFEDE7FF685ABA2B11B12E12CF2411C61909BA1D08B83221AEAEA5EEFAF5FF
          FFFAFFFFFDFFFFF6FCFFFEFFFFFFFEFDFFFEFFFEFFFFFDFFFFFDFFFFFEFFFDFF
          FEFDFFFBFDFFF7FDFFF8FDFFFEFDFDFFFFF9FFFFF9FFFFFBFFFFFFFFFFFFF5FF
          FFF8FCF8FFFBF9FFEFF4FFF1F1FF8B7EF22A12B82206CB2507D6270CD1260CC4
          3116C0220894806EC7FBEFFFFFF8FFF5EEFBEEECFFF1E7FF23069C2906C82302
          CF2203DA2100E02501E82600EC1F00E0360AE93208E32100DB2400E22100E023
          00E51E00E41B00E41B00E41B00E41B00E41B00E41B00E41B00E41B00E41B00E4
          1B00E41B00E41B00E41B00E41B00E41C03DD1E04CC2609D12300D83004E13004
          CD2F0CAAAC98F7F0E9FFFBFDFFFDFFFBFFFEFFFFFCFFFDFBFFFDFDFFFBFFF8F4
          FAFF615BBA321EB72D0ECD1B00C72803CF3216C32F1E91ECE5FFFBFAFFFFFFFB
          FFFFFBFFFEFEFFFCFFFFFDFFFFFFFCFDFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFAFEFFFBFFFEFFFFF7FFFFF2FFFAF3FFFDFFFFF9FFEDE6FFF1ECFF9A91F9
          1F07A72A06CE1900CA3E0FE72E06BC2503905E469EE9DCFFFDFDFFF9FCFAFDFA
          FFFDFAFFFDFDFFFDFFFCFFFFF5FFFFF9FFFAFFFFF8FFFFFBFFFFFEFFFFFFFCFF
          FFFCFFFDFFFFFCFFFFFDFFF8F7FBFAFAFFFDFCFFFAFAFFF1F3FFE7EBFDE3EAFB
          F0F6FFF1F4FFC4C1FF5B51AB342097260AA33611D12600D12901D5330AE13009
          E12C04DF2200D71400CB2200D92302D92305DA2508D92108D41C04CE1600C611
          00BF1D06C62D12D32602CA361CB6E3DFFFF6FFFFFAFFF8FDFFFBEEEDF7F9EFFF
          AB96F93215A62907BF2B08DB2400E71A00D92F10D17C69E8F0F3FFF9FEEFFFFD
          FFF0DEFF765BB82B0B98270BC21C05D30600C60F00C32911BD523CBAF7E8FFFF
          F9FFFFFFFEFFFFF9FFFFFCFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFF
          FFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFCFFFFF8FCFBF1FEFAF9FBF9FFFBF9FFF4ECFF270D9B3210D21900D3280CE8
          250BDA1A00C42700C62A05A19A87CCFFF8FFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFFFBFEFFFDFCFF
          FFFCFFFFFCFFFFFDFFFFFDFFFFFBFFFFFCFFFFFFFFF2F8F3F2FBF8F3FAFFEFEB
          FF5141B0371DB72506BF2104CF1D01D62101D62100D72100DB1F00DB1D01D719
          03D31905D0200ADA1A00DA2807DA2B0AB9A792FFF8F5FFFDFFFBFFFEFAFFFFFE
          FAFEFFF4F5FFECE3FF2B179F2908C72200D91D00DB1B00DA1B02D61B01D71F00
          DB1F00DD2100D91F00D91D00DA1D00DB1D00DA1D00D91B01D71B02D61B02D41B
          03D31B04D21B05D01B04D21B03D31B02D41901D71B00D91B00D91C00D41F01D6
          2508D93012DF0F00BC381BCE3E29AEE6D9FFFAF8FFFFFFF9FFFFF8FBFAF6F0F0
          FCF4FDFFEFFFF9ECFEFFD8D5FF473C989388CCFAF3FFFBFCFAFFFFF2FAFCF0FB
          FEFFF6F7FFA89FF62907BF2200DA2100DA1700D11A00D71D00DE1A02DA1100CD
          1200CC1807CD1808CB1606C91807CA1805CC1E0AD51E07D5220ADA1800D01300
          C8260FD62611D21300BF2400D02600D22400D42200D52000D91F00D81F01D01F
          04C92810CA1B00BD2C05D72200C92700BC381BACEDE5FFF3F7FFF8FCFFFDFFFB
          FFFEFFF9F2F5FFFBFCFFFAFFFAF4FFAFA3F5240FA71C04C01D08C91F05CD2401
          D32908BD725DD1F6EBFFFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFBFEFFF6F5FFECE4FF301FA42D16CC1400CB1A01DB1D
          03DF1100D02001D81700CC2706D92201D42606D61B00C61800C61900D41700D8
          1700D81700D81700D81700D81700D81700D81700D81700D81700D81700D81700
          D81700D81700D81900D81D00D41C00D12900DD2100CF2701CB3515C82B11A4A5
          97FFEDE9FFF0F6FFF3FFFFF6FFF8F8FFF5F9FFF7FAFFFDF8F7FFF4EBFF715CD0
          2807BC2200D11E04CC1C07C81A02BE230EA6B0A4F6FAF4FFFFFAFFFFFCFDFAF3
          F6FFFEFFFFFFFBFAFFFBFDFEFFFDFCFFFDFBFFFDFCFFFFFEFFFFFFFBFFFFF4FF
          FFF4FFFFFBFFFCFFFFF5FFFFF4FFFFF8FFFFFEFFFFFFEEFDFFF0F6F9FFEEF0FF
          EFF0FFA19AF53823BC2B0ECF1400C62303DE2200DB2501D71D00C03816BA321D
          80DCCFFFF3EAFEFFFBFFF0F1FFEDE8FF2309A32A08D11900CF1100D61200DC1D
          00EB2200EF1A00DD2400D72803D52300D62000D62000D72708E11900D81700D8
          1700D81700D81700D81700D81700D81700D81700D81700D81700D81700D81700
          D81700D81700D81900D42509D12906D21E00D02900D32A00C2320DA9B5A1FFFA
          EFFFFBFBFFFDFFFEFFFEFFFFFDFFFDFDFFFDFFFFFBFFF4F4FAFF6B60CE260BB9
          2000CD1800D12C03E02B0AC6230E8CF1E9FFFAF8FFFFFFFEFFFFFCFFFEFEFFFD
          FFFFFEFFFDFFF9FDFFF8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFCF5F9F3
          FFFFF9FFFFF8FFFFF9F8F3F5FDF7FFF6EDFFCDBEFF210DA22E0DD3320BF01A00
          DE1900DA4C1EFF2300B32B0D84E8D7FFFBFAFFFBFFFFFDFBFFFDFBFFFCFAFFFF
          FFFEFFFFF9FFFFFFFFF7FFFFF5FFFFFAFFFFFEFFFFFFFBFFFFFBFFFBFFFFF9FF
          FFFAFFFDFBFFF8F9FFF3F7FCF6FFFFF4FDFFF1F7FFECECFFBFB6FF5E4EC3220D
          982B14AC2C15B3260CB81E00C61A00CE2200D62402D81700CB1600CA2301D72B
          0ADD2000D21E00D01C00CF1C00CE1E00D02304D5280AD92E0FDC2100CC330FD8
          1C00C02300A4B4A9F2F4F5FFFCFCFFFAFBFFFDFBFFFAF1FFAC9AF7341CA2250D
          B11F07C31802CD1800CD1A00BC604BD0F2F4FFFDFFF5F1ECEBFFF2FFE4C7FF2C
          06A52200D02300EB1500DA1C08D6290ED02C12ACF4E4FFF1EAFFFFFEFFFFFFF7
          FFFFF8FFFFF9FFFFFCFFFFFFFFFEFFFFFDFFFFFDFFFFFEFFFDFFFFFDFFFFFDFF
          FEFDFFFEFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFF5FFFFF7
          FFFFF9FAF9FFEBE7FFC5B5FF2602BA2400DF2704EE0D00D31900D52806DD3000
          E22F03BAF8E4FFE7E1FAFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFFFDFEFFFDFCFFFFF9FFFFF9FFFFFD
          FFFFFEFFFFFCFFFFFDFFF6F8F8FAFFFEF1FBFBEBF0FFE6DBFF200A983412CA1F
          00C92101D41D01D62101D62100D72100DD1F00DB1D01D71903D31A06D11903D3
          1700D72201D42D0CBB937EF2F5F2FFFDFFFBFFFEFAFFFFFEFAFEFFF3F4FFEBE2
          FF2B179F2908C72200D91D00DB1B00DA1B02D61B01D71F00DB1F00DD2100D921
          00D91F00DB1D00DB1D00DA1D00D91B02D61B02D41B03D31904D21904D21903D3
          1903D41902D61901D71901D91901D91B00D91F03D81F02D42503D91700C02B0D
          C02B13A1F3E1FFF6EAFFFEF9FFF7F5EDFFFFF5FFFFF7F9FFFDF4FFFFE3F5FCE2
          EBFFAFA5FF3523A6402D9CF3E5FFF9FBFFFFFFF2FDFFFBF3F6FEE9EEFF9D97E9
          2906C22700E82D04EF2100E41E00E11D00D71F08C82915C52412BD2010B52517
          B52114B02012AE2B1CBA2B18BB1905AC1F0AB31E09B2210BB12C17B92A17B42D
          16B82C0EBB2C0CBE2A0DBE290CBF270BC3270BC2250FBB2513B4200FA6321EB7
          2508B23314BD3517B0321E8FF0EEFFF2FAFFF5FCF9FDFFFBFFFFFEFFF9FAFFFE
          FFFFF8FFF5EEFFA89DF32C16B5250AD02309D81B00D41E00D42601C16E56D4F3
          E5FFFBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFF8FDFFF2F4FFE5DFFF2012951903BA1C02D81A01DD1A01DD2409E21A00CD
          2E15D1270FC11E07B52511B82514B12716B32310B9230EBE230EBE230EBE230E
          BE230EBE230EBE230EBE230EBE230EBE230EBE230EBE230EBE230EBE230EBE25
          0DBF2C10C82101BE2707C42C0CC52A0BBA2D13AD34229FB2A7FFEDEDFFF0F8FF
          F3FFFFF6FFF8F8FFF7F9FFF8F9FFFEF6F6FFF0E5FF6E56D42601C11E00D41C00
          D32208D7250AD02B16B3AA9FF5F6EFFFFFF9FFFFFEFFFFFAFBFFFFFEFDFFFBF6
          FCF7FDFEFFFDFCFFFDFAFFFDFBFFFFFEFFFFFFFBFFFFF2FFFFF2FFFFFBFFFCFF
          FFF5FFFFF3FFFFF6FFFFFDFFFFFFF0FBFFF2F3FCFFE7EAFFADA7FF2E20A3270D
          BE1A00C72605DC2000DE1B00D81300C6431EDE2D0FA47B69C2F7EEFFF9F4FFFC
          FCFFE1E7FAECECFF1F099D2F11D6280ADF2305E61600DF1800DF1E00DD2F0FE0
          2105BC250BB52F14C2280DBB2A13BC240FB8230FBC230EBE230EBE230EBE230E
          BE230EBE230EBE230EBE230EBE230EBE230EBE230EBE230EBE230EBE230EBE25
          0EBC1F08B02609B82D0AC6330CC6310DB53C1DA2AD9CEDF3EBFFFBFDFFFDFFFC
          FFFFFFFFFEFFFDFEFFFDFFFEFBFFF5F6F7FF5C4DC62205C02700DE2800E93206
          ED2602C6200B90F1E7FFFAF6FFFFFEFFFFFFFEFFFFFEFFFDFFFFFFFFFDFFF8FB
          FFF8FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFAFFFFF9FFFFF7FFFF
          F7FDFDFFF8F2FFD8CBFF361FAF2405C02100D61D00E01D00E22E06F20F00D52F
          05D64724B0F6E0FFFBF7FFFBFFFFFDFDFFF9F8FFF2F1F3FFFFFFFFFFFCFFFDFF
          FFF5FFFFF5FFFFFAFFFFFEFFFFFFF9FFFFF9FBF7FCFFFAFFFFFBFFFDFCFFFAFD
          FFF6FDFFEBF4FFDBE1FFBCBAFF5147B22410A51D00B32607C82C0ED31C02C033
          18DA2B0CDD2101D62203D42607D42508CF290ECF2A12CC230ABE2710C02B13BF
          2C15BD2B16B92813B5260FB1250FAE250EAC1F0AA3371DB73211B24226A7ACA3
          DCF4F2FFFDFCFFFFFCFFFBF9FFF7EFFFA391F6311AA52610B6200BC51C09D222
          0CD62E0FCE6D58DDEEEFFFFDFFF7FFFCF4FFF6FFFBE4FF603ED22500D32800F2
          1800DD1904D51D03CD1500A47F6FDBEFE6FFFDFBFFFFFFF7FFFFF5FFFFF5FFFF
          F8FFFFFBFFFEFFFFFCFFFFFBFFFFFCFFFDFFFFFDFFFFFDFFFEFBFFFEFBFFFFFB
          FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6F5F1FFFFF9FEFFF6F2F4FEF4EB
          FF5F47C92800D11F00E61300DA3012F32003DC2201D42100C98561FFF1E2FFF7
          F5FFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFAFFFFFDFFFFFDFDFFFFF7FFFFF8FFFFFEFFFFFFFCFFFEFFFF
          FEFFECF1EFF8FFFFF4FFFFE3E6FF8777EC4124CE1600BF2F08E61F00D71D01D6
          2101D62100D72100DD1F00DB1D01D71903D31B06D41500D01C00DD1E00D22E0C
          BE7862D8EFEBFFFDFFFBFFFEFAFFFFFEF9FDFEF2F3FFEAE1FF2A169E2908C722
          00D91D00DB1B00DA1B02D61B01D71F00DB1F00DD2100D92100D92100DA1F00DB
          1F00D91D01D71B02D41B03D31903D31804D31802D61802D71801D91800DA1800
          DB1800DB1900DB1B00DA2E11EA0900BE2805D83817D3290F9BDFCCFFF4E6FFF5
          EAFFFFF4FFFFF9FFDEDAD5F8FDEEF8FFF8EEF7FFEDEDFF685DCB1E06A82709BC
          3311B59B85F5F4F2FFF8FFF6FBFFFFF1F5FFF1FBFFABAAF23011C61E00DE1B00
          DB1400D51D00DA280FCF341FB16F5CD37565D46355BE6F62C46E62C26557B771
          63C37868CD6F5EC57E6AD47864CE725FC66F5DC26251B27260C56C5BCA6B5BCB
          6B5CC8695CCA675ACE675ACE655CCA6560C36460B9726BC65D4FB96C5CC77060
          BE7069A6F4FEFFF8FFF4FAFFF8FDFFFBFFFFFEFFFEFDFFFFFEFFF9FFF4EDFFAB
          9FF72A12B61B00CA1500D01C00D92B03E5320CD07158D8EFE1FFFBF8FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFDFFF4F6FF
          EDE8FF271B99200AC11F06DA1A02D81300CE1E06D01000AE6859EA5E55CE5952
          C1615DC26667BF6C69BF6C61BE6E5FC16E5FC16E5FC16E5FC16E5FC16E5FC16E
          5FC16E5FC16E5FC16E5FC16E5FC16E5FC16E5FC16E5FC16C5DC67060D56657D1
          6251D06C5CD96555CB6658C26A62B5BBB7F2F1F4FFF3FCFFF7FFFBFAFFF7FAFF
          F8FAFFFBFAFDFFF8F3FFEEE2FF7158D8330DD12A04E61D00DA1600D11B00CA2A
          13B5ADA1F9F4F0FFFFFAFFFFFFFEFFFEFDFFFFFEFDFFFBFBFFFCFBFFFFFBFEFF
          FDFBFFFDFCFFFFFEFFFFFFFCFFFFF7FFFFF5FFFFFBFFFDFFFFF8FFFFF7FFFFF8
          FFFFFDFFFFFFF7FAFFFEDDE6FFB2B4FF2E22A42610B61100B12106CC2A0CE124
          01DD2906E03918D71D0698A698FDEEE7FFF4F1FFFFFEFFFDFFFEF4FFFFEDF1FF
          2210932004BB1B01C91F07D71B03D31E07CD0E00AF6B59F4635ACF635CBD6D67
          C6605BB66D6AC05C59AF6C61BE6E5FC16E5FC16E5FC16E5FC16E5FC16E5FC16E
          5FC16E5FC16E5FC16E5FC16E5FC16E5FC16E5FC16E5FC16C5EC3675EC65E52C2
          6B59D66650CE6C55C77A69C0C8C1EEFAFBFFFBFFFBFDFFF7FFFFFCFFFEFFFDFD
          FFFDFEFFFDFFFBF6F5FF6453D23415D42A02E41B00DF1D00DB2300C6341DA7F1
          E6FFFAF5FFFFFEFFFFFEFFFFFEFFFFFDFFFFFFFFFDFFF8FBFFF8FFFFFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFDFFFFFDFFFFFFF7EEF2E6F9FFF5F8FBFFCDC5FF66
          53CC2809C01F00D12203DA1500CE2410D51903CE1C00DF2C07D93714AAEAD1FF
          ECE8FFFBFFFEFDFFFFFDFFFFFFFFFEFFFFFEFFFFFEFFFCFFFFF5FFFFF5FFFFFB
          FFFFFFFEFFFFF7FFFFF8FFFBFFFFFDFFFDFFFEDDE4DFF2FCFCF3FAFFC1C4F74C
          45A03C2AB32004B52000CC2C07E72904E81F00DE1800D31900D31900CF1F00D1
          2709D42408C61A03B32410AF2D20AC291F9B665DCB847EDDAEACFED6D5FFEAEC
          FFECEDFFE9ECFFE2E6FFECF2FFEDF0FFEEE9FFEDE7FFFAFDFFFDFFF9FDFDFDEF
          EBF6F5F1FFF6EBFFA58DFF3012B72307C41D03D21600D91500D01700B36E5BDA
          F4F3FFFAFFF8FFFFF1F7F3F2F5E8FFEDD6FF2D09C72A05E71200D61400D02813
          D41F0EB3281B9BEFE6FFFAF7FFFFFFF9FFFFF5FFFFF2FFFFF4FFFFF8FFFEFFFF
          FBFFFFFBFFFFFBFFFDFEFFFDFFFEFBFFFCFAFFFEFAFFFFFAFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDF9FEFFFFFEF0FBE7EBF0FFC8B9FF2305AA1B00CE29
          01EC2004DA1100C81B00CE2E12D0230BA7EDDDFFF0EFFFFAFEFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFDFFFCFDFEFFFFF7FFFFF8FFFFFFFEFFFFF8FFFFFCFFFFFFFBFFFEF0F9FC
          F3FCFFEDEEFF200C952D0BCD2600DD2100E11F00DA1D01D62101D62100D92100
          DD1F00DB1D01D71903D31D08D61500D02303E41E00D22F0DBF6650C6EBE7FFFD
          FFFBFFFDFCFFFFFEF9FDFEF2F3FFE9E0FF2A169E2908C72200D91D00DB1B00DA
          1B02D61B01D71F00DB1F00DD2100D92100D92100DA2100D91F00D71D02D41B03
          D31904D21804D31802D61800DA1800DD1800DE1800E01800E01900DE1900DD1D
          00DA1300CB3315E01B00B5462CC0D9C9FFF4E7FFFDF2FFFFF7FFFFF4FFF6E7FC
          FFFFFEFDFFFBEFF8FCE4E5FF7C6CDC2308AC1F00CA2C07DF2D06CE250899F4F0
          FFF8FFFFEFF1FBF6FCFFEBF7FFA2A4E4280EBA1D00D92301E22005DF1D05D51D
          06B47A67D6E5D3FFF8E8FFEDDEFFFAEDFFFAEEFFF6EAFFFBEFFFF9EBFFF6E7FF
          FDEBFFF3E1FFFCEBFFFDEDFFF7E7FFFBEDFFF6EBFFF3EBFFF3EDFFF1EEFFF1EB
          FFEFEBFFEFECFFEFEFFFEFF2FFEAEAFFF3ECFFF4EAFFF5ECFFF1EFFFFAFFF4F2
          FFE1FBFFF7F9FCFAFFFBFAFBF6F5FFFFFEFEF8FFF4F0FFAEA5FC3018BC1C00CF
          1900D51F00DD2300DE2000BD6550CAF4E8FFFBF8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFDFCFFEFEBFFEFE7FF261797290D
          CB1600D31A00D62008D82109CD2B18BBD3CCFFE8E7FFECEBFFECF0FFECF5FFE7
          EBFFF8F2FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FF
          FBF1FFFBF1FFFBF1FFFBF1FFFBF1FFF8F0FFECE9FFEDECFFE9E6FFEFEAFFF1EA
          FFF1ECFFF0EEFFF4F6FFF4FAFFF7FFFDFAFFF7FBFFF7FDFFF9FCFEFEFEFAFFF9
          F2FFF5E7FF6651CB2100BE2400DF2001DE1A00D61F01D0321ABEB3A7FFF6F2FF
          FFFAFFFFFFFEFCF7F6FEFCFBF9FCFAFBFFFEFBFFFEFBFFFFFDFEFFFDFDFFFFFE
          FFFFFFFFFFFFFCFFFFFBFFFFFBFFFFFEFFFDFFFFFBFFFFFAFFFFFAFFFDFCFFF6
          F7FFB4B7FB2220911603A6270CCD290CD32204D12404D71900C7270BC31D0A9C
          A49CF9EFEFFFF2F1FFF7F8FFFFFFFCF5FBF0F6FFFCE9EDFF33209F2A0DC12005
          CB1F06D21902C81B08BD2B1BB6D6CCFFEAE9FFEDF2FFEFF4FFE3EAFFEFF7FFEE
          F4FFF8F3FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FFFBF1FF
          FBF1FFFBF1FFFBF1FFFBF1FFFBF1FFF8F1FFEFF0FFE4E6FFEDEAFFF1E9FFF3EB
          FFEDE8FFF7FAFFFBFFFCFDFFF4FDFFF2FFFFFBFFFEFFFDFCFFFDFCFFFDFFFFF6
          F2FF6352D12509C61B00D22500E62D00E92603C93620A8EDE2FFFAF5FFFFFEFF
          FFFEFFFFFEFFFFFDFFFFFEFFFDFFF9FBFFF8FDFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFAFFFFFAFFFFFFF9FBFFF8F6FFFFDEDFFF8173D918009C2100CD2702E4
          1A00D31C0ACF170BC10B00B9210BDF1B00C72A0BA4F7DFFFF8F6FFFAFFFBF3FB
          F1FDFFF9FFFFFBF2F3EFFFFFFEFFFDFFFFF6FFFFF6FFFFFCFFFDFFFCFDFFF7FD
          FFF8FFFFFFF1F2F6FAFFFEF8FEFFECF0FF9492CE463AA42610A51F00BF2903DF
          1D00E02200EA1700DE1300D72A0DEC1E01D22A0FCA230CB42510AD3322B35F52
          D2A79EFFDBD7FFE6E5FFEDEFFFEFF4FFF1F8FFF3FBFFF1FBFFF2FDFFF4FFFFF4
          FFFEF3FFFCF2FFFEF6FCFFFAFDFFF7FEEFF9FFECFFFEFAFFFBFFF7F3FFF6EBFF
          A990FF290CB61D03C12009D71C07DF1600D02C12C46351CEF3F1FFF0F5F3FFFF
          EFFFFFF4FCF9FFF4E9FF2F15A81D00C21E03DC1901D91605C12214BA2516ADAA
          A0FFF6F2FFFDFFFFFDFFF8FFFFF2FFFFF2FFFFF7FFFEFFFFFBFFFFF9FFFFFBFF
          FDFEFFFBFFFEFBFFFBFAFFFCF8FFFFFAFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFBFFEAEBEFFAFFF8EFF3FF5741C22A07C92D09E51900D5240DD4220DCD
          2006C8230DB38077DFE6E9FFF3FCFFF8FFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFEFDFFF9FFFFFE
          FFF8FFFFF9FFFFFFF9FFFFF2FFFFF7FDFFFBF8FFFCF6FDFFE0E8FFB7B5FF2E19
          B22000CA2200E22600EE1F00DB1D01D72100D72100D92100DD1F00DD1D00D919
          03D41803D11903D41B00DC2100D62C0ABC6A54CAF8F4FFFAFEF8FFFDFCFFFFFE
          F9FDFEF3F4FFEAE1FF2A169E2807C62200D91D00DB1B00DA1B02D61B01D71F00
          DB1F00DD2100D92100D72100D92100D71F02D41D03D31B04D21904D21802D618
          00DA1100D91E04EA1400E11700E41000D91F01E42203E01900D12505D6280BBF
          2C1A9DE4DAFFF8F2FFFFF9FFFBEFFFFFF8FFFFF8FFFFF7FFF8F7F9F8FBFFE7E4
          FF7A6DCF2B0BB02D06D72400E52300E92600DC3110B9DAD0FFF1F5FFF8FBFFF6
          FCFFF0FFFFA4A9E02A12B62100D92002DD1900D41B06CD2513B2745FBBFFEDFF
          FFF0FFFFF2FFFFF5FFFFF6FFFFF8FFFFF7FFFFF7FFFFF6FFFFF4FFFFF4FFFFF4
          FFFFF5FFFFF6FFFFF6FFFDF5FFFAF7FFFAFAFFF8FAFFF8F7FFF8F6FFF8F6FFF8
          F7FFF8FAFFF8F9FFFAF4FFFBF1FFFDF2FFFFF9FFFFFFF1FFFFEBF6FEF4FAFEFF
          FFFEFFFEF9FAFFFFFCFFFCFFF6F2FFABA2F82A12B61D02CE1B02D61A00D82200
          D72708BD6C5CC8F2ECFFFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFF8FFFBF0FFF3E4FF2E17A12702CE2300E42000DF20
          00D62303CC2A12B4E4DAFFEDEDFFF3F3FFF2F6FFF3FCFFFAFEFFFFFCFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFCFFF8FEFFF4FDFFF6FBFFF6FAFFF8F9FFF8FAFFFAFCFFFB
          FEFFFDFFF9FFFFF5FFFFF4FFFFF5FFFFFBFFFDFFFFF9FFFFF4FFF4EAFF6C5CC8
          2708BD2200D71A00D81902D61D02CE2813B6A89FF5F8F4FFFFFCFFFFFFFCFFFC
          FDFFFEFFFAFCFDFAFFFFFBFFFBFBFFF9FDFFFBFDFFFEFFFEFFFFFDFFFFFCFFFF
          FDFFFFFFFEF2F3EAFFFFF8F4F8F3FBFDFFF6F2FFFAF1FFD8CFFF221A8F2D20BC
          1900BE2C0BDE1300CA2F0CE62805D81E03B7291D9BA3A3F1EDF6FFEFF7FFF2F5
          FFFAFAFFF9FFF3FDFFF2F8FFFCEDEBFF331BA32907C52100CF2202D52105CD22
          0CBE2818A6E8DEFFEBEDFFF4FBFFF4FCFFF8FFFFF8FFFEFAFFFEFFFDFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFCFFF4FEFFF1FDFFF3FAFFF4F8FFF6F9FFF8FDFFFAFFFBFB
          FFF2FDFFEEFFFFF1FFFFFBFFFEFFFFFBFFFFFBFFFFFBFFF6F1FF695AD4220ABC
          2200D42100DF2200DB2100BF2C179BEFE8FFF8F7FFFDFFFFFFFEFFFFFDFFFFFC
          FFFFFEFFFBFFFCFBFFFBFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFF7F1FF
          FAFFF7F0FCF6E9F0FFAFA9FA220AA42B07CF2700DE1900D6250BDB0F00C1190B
          C7180DC70A00BF2818CA3013A8F0D9FFF8F8FFF8FFF5FBFFF5FAFFF2FFFFF8FF
          FFF8F8F8F2FFFEFFFCF6FFF5EFFFFFFEFFF4F9F0F3F9EEFBFFF8F0F7F0F8FFFF
          F2F6FFF3F0FF7165BD2C1697290AB92C05D62100DE2300E92200E51D00DC1B00
          D41A00CF1A03CA1F0DB8261D92625FB4ADAAF9DFE0FFECEFFFEDF3FFEEF6FFF1
          FAFFF4FDFFF6FFFFF8FFFFFAFFFEFBFFFCFDFFFCFDFFFCFBFFFBFAFFF9F8FFFC
          FAFFFFFDFFFFFFFFF7FFFFF7FFFFFFFFFCFFF8F9FFF4F0FFA390FF2D15B1210E
          B71C0DC3170ACA1809C5280FBD6552D1F3EFFFF8FDFFFFFFF1FFFFEFFFFFFBF6
          F4FF948BE22917AA1E01D31500D82311D01D10BF1908B73526B0F3EBFFEDEBFE
          FBFFFEFDFFF4FFFFF1FFFFF5F2EFF1FFFAFFFFF8FFFFFAFFFDFFFFFBFFFCFBFF
          F9FAFFFCF8FEFFF8FEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDF9FFFDFBFF
          E9F2F6D5D5FF2C10AF2600D42809E01800CE1905C2210EC32F16CA180891EAF0
          FFEBFCFFF4FFFEF8FFFBFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFEFDFFF8FFFFFCFFFAFFFFFBFFFFFF
          F7FFFFF0FFFFF4FDFFF9FAFFFFEBF0FFEDF1FF574FB32208B22100D61E00E31B
          00E51D00DD1D01D72100D72100D92100DE1F00DD1D00D91903D41803D11902D6
          1B00DE2100D62C0ABC6A54CAF8F4FFFAFEF9FFFDFCFFFFFEF9FDFEF3F4FFEAE1
          FF2A169E2807C62200D91D00DB1B00DA1B02D61B01D71F00DB1F00DD2100D921
          00D72100D72101D61F02D31D03D21B05D01903D31802D71800DD1900E50F00DC
          2405F41400E02706EA2202DD2203D43115DA1900B42B17A6D7D1FFF1F3FFF3F8
          F7FCFAF2FFFCFFFFF4FEFFFBFFEEEDF7F8FBFFF3F2FF978CE8381FAF2100C227
          00E31E00EA1F00ED2100DF2804BC8377D1EFEFFFE9ECFFF5FBFFF0FFFFA4ABDD
          2A13B52100D82203DC1900D41906CF2514B17462B5FFF1FFFFF4FFFFF7FFFFFB
          FFFFFCFFFFFEFFFFFDFEFFFDFFFFFDFFFFFBFFFFFBFFFFFBFFFFFBFFFFFCFFFF
          FCFFFFFBFFFFFDFFFFFFFBFFFFFBFFFEFFFDFCFFFDFBFFFDFCFFFDFFFFFDFEFF
          FFF9FFFFF6FFFFF5FFFFFAFFFFFFF2FFFFF0FBFFFEFBFEFFFFFDFFFDF8F9FFFF
          FCFFFDFFF4F3FFAAA2F52813B51D02CE1903D41A01D52202D3270CB66C60C0F2
          EFFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFF8FFFDF0FFF6E5FF31189E2801CE2600E72300E12300D82701CF2E12B2
          E7DEFFF2F2FFF8F8FFF9F9FFFAFFFDFFFFF9FFFFFBFFFFFBFFFFFCFFFFFBFFFF
          FCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFF
          FFF9FDFFF5FBFFF5FBFFF8FBFFFBFDFFFEFDFFFEFFFFFBFFFFF8FFFFF4FFFFF2
          FFFFF4FFFFF7FFFFFCFFFCFFFFF9FFFFF5FFF4EEFF6C60C0270CB62202D31A01
          D51903D41D02CE2813B5A8A0F3F6F5FFFFFDFFFFFFFCFFFCFDFFFEFFF8FBFFFA
          FFFFFBFFF9FBFFF7FDFFF7FDFFF9FFFFFFFFFCFFFFF9FFFFFAFFFFFFFFFFFFF9
          F2FAE9FBFFF9F7FAFFF2EDFFE3D4FF311D942D19B81300BA1D00D22200E13004
          F11100C8300FCE311FAEA19FEBDCE6FFF1FFFFEEFAFAF8FBFFFBFDFFF4FBEEFA
          FFEFFAFFFCEEEBFF341AA42B05C92300D42300DB2203D0260CBE2B18A3EBE0FF
          F0F0FFFAFFFFFBFFFAFFFFF8FFFFF7FFFFF7FFFFFBFFFFFBFFFFFCFFFFFBFFFF
          FCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFF
          FFFBF8FFF8F4FFF8F6FFFEF6FFFFF8FFFFFAFFFBFBFFF4FDFFF0FFFFF0FFFFF4
          FFFFFCFFFEFFFFFBFFFFFAFFFFFBFFF8F0FF6457CB210CB52102CF2400DD2903
          DE2A0BC42F1F9CEDE7FFF8F8FFFDFFFFFFFEFFFFFEFFFFFCFFFFFCFFFBFFFFFB
          FFFCFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFEEE8FBFDF9FFF2F8FFF3F9FFD6D5
          FF2719962205C02300DE2500E51900DA2408DE1D07D21B08D10800BE1E14D211
          02B12E14A8EEDAFFF6F9FFF8FFF2FBFFF2FAFFEFFFFFF7FFFFF8FFFFF8FFFDFC
          FCF8FFFFFBFFF8FBF9FBFFF9FBFFFCEAF0EFF6FFFFEEF2FFEFEBFF6253B53116
          A63914CE2300D42000E31D00E62900EF2100DB1F02CD2913C92111B63428C072
          6CE3D9DBFFE9EFFFF1F6FFF1F8FFEFF7FFEBF4FDF0FAFAF8FFFCFBFFF9FDFFF8
          FFFFF8FFFFF8FFFFF9FFFFFBFFFFFCFFFFFCFDFFFCFBFFFEFDFFFFFFFFFEFFFF
          F9FFFFF9FFFEFFFFFDFFF8FDFFF4F3FFA392FF2D15AF210EB71C0DC31709CD18
          07CA280CC3654FD7F3EDFFF8FAFFFFFFF8FFFFF1FFFFF8F8FBFFE0E2FF372E96
          2B0DD22805E91000C11D0ECA240FD62915BCB9ACFFF8F3FFEEF0FAFBFFF9F9FF
          EEFFFFF5FBF8FAFFFAFFFFF8FFFFFAFFFFFEFFFDFFF9FBFFF8FAFFFBF8FEFFF8
          FDFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDF9FFF4F2FFF4F5FF8780D51C00
          B21E00D71E02D71903CD1F0BC82E18CA2008AE6255C8EFF9FFE8FBECF6FFFCF2
          F8F7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFFFEFFFFF9FFFFFBFFFDFFFFFDFFFFFFF5FFFFF0FFFFF1FB
          FFF9F8FCFFEFEFFFCAC5FF1A0C8A2108BE2301DB2100E61800DF1D00DB1D00D9
          2100D72100D92100DE1F00DD1D00D91903D41802D21902D61B00DE2100D62C09
          BD6A54CBF8F4FFFAFEF9FFFDFCFFFFFEF9FDFEF3F4FFEAE1FF2A169E2807C622
          00D91D00DB1B00DA1B02D61B01D71F00DB1F00DD2100D92100D72200D72101D6
          1F02D31D03D21B04D21903D41801D91800DE1400E1280AF71000DC1000D42E0D
          E4280BD31700B71D05AB3928AFD3CAFFE4E8FFF8FFF9FBFFE9FFFFE8FFFFF8FD
          F8F9FAFBFFF6FBFFE9EEFF9D9AE93B2AB12001B62D02DB1F00DF1900E41800E0
          1C00D72607BE3B2994F4EEFFEBECFFF6FDFFF0FFFFA6A9E02B12B62100D92200
          E01900D91901D72311B86F62B6FAF2FFFBF6FFFBF9FFFBFDFFFAFFFEFDFFFCFC
          FFFAFDFFFCFDFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFEFFFFFFFC
          FFFFF4FFFFF2FFFFF9FFFEFFFFFCFFFFFDFFFFFFFEFFFEFFFFFAFFFFF7FFFFF5
          FFFFF8FFFFFFFBFFFFF8FBFEFFFAFCFFFFFDFFFAF8F8FFFFFBFFFEFFF5F5FFAC
          A4F72813B51D03CD1903D31A02D22103D0270EB26C63B9F2F2FFFBFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFDF5FF
          F6EBFF311E932804C82600E32300DE2300D62800D13211B2EBDFFFF6F4FFFDF9
          FFFFFAFFFFFEFDFFFFFBFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFCFFFFF8FFFFF5
          FFFFF8FFFFFBFFFFFCFFFFFCFFFFFBFFFFF8FFFFF5FFFFF4FFFFF5FFFFF8FFFF
          FCFFFDFFFFFAFFFFF6FFF4F1FF6C63B9270EB22103D01A02D21903D31D03CD28
          13B5A8A0F3F6F6FFFFFEFFFFFFFBFFFCFDFFFDFFF8F9FFFAFEFFFBFFF9FBFFF4
          FDFFF4FDFFF8FFFFFFFFFBFFFFF8FFFFF9FFFFFEFFFCFFFAFAFFF5F8FFFEF4F6
          FFEDE5FF7B66E0280CAC270ACB0F00C92800EC2800F21F00E9390DEA240AA4A4
          9DF8EFF7FFF3FFFFF0F9FDEEF4F9FBFEFFFDFFFFF7F9F3FDFFF9FBFFFBF0ECFF
          3619A42D04CB2500D82500E12400D62809C22D16A6EDDFFFF4F0FFFDFCFFFFFC
          FEFFFEFFFFFEFFFFFEFFFFFEFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFBFFFFFAFFFCF8FFFC
          FAFFFFFAFFFFFAFFFEFBFFFBFBFFF8FDFFF5FFFFF7FFFFF9FFFFFFFFFDFFFFFB
          FFFFFAFFFFFBFFF8F1FF6156C4210FB02003CA2000D52603D62C0FC32F2099E8
          E3FFF8F9FFFDFFFFFFFFFFFFFDFFFFFBFFFFFBFFFBFFFFFBFFFEFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFCFFEFEEFFEAE8FFE8E4FF4338B41501A82A0CDB1C
          00DD2100E41600D92501E81C00DF1700D92009E11302CF1E0CC32E14A8EEDBFF
          F6FAFFF6FFF0FBFFF1FAFFF1FFFFF8FFFFFAFFFFF8F9F9F3F9F8FAFFFEFFF9FD
          F7F6FCF7FAFDFFEDF0FFF0F2FFD8D4FF4433A63C1FBC2902C92400DA3E0FFF1C
          00E21700D71B00D22506CD2009B72F1FAC7571DBC6CBFFEAF1FFF3F6FFF6FAFF
          F6F9FFF1F5FFF3F6FEF7FBFCFDFFFEFFFFFCFFFFFBFFFFFBFFFFFBFFFFFCFFFE
          FFFFFDFFFFFCFFFFFCFFFFFCFFFFFDFFFFFFFFFFFFFCFFFFFBFFFFFBFFFFFEFF
          FFFEF8FFFAF4F6FFA391FF2D11B82107C51C03D51700E21800DF2805D1654BDF
          F1ECFFF6F9FFFFFEFFFFFDFEFFFEFFFBFCFFF6FEFF8B8ACA2104B52300DF1900
          D21F08DC1000D6260CCE6350C7F4EBFFDDDEFAF8FFFFF4FEEEFDFFF7FFFEFFFF
          F9FFFFF7FFFFFAFFFFFFFEFFFFF7FBFFF5FAFFFBF8FDFFFAFBFFFDFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFDFFF5F1FFF1E9FF3B2AA91B00BD1F01DC1901D71D
          05D52206CE2B0FC6250CA2BFB1FFF3F9FFEFFBF5F8FCFFF6F7FFFDFDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFFFFFCFFFFFCFFFEFFFFFFFEFFFFF5FFFFF1FDFFF1FAFFFBF0F2FFF1ECFF
          6454C32712AB280DCF1900D62103E41A00DF1B00DA1D00D92100D72100DA2100
          DE1F00DD1D00D91903D41802D21902D61B00DE2100D62C09BD6A54CBF8F4FFFA
          FEF9FFFDFCFFFFFEF9FDFEF3F4FFEAE1FF2A169E2807C62200D91D00DB1B00DA
          1B02D61B01D71F00DB1F00DD2100D92100D72200D92100D71F02D41D03D31B03
          D31902D61800DA1800E01E00EB1A00E61100D52B0AE12002C51A00AF311BB73A
          29A8C3BBFFE9EAFFF5FFFFFDFFEDF6FED9FFFFEAFFFFF8F4F3FCF6F9FFEDF3FF
          9497E231299E1D09AF2C0CD52A00E22000E21E03E61200D41C00D32E0EC7270F
          91EADBFFF6F5FFF4FAFFF2FDFFA6A7E32B11B82300DA2400E31B00DE1B00DD23
          0EBE6B62B9F6F3FFF6F7FFF6FAFFF8FEFFF7FFFBF8FFF8F7FFF6FAFFF8FAFFFB
          FAFFFCFAFFFEFBFFFEFBFFFEFBFFFEFFFFFEFFFEFFFFFFF9FFFFF0FFFFEEFFFF
          F5FFFFFBFFFDFFFFFDFFFFFFFBFFFFFBFFFDFFFFF9FFFFF6FFFFF8FFFFFEFFFF
          FFFCFBFDFFF7F9FFFEFCFFFAF8F8FFFFF9FFFEFFF5F6FFABA5F62813B61B02CE
          1903D41A01D32103D0260FB16B65B7F2F4FFFBFCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFAFFF4F1FF30228B2807
          C32400E02300DA2300D32801CF3212B1EBE3FFF8F8FFFFFBFFFFFBFFFFFEFBFF
          FFFCFBFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFF
          FAFFFFF8FFFFFAFFFFF8FFFFFAFFFFFBFFFFFFFFFCFFFFFBFFFFFCFFFFFEFFFF
          FEFFFFFEFFFFFCFFFFFBFFFFF8FFFFF8FFFFF8FFFFF9FFFFFCFFFEFFFFFBFFFF
          F9FFF4F3FF6B65B7260FB12103D01A01D31903D41D02CE2813B5A8A0F3F6F7FF
          FFFEFFFFFFF9FFFDFDFFFDFFF7F9FFFAFEFFFBFFFBFBFFF5FDFFF7FFFFF9FFFE
          FFFFFBFFFFF9FFFFFAFFF5F5FBFBFFFFE8F0F0F3FAFFE3E1FF6052BC2409A62E
          0CCB1800C92B06E82800EE2200E72A00E81A00B5A493FFEDEDFFF2FEFFF6FFF8
          F4F7FFF5F6FFFDFFFFFDFEFAFBFBFBFDFFFEFAFFFBEEEDFF341AA42B04CC2300
          DA2300E22200D7260AC22D17A5EFE0FFF4F0FFFFFDFFFFFBFFFFFCFFFFFAFFFF
          FBFFFDFDFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFF
          FAFFFFF8FFFFFAFFFFF8FFFFFAFFFFFAFFFFFBFEFFFBFEFFFDFFFFFDFFFFFDFF
          FEFDFFFCFDFFFBFDFFFBFFFFFCFFFFFFFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFF8
          F2FF665CC72516B42308CD1B00D01D00CF260CBE30219AEBE7FFF8F9FFFDFFFF
          FFFFFFFFFDFFFFFBFFFFFBFFFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFCFBFFF4F1FFE8DFFF5244C2210CB53017DD1100CA2607E61900D82A05E9
          1800D81C00DC1D00DE2B0EED0700CA2E16DA2E13A9EDDCFFF4FBFFF6FFF0FBFF
          F4FCFFF4FFFFFCFFFEFDFFFFF7FFFFF9F9F8F4FDFFFEFBFFFBEBF0F1F1F2FFF4
          EFFFE5DDFF4E3FB93B23BF1600B2370EEB2800E90900CE2E07ED2300D33418D5
          1F09A83529A7A9A3FCECF0FFEDF9FFF3FDFFF0F4FFF2F2FEF5F4FEFBFBFFFDFE
          FFFFFEFFFFFFFFFCFAF9FFFFFEFFFFFEFFFEFFFFFDFFFFFCFFFFFBFFFFFBFFFF
          FAFFFFFAFFFFFBFFFFFFFEFFFFFBFFFFFCFFFFFEFFFFFEFFFFFCF9FFF6F4F7FF
          A390FF2D0EBD2104CC1E00DF1900ED1A00E82803D5654AE0F1ECFFF6F9FFFFFB
          FFFFFAFFFFFBFFFFFCFEF6FFF5E5E5FF3116AC2300CD2505D82003E20D00DD1E
          02D72F18AAD7C8FFECEAFFF6FCFFF7FFF6FCFFF7FFFEFFFFF9FFFFF7FFFFFAFF
          FFFFFBFFFFF5FDFFF4FBFFF9FAFCFFFAFAFFFDFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFCFCFFF8F2FFC7B4FF1E06A82307CF1F06E01D06DE1900D42405D21D00B2
          634CCCF4E7FFF8F9FFFAFFFFFBF9FFFBF8FFFFFCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFFFEFFFFFEFF
          FFFFFEFFFFFBFFFFF7FFFFF5FDFFF4FAFFFFEDEAFFEBE0FF1F06963517CE2305
          D21700D51800D81801D91B00D91D00D92100D92100DA2100DE1F00DE1D00DA19
          02D61802D21902D61B00DE2100D82C09BD6A54CBF8F4FFFAFEF9FFFDFCFFFFFE
          F9FDFEF3F4FFEAE1FF2A169E2807C62200D91D00DB1B00DA1B02D61B01D71F00
          DB1F00DD2100D92100D92100DA2100DA1F01D61D02D41B02D41901D71800DB18
          00E01000D92504E82908DF1C00C12F15BD3926B3322297E1D9FFEFF1FFF4FBFF
          F5FDF3FFFFF1FFFFEDF5F7E4FFFEFFF8F6FFDFDEFF9796F43632AF1207A32612
          C92004D31500D32300E5210CE51000CE250AD62C0CC92907A79980F0F8F0FFEA
          EFFEF2FBFFA7A5E72D10B92300DA2400E11B00DE1B00E1230CC26B61BBF4F3FF
          F4F7FFF4FBFFF6FFFFF5FFFAF6FFF7F5FFF3F8FFF5F8FFF7F8FFF9F8FFFBFAFF
          FCFAFFFCFAFFFCFDFFFEFFFEFFFFFFFCFFFFF0FFFFEDFFFFF4FFFFF9FFFEFFFF
          FEFFFFFFF7FFFFF5FFFFFCFFFDFFFFF9FFFFFAFFFFFFFFFFFFFEF9FCFFF6F8FF
          FFFEFFFDFBFAFFFFF8FEFEFEF0F1FFA8A2F42812B81B01D11901D71800D62102
          D3260EB46B64B9F1F3FFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFDFFFBFAFEFFF1F6FF2C2782250BBD2102DB2003D420
          03CE2503CC2E15ADEBE7FFF8FDFFFFFEFFFFFDFCFFFFFAFFFFFBFBFFFFF6FFFF
          F8FFFFF6FFFFF8FFFFF6FFFFF8FFFFF6FFFFF8FFFFF6FFFFF8FFFFF6FFFFF8FF
          FFF6FFFFF8FFFFFAFFFFFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFEFFFF
          FEFFFFFFFCFFFFFBFFFFFBFFFFFBFFFFFEFFFEFFFFFDFFFFFAFFF2F3FF6B64B9
          260EB42102D31800D61802D71B01D12612B8A7A1F3F6F7FFFFFFFFFFFFF8FFFD
          FCFFFEFFF7F9FFFAFDFFFBFFFEFDFFFBFFFFFCFFFFFFFFFDFFFFFCFFFFFBFFFF
          FBFFFBFDFFF8FBFFF4F6FFE2E0FFA59AFF2914A62C0CC92603D62604DA2100D8
          2900E12000D02700C25B40CCF3EDFFF2F8FFF0F8F1FBFFFCFDFAFFFFFAFFFFFF
          FBFFFFF9FDFBFFFBFEFFF8FFF9EBF0FF311CA12806C91F00DA2000E11F02D422
          0CBF2B1A9FEBE4FFF2F3FFFDFFFEFFFCFDFFFCFFFFFAFFFFFAFFFBFEFFF6FFFF
          F8FFFFF6FFFFF8FFFFF6FFFFF8FFFFF6FFFFF8FFFFF6FFFFF8FFFFF6FFFFF8FF
          FFF6FFFFF8FFFFFAFEFFFDFBFFFFFBFFFFFBFFFFFDFFFFFEFFFFFFFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFF8F4FF6259C72615BA
          280CD42301DB2100D5260AC131229CEDEAFFF6F8FFFBFFFFFFFFFFFFFDFFFFFB
          FFFDFCFFFAFFFFFAFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFEBEBFBF1EBFF
          9A86FF260BB91900CA1901D91D09D81300CC1C00D02E0DE0310AE22801D92B07
          DD1600CF1D00E61B00CE2E12ABEDDDFFF4FBFFF4FFF2FBFFF8FCFDF9FFFDFFFF
          FCFFFEFBF6FFFFF8FFFFF7F8FCF6FBFFFEF8FAFFF4EEFFE4D7FF7159ED2C11C5
          2A0EC61A00BF2101D11000C6310EEB1F00D12F13CB1C099E6760C8E0E0FFF1F7
          FFEEF8FFEBF5EFF8FEF9FDFCFFFFFBFFFFFBFFFFFCFFFFFCFFFFFCFFFEFAFFFC
          F8FEFFFDFFFFFDFFFFFCFFFFFCFFFFFCFFFFFBFFFFFBFFFFFBFFFFF9FFFFFBFF
          FFFFFBFFFFF8FFFEFFFFFDFFFFFEFFFFFFFEF9FFF5F4F8FFA390FF2D0DBF2301
          D11E00E21A00F01A00E72805D1634DDBEFEFFFF4FAFFFDFAFFFFF8FFFFFAFFFF
          FAFFFBFCF8F8F6FF8D79EA2A0EB51C00C51D01DD2404F51600D92409B37F6CE1
          EFEBFFF3F8FFF8FFFFF5FDF3FFFDFFFFFAFFFFF8FFFFFBFFFFFFF9FFFFF2FFFF
          F2FDFFF9FBFBFFFBF9FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFF8F8FFF6ECFF
          6B50E02102C31D03D31600D71C07E01400D02706D21E00A5BFABFFFAEFFFFDFA
          FFFFFCFFF3EBFFFDF5FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFEFFFFFCFFFFFDFFFFFFFCFFFFF8FFFF
          F9FFFFF9FDFFF7FAFEFFF4EFFFAE9DFF2C09B72500CF1B00D12208DE1500D11A
          05D61B01D71D00D92100D92100DA2100E01F00DE1D00DA1902D61802D21901D7
          1B00DF2100D82C09BD6A54CBF8F4FFFAFEF9FFFDFCFFFFFEF9FDFEF3F4FFEAE1
          FF2A169E2807C62200D91D00DB1B00DA1B02D61B01D71F00DB1F00DD2100D921
          00D92100DD1F00DD1F00D91B01D71B01D71901D91800DB1900DE2002E51300CE
          2508D02105B63320AD352594EDE6FFEBEBFFF0F6FFFAFFF9FFFFF7F8F8EAFFFF
          F7FFFDFFE1DBFAF3EAFF7168D62E24B4150BB21E10CC1704CD1700D32500E41B
          00DF1502DB0D00CD280FDB2805CB2C01BC4A27B4F1E5FFF8F9FFF3F8FFA7A3EA
          2D10B92500D82500DE1D00DB1D00E0250BC36D5FBDF8F1FFF8F5FFF8F9FFF8FE
          FFF7FFFBFAFFF7F9FFF4FAFFF5FAFFF7FBFFF9FBFFFCFBFFFCFBFFFCFDFFFEFD
          FFFFFFFBFFFFFEFFFFFFF4FFFFF1FFFFF5FFFFFBFFFDFFFFFEFFFFFFF7FFFFF4
          FFFFF8FFFFFFFDFBFFFDFBFFFDFFFFFBFFFFFAFDFFF9FCFFFFFEFFFFFFFBFFFF
          F7F8FAFAEBEEFFA9A2F72611BA1B00D51800DB1800DA2100D7260CB66B62BCF1
          F2FFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFBFFFFF6FCFFEDF5FF282785200AC11D00DF1A03D71C02D12102CF2C15AD
          E7E9FFF6FFFCFDFFFEFFFEFAFFFFF8FFFFFBFDFFFFFAFFFFFAFFFFFAFFFFFAFF
          FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFB
          FEFFFFFDFFFFFCFFFFFCFFFFFDFFFFFDFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFE
          FFFFFCFFFFFEFFFFFEFFFFFFFFFEFFFBFBFFF1F2FF6B62BC260CB62100D71800
          DA1800DB1B00D52611BAA7A0F5F4F7FFFDFFFFFFFFF7FFFEFAFFFEFFF7FAFFFA
          FDFFFBFFFFFDFFFFFFFDFFFFFCFFFFFDFFFFFDFFFFFEFFFDFEFFEEF0FAF4F5FF
          ECE8FF6358B83C29B6260CBE2301D71C00D82604DA1C00C82A08CB2508B26A53
          D7F1E5FFDCDCF4FBFFFBFBFFF6FFFFFBFFFDFFFEF9FFFFFFFBFFFFFBFFFDFFF2
          F5F9F4FFFBE7F0FF2D1BA42404CD1C00DD1C00E31B02D61F0DBE281D9CEAE6FF
          F0F7FFFBFFF9FFFEF9FFFEFFFFFAFFFFFAFFFDFDFFFAFFFFFAFFFFFAFFFFFAFF
          FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFB
          FEFFFFFBFFFFFAFFFFFCFFFFFEFFFFFFFFFFFFFEFFFEFFFFFEFFFFFDFFFFFDFF
          FFFEFFFFFFFFFFFFFEFFFFFCFFFFFBF8F4FF5E54C61E0BB62305D42602E22602
          DE2407C2291B99EBE7FFF6F7FFFBFFFFFFFFFFFFFEFFFFFCFFFDFDFFFAFFFEFA
          FFFCFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFF8F4FFC8BCFF3118AE2608CD1A00
          DD1500E00E00CC1C0CCF2813CD0800A39778FF2403BF2906CC2300D32601EB14
          00C82E12ABEBDEFFF3FBFFF4FFF5FBFFFCFCFBFFFFFAFFFFF9FFFFFDFCFFFFF8
          FFFFF8FDFFFBF0F4F5F8F9FFF6ECFF8471DE2308B61700C71F01CE2608D70900
          BE3519E8270BD31600B22518A4B7B3FFECF1FFE8F3FFEFFAF2FDFFF5FFFFF8FF
          FFFBFBF9F9FCF9FBFCF8FDFCF8FDFCF8FDFEFAFFFFFDFFFFFDFFFFFDFFFFFEFF
          FFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFDFFFFFBFFFFFDFFFFFFF7FFFFF5FFFD
          FFFFFAFFFFFBFFFFFEFFF9FFF5F4F8FFA390FF2D0FBC2304CB2000DB1C00E81C
          00DD280CC36353D0EDF1FFF2FBFFFDFCFFFFFAFFFFFBFFFFFAFFFFFBFFF4EFFF
          EDE1FF2B19942611BA1D03D31200E12202E92C0CC93B24AFD6CFFFF1F5FFF6FF
          FFF4FBF4FFFDFFFFF9FFFFF8FFFFFBFFFFFFF7FFFFF0FFFFF0FFFFF8FDFAFFFD
          F8FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFFBF7FFC7B9FF2908B02905DB1200
          D21000D41B05E01A01D31D00BF3F23B6F5E7FFEEE8FFFFFBFFFFFEFFF8EEFEFF
          FAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFEFFFFFAFFFFFBFFFFFFFBFFFFF8FFFFFCFFFFFEFDFFF9FA
          FCFFF4ECFF614CC73D15D91D00D71D00D91F07DD1706D31908D51B02D61D00D9
          2100D92100DA2100E01F00DE1D00DA1902D61802D31901D71B00DF2100D82C09
          BE6A53CDF8F3FFFAFDFBFFFDFCFFFFFEF9FDFEF3F4FFEAE1FF2A169E2807C622
          00D91D00DB1B00DA1B02D61B01D71F00DB1F00DD2100D92100DA2100DE1F00E0
          1F00DB1B00DA1B00D91901D91900DB1900DD2607E41700C91A00BA3E28C43020
          95EDE6FFE3E3FFF4F9FFFAFFFFFAFFF6FFFEF4F9F5F0FFFBFFDFD1F5FAE6FF79
          66DB1D08AA0F00B81807D41606DD0900CE1C02DE2F0BF11800DC1000D90F00D4
          2106D82A03D53000D43306B0DFCBFFF8F7FFF3F6FFA9A2EB2F11B62700D22504
          D71D00D41D00DA270BC2725DC0FFEDFFFFF1FFFFF6FFFFFAFFFFFDFFFFFFFBFF
          FFF8FFFFF9FFFFFBFFFFFEFFFEFFFFFDFFFFFDFFFFFDFFFFFBFFFDF7FFFBFAFF
          FDFFFCFDFFF8FDFFFCFDFEFFFDFCFFFDFCFFFDFFFBFDFFF7FBFFF8FBFFFEFAFC
          FFFAFCFFF8FFFFF8FFFFF8FEFFFAFEFFFFFFFFFFFFFAFFFFF7F7F9F9F0F2FFB5
          ADFF260FBD1B00D91800E11800E01F00DB2609BC6B60C1F1F0FFFBFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF8FBFFF3F6FF
          EAEFFF2522901C05CC1A00EA1700DF1800D81E00D62913B2E4E9FFF2FFFCFBFF
          FEFDFEFCFFFFFAFFFFFBFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFEFDFFFEFBFFFEFBFFFEFBFF
          FFFBFFFFFBFFFFF8FBFFF1F0FF6B60C12609BC1F00DB1800E01800E11B00D926
          0FBDA79FF6F4F6FFFDFFFFFFFFF7FFFFF9FFFFFFF7FBFFFAFDFFFBFDFFFDFCFF
          FFF9FFFFF9FFFFFBFFFFFEFFFFFFF9FDFFFCF5F7FFF4F2FF9990E72E1BA0260A
          BB0C00BC2F0EF31900DB1600CA3417D23622B7665BC3EFF0FFF4FAFFF9FCFFFF
          FFFCFFFFF8FEFEF2FDFDF1FDFBF3FFF9FEFFFDFFFFFFFEF6FDF8F3FFFFE4EBFF
          2A17AE2101D61600E41700E91801D91B0DBF241D9CE6E8FFEDF9FFF8FFF4FDFF
          F5FFFFFBFFFCFFFFFBFFFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFDFF
          FFFFFEFFFFF9FFFFF8FFFFF8FFFFFCFFFFFFFFFEFFFFFEFFFFFEFFFFFFFEFFFF
          FBFFFFF9FFFFF9FAF4FF7165DB200ABD1B00D12100E12600E22102C3251598E9
          E4FFF6F7FFFBFEFFFFFEFFFFFEFFFFFDFFFDFEFFFAFFFCFAFFFBFDFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBF8FFF6E8FF422DA12811AF240ACC1300DB0700DA2E1DF70E
          00BE251CB3453ABEE3D3FF220B9B290AB93410D92000DB2501CF2E14A8EBDEFF
          F3FAFFF4FFF7FAFFFFFAF8FFFFF7FFFFF7FFFFFDFEFEFDF3FFFFF8FDFFFBF3F6
          FBF8F5FFD4C5FF3A269D321EC50C00BC3315F01400D72B0AEF1F04D60F00AD46
          41C2DCE2FFE5F5FFEFFFFFF6FFF2F4FDE9FAF9EFFFFCFFFFFCFFFFFEF6FFFFF5
          FFFFF7FFFFF8FFFFF9FFFFFBFFFFFCFDFFFEFDFFFEFDFFFEFBFFFFFBFFFEFAFF
          FCFAFFFCFAFFFBFBFFFCFFFFFEFFFFF9FFFFEEFFFFF1FFFDFFFFF8FFFFF8FFFF
          FBFFF9FFF6F4F8FFA592FF2F13B3250BBD2008CA1C04D41C07C82817AE635BBF
          EDF4FFF2FCFFFDFFFFFFFFFAFFFFF8FFFBFDFFF5FFFBEFFFF6F2FF726EB93025
          A91E0AC10900D12204ED2806CF2A0FAC7D73D0EFF2FFF2FBFFF6FDF8FFFCFFFF
          F8FFFFF8FFFFFCFFFFFFF5FFFFEEFFFFEEFFFFF8FFF9FFFFF7FFFFFCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFBFFFAF2FF7260BE2100B32803E31200D71803E11300D721
          0BD51B03AF8C78EFF8F2FFF5F6F2FFFFF2FFFFF4FFFFFBFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FEFFFFFAFFFFFBFFFFFFFCFFFFFBFFFDFFFFFDFFFFFFFEF8F9FFE7E2FF271598
          2B05CF2A00E52703DF1500C91D09CE1907CC1B03D31D01D71F00DA2100DB2100
          DD1F00DD1D00DA1901D71701D51901D71B00DC2100D62A08C06A52CEF8F3FFFA
          FEF9FDFEFAFFFFFCF9FEFDF3F4FFEAE0FF2A15A02806C82200DA1F00DB1B00D9
          1B02D41B02D41D00DA1D00DA1F00D71F00D92100DE1F00DE1D00DD1D00DA1B00
          DA1B00D91B01D71D02D41A00CB3317D42009A74231AAE9DDFFF3EEFFF8F7FFFB
          FDFFFCFFFAFEFFF6FFFFF9FCF5FCFAECFFFBE7FFA085FD3115B52206CB250DE3
          1300DA0C00D51D0AE31700DA1100D62301E81C03E11803DC1600D22704DE2A00
          DC330ABFBBA9FFECE8FFF3F4FFABA1ED2F12B52501CF2405D61B00D21D01D729
          0DBE745EBDFFEEFFFFF2FFFFF6FFFFFAFFFFFDFFFFFFFCFFFFFAFFFFFBFFFFFC
          FFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFBFFFBFAFFFAFBFFFAFFFFFBFFFBFBFF
          FFFBFEFFFBFCFFFBFEFFFBFFFBFBFFF7FBFFF7FAFFFBFAFFFFFAFEFFF8FFFFF8
          FFFFFAFEFFF9FCFFFFFFFFFFFDF8FFFFF9F9FBFBF6F9FFC4C0FF2811B91B00D7
          1900E01A00E12100E02707C06C60C0F2F1FFFBFBFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFCFFFFFCFFFFFCFFFFFCFFFFFEFFFFFCFFFFFCFFFFFEFFFFFEFFFFFF
          FFFEFFFFFEFFFFFFFFFFFFFFFFFFFCFDFEFFFAF9FFF4F3FFECEDFF2520931C04
          CE1A00EB1700E61700DF1C00D92713B2E2EAFFF1FFF9FAFFFBFBFFFAFFFEFEFF
          FEFFFFFEFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFBFFFFFDFFFFFBFFFEFDFF
          FCFBFFFBFDFFFCFDFFFCFDFFFCFDFFFEFBFFFFFBFFFFFBFFFFFBFEFFFBFEFFF8
          FBFFF1F1FF6B60C02608BF2100DE1800E11900E11B00D92810BCA7A1F3F6F7FF
          FDFFFFFFFFF9FFFEFAFFFFFFF8FBFFFAFEFFFBFEFFFBFEFFFDFBFFFDFCFFFDFE
          FFFDFFFCFBFFF7F8FFFFF4F5FF8D85D23E29AD280DB71F00C72200DA1E00E11B
          00D32F11C4270F9D6456BCF0ECFFF0F7FFFAFFFCFDFFFFFFFDFCFFFFF9FEFEF2
          FFFFF0FFFFF7FFFAFFFEF8FFFFFFFCFBFFFBF3FFFFE6EAFF2B15B12100D91600
          E61700EC1800DD1D0BC2241C9FE6E7FFEFF8FFFAFFF7FBFFF6FFFFFBFFFDFFFF
          FCFFFFFEFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFEFFFFFEFFFFFFFEFFFFF9FFFFF7FFFF
          F7FFFFF8FFFFFCFFFFFFFFFEFFFFFEFFFFFFFEFFFFFBFFFFF9FFFFF9FFFFFBFA
          F3FF9689FD311CCC1C00D01F00DF2600E22203C429189DEDE7FFF4F7FFFBFFFF
          FFFFFFFFFFFFFFFDFFFDFEFFFAFFFCFAFFFCFDFEFFFFFEFFFFFFFCFFFFF9FFFF
          FBFFFFFCFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFDFCFFFDFBFFFDF9FFF8
          EFFF604FBE3921BB1600AD240AD22205EB1D00EA0C00C72212BE1D188BE0DEFF
          DDD8FF302298341AC11200B82503DD2202CB2E14A8EBDDFFF4FAFFF6FFF7FBFF
          FFFCF8FFFFF6FFFFF7FFFFFCF9FFFFF5F7FCEDF8FDFCF8F7FFE4DCFF9582E926
          0F9F1803B6230CDA1700DA2400E61D00D41F05BD3325ACD9DAFFEAF6FFEFFFFF
          F0FFECF1FFE1FFFFEEFFFFF8FFF7FFFFFAFFFFFFF9FFFFF4FFFFF5FFFFF6FDFF
          F6FDFFF7FBFFF9FCFFFBFDFFFCFBFFFCFBFFFEFBFFFCFAFFFBFAFFFBF8FFF9FA
          FFFBFFFFFBFFFFF8FFFFF0FFFFF2FFFCFFFFF8FFFFF8FFFFFBFFF9FFF9F4F8FF
          A595FA2F16AC250CBA2209C71C06D01C09C42818AC635CBDEDF6FFF2FEFEFBFF
          F9FFFFF4FFFFF8FFFCFDFFF6FFF4EAFFF1F2FFEDF0FF251E861F10AE331AEE11
          00D81A00D02D13C5291D95EBEAFFEBF0FFFBFFFEFFFAFFFFF4FFFFF8FFFFFBFF
          FFFFF9FFFFF4FFFFF4FFFFF9FFFBFFFFF9FFFFFBFFFFFEFFFFFFFEFFFFFCFFFF
          FEFFFFFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFF9FFFFF8FFFFF8FFFFF9FFFFFEFB
          F8FFEBE0FF230C8C2E0ACE2000DF1600DB220DE60800C8250CCA321FACE0D2FF
          F9F5FFFFFFF4FFFFF0FFFDEEFFFFF7FBFCF3FFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFDFFFFFFFEFFFFFFFE
          FBFFFFFBFEFFFFFAFFFFF9FFFFFBFFF6F4FFE5E9FF191592331AD61900CC1D00
          C4350ED5240BC11F0BC21D06CD1D01D61F00DB1F00DD1F00DA1D00D91B00DA19
          01D91701D61802D71900D92100D32A06C46850D2F6F3FFF8FFF6FBFFF6FDFFF9
          F8FFFCF1F3FFEADEFF2A13A52804CC2200DD1F00DB1B00D91B04D21904D21902
          D61902D61903D31B02D42404DF1F00DB1B00D81D00DA1B00D91800D41D03CD27
          0CCD270BC31C03A17665D4F3E7FFFBF3FFF1E8FCFFF8FFFFFDFFFFFFEDFCFFEB
          FDFFFBF4F2FFF4E9FFD2BEFF3316B92303C62101D61B00DA1804D31804D21904
          D21B01D71D00E41F00E42101DC2206DB1400D51300D6210ADE210CBC6F63CDF3
          ECFFF3F1FFAAA0EC2C12B22304D11200CE1C03DD1F03D9280EB86F5FB2FDF4FF
          FDF7FFFCF9FFFDFFFFFDFFFCF7FCF3FDFFF8FFFFFBFFFFFCFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFCFDFFFCFAFFFCF8FFFBF8FFF9FAFFFBFAFFFEFAFFFFFBFFFFFB
          FFFFFDFFF9FDFFF5FDFFF4FBFFF4FBFFF7FBFFF8FBFFF8FBFFFBFAFDFFFDFDFF
          FFFFFFFFFEFDFFFEFFFFFEFFF6FCFFE6E8FF2D1AAF1900C72509DF1200D12B00
          E92E08C66B5DB5F7F6FFFFFCFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFF8FFFFF7
          FFFFF8FFFFF8FFFFF9FFFFF8FFFFF8FFFFF9FFFFFCFFFFFFFFFDFFFFFDFFFFFE
          FFFFFFFEFFFFF8FFFFFBFFFAFFFBF3FFF2EDFF2E248E2008C21200D91F00F014
          00E31F03D82717ABE6EFFFF1FFF8F7FFF3FCFFF7FFFDFFFFF9FFFFFFFFFDFFFC
          FFFFFCFDFFFCFFFFFCFDFFFCFFFFFCFDFFFCFFFFFCFDFFFCFFFFFCFDFFFCFFFF
          FCFDFFFCFFFFFCFDFFFEFFFEFFFDFDFFFFFFFFFDFFFCFFFFF9FDFFF7FFFFF8FF
          FFF8FFFFFBFFFFFEFFFEFFFFFEFFFFFDFFFFFDFFFFFDFFFBFBFFF4F6FF5F56AC
          2B0CC32200E01A00DF1F02E11A00D52B13B9A19EE3F7FAFFFFFDFFF7F2F4FFFE
          FFFFFFFFF9FCFFFAFFFFF2F9F4FAFFF9F8FFFBF8FFF9F5FFF6F4FFF5EFFFF4EF
          F9FFC9C2FF3E27B11E00BA2C06DA2000D0290BD81200C9270FC11F0C7B9282C9
          ECDFFFFAF4FFFBFAFFFDFDFFFDFCFFFBFBFBFFFFFCFFFFFBFFFFF9FFFFFCFFFE
          FFFFFEFFFFFEFFFDFFFFFAFFFFEDEAFF3217AD2602D81700E21D00EF1700DA20
          07C72B17A6EDE1FFF2F3FFFBFFFFFBFEFCFDFFFFFBFDFFFBFDFFFDFFFFFDFFFC
          FFFFFCFDFFFCFFFFFCFDFFFCFFFFFCFDFFFCFFFFFCFDFFFCFFFFFCFDFFFCFFFF
          FCFDFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFF9FFFFF9FFFFFBFFFFFEFFFEFFFD
          FFFFFFFFFFFFFFFEFFFFF9FFFFF8FFFFF8FFFFFCFFFEFFFAF2FFA699FF2A15B7
          1E01C92400DD2200DB2307C527199CECE8FFF4F8FFFAFFFEFFFFFBFFFFFCFFFD
          FFFFFEFFFBFFFEFBFFFFFBFAFFFDFBFFFDFFF5FFFFF0FFFFF2FFFFF8FFFEFFFF
          FDFFFBF9F9FFFFFEFBFBFBF9F8FFFBF7FFF4ECFFF8EEFF9789E71C0DAB2514D5
          1300C71700CF2D04EF2300D92F0BC92D16A0D1CDFFEDF1FFE4E3FF302795230A
          B81E01D21700D71E06CA2D12A8EFDEFFF0F3FFFAFFF8FBFFF7FFFEFFFFF7FFFF
          F8FFFFFFF5F8FEE5F7FFEDEEF5FEEEECFFC8BBFF321CB02209BD1300CB2409E9
          1900DA2600D5320EBE2D1192E2D5FFF1EEFFF8FBFFFAFFFFFAFFF5FBFFF0FFFF
          EEFFFFF5FFFBFFFFF9FFFFFFFFFFFFFBFFFFFCFFFFFCFFFFFCFFFFFEFFFFFEFF
          FFFEFFFFFEFDFFFEFDFFFFFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFFFDFFFE
          FFFFF8FFFFF9FFFDFFFFFBFFFFFCFFFFFEFFFBFFFEE1E2FCC6BAFF1E08962D0E
          C72001D21D03D91C04CE2910BE5B4FC5EAF4FFF1FFF9F1FEEEFDFFF7FFFEFFFF
          FCFFFFFBFFFEFAFFFAFBFFE7E9FF7C77C62C1EA22405CC1B00DD1400DD1600CB
          2612B19386E8F8F5FFFFFCFBFFF3FFFFF4FFFFF8FFFFFAFFFFFBFFFFFDFFFFFF
          FFFFFFFCFFFEFEFFFDFFFFFBFFFFFCFFFFFFFBFFFFF8FFFFFBFFFEFFFFFAFFFF
          FAFFF4EFF8FFFFFCFDFFECFFFFEAFFFFEAFFFFEFF5F6EDFAF3FF7564D72C12BE
          1E00D11B00DB1300CF1903D31A00CF3316C78C7BDCF3EBFFFFFEFFF9F5EAFFFE
          FFFFFEFFF3F7F1F9FFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFDFFFFFFFFFBFFFFFCFAFFFFF8FEFFFFFA
          FFFFF8FFFFF9FFF6F2FF9699EE1F1EA40E00B43413E03E13D23A13C2220BA92C
          1BC01D08C81B02D61F00DD1F00DE1F00D71D01D61B00DA1800DA1700D81802D7
          1900D82001D22A05C5684FD5F6F3FFF7FFF5FBFFF5FBFFF9F6FFFCF0F3FFEADE
          FF2A13A52903CD2400DE1F00DD1B00D91B04D21905D01803D41802D61804D319
          03D31900CF1C00D62102E12302E62100E22000D82205CC2D12C02612A19081ED
          DACFFFF8F0FFFFF9FFFFFBFFFFFCFFFFF8F5FFFFF2FDFFF7ECEDFBEAE5FFE3D5
          FF2B14A62A0DC82201D41F00DA1B00DA1904D21906CF1B05D01B02D61D00E11F
          00E12000D32202D50F00D50B00D51205D3140AB85145BBE7E0FFF6F0FFBFB5FF
          2D14B22204D31400D51900DE2003DC260DB57061B2F6F0FFFDF8FFF5F5FFFDFE
          FFFBFFFEF9FDF7FBFFFBFDFFFEFBFFFFFDFFFFFBFFFFFDFFFFFBFFFFFDFFFEFB
          FFFBFAFFF8F8FFF8FAFFFBFAFFFEFBFFFFFBFEFFFBFEFFFDFFFFFDFFFCFDFFF9
          FDFFF7FDFFF7FDFFF7FDFFF8FDFFF9FDFFFCFCFDFFFFFEFFFFFEFFFFFDFEFFFC
          FFFFFDFFF8FEFDE8EBFF2A1AA71B00C52508DA1900D52B00E83108C78173C5FA
          F8FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFF9FFFFFCFFFFFCFFFF
          FBFFFFFBFFFFF9FFFFF9FFFFFEFFFEFFFFFCFFFFFDFFFFFDFFFFFFFEFFFFF7FF
          FFF8FFFAFFFFF6FFF6F0FF43379B260FBF1800D91C00EF1600E62103D82717AA
          E6EFFFF1FFF9F7FFF0FCFFF4FFFBFFFFF7FFFDFEFFFBFFFEFDFFFEFBFFFEFDFF
          FEFBFFFEFDFFFEFBFFFEFDFFFEFBFFFEFDFFFEFBFFFEFDFFFEFBFFFEFDFFFEFD
          FFFFFFFCFFFFFCFFFFFEFFFFFFFCFFFFF9FFFFF7FFFFF7FFFFF8FFFFFCFFFFFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFDFCFFF6F8FF746EBD2E0CC42200E11F00
          E01D01DD1D00D52911B5A9A7E3F8FDFFFFFCFFFDF5FCFFFEFFFFFFFFF8FBFFFA
          FFFFFAFFFFF9FFFDF5FFF8E8F6EAF4FFF4F0FFFAECFBFFE3E6FF3321A22607BC
          2801D91E00D72708D9240BD12811D11D0A9F8577BFD1C6E6FFF6FFFFF7FFFBF5
          FFFCF8FFFEFDFFFFFFFFFFFFFEFFFFFCFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFD
          FFFFFAFFFAF6F3FF472DB92906D21B00DD1A00E41B00D82307C42D17A5EFE1FF
          F6F2FFFDFFFFFBFEFCFBFFFEF8FFFFF8FFFFFBFFFFFBFFFEFDFFFEFBFFFEFDFF
          FEFBFFFEFDFFFEFBFFFEFDFFFEFBFFFEFDFFFEFBFFFEFDFFFEFBFFFEFDFFFEFD
          FFFEFFFFFCFFFFFBFFFFFBFFFFFCFFFFFFFFFEFFFFFDFFFDFDFFFFFFFFFFFFFC
          FFFFF8FFFFF7FFFFF8FFFFFCFFFCFFFAF2FFA69BFF2A18B12002C72401DB2200
          DA2307C427199CEAE9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFB
          FFFFFBF9FFFBFBFFFDFFF9FFFFF2FFFFF4FFFFF8FFFFFEFFFEFFFFFFFFF2F2F2
          FCFDFFF4F5FFF6F5FFF4EDFFC6B6FF311FA01709C31101D8220AE41D00D92300
          D83508D33915AFA591F4E6E5FFF1F6FFEAE8FF2C2195260DC12206DB1801D920
          0ACE2B12A8EFDDFFF0F3FFFAFFF7FDFFF3FFFFFEFFF7FFFFF9FFFFFFF0FFFFEB
          FAFFF2F2FAFFECE6FF4837BE2910BE2205D01800DC1900E22200E12700C83614
          A8775FBDF3E7FFFDF9FFFFFCFFFDFFFFFDFFF9FBFFF4FDFFEEFFFFF4FFFDFFFF
          FAFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFD
          FFFFFCFFFFFFFFFFFFFEFBFFFFF2F3FFDBD1FF2A169F2F0ECD2100D92102DF1E
          04D42B0EC97261E0EBF5FFF1FFF7F5FFF1FBFFF8FFFDFFFFFAFFFDF8FAF8F5F7
          F8FAFFF6F6FFE2DFFF2D1E912708BF2100DA230EED1605D8230DC0311E9DF1E8
          FFF3E9FAFFF5FFFFF5FFFFF9FFFFFCFFFDFCFFFBFCFFFFFBFFFFFEFFFFFFF8FF
          FFF9FFFBFFFFFBFFFFFFFBFFFFF7FFFFF8FFFFFEFFFBFFFFFAFFFFFCFFFFFFFC
          F5FDE6F8FFE4F5FEE4F5F9EEFFFBFFF1E6FF3620B41A00C42104DD1E02DE1D07
          D81700C92A0CD122069FC9BBFFFFF9FFFFFFFBFFF8EFFFFBFFFFFCFFF6FBFAFA
          FFFCFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFDFFFFFFFFFEFFFFFEF8FFFFF6FFFFFFFEFFFFFBFFFFF9FFF6
          EFFF514BB6372CC91E03C91A00C02C0AABDEC4FFC0B3FF1A10991F0BC21B02D6
          1F00DD1F00DE1F00D71D01D61B00DA1800DA1700D81802D71900D82001D22A05
          C5684FD5F6F3FFF7FFF6FBFFF6FBFFFBF6FEFDF0F3FFEADEFF2A13A32904CC24
          00DD1F00DB1B00D91B03D31903D31901D71901D91901D71903D31602C61F06D2
          1E00E51900E51C00E02600DD2702CE2008A47671C0D7DAFFF6F7FFF8F4FFFDF3
          FFFEF4FFFFFFF9FFFFF4FEFEFEEEEDFFF6EEFFD1C2FF1C048A391FC71200B52A
          0ADD1D01D71B00D91902D61903D41B02D61D01D71F00DB2100DA2100D32404D7
          1401DA1003DB0F01D1180CBE3628A5DCD3FFF6F0FFDDD4FF2C13B12103D21900
          DB1600DC2205DE240AB67E6DC4FAEFFFFBF0FFF6F0FFFEF9FFFDFCFFFDFCFFFD
          FEFFFFFCFFFDFCFFFFFBFFFDFBFFFFFBFFFDFCFFFFFDFFFDFEFFFBFFFFFBFFFF
          FBFEFFFBFDFFFDFBFFFDFBFFFDFBFFFFFBFFFFFDFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFDFFFFFCFFFDFCFFFCFDFFFDFFFFFFFEFFFFFDFEFFFCFFFFFDFFF8FDFEE8
          EAFF2817A81F03CB1F04D61E00DA2600E2320BC59D8FE1F6F9FFF8FDFFF8FFFF
          F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
          FFF8FFFFF8FFFFFAFFFFFFFBFFFFFAFFFFFAFFFFFBFFFFFBFFFFFDFFFFFEFFFF
          FEFFFFFDFFFFFCFFFFFCFFFFFCFFFFFDFFFFFFFEFFFFF9FFFFF9FFFAFCFFF8FF
          F6F0FF5B50B12A10C11E00DE1700EA1A00EA2103D82717ABE8EDFFF3FFFCF9FF
          F3FEFFF6FFFBFFFFF6FFFFFBFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFD
          FCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFFFCFFFFFBFFFFFCFF
          FFFDFFFFFFFFFFFFFCFFFFFBFFFFFBFFFFFCFFFFFEFFFEFFFFFDFFFFFDFFFFFD
          FFFFFEFFFFFFFFFDFCFFF6F9FF938DDC2E0CC42000DF2303E41B00DB2000D627
          10B2ABA9E5F7FCFFFFFCFFFFF9FFFFFEFFFFFEFEF9FCFFFBFCFFFFF8FFF7F0FF
          FBFBFFEDF5F5F3FFFAF1FBFFDAD6FF7260E32708BD1D00C72000CE3315E41C00
          CB0800B22414BF453AB9DFD4FFFFF6FFFFF7FFFDF7FFFAF6FFFCF9FFFFFEFFFF
          FFFFFFFFFEFFFFFCFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFDFFFEF9FFF2F4F8FF
          5F4BC6280BC61F01D61500D31F07D1230DB92F1C9BF1E6FFF7F6FFFFFFF7FDFF
          F3FDFFF7FAFFFBFAFFFEFDFEFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFD
          FCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFDFCFFFFFCFFFFFEFFFFFFFEFFFFFC
          FFFFFEFFFFFFFFFDFFFFFCFFFFFBFFFFFCFFFFFEFFFFFFFCFFFFF9FFFFF8FFFF
          F9FFFFFCFFFEFFFAF3FFA69BFF2A18B12002C72401DB2200DA2307C427199CEA
          E9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFBFFFEFAFEFFFBFDFF
          FDFCFFFFFDFFFFFFFFFFFFFBFFFFF5FFFFF7FFFFFEFFFDFFF8F9FFF6FAFFDCDE
          FFEDE9FF342297250EAC1E0DD00F00D31600DC2D08E82500C91D009D7E6CCFF4
          EEFFF1F4FFEDF0FFEBE2FF221198250AC52105DB1300D5200ACE2C13A9F0DFFF
          F1F4FFFAFFF7FDFFF5FFFFFEFFF7FFFFF8FFFFFFF4FFFFF0F1FBEFEEF2FFE4DA
          FF1803952D12C62103D21C01E01A00DF1F00D5330DCA3D21A3D9C6FFF2E9FFFF
          FCFFFFFCFFFDFEFFFDFFFCFBFFF7FDFFF1FFFFF5FFFDFFFFFBFFFFFDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFF
          FFFEFBFFFFF6F7FFE8DEFF2D19A22908C71C00D41F00DD1D00D12C0EC59280FD
          EBF4FFF3FFF7F8FFF4FCFFF8FFFBFFFFF7FFFFFDFFFFFFFFF9F9FFE8E8FFF1EE
          FF584DB32D11B82A0DD40B00C61408CC1B06C0311AB2BBA8FFFDEDFFFFF4FFF5
          EBFBFFFCFEF9FFFAF6FFF7F6FFFCF8FAFFFBFAFFFFFFF6FFFFF6FFFAFFFDF9FF
          FDFEFAFBFFF3FBFFF3F9FFF6F9FDFEF8FBFFF8FCFFF4F9FAFAFFF9FAFFFCFAFD
          FFFAF6FFFAEDFF9681E71F03AA2406D12105DA1500D41D01DD2005D1260FB864
          51CAF5EBFFFFF9FFFFFFFCFFFBF4FFFEFFFEFAFFF6FAFBFBFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFD
          FFFFFFFEFFFFFFFFF6FFFFF6FFFEFDFFFCFFFEFFFFF9FFF6EBFF7062E50F00B1
          1500C62909C62F1799EBDCFFE8E3FFC3BDFF1F0DBE1B02D61F00DD1F00DE1F00
          D71D01D61B00DA1800DA1700D81802D71900D82001D22A05C5684FD5F6F3FFF8
          FFF6FBFFF9FBFFFCF6FEFEF0F3FFEADEFF2A14A22806C92400DB1F00DB1D00D9
          1B02D61902D61900DB1900DD1900DB1B02D61E0ACF1600CB1B00DE2200E91F00
          DD2000CB4020CB6A59CCEEF1FFF0FAFAF8FCFFFDFBFFFFF8FFFAF2FCFFFFF2FF
          FFF6F4F1FFF2EAFFD8C7FF30189C2708B12402C42708D52003D51D01D61B01D7
          1901D91900DA1D00DA1D00D91F00D72101D42100D12404D91703DE1305DF0D00
          D11F12C826159AD0C5FFF2ECFFF1E9FF290FAF1F00D11B00DF1400DC2406E124
          0AB69986DDFFF2FFFFF5FFFCF5FFFFFAFFFFFCFFFFFBFFFEFDFFFFFCFFFFFBFF
          FFFAFFFFFBFFFFFAFFFFFBFFFFFCFFFFFEFFFFFEFFFFFEFFFFFDFFFFFCFFFFFB
          FFFFFAFFFFFAFFFFFBFFFFFCFFFFFDFFFFFDFFFFFCFFFFFBFFFFFBFFFFFAFFFF
          FBFFFCFDFFFDFFFFFFFFFEFFFDFEFFFCFFFFFCFFF8FDFFE8E9FF2712AA2205D0
          1C01D32304DD2200DA2D0ABFB1A5F7F5F6FFF6FCFFF6FFFFF6FEFFF6FFFFF6FE
          FFF6FFFFF6FEFFF6FFFFF6FEFFF6FFFFF6FEFFF6FFFFF6FEFFF6FFFFF6FEFFFA
          FCFFFFFAFFFFF9FFFFF9FFFFFAFFFFFBFFFFFCFFFFFDFFFFFDFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFFFFFFFFFEFFFFFBFFFFFBFFFAFBFFF9FFF5F0FF6C61C2280F
          BD2200E01500E51F00EC2303D82916ADE9EBFFF4FFFFFAFFF6FEFFF7FFFBFFFF
          F7FFFFFBFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFDFFFFFDFFFFFFFFFFFF
          FFFFFFFEFFFFFEFFFFFFFFFEFFFFFEFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFEFD
          FDFFF5F8FFAAA4F32B09C11D00DC2404E51900D92302D92710B2ACAAE6F0F5FE
          FFFCFFFFFAFFFFFEFFFFFDFDFBFEFFFBFBFFFBEFFFFFF3FFECE6FDFAFAFFE2E7
          FCEBECFF7061DB1900AB3613DF1700CB2406D31800C31C01C62D19CA2118A5DD
          D8FFF6F0FFFFF7FFFFF9FFFCF7FFFFFCFFFFFEFFFDFDFDFFFFFEFFFFFCFFFFFC
          FFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFDFFFEF8FFEFF4F9FF6F5CD32207BB2408
          D71500D0230DD1210DB42F1D98F1E6FFF7F6FFFFFFF5FDFFF3FDFFF7FAFFF9FA
          FFFEFDFEFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFDFFFFFFFEFFFFFCFFFFFFFFFDFFFFFB
          FFFFFAFFFFFAFFFFFCFFFFFEFFFFFFFEFFFFFBFFFFF9FFFFFBFFFFFCFFFFFFFA
          F4FFA69CFF2A18B12002C72401DB2200DA2307C427199CEAE9FFF4F8FFFAFFFC
          FFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFBFFFCFAFFFEFBFEFFFDF9FFFFF8FFFFFB
          FFFFFFFCFFFFF5FFFFF5F8F7F3FDFDFFF8FBFFE8EBFFEBEBFF3932932B18AB29
          10C6230CDA1600D71C00DA2403D02E10B55340B4DEDAFFF6FAFFF6FBFFEBEBFF
          EEDFFF220A9E2708C92102DB0F00D12209CF2F15A9F0DFFFF1F4FFFAFFF7FDFF
          F5FFFFFEFFF7FFFFF8FFFFFFF8F8FFEFEEF6F5EDEDFF8F81EB3720BE2307C41C
          00D12003E21400D42605D2290BB2876FDFF8EBFFF9F3FFFFFEFFFFFCFFFDFDFF
          FDFFFFFBFFFCFDFFF5FFFFF7FFFEFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFFFFFEF1F5F6F6F7FF
          E9DFFF2A169F2403C21C00D42102DF1A00CD290BBEAB98FFEAF2FFF4FFF7FAFF
          F5FCFEF8FFFBFFFFF7FFFDF6F9FFFEFFFFFEFFF3F3FFF3F2FFBDB4FF341DAF20
          07BB1910CB130ACC0F00BD391ECC4429AEE7D2FFFBEFFFFDF6FFFAF9FFF6FCFF
          F3FFFFF3FFFFF4F4FFF6F3FFFAFAFFFAFBFFFAF5FFF8F4FFF8FAFFF6FDFFF6FE
          FFF6FCFFF4F9FFF4F7FFEFF2FFF4F7FFF3F7FFE9EBFFE4DFFFF4E7FFD8C2FF46
          29B42707C02F0FE01B00D01300CF1D00DE290DD51E0E98CFC6FFF6F1FFFBF6FF
          FFFCFBFFFFF9FFFFFCFFFDFDFBFCFFF8FBFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFFFDFFFFFEFF
          F4FFFEF4FFFBFDFFF5FFFFF9FFF9FFF6E8FF210BA71700C63311E73215C67466
          C6E8E5FFE4E7FFAEAEFF1F0FBA1B02D61F00DD1F00DE1F00D71D01D61B00DA18
          00DA1700D81802D71900D82001D22A05C5684FD5F6F3FFF8FFF8FBFFFAFDFFFF
          F6FEFEF0F4FFEADFFF2A15A02806C82200DA1F00DB1D00DA1B01D71B00D91B00
          DE1B00E11B00E01B00DD2006DC1200CD1B00D32C09E32C02DD3C19CD8D7FE4EF
          EDFFF8FAFFFBFFFFFDFFFFFFFFFFFBFBFBFEFFF8FFFFF0ECF1F0F3EDFFB4A4FF
          2B10A03210C23611DD2200D51A00D01A00D31B02D41902D61900DB1900DE1D00
          DE1D00DA1F02D32103D01F00CE2000D61300DC1001DE0900D02012CC200D9AB7
          A9FFEEE8FFF1E9FF250BAB2000D51A00DF1400DD2304E1270CB6AD9AE9FFF5FF
          FFF8FFFFFBFFFFFDFFFFFFFEFFFFFBFEFDF9FFFEFFFFFEFFFFFDFFFFFDFFFFFD
          FFFFFFFFFFFFFEFFFFFCFFFFFCFFFFFEFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFFFFFFFEFFFFFDFFFFFDFFFFFCFFFFFBFFFFFDFFFCFEFEFDFFFC
          FFFFFEFFFDFEFFFCFFFFFCFFF8FCFFE8E7FF2710AE2404D51A00D02507DC1D00
          D32A08BAB5ABFEF0F2FFF8FAFFFAFCFFFAFBFFFAFCFFFAFBFFFAFCFFFAFBFFFA
          FCFFFAFBFFFAFCFFFAFBFFFAFCFFFAFBFFFAFCFFFAFBFFFBFBFFFFFCFFFFFCFF
          FFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFBFFFF
          FBFFFFFBFFFFFCFFFFFCFFFEFDFEFAFFF3EEFF7267C82209B72100DD1500E322
          00EC2403D62A15ADE9EAFFF4FFFFFAFFF7FFFFF7FFFDFFFFF9FFFFFEFFFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFCFBFEFFF0F3FFB4AEFD
          2705BD1C00DB2101E21A00DA2403DA2811B3BAB8F3F0F6FDFFFCFFFFFBFFFFFE
          FFFEFCFCFBFEFFFDFBFFFFF5FFFFEEFFFFF6FFE0D9FEF1E9FF6355C5240FAC28
          0FCB1000BB280CDB2004D31700C32910C62716ADDAD6FFECEBFFF1EDFFFCF6FF
          FAF6FFFDFAFFFFFDFFFFFEFFFBFCFAFFFFFCFFFFFCFFFFFCFFFFFEFFFFFEFFFE
          FFFFFEFFFFFDFFFDFFFFF9FFF7F3F5FF725CDD1D00BC2608DD1900D7240CD61F
          08B62F1A9EF1E3FFF7F2FFFFFFFEFFFEFAFFFFFEFBFFFFFBFFFFFFFFFFFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFCFFFFF9FFFFFBFFFEFFFFFCFFFFFAFFFFF9FFFFFAFFFF
          FCFFFFFEFFFFFFFEFFFFFEFFFFFCFFFFFCFFFFFCFFFFFEF8F6FFA69CFF2A18B1
          2002C72401DB2200DA2307C427199CEAE9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFE
          FFFFFEFFFDFFFEFBFFFCFAFFFBFBFFFFFDF7FFFFF6FFFFFBFFFFFEFFFFFFFCFF
          FFF9FFFFF9ECF1EFF4FCFFDEE2FF544CB73524BB0E00AB230CD31D00DA2809E2
          2205CD2C12B94A38ADEEE8FFF4F9FFEEF8F2F8FEFFF0EFFFE9D8FF2A10AA2B0A
          D02101DC1300D6270BD33016AAF2E0FFF2F5FFFAFFF8FDFFF6FFFEFFFFF7FFFF
          F8FFFFFDF8F6FBF2F8FCFFEFECFF32209B3217C11800C11D00D71E01E01100CA
          371AD5260F9FE9DAFFF7EFFFFFFCFFFCFAF9FFFDFFFDFCFFFDFCFFFBFFFFFDFF
          F9FFFFF8FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFF
          FFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFFFFFEF3F7F8F6F7FFEAE0FF2B17A02908
          C72402DC2607E41B00CC2508B7B4A1FFE8EDFFF4FFF8FBFFF7FEFDF9FFFAFFFF
          F7FFFFFCFFFAF4F5FCF9FBFBFBFFF3F5FFEFEBFF6E5BD22915B41A0FCA0500C5
          1E06D62406C93213BCAA90FFE9DAFFF4ECFFEFE9FFEDECFFEAF4FFEAF1FFEBE3
          FFEDE0FFEFE8FFF1E9FFEDE6FFEDE5FFEDE9FFEBECFFEBECFFEBEBFFEBE8FFEB
          E6FFE4DFFFEDE8FFECE8FFECE6FFECDFFFE2CEFF987BFF1D00AB2401CD2402D9
          1700CC2102D92400E31C00BD5B55BAEFF1FFF7F5FFFBF7FFFFFEFFFFFFF9FFFF
          F9FFFFFCFDFDFFF5F7FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFEFFFFFDFFFDFEFFF3FFFFF3FFF9FBFF
          F2FFFFF7FFFAFFF4E6FF371BC82300DC1000C52206ADA9A2E5E4E8FFECF0FF5D
          5CBE1F0FBA1B02D61F00DD1F00DE1F00D71D01D61B00DA1800DA1700D81802D7
          1900D82001D22A05C5684FD5F6F3FFF8FFF8FBFDFDFDFFFFF6FDFFF1F3FFE8E1
          FF2A169E2808C52200D91F00DB1D00DB1B00DA1B00DB1B00E11D00E41D00E21D
          00E01800D82209DD1D00CB1600B54222CD9C86FFEAE4FFFAFBFFE9E8F2FFFEFF
          FFFFF9F5F6ECFFFFF9FBFFF7FBFFFCF6F6FFC4B7FF250DA12708BD3912E31300
          CD2801E92001DE1600D21903D41902D61900DB1B00DE1D00DE1D00DA1F03D221
          04CF2401D32000D61500DE1001DF0D00D52110D12710A89483EAEDE7FFF1EAFF
          2409AC2403DA1600DD1600DF2001DE290FB7B09FE9FFF7FFFFF5FFFFFCFFFFFD
          FCFFFFFAFFFFF9FFFFFAFFFFFCFFFFFEFFFEFFFFFEFFFFFEFFFFFFFEFFFFFBFF
          FFFBFFFFFCFFFFFCFFFFFCFFFFFCFFFFFBFFFFFCFFFFFCFFFFFEFFFFFEFFFFFF
          FFFEFFFFFDFFFFFDFFFFFCFFFFFCFFFFFEFFFCFFFBFDFFFBFFFFFEFFFDFEFFFC
          FFFFFCFFF8FBFFEAE5FF280FB32200D61B01D12208D81E00D12809B8ADA4FBF1
          F1FFFBF9FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFCFFFFFDFFFFFFFFFFFFFCFFFFFBFFFF
          FBFFFFFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFCFFFFFBFFFFFCFFFFFFFFFEFFFF
          FDFFFFFFFEFAF8FFF2EFFF6F64C51E05B32000DC1B00E32100E42603D52C15AD
          EBE9FFF6FEFFFAFFF8FFFFF6FFFFFEFFFCFEFFFFFEFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFEFFFEFFFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
          FFFEFFFFFFFFFFFFFEFFFFFEFFFFFCFBFEFFEFF2FFB1ABFA2706BB1E00DD1B00
          DC1C01DB2100D72A13B5D3D1FFF8FEFFFFFCFFFFFCFFFFFEFFFDFBFBFBFFFFFB
          FBFFFFFAFFFFF6FFFDF7FFF6EDFF7A67DC250DAF0E00B43317E61B06CD1B06CD
          1900C93A1FDA1C079FC5B8FFEDECFFE7EAFFF5F3FFFEFAFFFCF9FFFDFCFFFFFE
          FFFFFFFFFBFCF8FFFFFCFFFFFBFFFFFBFFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFD
          FEFFFBFFFFEEECFF7057E11C00BF2306DF1D01DD2006D52109BB2F19A1F1E1FF
          F7F0FFFFFDFFFFFCFEFFFEFFFBFEFFFBFEFFFFFFFEFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFF9FFFFF7FFFFF8FFFEFFFFFBFFFFF9FFFFF9FFFFFBFFFFFCFFFFFFFFFFFFFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8F6FFA69DFE2A18B12002C72401DB2200
          DA2307C427199CEAE9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFB
          FFFCFAFFFBFBFFFFFDF8FFFFF7FFFFFBFFFFFDFFFFFDFFFFFFFEF8FDF4F8FFFF
          F1F6FF817ECE2413AA1D05C72B17E20A00C82100E01800C7321AC03C2EA4E2DD
          FFF2F5FFF8FFFFF6FFF5F7FCFFF4F1FFD4C2FF3015AB2906CC2100DD1600DA23
          06D13216A9F3E2FFF3F6FFFAFFF8FEFFF7FFFFFFFFF7FFFFF7FFFFFFFEF9FBFB
          F8F8FFD6CEFF240D971A00B42706D92000DE1700D92308D4240EB47060D6F4EC
          FFFAF9FFF8F9F5FFFFF7FFFDFFFDFAFFFDFAFFFBFDFFFDFFFCFFFFF8FFFFF9FF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFD
          FFFFFCFFFFFFFFFFFFFEF9FDFEF6F7FFEAE0FF2C18A12A09C82200DA2304E119
          00CA2609B3AF9EFFE9EDFFF6FFF8FAFFF8FFFEFDFFFAFFFFF9FFFFFDFFFFFFFE
          FEFCFCF9F8FFEDF1FFF1EEFFC9BCFF2615A21605C81B06E42006E21300C52C0C
          C9361ABA311C9A36269632209D3023972E2C852E2A8A2E1CA53018AC321E9F32
          209B301E9F2E1F9F2E229A2E22982E22982E219B301E9F2E1DA22C1A9D2F1FA2
          1C0D8D22139A3421B33018BA2E0FC42602CA2601D91C00D61D00D32606DB2000
          D31B02AAD0D0FFE6F0FFF8F9FFFFFDFFFFFFFEFFFFFBFDFCF2FFFFFBFDFDFFF9
          F8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFEFFFFFDFFFBFEFFF1FFFFF1FFF9FBFFF2FFFFF7FFFAFFF4
          E5FF2506BB1E00DB2D09DF3E26C0D1CFFDF1F8FFEDECFF20178B210DBD1B02D6
          1F00DD1F00DE1F00D71D01D61B00DA1800DA1700D81802D71900D82001D22A05
          C5684FD5F6F3FFF8FEF9FBFDFEFDFDFFF8FDFFF1F4FFE8E2FF2A189B2809C422
          00D71F00DB1D00DD1B00DB1B00DE1D00E41F00E51F00E21F00DE1900D52209D5
          2208C63823BC8D84DEF1EDFFFBF6FFF0E8F9FFF4FFFFFDFFFFFFF3FFFFF0FBFF
          FBF8FDFFECEBFFC8C1FF3522AD2C10C73210E01400D01C00E01F00E91F01E41E
          05DF1901D71901D71B00DA1B00DD1D00DD1D00DA1F02D42202D22906D82201D8
          1803E21303E41200DD1C09D22E13B76955C6F2ECFFEFEAFF260BAE2A08E21200
          DA1800E21B00D92A10B8B1A0EAFFF8FFFAF3FFFFFCFFFDFBFBFFFEFAFFFFFCFF
          FFFCFFFFFFFFFEFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFCFFFFFCFFFEFFFFFEFF
          FFFEFFFFFEFEFFFFFCFFFFFCFFFFFEFFFFFFFFFDFFFFFDFFFFFCFFFFFCFFFFFB
          FFFFFCFFFFFBFFFFFEFFFAFFFAFDFFF9FFFFFEFFFDFEFFFCFFFFFCFFF9FAFFEA
          E5FF280DB71E00D51C02D22006D52000D12A0EBBA398F8F4F2FFFFFAFFFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFEFEFFFEFFFFFFFFFFFFFBFDFFF9FDFFFCFDFFFFFDFCFFFD
          FBFFFDFBFFFDFCFFFDFFFFFDFFFFFFFEFFFFFBFFFFF7FFFFF8FFFFFDFFF8F6FF
          F4F1FF6B5FC31F06B42200DA2300E61B00DA2605D12C16ABEBE9FFF6FEFFFAFF
          F8FFFFF4FFFFF9FFFEFAFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFF9FFFFF9
          FFFFFCFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFEFFFF
          FEFFFFFEFFFFFEFBFEFFF4F7FFA9A3F22A09BE2400E21600D61F04DE1D00D32A
          14B3E5E3FFF8FEFFFFFDFFFFFDFFFFFEFFFDFBFBFBFFFFF8FEF9FBFFF0F6FBF2
          F1F5FFABA3F02208A81400C52B0AEE0F00D61400CE230FD31C05BF1E08A4D8CA
          FFF2ECFFF9FCFFFDFFF8FEFEFEFFFEFFFFFEFFFBFBFBFFFFFEFFFFFCFCFDF9FF
          FFFBFFFFFBFFFFFBFFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFDFDFFFAFEFFEDE9FF
          6D54E42100C71E00DB1C00DC1900CE260EC02F18A2F1E0FFF7EFFFFFFCFFFFFB
          FFFFFDFFFAFDFFFAFEFFFFFEFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFBFFFFF4FFFFF5
          FFFFFFFFFCFFFFF9FFFFF9FFFFFCFFFFFEFFFFFFFCFFFFFCFFFFFFFFFDFFFFFE
          FFFDFEFFFDFFFEF6F6FFA69DFE2A18B12002C72401DB2200DA2307C427199CEA
          E9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFBFFFCFAFFFEFBFFFF
          FDFDFFFFFBFFFFFBFFFFFBFFFFFEFFFFFFFFF4F9F7F6FAFFD4D1FF221793250C
          CA1F04E41300DF1900E11C00DA3513D22C1F92CECFFFF3FAFFF8FFFFEAEDF1FB
          FEFFF5F7FFF6F4FFB5A8FE2E17A22301C42000DD1900DE1E00CC3317AAF4E4FF
          F3F6FFFAFFF9FEFFF8FFFFFFFFF7FFFFF7FFFFFEFFF9FBFFEEEBFF978CE2341A
          B42201C72F0CE81E00E11600D82A12D61D0B9EC9BFFFEBEBFFFBFFFFF5F8E9FF
          FFF7FFFDFFFDFAFFFDF9FFFBFBFFFDFFFFFFFFF9FFFFF8FFFFF9FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFF
          FFFEFAFEFFF6F7FFE8DEFF2C18A12807C61B00D31E00DC1C00CA2D0FB4A997FF
          ECEFFFF8FFF9F7FBF5FFFFFFFFF6FFFFF9FFF9EEF1FFFEFEFFFFFEFDFCFEFAFC
          FFF3F5FFF3EBFF30209D1300CA2409F90B00D41E02D8290ED02F13CA1C00B127
          0ABE2603C92405C4240FB1240FB22403C92600D12702CA2604C62406C32207C2
          2407C22406C32405C62403C92602CB2402CB2B08CE290AC92105BD2C13C92A10
          C81800BA2003CA2A0ADB2704E02100DD2000DC2300D52301C45E4AD3EDF3FFEF
          FDF9F8FEFDFFFFFEFFFFFEFFFCF7FFFEF4FFFFF9FDFCFFFCFAFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FEFFFDFDFFFAFEFFF1FFFFF1FFFBFAFFF4FFFFF8FFFBFFF4E6FF2C0DC21B00D7
          2503D32612A1F0F0FFF6FBFFB7AEFF2C1AA9210AC41B02D61F00DD1F00DE1F00
          D71D01D61B00DA1800DA1700D81802D71900D82001D22A05C5684FD5F6F3FFF8
          FEF9FBFCFFFDFCFFF8FCFFF1F4FFE8E2FF281999260AC12200D61F00DB1D00DD
          1B00DD1D00DE1F00E42100E42100E02100D9270DD70A00A83020B49F96FEF1F3
          FFF8FBFFFDF4FFFFF8FFFFFAFFFFFAF7FFFFF1FFFFF5EBF1F6F4F3FFC9BEFF37
          22A62309BB1E00CE1B00D42000E22200EA2000EA0E00D61A00DF1900DA1901D9
          1B00D91B00D91D00DA1D00DA1F00D92200D72704D71F00D51500DF1000E11000
          DC1100CB2B0BBD452DA9F6F0FFE9E5FF2A0FB2300DE90F00D81A00E61700D529
          10B8B2A4EBFFF9FFFAF6FFFFFDFFFBFBFBFCFDF9FFFFFBFFFFFCFFFFFFFFFEFF
          FFFDFFFFFEFFFFFEFFFFFFFEFFFFFCFFFFFCFFFEFFFFFDFFFFFFFEFFFFFCFFFF
          FBFFFFFBFFFFFCFFFFFFFDFEFFFDFCFFFDFCFFFFFCFFFFFEFFFFFEFFFFFFFEFF
          FFFBFAFFF7FBFFF8FFFFFEFFFCFFFFFDFFFFFCFFF9FAFFEAE4FF2A0BBA1A00D4
          1B03D31D07D12305D42B12C09A8EF8F3EFFFFFFAFFFFFFF9FFFFF9FFFFF9FFFF
          F9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FF
          FFFCFFFEFFFBFFFFFBFFFCFAFFFBFAFFFEFAFEFFFAFAFFFAFAFFFAFAFFFAFDFF
          FBFFFCFDFFF8FFFFF9FFFFFFFFFAFFFFF9FFFFFDFFF4F4FFF4F0FF675CC22409
          B72302D92705E61600D12807CE2C16AAEBE7FFF4FCFFF9FFFDFCFFF7FFFFF9FF
          FFF9FFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFBFFFFFBFFFFFEFFFEFFFFFC
          FFFFFBFFFFFBFFFFFCFFFFFDFFFFFEFFFFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFB
          FDFFF6F9FFA49EEB2E0EC12801E61300D32106E01A00CF2B15B4EAE8FFF8FEFF
          FBF7FDFFFAFFFFFBFCFDFBFAFBFFFFF8FFFCF8FFF5F6FFFFA6A7DA2C20902207
          C22301E81900EC1800E91803D42212C42215A7A599FFEFE9FFFDFAFFFFFFF3FF
          FEE9FFFDF5FFFFFFFEFEFEF9FAF8FFFFFCFFFFFCFDFFF9FEFFFAFFFFFBFFFFFC
          FFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFDFDFFFAFDFFEFECFF6E56E42606C91B00
          D41801D51300C22815C02D1A9FEFE1FFF6F0FFFDFCFFFDFCFFFDFEFFF8FEFFF8
          FFFFFDFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFBFDFFF4FDFFF5FFFEFFFFFAFFFFF8
          FFFFFAFFFFFDFFFFFFFCFFFFF9FFFFFBFFFEFFFFFDFFFFFBFFFDFCFFFBFFFFF4
          F6FFA49DFE2A18B12002C72401DB2200DA2307C427199CEAE9FFF4F8FFFAFFFC
          FFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFBFFFCFBFFFEFBFFFEFDFFFCFFFFFFFFFB
          FFFFFBFFFFFFFEFDFFFFF8FBFFE8E3FF4434AA331CC51400C81700E11801ED14
          00DE2802D62709A8AFABF3F3FAFFF0FBF8F4FCF5FDFCFFF3EFFFFBFAFFF6F5FF
          A399E6321C9D2403C22702E22100E81F00CD3419A9F4E4FFF4F7FFFAFFFBFEFF
          FAFFFEFFFFF8FFFFF6FFFAF6FBFBFBFFF4F0FF6355BA2A0DB6300DDF1600D51A
          00DE2203E21800BD3B2DB0E2DEFFF1F6FFF5FFEFFFFFF1FFFFF5FFFDFFFFF9FF
          FDF8FFFBFBFFFDFEFFFDFFFBFFFFF7FFFFF8FFFFFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFFFFFEFAFEFFF6F7FF
          EAE0FF301CA52908C71A00D22001DE2509D13216B6A592F9F0F3FFF8FFF9F5F9
          F4FFFEFFFFF3FFFFFAFFFFFDFFF2EBE8FFFFFEFCFAFAFAFEFFF8FBFFF4F2FF8D
          80E62207CD1900E91100DA2409E21902C81500C12D0DE01B00D62300E52300DF
          2306CD2306CD2500DC2500E52700E32500DF2300DA2202D72300DA2300DE2500
          E12500E32500E32500E22300DC2100D81F00D02406D31900CA1C00CF2A10E017
          00D01800D22100DD2200E02602D23419BDB5A7FFD6DDF6F6FFF7F9FFF5FFFFF8
          FEFDF9FFFFFCFFFFF8FFFFFBFBF8FFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFEFFFCFCFFF9FDFF
          F0FFFFF1FFFEFAFFF9FEFFFAFCF8FEEEE2FF270BB82F0EE51800C02A18A1F4F5
          FFF6F7FF715CD63214C72106CB1B02D61F00DD1F00DE1F00D71D01D61B00DA18
          00DA1700D81802D71900D82001D22A05C5684FD5F6F3FFF8FEF9FDFBFFFFFBFF
          F8FCFFF1F4FFE8E3FF281A98260AC12101D61F00DD1C00DF2102E11B00DC1700
          D7340DF21800CE2706D2250BC3190C987072C0E0E7FFF4F8FFFDF7FFFFF3FFFF
          EFFFFFFFFBFFFFF2FFFFF5F0F4F5F4F6FFE1D8FF371CB22D09CD2200D61F00DB
          1D00DA1B00DA1B00DD1900DE1900E11900E11900DE1900DA1B02D61B03D31D02
          D41D00D91F00DE2100DD2400D72101D61400DD0F00E01200E01901D72B07C534
          199EF3EEFFEAE7FF2E13B62300DD1700E21900E51D00DB2810B4AEA6E7FBFBFF
          F6F9FEFAFFFEFBFFFBF5FDF3FBFFF9F8FFF8FBFFFEFBFFFFFBFFFFFBFFFFFBFF
          FEFBFFFBFBFFF8FDFFF9FFFFFCFFFFFEFFFFFBFFFFF9FFFFF8FDFFF8FBFFF9FA
          FFFCFAFFFFF5FAFDF8FBFFFBFFFFFDFFF9FAFFF0FCFFEDFDFFF0F9FFF3FBFFF8
          FFFFFEFFFCFFFFFDFFFFFDFFF9FBFFEAE4FF2707BA2200DF1600CE1803CA1400
          C53018CA998AFFEFEBFFFAF9FFFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFDFFFFFAFCFFF8FDFF
          F8FFFFF6FFFFF6FFFFF4FDFFF4FAFFF4FAFFF5FBFFF6FFFAFAFFEDFBFFE4F7FF
          DEFFFFE9FEFFF1FFFFFBFFFDFCFBF9FFF2ECFF685CC6260BB92505DA1C00D721
          03D82B0BCE2F19ADE4E0FFF3F8FFF0F5FEFAFFFFFDFFFEFDFFFCFBFFFBFBFFFB
          FBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF
          FBFBFFFBFBFFFBFBFFFCFDFFFEF3F5F6FDFDFFFDFBFFF5F2FFF8F5FFFDFAFFFD
          FBFFFDFDFFFDFFFFFDFFFCFDFFFCFFFFFEFFFEFFFFFDFFFBFBFFF5F8FFA9A3F0
          2F0FC21F00DB1E00DC1A00D82101D62610AFEAE9FFF8FEFFFFFDFFFFFBFEFDF8
          F9FDFBFAF9FEFDF6FBFFF3F7FFC4C3FF322599200BAD2912D81700DD1000E81A
          00ED1D0AD51910A79699EAE9EFFFFBFCFFFFFCF9FFFFF9FFFDF7FFFFFCFFFFFE
          FFFFFEFFFFFCFFFFFCFFFFFBFFFFFBFFFFFBFFFFFCFFFFFCFFFFFEFFFFFEFFFE
          FFFFFEFFFFFEFFFDFFFFF9FEFDF4F3FF6652D3260BBF1D07CB1807CA1C0DC221
          15AF2D2199EFE7FFF0EEFFF7FBFCFBFFFEFAFFFEEAF5F2F6FFFEFAFFFCFBFFFB
          FBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF
          FBFBFFFBFBFFFBFBFFF9F9FFF6FAFFFBFBFBFFF0EDFFFDF7FFF8F2FFFEFCFCFF
          FFF8FFFFF5FFFFF8FFFEFFFFFBFFFFFAFFFDFBFFFBFEFFF4F6FFA49CFF2A18B1
          2002C72401DB2200DA2307C427199CEAE9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFE
          FFFFFEFFFDFFFEFBFFFCFBFFFCF9FDF7FCFFF7FDFFFCFEFAFFFDFCFFEFF7ECF0
          F8F8EDE9FF6D5DC92403B81E00D03117E61600D51902EE1900DD2203B2503BAF
          E5E5FFF6FFFFE8F2E6FDFFFCFDF9FFFDF6FFF9F7FFF6F4FFAAA0EC33219E2708
          C12200DA1E00E22305D03016A4F4E4FFF8F8FFFBFFFCFCFDF9FFFEFFFFF9FFFF
          F8FFFFFDFFF6F6FFEEE8FF2E1E8E290BBE2500DA1F00E11E00E21F00DD1A03B9
          524ABCEBEDFFEFF9F9FDFFF0FFFFF0FCFCF0FFFDFFFFF9FFFDF9FFFBFBFFFDFE
          FFFDFFFCFFFFF7FFFFF7FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFF
          FFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFFFFFEFBFFFFF3F4FFEBE1FF2C18A12807
          C62200DA1B00D92005CB2F12AFAE9AFDF4F7FFF6FFF9FDFFFCFFFEFFFFF7FFFF
          FBFFFFFDFFFFFFFCFFFFFEFFFFFEFDFFFCFAFFFFF7F8FFEDE5FF2811BA2306DF
          1200D2250AE30F00C0200AD42303EA1900E71500DB2D09E91A00C72E0FD61F00
          CF2700DC2E03E62300DC2100D52000D32100D82100DC2300DF2300DF2500DC23
          00D82B08DB2A0ADA1800C91400C52006D52B13E30100BC230DDE1E02D71200CC
          340BF02D09CF3C29A8EBE7FFF4FBFFF3FDF0FDFFF1FFFFF2FFFFF9FFFFFCFFFF
          FBFFFFFCFFFDFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFEFFFEFBFFFAFDFFF0FFFFF1FFFFFBFF
          FCFEFFFDFDF9FEEFE5FF2109AB2406D31E01C22B19A2EEEFFFF4F3FF694BE026
          00CC2103D01B02D61F00DD1F00DE1F00D71D01D61B00DA1800DA1700D81802D7
          1900D82001D22A05C5684FD5F6F3FFF8FEF9FDFBFFFFFBFFF8FCFFF1F5FFE8E4
          FF281A97260AC12100D71600D61F01E41A00DA1E00DC310CEC1400C9320EDC32
          13CC19049C786FD7D9E2FFF3FFFFF8FAFFF6F1FFFFF4FFFFF8FFFFFDFDF5F2EA
          F8F8F8F8F7FFF1E9FF412EAD2805C72100DD1F00E21B00E01B01D71B02D41903
          D41901D91900E01900E21900E01900DB1B03D31B05D01D03D21D01D71F00E121
          00E12400D72101D61400DB0F00E01200E11900DA2B04CC3417A3F3EFFFEAEAFF
          2E14B42300DD1700E21900E31D00DA2610B6A69FEAF2F3FFF0F3FFF5FAFFF6FC
          FFEFF6FFF6FDFFF6FCFFF4F9FFF4F8FFF4F8FFF4F8FFF4F9FFF4FAFFF4FCFFF6
          FCFFFBF8FFFBF8FFF9F9FFF8FBFFF6FCFFF4FCFFF2FBFFF2FAFFF2F8FFF2F8FF
          F6FAFFF8FDFFFAFFFEFBFFF5FCFFEDF6FFE8F9FFF3FBFFF9FFFEFFFFFCFFFFFE
          FFFFFEFFF9FCFFECE4FF2706BB2803E71E06D61B08CF1700CC351DD59989FFEC
          E1FFE7E3FFEBE7FFEBE7FFEBE7FFEBE7FFEBE7FFEBE7FFEBE7FFEBE7FFEBE7FF
          EBE7FFEBE7FFEBE7FFEBE7FFEBE7FFEBE5FFEBE2FFEBE3FFEBE6FFE9E8FFE9E7
          FFE7E5FFE7E2FFE9E3FFF2EFFFE1E6FBF8FFF8FAFFEAF9FFE0FFFFE9FFFFF0FF
          FCF7FFFDFDFDF8FFF2EBFF6A5BC7260BB92506D71C00D32104D51400B92D18B1
          EBE4FFF1F2FFF3F5FFF4F6FFF3F5FFF6F9FFF6FAFFF4FAFFF4FAFFF4FAFFF4FA
          FFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4
          FAFFF8FAFFF8F9FFF8F6FFFAF5FFFAF4FFFAF5FFF7F2FFF2F0FFFBFDFFFDFFFF
          FDFFFCFDFFFBFFFFFEFFFEFFFFFCFFFBFAFFF5F8FFA9A4EF2F0FC21F00DB1E00
          DC1A00D82101D62610AFE5E4FFF5FBFFFFFDFFFFFDFFFFFEFFFFFFFEFBFFFFF6
          F9FFD9D5FF4033A62007AF3012DD0C00CC0400CF1600EC1400E11809C9605AE1
          E6F0FFF1FCFFF8FBF2FFFEF6F5DCE0FFFAFFFFFEFFFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFBFFFFFCFFFFFCFFFFFCFFFFFCFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFD
          FFFFF9FEFCF4F3FF6654D1240DBD1B0AC61708C71A0EC01F14B01F1490E4DDFF
          F4F3FFF8FBFFF7FAFFF4FCFFEEFAFFF1FDFFF2FBFFF4FAFFF4FAFFF4FAFFF4FA
          FFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4FAFFF4
          FBFFF4FFFFF2FAFFF6F5FFF8F1FFFAF2FFFDF6FFFFFEFFF5F7EBFFFFF2FFFFF5
          FFFEFFFFFAFFFDF9FFFBFAFFFBFEFFF4F6FFA49CFF2A18B12002C72401DB2200
          DA2307C427199CEAE9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFB
          FFFCF7FBF5FDFFF9FDFFF8E6ECE7FBFDFFEAECF6F6FFFFF3F7FFABA2F93418B1
          2100CF2100E32104D60800BF1000D4200BCB422FAEE5DAFFF6F8FFEBF1F0FDFF
          FCFDFCFEFFF9FFFBF5FFF9F6FFF6F2FFAA9EF033209F2709C02100D71E00DF23
          06CD3016A2F4E5FFF8F7FFFBFFFEFCFDF9FFFEFFFFF9FFFFFAFFFFFEFFF6F4FF
          EEE5FF2E1A952908C42300DE1D00E11C00E22404DF220BBB736DD2EFF4FFF6FF
          F9FDFFEDFFFFF1FFFFF9FFFCFFFFFBFFFDFAFFFBFCFFFDFEFFFDFFFCFFFFF8FF
          FFF8FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFD
          FFFFFCFFFFFFFFFFFFFEFBFFFFF3F4FFEBE1FF2C18A12807C62200DA1B00D920
          05CB2F13ADAC9BFCF4F7FFF6FFFAFBFFFEFFFEFFFFF8FFFFFBFFFFFEFEFFFFFC
          FFFEFFFFFFFEFDFFF9FBFFFCF9FCFFF1EEFF8072F00C00A82F11DE1500CE1C07
          CE1D07D71500E31E00EB290CDE2108C4230BB72F16BE250AB82508BB2A0BC428
          09C2260DC1260DC1280BC62809C82A09C82A0BC62A0DC02A10BC210AB21A04B0
          2B15CB1E08C5200BD20E00C71702D31400D01E06D62003D53008E31A00ACAB9F
          F9F4F5FFF9FBFFFBFFF8FFFFF1FFFFF0FFFFF8FFFFFCFFFFFCFFFFFEFFFDFFFF
          FDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFEFFFFFCFFFCFBFFF2FFFEF3FFFEFBFFFFFFFDFFFDFAFCF0
          E9FF2814A92207CC280DCE2F1CA9EDEDFFF3EEFF623FE72700D81F02D41B02D6
          1F00DD1F00DE1F00D71D01D61B00DA1800DA1700D81802D71900D82001D22A05
          C5684FD5F6F3FFF8FEF9FFFBFFFFFCFFF8FDFFF1F5FFE8E4FF281A97240BC11F
          00D92303E41600DB1B00DB2402DC2400D61900C23B19D70B008F6C5CCBDCD8FF
          F3F7FFF4FAFFF7FBF6FFFFF7FFFCF7FFFDFFFFF8FFF3EAFFFAF7FFF3EDFF351E
          A22809C02000D12E06F11D00E41900DE1903D31906CD1907CC1904D21B00DB1B
          00E11B00E11B00DB1D03D31D05CF1D04D01D01D71F00E42100E42400D72101D4
          1400DB0F00E01200E11900DD2B00D33414A9F3F0FFEAECFF2E14B42300DD1700
          E21900E31D00D9240DBBB0A3FFEEE8FFEFEBFFF1EEFFF1F0FFEBEBFFF1F1FFF1
          F0FFF1EEFFF1EDFFF1ECFFF1EDFFF1EEFFF1F0FFF1F1FFF3F0FFF4EEFFF6EEFF
          F4EFFFF3F1FFF1F1FFEFF2FFEDF0FFEDEEFFEDEDFFEFEDFFF1EFFFECEDFFE8EB
          FFF8FFFFFAFFF7FAFFF2F7FFF6FBFFFBFFFDFFFFFCFFFFFEFEFFFFFCFBFDFEEC
          E4FF2604BC2700E61D05D51F0CD31A00D01000B7230EAB2714A62614AF2412B3
          2412B32412B32412B32412B32412B32412B32412B32412B32412B32412B32412
          B32412B32412B32810B42F0DB8310EB63112AD2F15A92F14AA2F13AD2F10B331
          13AC28129042348CDCDBFFF6F8FFFDFFFCFFFFFEFFF8FFFFF8FFFFF9FFFDF7FF
          F2EAFF6A5BC7260BB92507D61C00D02105D42104CB3B23C7D8CEFFEDE9FFECE8
          FFF1EDFFF1EFFFF1F1FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1
          F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1EFFFEFEAFFF3EDFF
          F1EAFFEBE2FFF3EBFFF6EDFFE9E2FFF8F6FFFAFCFFFBFFFFFDFFFBFDFFF9FFFF
          FCFFFEFFFFFBFFFDF9FFF5F7FFA9A4EF2F0FC21F00DB1E00DC1A00D82101D426
          11AEE8E8FFF6FDFFFFFDFFFFFDFFFFFFFEFFFFFEF4F9F8E7E6FF392B90240BA9
          330CDD1A00DE2805F62104F31902E70C00CA0C00B4928CFFE5E9FFECF3FFFFFF
          FEFFFFFBFFF5FFFFF7FFFFFDFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFDFFFFF9FDFEF4F1FF
          6652D3240BBF1B07CB1706CB190BC71D10BA3929BCD8CAFFE9E4FFF3F0FFE6E3
          FFEBECFFEBEFFFE6EAFFEFF0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1
          F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFF1F0FFEFF1FFEDF4FFEDF2FF
          EFEBFFEDE2FFF6EAFFECE2FFFDFCFFFEFFF7FFFFF1FFFFF4FFFEFFFFFAFFFDF7
          FFFBF9FFFBFEFFF4F6FFA49DFE2A18B12002C72401DB2200DA2307C427199CEA
          E9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFDFFFBFEFFF8FEFFF8
          FCFFFDFAFFFFE8F3F1F3FDFFEFF5FFBCB8FF26129B3213CA2E05E2340AF10F00
          C82F15DF210EC12C21A7BCB8F9F8F6FFF5F3FFFDFAFFFFFBFFF5F0F9FFFEFFF3
          F2F6F8F8FFF4F1FFA89AF8311CA72509C12101D41C01DB2208CA3018A0F6E5FF
          F8F7FFFBFFFFFCFDFBFFFFFFFFFAFFFFFAFFFDFFFFF4F5FFECE4FF2C18992806
          C82200DF1B00E01C00DF1E00D6230BB79994F0EFF7FFF3FFF3FFFFEDFFFFF3FF
          FFFCFFFCFFFFFCFFFDFDFFFBFEFFFBFFFFFDFFFEFFFFF9FFFFF9FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFF
          FFFEFBFFFFF3F4FFEBE1FF2C18A12807C62200DA1B00D92005CB2D14ACAC9CFA
          F4F6FFF4FFFCFAFFFEFDFFFFFFFAFFFFFDFFFFFFFBFFFFFBFFFEFFFFFEFFFFFF
          F9FBFFF9F9FFFEF2F6FFDCDBFF281F942C14C61800C9220CD71600D41100DB20
          07DB5B4FE9554FC6615BC6675FC4655CC46258C26258C3675ECC6258CA6057CB
          6255CF6255CF6456CC645AC5645EBD6460B95C5BB7615DC76259DF5C4EEC1301
          BA1805CE2610E41701D61500CE1C02CA1E00C33C22B6F3EEFFF3F6FEF2F1FAFE
          FFFDFFFFF4FFFFF1FDFFF8FDFFFCFFFFFEFFFFFFFFFDFFFFFDFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FEFFFFFAFFFEFBFFF3FFFDF3FFFBFDFFFFFFFDFFFEFCFBF3ECFF2817A41B02C2
          2004C9210DA2E8E9FFF1EDFF4827CF2500D81F02D41B02D61F00DD1F00DE1F00
          D71D01D61B00DA1800DA1700D81802D71900D82001D22A05C5684FD5F6F3FFF8
          FEF9FFFBFFFFFDFFF9FDFEF1F6FFE8E4FF281A97240AC21F00DA2201E51000D6
          1F00DB2B0BE02000CB3919D6280BB54732B6DDD0FFF6F2FFF8F5FFE8EAF2FFFF
          F5FFFFEEFEFFE8FFFFF9FFF6FFFAEEFFE6DBFF30218A280DB12D09D72000DC14
          00DB1B00E41900DD1903D31907CC1B07CB1B05CF1B00D91B00DD1B00DE1B00DB
          1D02D41D04D01D03D21D01D71F00E22100E12400D62102D31401DA0F00DE1200
          E11900E02B00D93412ADF3F1FFEAEEFF2E15B32300DD1700E01900E21D01D722
          0AC44834C36F5FD56C5DD06C5FCD7064CE675CC46C60CA675AC66B5CCF6B5BD0
          6B5BD16B5BD06B5DCD6B5ECA6B60C86D5FC86E5ECA6E5DCC6D5FC96B60C86961
          C66760C8675ECC675DCF6155CB6B5ED16B5DC66A5FB5766FACC0BFE6EDF1FFEF
          F6F9F7FFFDFAFFFEFFFCFFFFFBFFFFFFFCFFFFF9FBFDFDEDE5FF2905BD2100E1
          1000C71706CC250CDE2A10DA3319CA2009B91E05D11A02DA1A01DB1A02DA1A01
          DB1A02DA1A01DB1A02DA1A01DB1A02DA1A01DB1A02DA1A01DB1A02DA1A01DB20
          00DC2900DF2C00DC2A02D32A03D02902D32A01D52A00DB2C02D32704B2361F9F
          F3E9FFF8F6FFFAF8FFFAF4FFFFF2FFFFF5FFFFF9FFFDF8FFF2EBFF6A5BC7260C
          B82507D41C00CF2105D42305D21C01B5685ADE695FCA6A5EC87063C96C61C168
          5DBD6B60C86B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA
          6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5FC9675AC07669CF7365CB6E5EC37163
          C16F63B57971B0EAE6FFF8F9FFFAFFFFFBFFF9FDFFF7FFFFFBFFFFFFFFFBFFFD
          F9FFF5F8FFA9A4EF2F0FC11F00DB1E00DC1A00D82101D42611AEEDEDFFF8FFFF
          FFFDFFFFFCFFFFFDFCFBFAF6EBF0EEDBDBF93D2F8F3318AE2200C12B03E41A00
          E30500D23016F60D00C62E1BD61D0FAA4B42B0CEC7FFF7F2FFF2E9F3FFF8FFFC
          E9F8FFFDFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFDFEFFF9FCFFF4EFFF6650D82409C41B05
          CF1502D31706D31B08C91B04B26C57E96758C47267C46A5DBF7065CB716AD261
          5CC5695FCA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA
          6B5ECA6B5ECA6B5ECA6B5ECA6B5ECA6961C66160B66563BC6E61CD6858C4705F
          C07B6FB1E8E5FEFDFFFBFFFFF1FFFFF2FFFEFFFFFAFFFDF7FFFBFAFFFBFFFFF4
          F8FFA49DFE2A18B12002C72401DB2200DA2307C427199CEAE9FFF4F8FFFAFFFC
          FFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFDFFFBFFFFF9FFFFFCF1F1F7F1F7FEF3FF
          FFE0EBFFC9C8FF382AAD3218CA0D00B92A06DC2904DC1F00CF3013CE1C0E96C7
          C3FFF4F8FFDCE0E1F9F4FFFFF6FFF9F0FFFBF6FFFFFFF8F9FFF4F8FAFFF4F1FF
          A697FF2F18B02506C51F01D61A02D82209C73018A0F6E4FFF8F6FFFBFFFFFCFD
          FBFFFFFFFFFBFFFFFCFFFDFFFFF4F5FFECE2FF2A179C2606C92000DF1900DD1A
          01DB1C00CF230CB4B8B5FFF1F8FFF3FDF1FAFFEBFBF8F3FFFDFFFFFCFFFFFEFF
          FDFFFFFBFFFEFBFFFFFBFFFFFFFFFCFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFFFFFEFBFFFFF3F4FF
          EBE1FF2C18A12807C62200DA1B00D92005CA2D14ACAA9CFAF3F7FFF2FFFDFAFF
          FFFBFFFFFEFBFDFFFFFEFFFFF9FFFFFBFFFCFFFFFDFFFFFFFCFDFFF9FAFFFAF6
          FCFFF3F8FF8481C918039B280DCF1C05D31200D11C01E01A08C7A29FFFE4E8FF
          EAEEFFEDF1FFEFF0FFEFF1FFEFF2FFEDF1FFEDEEFFEDECFFEDEAFFEFEAFFEFED
          FFEFF1FFEFF6FFEDF8FFECF5FFE8EDFFDAD7FF8A7FFF1C0ABB230DD71D06DE0F
          00D11F0BDA1B07C4260DB5AB9AFFF6F7FFFBFFF9FFFDFFFFFDFFFFFFF8FDFFF5
          FBFFF9FBFFFCFDFFFEFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFDFDFFFFF9FFFFFAFF
          F4FFF7F5FFF7FDFFFFFFFEFFFFFFFBF5EFFF3525AE1E07C72002CF2710B2EDEE
          FFEFEFFF462DC32C0BD21F04D01B02D61F00DD1F00DE1F00D71D01D61B00DA18
          00DA1700D81802D71900D82001D22A05C5684FD5F6F3FFF8FEF9FFFBFFFFFEFF
          F9FEFDF1F6FFE7E5FF261A982409C41F00DB1900DD2102E71D00D82103D22405
          C62205B43017AFC1B0FFFAEDFFFCF3FFFAF0FFFFFAFFFFFFF4FFFFE7F8FFE0FC
          FFF3E9E8FCF4E9FF3F25A72F11B6361ECA1300B8290CE51100D71B00E01B00DB
          1B02D41B05D01D06CD1D04D01D02D41D00D91D00DA1D00DA1D01D71D01D61D01
          D61D00D91D00DD1F00DB2401D32103D21402D90F00DE1200E11900E12B00DD34
          10B0F3F2FFEAEFFF2E16B02300DD1700E01900E21D01D62104CF1F00C42C0BCA
          2506C12406BD280BBF2508BB270ABE2001BA2505C22504C32503C52504C32506
          C12507BE2508BB2508BB2607BE2607BE2608BB2509BA210ABA1F09BC1F07C121
          05C31F02C32C0DC82709B62C12A63C289FAE9FFAF2EAFFF4F3FFF5FBFFFAFFFF
          FFFBFFFFFAFFFFFFFBFFFFF7FDFEFAEDE5FF2D09C12E06EE1A05D31403C90F00
          CA1200C72709CC2308CA1B02D41800DA1800DB1800DA1800DB1800DA1800DB18
          00DA1800DB1800DA1800DB1800DA1800DB1800DA1800DB1B00DE2100E52400E4
          2200DA2200D92200DD2200E22400E92800E0340FD12A109EECE2FFEAEAFFF6F5
          FEFFFDFFFFF6FFFFF6FFFFFAFFFDFAFFF2ECFF6A5CC6260CB82507D41A00CF1F
          04D62D0EE71900C42E18BE230FA42510A92914AD2612A7220CA8250AB82506BF
          2506BF2506BF2506BF2506BF2506BF2506BF2506BF2506BF2506BF2506BF2506
          BF2506BF2506BF2509BA240BAF2E16B22A10AA2E17A9321AA029168A3E328AED
          E7FFF6F7FFF8FEFFFBFFF9FDFFF5FFFFF8FFFFFCFFFDFFFFFAFFF5F8FFA9A4EF
          2F0FC11F00DA1E00DB1A00D62101D42611AEEAEAFFF6FDFFFFFCFEFFFDFEFFFF
          FEFFFFFCFAFFFDEFF2FFE8E2FFBCAEFF422DAB2B0FB62500D31E00DD2907E71A
          00D41A00D11B00C81700B03920B0B0A4F0F7F5FFE5E4EDFFFFFEFFFFFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFF
          FFFFFFFFFFFFFFFDFEFFF9FAFFF6EDFF684EDC2607C81B02D61500DD1700DF19
          00DA1F01D03314CF2105A43218AC2B10AD260EB02814BA210BB72308BC2506BF
          2506BF2506BF2506BF2506BF2506BF2506BF2506BF2506BF2506BF2506BF2506
          BF2506BF2506BF230BB71E11A32517A52C15B3280EA82D149A43318FE9E5FFFA
          FFFFFDFFF4FFFFF2FFFEFFFFFAFFFDF9FFFBFBFFFBFFFBF4F9FFA49EFD2A18B1
          2002C72401DB2200DA2307C427199CEAE9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFE
          FFFFFEFFFDFFFEFDFFFCFFFFFBF8F3F4FDFCFFE8EBFAEAF7FFE5ECFF22149C1E
          05C12606DB2807DE2307CC1700B72C06CA290AAD9D94EBF3F5FFF8FEFDF3F5EF
          FFF9FFFCF0FFF6EDFFFFFDFFF0F7E2FDFFF1F8FEFDF3F2FFA595FF2D15B72302
          CE1D00DA1A02DA200BC63018A0F6E4FFF8F5FFFBFEFFFCFDFBFFFFFEFFFDFFFF
          FDFFFDFFFEF4F5FFEAE3FF2A169E2605CB2000DE1901D91A03D72001D22B13B9
          CECAFFF3F8FFF8FFF9FFFFF5FFFAFDFFFAFFFFFCFFFFFFFFFDFFF9FBFFF8FBFF
          FEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFF
          FFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFFFFFEFBFFFFF3F4FFEBE1FF2C18A12807
          C62200DA1B00D92005CA2D14ACAA9CFCF1F6FFF1FFFDF8FFFFFAFFFFFCFDFBFF
          FFFBFFFFF8FFFFFBFFFCFFFFFBFFFFFFFFFDFFFBFAFFFAF8FFFAF8FFFFD6D5FF
          3826A3280EC01C02CC1800D62108DC1B08BD4944B7E7E9FFEAF1FFEDF6FFF1F7
          FFF6FEFFEFF9F9F6FFFFF3FAFFF3F7FFF3F4FFF5F4FFF5F7FFF5FBFFF5FFF6F3
          FFF6EDF9FFE1E9FFDCD9FF3528AC210BBD1500C82205E41B01E11D07DB1A0ABC
          372CABEDE9FFEBEFFAFFFFF8FFFDFFFFFBFFFFFEFFFDFFFEFBFFFCFBFFFCFDFF
          FEFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFDFCFFFFF8FFFFFAFFF6FFF5F5FFF3FFFF
          FEFFFEFFFFFFFBF6F1FF5040C9220ACE2503DD3018C4E1E0FFEDF1FF6A5CDA29
          11C31F07CB1B02D61F00DD1F00DE1F00D71D01D61B00DA1800DA1700D81802D7
          1900D82001D22A05C5684FD5F6F3FFF8FEF9FFFCFEFFFEFFF9FEFCF1F7FFE7E5
          FF261A982409C41F00DB1F00E41E00E42304DD1B00C71B00B7351DBFBCA8FFF1
          E1FFFFF2FFFAF0FDFFF5FFFFF8FFFEFCF4FBFFEAFDFFEDF9FFF6F4FAFF474089
          3117AA2B0EC21A03B92914D40900C62D13EF1B00DB1B00DA1D00D91D01D61D02
          D41D03D31D03D21D03D31D01D61D01D71D00DA1D00DB1D00DB1D00DA1D01D71F
          02D42403CF2103D01402D70F00DD1200E11900E22B00E1340FB3F3F3FFEAF1FF
          2E16B02300DC1700DF1900E11D02D41F02D32805E22400E12000D92000D82301
          D82606DB2704DE2200DB2300DE2200DF2300E12200DF2300DC2200DA2301D723
          02D52301D82301D82301D72202D51E03D51C02D81E00DE1E00E12000E22B07E3
          2301CA270AB92F18A2A797FFEDE3FFF0EEFFF3FAFFFAFEFFFFFAFFFFF9FFFFFF
          F9FFFFF5FDFFF7EDE6FF1F00B32600E61F0AD82716DC240CE41E00DB2606D71C
          00CA2105D41D06D41D06D41D06D41D06D41D06D41D06D41D06D41D06D41D06D4
          1D06D41D06D41D06D41D06D41D06D41F04D61F02DB2103D81F07D11F08CF1F04
          D62100DF2300E92600E22706C52A169FEFEAFFF6FAFFFDFFFBFFFFF8FFF8FFF8
          EBF9FFFCFDFFFAFFF4ECFF6A5CC5260CB62508D31A00D01D03D91500D81B00D5
          2207C82006BE2706CC2604CD2608CD2B0BD42301D72200DB2300DB2200DB2300
          DB2200DB2300DB2200DB2300DB2200DB2300DB2200DB2300DB2200DB2300DB23
          01D82705D52301CA1B00BE2B0AC62F12BB2910A0352591EFE8FFF4F4FFF6FDFF
          FAFFF8FDFFF4FFFFF5FFFFFBFFFDFFFFFBFFF5F9FFA9A5ED2F0FC11F00DA1E00
          DB1A00D62101D42611AEE9E9FFF5FCFFFFFDFFFFFDFEFFFFFEFFFFFCFBFFFEFA
          FDFFFAF7FFF8F0FFF4EBFFB8AAFF472DC02B0EBF1A00BE2A0BD81D00D62803E3
          370DEE2100BE291596AAA4F1EFF5FFEEF7FFFBFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FEFFFBFCFFF6F0FF6850D82608C51B02D41300DD1500E51600E22100E02502D5
          1F00BB310FC72804C81600C11D00CF2103D82200DA2200DB2300DB2200DB2300
          DB2200DB2300DB2200DB2300DB2200DB2300DB2200DB2300DB2200DB2300DB22
          03D4250ECE230BC72505CE2604C62B0AB2351F96E8E1FFF0F4FFFBFFF7FDFFF4
          FFFFFFFFFBFFFDFAFFFDFCFFFBFFF7F4FBFFA49FFB2A18B12002C72401DB2200
          DA2307C427199CEAE9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFF
          FFFCFDF8F7FFFDFFFDFCFFEDEEFFEAEFFF393896321ECB1200CF1300DD2302E6
          0A00B3442AD63418B26B54C8ECE5FFF6F8FFEEF1EFFFFFFEFFFBFFF6EFFEFFFB
          FFFFFFFEF6FEE7FBFFEEF6FFF9F3F4FFA596FF2C13BB2100D51B00E11901DB20
          0BC53018A0F6E3FFF8F5FFFBFEFFFCFCFCFFFFFEFFFEFFFFFFFFFDFFFCF4F5FF
          EAE2FF2A169E2406CB1E00DC1802D61A05D32305D22E16BACAC4FFF3F8FFFBFF
          FEFFFFF9FFFAFFFFF9FFFFFCFFFFFFFCFDFFF4FBFFF4FBFFFBFBFFFFFFFEFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFD
          FFFFFCFFFFFFFFFFFFFEFBFFFFF3F4FFEBE1FF2C18A12807C62200DA1B00D91E
          05CB2B14ACA89CFCEFF6FFF1FFFEF6FFFFFAFFFEFAFEF8FFFFF8FFFFF7FFFFFB
          FFFAFFFFFAFFFDFEFFFDFFFCFAFFFAF9FFF9F6F9F7F1EDFF9280EB1A02A22308
          CD2209DD1B00D42009C31F1097CAC4FFF6F9FFFBFFFCFDFFFEFDFFFBFAFFF1FD
          FFF1FDFFF5FDFFFCFFFDFFFFFBFFFFFDFFFFFFFBFFFFF1FBFFF4F8FFFFF3F5FF
          BFB5FF2916A1280CC42000D51300D71700DF1000D21B0EB85F60BBE6ECFFF5FA
          FBFFFFF7FBF2F5FFF7FFFFFAFFFDFCFFFBFFFEFAFFFBFBFFFCFFFFFEFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFDFCFFFFF6FFFFFAFFF8FFF2F7FFEDFFFFFBFFFFFEFFFFF9F7
          F2FF6D5EE81500C71A00DB2007BD9E9EDEE4ECFF9F9BFF1A0EA41D0AC51B02D6
          1F00DD1F00DE1F00D71D01D61B00DA1800DA1700D81802D71900D82001D22A05
          C5684FD5F6F3FFF8FFF8FFFDFDFFFFFFF9FFFAF1F7FFE7E5FF261A982209C51F
          00DD1F00E61100D72405DC2308CD250BBC6750E8EAD8FFEADCFFFFF5FFFFF8FC
          FFF9FFFFF5FFF9EEFEFFFCFFFBFFFEF5FEFFE5ECFF7F82BF30289A1605A22E16
          D81F06D81400CF0D00C81B02D61D00DA1F00DE1F00DE1F00DB1F00D71F04D01F
          05CD1F04D01F01D61F00DE1F00E11D00E11D00DB1B04D21F06CC2405CC2103D0
          1402D70F00DD1200E11900E42B00E2340EB4F3F3FFEAF1FF2E17AF2300DC1700
          DF1900DF1D03D31F03D21F02DB1500D41C00D81B02D61A00D11B03D31E02D71D
          03D91B00D91900DB1B00DC1900DB1B00D71900D41B01D01B01D01B00D21B01D1
          1902D01702D01602D01401D21600D81600DB1100D41C00D61900BF2813B52A1D
          97ACA5FAEFEFFFF1F7FFF3FCFFFAFDFFFFF9FFFFF9FFFFFFF9FFFFF4FDFFF5ED
          E7FF3511C92800EA0F00C81301CA1700D81700D82601DF2500D22608C5280BBE
          280BBE280BBE280BBE280BBE280BBE280BBE280BBE280BBE280BBE280BBE280B
          BE280BBE280BBE240DBD1D10BA1913B41917AD1916AF1910BA1B0AC51D03D321
          04CF220BB3332699E4E7FFF0FBF9F5FFE5FEFFE6FFFFF8FFFEFEFFFFF7FFFBFF
          F4EDFF6B5DC3260DB52508D31800D01D01DD1700E12C05F42705DF2907DE2A02
          EA1D00E31B00E11F00E11B00D91900D51B00D51900D51B00D51900D51B00D519
          00D51B00D51900D51B00D51900D51B00D51900D51B00D51B00D92901ED2400EA
          1F00E02D04E22C07CF3112BB3620A1EAE1FFF3F2FFF6FCFFFAFFF9FDFFF2FFFF
          F4FFFFF8FFFEFFFFFBFFF5F9FFA9A5ED2F0FC11F00DA1E00DB1A00D62101D426
          11AEE8E8FFF6FDFFFFFEFFFFFDFEFFFEFAFFFFFBFAFFFDF7FAFEF4EBFFFFF8FF
          F5F4FEEFF2FFEAECFF9794E327199D2108B62304D11F00D81200CC300FE21800
          B82818AB8584E4ECF0FFF8F9FFFFFEFFFFFEFFFFFEFFFFFDFFFFFEFFFFFDFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFCFBFFF6F8F6FF
          6856CB260EBA1907CC1301D61300E11400E21A00DE2500DE2603CF2E0AD32C05
          DD1C00DB1E00E51F02E81900D91900D51B00D51900D51B00D51900D51B00D519
          00D51B00D51900D51B00D51900D51B00D51900D51B00D51900D71800D81300D8
          1800E02600E02E08CC361CAAF3E8FFEEF1FFFAFFF8FDFFF4FFFFFFFFFBFFFDFA
          FFFDFEFFFBFFF4F4FDFFA49FFA2A18B12002C72401DB2200DA2307C427199CEA
          E9FFF4F8FFFAFFFCFFFFF9FFFFFBFFFEFFFFFEFFFDFFFEFFFFFEFFFCFDFFF9FC
          F7F7FDF4F4FF6E68C11306922C17D71A00DF1700EB1900E73C1CF11900A4372C
          88F6F1FFF4F0FFFDF7FFFFF8FFFFFAFFF2F0EFFFFFF9FFFFF9FDFEF4FFFFF2F6
          FFEDF6FFF6F1F8FFA398FE2A14BA2000DC1900E91700DE1E0BC63018A0F6E3FF
          F8F4FFFBFEFFFCFCFCFFFFFEFFFEFFFFFFFEFBFFFBF2F6FFEAE2FF2A169E2406
          C91E00DB1804D31907D02104CF2A13B5B3AEFDF3F8FFF7FBFCFFFFFEFFF7FFFF
          F6FFFFFDFFFFFFF9FDFFF1FBFFF1FBFFF9FBFFFFFFFDFFFFFDFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFCFFFFFEFFFDFFFFFCFFFFFFFFFF
          FFFEFBFFFFF3F4FFEBE1FF2C18A12807C62200DA1B00D91E05CB2B14ACA89CFC
          EFF6FFEFFFFEF4FFFFF8FFFEF8FFF6FDFFF7FFFFF5FFFFFBFFFAFFFFF9FFFDFD
          FFFDFFFEFAFFFAF9FEFCFEF7FFF6E9FFDACAFF2A15A02810C81F05D51A00D423
          03D31F00B07B5FDBF8EEFFFFFCFFFFFBFFFFFAFFFFFDF5FFFFF3FFFFF2FFFFF7
          FFF9FFFFF6FFFFF6FFFFF8FFFFFCFDFFFBFFF4EEFFE7DBFF624CBC3518B52000
          C22E06E71B00DE2000E91900DD2B20C4B0BAF6E8F8FEFBFFFFFFFFFCFFFEFEFF
          FBFFFFF8FFFDF9FFFAFFFFFAFFFBFBFFFBFFFFFCFFFFFEFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFD
          FCFFFFF6FFFFF9FFF9FFF2F9FFECFFFFF7FFFFFBFFFFF9FAF3FFA18FFF2409CA
          2601DF2105BC706FB9E6EEFFE4E3FF2A21A01F0CBF1B02D61F00DE1F00DE1F00
          D71D01D61B00DA1800DA1700D81802D71900D72001D22A06C4684FD5F6F3FFF8
          FFF8FFFDFCFFFFFFF8FFFCF1F6FFE7E4FF2619992209C51F00DD1E00E42204E7
          1700D11900C7260CC42F17BD230F9E8575E1EDDCFFFEF0FFFFF4FFFDF4FFFFF8
          FFFCF9FFF7FAFFF5FAFFF4F7FFE6E7FFE5E1FF7F76E51805A2260EC62109CD1F
          06D21D01D61D00DA1F00DD1F00DE1F00DE1F00D71F06CC1F07CB1F02D31F00DA
          1F00E01F00E41D00E41D00DE1D04D01F07CB2405CC2104CF1404D30F02DA1100
          E21900E42900DE3610AFF3F4FFECF0FF2E16B22400DD1700DC1900DC1B03D31D
          05CF1E06D01800C6260ED2260FCF1C07C21C07C12008C4250CCA2207CC2207CD
          2206CE2207CD2208CA200AC7200CC3200CC3220AC62209C7200BC61E0AC71E09
          C91C09CA1C07CE1E06D02006CE260DCB1E0AB12D1DAA281E88A6A5EDEAEFFFED
          F4FFF3FCFFFAFEFFFFFBFFFFFBFFFFFFF9FFFFF7FBFFF9ECE6FF2707BA2400E3
          1902D01D0BD41E03DD2203DA4A2BEC6346EF6950DA6A55D06A55D06A55D06A55
          D06A55D06A55D06A55D06A55D06A55D06A55D06A55D06A55D06A55D06A55D067
          57CD605BC85A5EC45A61BE5A60C15A5BC95C55D45E4FE0614FDE675ACE6A64B1
          F2F7FFF8FFF9FDFFEDFFFFEBFFFFF5FFFCF5FFFFF5FFFDFFF4EFFF6B5EC0260C
          B62507D61800D41D00E21500E42B01F21700C71F00C82C04DF2500DD2500DD28
          03DB2206CE2009C92009C92009C92009C92009C92009C92009C92009C92009C9
          2009C92009C92009C92009C92009C92206CE1D00D62500E12500DC2902D41D00
          B62C10AF36239CEAE0FFF3F2FFF6FBFFFAFFFCFDFFF4FFFFF4FFFFF7FFFFFBFF
          FDFFF5F9FFA9A4EF2F10BF1F00D81E01DA1A01D52102D32611AEE2E1FFF4FAFF
          FFFDFFFFFDFFFFFEFDFFFFFCFBFFFEFAFDFFFFFAFFFFFBFFFFFFF4FBFFEEF1FF
          F2EEF4FFE2DAFF402EB12C12B92206C42B0CD91D00D21B00D5270FD31D15AFC5
          C3FFF3EDFFFDF7FFFDFAFFFFFCFFFFFFFFFFFFFEFFFFFFFFFEFFFFFDFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFFFFFBFDFFF3F8F7FF6956CB260CBD1B05
          CF1300DA1300E21600E11A00DB2807DA2705C42201BD2B06D22601D92200DE17
          00D42006CE2009C92009C92009C92009C92009C92009C92009C92009C92009C9
          2009C92009C92009C92009C92009C92007CD2306D81F00DA2200DB2905D52606
          B8281195F3E9FFEFF1FFFAFFFCFBFFF7FDFFFEFFFEFFFFFDFFFDFFFEFDFFF2F6
          FCFFA69DFE2C17B42002C52402D82200D92307C4271B99ECEAFFF4FAFFFBFFFC
          FFFFFEFFFEFFFFFDFFFFFEFFFFFFFEFFFFFEFFFCFFFEF4FFFAF6FFCFCBFF1D11
          933121CD0600B91904DD1D00E91D00E01F00C93018ACE7E4FFF3F7FFFAF9FFFF
          FAFFFFF7FFFCF6FFFFFFFBFFFFF4FCFCEEFCFEF2FFFFF8FBFFF9F6FFF6F3F8FF
          A399FD2C14B82000D91B00E81700DE1E0AC72E17A1F4E4FFF8F5FFFBFEFFFCFD
          F9FFFFFCFFFFFEFFFFFEFDFFF9F4F6FFECE2FF2A169F2605CB2000DB1804D21A
          07CE2306CE2B13B5A39DEEF3F7FFF5FAFDFFFFFFFFF9FFFFF4FFFFFDFFFFFFFB
          FDFFF4FBFFF5FDFFFEFDFEFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFEFFFBFFFFFFFFFCFFFFFCFFFEFFFFFEFFFFFFFEFFFFFEFBFFFFF3F3FF
          EBE1FF2C17A22807C62200DA1B00D81E05CB2913AFA79BFFEFF6FFF1FFFDF8FF
          FEFAFFFCFAFEF8FDFFF9FFFFF9FFFFFEFDFBFFFDFAFFFDFEFFFBFFFCFAFFFBFB
          FDFDFFFAFFFFF4FFF3EAFF4D3EAA2D13BF1800C82001D82200D62B04D22C0CAB
          EEE3FFFBF6FFFFF9FFFFF4FEFFFEFBFFFFF7FFFFF4FFFFF8FFF9FFFFF7FFFFF9
          FFFFFBFFFFFDFFFFF9FFFAF2FFD4C4FF3217A32C0BC02C06D41300CE2B04EC1D
          00D62309C73428AAECF4FFF4FFFFEDEFF0FFFAFCFFFEFFFDF6FBFFF9FFFDFAFF
          FBFFFFFBFFFBFDFFFBFFFFFCFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFDFFFBF9FFFDFAFF
          FFFFF9FFFFF2FFFFF4FFFFF7FFFFF9FDF4FFE9D2FF290CB52100C53015C33630
          8FDCDDFFEFEBFF211781220EBB1B01D71F00E01F00E01F00D91D01D61B00DA18
          00DA1700D81802D71900D72002D12A07C36850D4F6F4FFF8FFF6FDFEFAFFFFFF
          F8FEFDF1F5FFE8E2FF28179C2408C61F00DA1B00DD1900DB1B02D61B03D31D03
          D32104CF2207C8240DBD2210AB5549C7BFB9FFEAEDFFF4FCFFF1F8F3FDFFFEF3
          EEF7FCF0FFFFF2FFEEE8FFF8F2FFD8CEFF513EB22C09B72B02D52D08E60C00CA
          280CE12105DA1F01DC1800CF1F0BC81803C41D00DD1D00E41D00E11D00E11F00
          E71F00E21F02D32205CC2601CD2709D41406CA0F05D41300E91500E12400CD3A
          1AA7F8F6FFEAE8FF3111B62F07E90F00CF210BE01300CD240ED21D05B7341CC2
          2711B02C17B02511A62F1AAC2B14A63119AD2C13A92C12AC2C11AE2C12AC2C13
          AB2A14A82A15A72A15A72C12AC2C10AF2A10B02A0FB22A0FB32A0EB52A0DB62A
          0FB32F16B42912A43422A32E218F3A3289A09FE3EDEFFFE9EEFFF4FAFFFBFFFF
          FFFFFCFFFFFAFBF7F2FFFFFEFAFDFFE9E2FF290DBA2100DA1E07D51903CE2908
          DF2406C3AD9AFFECE0FFF6EDFFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFA
          F2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFFAF2FFF8F3FFF6F4FFF4F5FF
          F4F6FFF4F6FFF4F4FFF4F2FFF4F0FFF6F0FFF8F3FFFAF7FFFBFDFFFDFFFEFFFF
          F9FFFFF8FFFFFCFFFFFBFEFEF2FFFEFFF6F5FF6259B42C10C12502DE1800DA18
          00E11D00ED1E00D82F16BA3722AD2C10A93514B5300EAF2F0FAE2C13AB2A14A9
          2A14A92A14A92A14A92A14A92A14A92A14A92A14A92A14A92A14A92A14A92A14
          A92A14A92A14A92A12AE2F12BB1C00A83A1EBE2C12A6321B9F2E1E8A45388CEE
          E6FFF6F3FFFAFAFFFBFEFFFDFFFBFFFFF8FFFFF5FFFFF7FFFFFEF6FAFFA8A3EE
          2D0EBD2000D81F03D81800D02002D12813B0E5E3FFF3F8FFFEF7FFFFFAFFFFFC
          FFFAF8F8FBFFFEF8FBFFFDFAFFFDFCFFFDFFF2FDFFEDFBFFF5FAFDFFF8F1FFF3
          E7FF4E3DA42711993216C32104CC1A00D81800DC1503D21E11BBD4C4FFF3E4FF
          F3EBFFFFFBFFFFFFF8FDFBE9FFFFF1FFFFFBFFFDFFFFFCFFFDFDFFFDFFFFFDFF
          FEFFFFFCFFFFFCFFFFFCFFFFF9FAF2FF684ED72807CD1C00DF1100E31400E81A
          00E31700CA3213CC2D11AA2E11A22E0FAC3716BF1F00B22A0DBE2A11AF2A14A9
          2A14A92A14A92A14A92A14A92A14A92A14A92A14A92A14A92A14A92A14A92A14
          A92A14A92A14A92813AC2810B02911B13018B2321EA73222923D3386E7E4FFF5
          F7FFF8FFFFFBFFFBFDFFFBFFFFF9FFFFF9FFFFF8FFFFF4FAF7FFAC9CFF2209AD
          2507C42A08D82500D81B00B933279FEBECFFF4FBFFF5FAF8FFF9FFFFF9FFFCF1
          F9FFFEFEFEF8F3FFFFFEFFFBFFEFE5FFF1E8FF3B32A71609B1180ACD150CCE0E
          03C51C07CE280CCA2F0EB7D7BDFFF0E8FFFAFBFFF8FAFFFBFEFFFDFCFFFDFDFF
          FFFFFEFFFFF9FFFFF7FFFFF9FFFEFFFDFEFFF9FFFDF4F6FFA698FE2F15B52503
          CC1F00DB1900DA1F08C8321AA8F3E3FFF4F5FFFAFFFEFEFFF8FFFFF9FFFFFEFF
          FEFDFFFFF9F2F2FFECDFFF361EAC2500CC1F00DC1600D0220ED32A09D0270AAD
          837BD2E7EDFFF1FBFFF8FFFEEDEFF9FBFBFFFDFEFFFFFFFFFFFEFFFDFDFFFFFA
          FFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFF
          FFFFFBFFFFF9FFFFFCFFFFFCFFFFFBFFFFFBF8FDFCF6F6FFE4D8FF341EAC2402
          C41E00D61D00D91F06CC2E16B8A092FBEDF3FFF6FFF9F5FBF0FFFFFBFAF7F9FF
          FDFFFFFEFFFDFEFFFBFCFFFBFDFFFBFFFBFBFFF9FDFFFEFFFFFFFFFFFEF5F7F8
          F4F7FFDBD5FF1E00A0320CDA1C00CA2309D81600D32A14CA6E6CCCEDF3FFF3F2
          FFFEF8FDFFFDFFFFFEF8FFFFF4FBFAF0FFF8FFFFF8FFFFFEF6FFFFF4FDFFFCF4
          F8FFEFEDFF6156C41E04B52B0BDC2508D91F01D61E00DA2001C01C097ED1C5FF
          F8F5FFF8F7FFFFFBFFFCF7FFFFFDFFFFFCFEFFFEFFFFFEFFFDFFFFFDFFFEFFFF
          FEFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFEFFF8FBFFFBFBFFFFFFFEFFFFF7FFFF
          F5FFFFF5FFFFF9FFF5FFE8D4FF3316AB2503BB260AB72D2094E8E2FFE9E1FF39
          2D91220FBA1B01D71F00E01F00E01F00D91D01D61B00DA1800DA1700D81802D7
          1900D72002D12A07C36850D2F6F4FFF8FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1
          FF28179E2607C62100D91B00DB1900DA1902D61901D71B00DB1B00DD1F00D91D
          02D41100C6311FD62C20B43D37A2BABBF3ECF0FFF6F6FFFFF9FFFFF4FFEFE0FC
          FFFCFFFFFEFFEBEAFAF6EDFF8064DF310DB72201C72608D71800C52006CE1100
          CB1A00D3301BDB1D09CD1D00E11D00E71D00DD1D00DD1F00E51F00E42100D722
          03D02100CB2302CE1507CB0D03D10F00E71700E02503C16F56D0F8F5FFF2EBFF
          300CB62C01E41300CF1E08DC1501D02311C87666F4A292FFA295FFAFA1FFA89B
          FDAEA1FDA99AF6AD9EFAB3A0FFB19FFFB39EFFB19FFFB19FFFAFA1FFAFA1FFAF
          A1FFAF9FFFAF9EFFB19CFFAF9BFFB19AFFAF99FFB199FFAF9BFFB29EFFA698F6
          AFA3F5A8A4E6A4A1D8D2D6FFF1F6FFF0F6FFF8FDFFFAFFFDFFFFF7FFFFF7FFFB
          F6FFFDFFF8FBFFE3DDFF260CB61E00D41A04CF1600C92604DA2508B9ADA0FCF3
          F0FFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFF7FFFEFFF4F5FF675EB92609BD2300DF1800DA1A00DF1F00E63410DE
          8C7FF9A79FF6A496F6B09BFFB09AFFB29DFFB19FFFADA0FFAFA0FFADA0FFAFA0
          FFADA0FFAFA0FFADA0FFAFA0FFADA0FFAFA0FFADA0FFAFA0FFADA0FFAFA0FFAD
          9FFFB1A1FFA191FFAFA0FFA297F4AEA5F5ABA5E6A39ED1F6F4FFFAF7FFFBFBFF
          FDFDFFFFFFFEFFFFFBFFFFF8FFFFF7FFFFFEF6FAFFA8A2EF2D0EBD2000D81F03
          D81801CF2002D12813AFEBE9FFF8FCFFFCF4FFFFFAFFFFFBFFFDFBFBFBFFFFF5
          FAFDFBFBFFFBFDFFFDFFF2FDFFEEFFFFF4FFFFFFFDF7FFFAF0FFDFD3FF5949AE
          331CAE0E00AA2909E41E00EB0200D42815DE2710A2F4E0FFF9ECFFE5DFF2FFFF
          F5FFFFEEFFFFF2FFFAF1FFFDFFFFFCFFFDFDFFFBFFFFFDFFFEFFFFFCFFFFFCFF
          FFFCFFFFFBF7EFFF6C52DC2300C81E00E31500E61600E21B02D62C15CB9680FF
          AF9FFFB3A2FDAD99FCB39EFFAA96FFB4A1FFAD9EFFADA0FFAFA0FFADA0FFAFA0
          FFADA0FFAFA0FFADA0FFAFA0FFADA0FFAFA0FFADA0FFAFA0FFADA0FFAFA0FFAD
          9FFFA797FFA798FFA99CFEA9A1F4A29EE09E9DCFF4F6FFF6FAFFFAFDFFFBFFFF
          FDFFFCFFFFFBFFFFF9FFFFFBFFFFFBFBF4FFAE9DFF270EB22604C62600D42200
          D92000BD382EA0E6E7FFEAEFFEFDFFFFFFF4FFFDEEFFFFFDFFF4EBE8FFFFFBF3
          EBF5FBEFFFF6E6FF4635A83627BF1000BF0F02D02519E30F02C22713C31C079F
          7862D9F6E4FFF6EEFFFAFCFFF7FDFCF5FCF7FBFFFFFBFFFFFFFFFFFFFFFCFFFF
          F8FFFFFBFFFCFFFFFBFFFAFEFFF6F6FFA897FF3115B42705C72101D61D00D921
          08C83118A8F3E3FFF3F4FFFAFFFCFEFFF7FFFFF8FFFFFEFFFFFEFEFFF6F9F8FF
          F3E7FF29109A2903CD2200DE2209DB1800CB2602D22708B7594DB7ECF0FFEBF6
          FFF4FFFEF1F9F8FAFFFFFDFEFFFFFDFFFFFCFFFFFBFFFFFBFFFFFCFFFFFFFEFF
          FFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFF9FFFFF8FFFF
          F9FFFFF9FFFFF9FFFFFBF8FDFCF5F4FFE8DCFF2D17A52604C62301DB1D01D71D
          04CA2810B4A697FFE9EFFFF8FFF8F9FDF1FFFFF9FFF9FFFFFBFFFFFBFFFDFCFF
          FBFCFFFAFFFFFBFFF8FBFFF7FFFFFFFFFFFFF4F8EDFDFFF7FAFFFCE0DDFF6349
          D22804C22D10D70D00C51900DC1A0AC924229EC8CDFFF4F7FFFFFCFFFBECF0FF
          FEFCFFFFF5FFFFF9FFF7FFFDF4FFF9F9EDFFFFF2EEF5F2EBF2FFD8D8FF3A2FB5
          2005CB1700D81400CF2006D61E01D33319C05B4B99E4D9F9FDF4FFF8F0FFFFF9
          FFFBF7FFFFFEFFFFFFFFFFFFFEFFFFFCFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFAFFFFFAFDFFFBFEFFFFFEFFFFFEFEFFFFF9FFFFF8FFFFF9FD
          F8FFF4E6FF654FD03316C0290CBB25129DE6D9FFE8DFFF8378E6220DBD1B01D7
          1F00E01F00E01F00D91D01D61B00DA1800DA1700D81802D71900D72002D12A07
          C36850D2F6F4FFF8FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1FF28179E2607C621
          00D91B00DB1900DA1902D61901D71B00DB1B00DD1F00D91D01D6260DDF0000AC
          1F00D13918D7270DA15744ABCFC5FFFBF4FFFFF6FFF4EEFFFFFDFFF2F4F4FAFF
          FDEFF4FDF6F3FFC6BDFF3D2BBA341DCB1903B51900BF401DF91900D71B02CE13
          00C81B00E01B00E11B02D41B02D41D00E01D00E21F00DD2200D72500D02201CE
          1D0DD71004D80D00E51D03DF290CB5B6A1FFF5F2FFF8F0FF2E0BB32500DE1600
          D51A04D81804D32213BBA8A2FFE8E8FFECEEFFF1F3FFF3F5FFF4F6FFF5F6FFF6
          F7FFF6F3FFF4F3FFF6F1FFF4F1FFF4F2FFF2F4FFF2F4FFF2F4FFF2F4FFF2F3FF
          F4F1FFF2F1FFF4EFFFF2EFFFF4EEFFF2EFFFF6F2FFF3F5FFF6F8FFF4FCFFF2FB
          FEF2FFFAF6FFF8F3FFF6F8FFFFF6FBF9FFFFF5FFFFF7FFFFFAFFFDFFF8FBFFE3
          DDFF2A10BA2100D71B05D01800CB2604DA280BBCA99CF8F6F3FFFBFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFAF7FF
          F2F0FF6D65C41F04B82000DB1800D31D04D61B00D1351CCADBD8FFEDF2FFF1F0
          FFF4EFFFF6F0FFF6F1FFF2F1FFF1F3FFF2F3FFF1F3FFF2F3FFF1F3FFF2F3FFF1
          F3FFF2F3FFF1F3FFF2F3FFF1F3FFF2F3FFF1F3FFF2F3FFF1F1FFF1EFFFEFEEFF
          EFF0FFEEEFFFF3F5FFF4F7FFECF0FFF8FCFFFAFEFFFBFFFFFDFFFFFFFFFEFFFF
          FEFFFFFCFFFFFEFFFDFFF6F9FFA8A2EF2D0EBD2000D81F03D81801CF2002D128
          13AFEBE9FFF8FCFFFCF4FFFFF8FFFFFAFFFEFCFCFBFFFFF5FAFBFAFCFFFBFEFF
          FDFFF7FDFFF2FFFFF5FFFFFEFDF8FFFBF2FFF8EDFFE2D5FF4432AD331BBF1600
          C81900E21F06EA1500CA250CAA4933A3F6E9FFFBF6FFFFFCF8FAF9E5FFFFF4FF
          FDF5FFFEFFFFFCFFFDFDFFFBFFFFFDFFFEFFFFFCFFFFFEFFFFFCFFFFF7F1ECFF
          755EDE1D00B92107D71B05D91706CC1A0DBC2319A2D7D0FFEFF1FFF3F6FFEFF1
          FFEFF0FFEFF2FFEDF0FFF1F2FFF1F3FFF2F3FFF1F3FFF2F3FFF1F3FFF2F3FFF1
          F3FFF2F3FFF1F3FFF2F3FFF1F3FFF2F3FFF1F3FFF2F3FFF1F0FFF1EDFFEFEBFF
          EEEDFFF1F1FFF3F4FFEEF1FFF6FAFFF6FBFFFAFEFFFBFEFFFDFEFFFFFDFFFFFC
          FFFFFBFFFFF9FFFBF0FFA698FF2D18B52804D22300E02600E42D0BCD4E41AFEF
          EEFFEFF1FFFFFCFFFFF7FFFFF8FFFFFFFCFFFFF8F3F1F1FDF5FFEBD4FF6E52CD
          280FA51E0BB61605C62613E40000C62B15E51B08AB6D61D1E2DDFFF8F8FFECEA
          FDFBFEFFFAFFF7F1FDEBFBFFFCFBFFFFFFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFF
          FBFFFAFEFFF6F6FFA897FF3115B42705C72101D61D00D92108C83017A7F2E2FF
          F3F4FFFAFFFCFEFFF7FFFFF9FFFDFFFFFEFFFCFDF4FAFAFFF4EBFF4430AB3412
          D02200DA260AE01400D02300DC2905CD2B19A2E6E3FFECF5FFF1FFFBF5FFF5FB
          FFF9FFFEFFFFFDFFFFFCFFFFFDFFFFFFFCFFFFF8FDFFF5FDFFF5FFFFFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFF9FFFFF8FFFFF9FFFFF9FFFFF9FF
          FFFBF8FCFDF0EFFFEFE3FF27119F2705C72705DF1C00D61C03C9230BB1AE9FFF
          E7EDFFF8FFF8FEFFF6FFFFF8FFFCFFFFFBFFFFFBFFFDFCFFFBFCFFFAFFFFFBFF
          F8FBFFF7FFFFFFFFFFFEFAFEF2FDFFF9F2F4FCF6F1FFC8B7FF1F07A32A09D51B
          00D81400CF2818D112079D7973D8F3F3FFFFFCFFFFF4FAFFFDFFFFFFF9FFFFF9
          FFF9FFFFF9FFFFFCFBFDFFFEEBF1F8F1F3FF8179DE200EA92305D21900DC1A00
          D82005D72005CB2813ABB6A8EFFFF6FFFFF7FFFDF7FFFFFBFFFBF8FFFFFEFFFC
          FCFCFFFFFEFFFFFCFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFA
          FFFFFAFFFFFDFFFFFFFDFFFFFCFFFFFDFFFFFFFCFFFFF9FDFAFFE9E1FF9587F1
          230BA5290FBB2109ABBCA9FFEADCFFDACCFF210CBF1B01D71F00E01F00E01F00
          D91D01D61B00DA1800DA1700D81802D71900D72002D12A07C36850D2F6F4FFF8
          FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1FF28179E2607C62100D91B00DB1900DA
          1902D61901D71B00DB1B00DD1F00D91F00D71F03D82E0FEC2300EA1F00DE2E05
          D219009B3E2B98AA9FE8F4EAFFFAF5FFF8F8FFF8FDFCFAFFF5FAFFF2E8F4E8F3
          F7FFDCD7FF2C1EA63824BD2106BA1000C72802E81A00D42003DC1B00E01B00DB
          1B06CD1B07CC1B00D91D00E01D00E22100DE2B03D72200D01E0BDE1201DE0B00
          E01D05D5311BA9E3D5FFF6F4FFF6EFFF2C0BB32200D91B00DA1701D61A04D421
          12B3A8A5EDF4F8FFF0F6FFF6FCFFF3FAFDF7FDFCFAFFFDFBFFFEFDFFFFFBFEFF
          FDFDFFFBFDFFFBFEFFFAFFFFFAFFFFFAFFFEFAFFFEFAFFFEFBFFFFFAFFFFFBFE
          FFFAFCFFFBFCFFFAFCFFFAFCFFF9FEFFFAFFFDFAFFF9FBFFF7F8FFF0F5FFEAFA
          FFF4FAFFFEF5FAF8FFFFF6FFFFF7FFFFFBFFFDFFF8FBFFE9E3FF2B11BB2302D9
          1C06D11C03CF2604DA280BBC9B8EEAF6F3FFFBFBFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFF7F3FFEFECFF7267CD1D04
          BA2102DB1902D01E09D01C00C82412ABEAEEFFEFFCFFF0F7FFF1F7FFFAFCFFF9
          FDFFFAFEFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFF
          FAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FEFFEAF2FFF3FCFFF3FCFFF4FDFFF2FB
          FEF5FFFEF8FFFEF4FBF6FBFFFBFDFFFBFFFFFCFFFFFEFFFFFFFFFEFFFFFDFFFF
          FBFFF6F8FFA8A2F12D0DBF2000D81F03D81800D02002D12813B0DCDAFFF8FCFF
          FFF7FFFFF7FFFFFAFFFDFBFBFBFFFFF6FCFBFAFEFFFAFFFFFDFFFCFDFFF7FFFF
          F5FFFFFCFFF9FFFBF4FFF5ECFFF4EBFFC5BAFF2916A11E02C71B00DC2308E813
          00C83319C51E0889C8B9FFF1E9FFFFFDFFFEFEF0FBF9EEFFFFF9FFFEFFFDFDFF
          FDFEFFFBFFFFFDFFFEFFFFFEFFFFFFFFFFFEFFFFF9EFEBFF7C65E51E00B72109
          D31B08D31509C11D15B0211C8FEAEBFFF3FCFFF1FFF3F8FFF9F6FFFCF3FFFFE9
          F6F8F8FFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FFFF
          FAFFFFF8FFFFFAFFFFF8FFFFFAFFFFF8FDFFF4F9FFF3F8FFEEF5FFF4FBFFF6FC
          FFF6FDFFF1F7FCF5FAFDFBFEFFFDFDFFFFFCFFFFFBFFFFF9FFFFF8FFFFF6FFFA
          EEFF8B80E82615B22804DA2200E62600E73612D66052BCF3F0FFFBF8FFFBF4FF
          FFF7FFFFFAFFF4F3E9FFFFF8EAEAF8F6ECFF8B6EED2301A62F13C4230BC7220D
          D41500D21A00DD1600C14A3AC3E5E1FFF6FCFFFBFFF5F8FCF7F3F7F1FBFFF2FB
          FFF4FBFFFCFBFFFFFFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFFFBFFFAFEFFF6F6FF
          A897FF3115B42705C72101D61D00D92108C83017A7F1E1FFF2F3FFFAFFFCFDFF
          F7FFFFFBFFFCFFFFFDFFFFFFF9F6F9FEF4F0FF9283EC3719C62000CF2102DB1B
          00DE2200E82705DC1E08A7A9A4FFEDF6FFF3FFFFF5FFF0FBFFF5FFFDFFFFFBFF
          FFFDFFFFFFFBFFFFF1FDFFF0FDFFF4FDFFF8FFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFEFFFBFFFFFFFFF9FFFFF8FFFFF9FFFFFBFFFFF9FFFFFBFAFEFFF0EFFF
          EFE3FF27119F2604C62604DE1B00D51E05CB240CB2B3A3FFE8EDFFF8FFF8FFFF
          F7FFFEF6FFFCFFFFF9FFFFFCFFFDFCFFFBFCFFFAFFFFFBFFF8FBFFF8FFFFFFFF
          FFFFFFFFF8FDFFFBECEBFBF6F2FFF1E9FF5243BC2000C32E0DEA1500C92312CD
          2714C13729ADD2CEFFFBF9FFFFFBFFFFFCFEFFFDF9F8F9F5FFFEFFFFFDFFFFFD
          FFF6F4FFF6F7FFE2DEFF2C1C9F260EC01E00CF2303E42300E52100D7220CBF3B
          2CACF4E8FFFFF7FFFFF9FFFFFAFFFFFCFFFAF9FDFFFFFFFBFCFAFFFFFCFFFFFC
          FFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFEFBFFF9FDFFFB
          FFFCFFFFFAFFFFFCFFFFFEFFFFFFFCFDFCFFF4F3FFDCD7FF2C1C9F3820C62B0C
          C56B4FFFC1AEFFB09FFF1F0AC51B01D71F00E01F00E01F00D91D01D61B00DA18
          00DA1700D81802D71900D72002D12A07C36850D2F6F4FFF8FFF6FDFEFAFFFFFE
          F8FDFEF1F4FFE8E1FF28179E2607C62100D91B00DB1900DA1902D61901D71B00
          DB1B00DD1F00D91F01D62205D71C00D72000E72200E91E00D8320CD6381ABF26
          11968473DCEDE5FFE1E2FFF8FFFFFAFFF1EFFFDFFBFFF0E5ECEFEDF0FFD6D1FF
          30249C270FAF2A05D71400D42D07ED2100E41B00E11B01D7190AC6190BC41903
          D31B00DE1B00E71F00E42A04DA1C00CD1900DC0F00DF0A00DA2009C95043AFF2
          EBFFFBF9FFF3EAFF2F0EB62300D91D02DC1600D71903D42110B3A59EE9F8F6FF
          F7F5FFFBFBFFFCFCFFFFFFFFFFFFFEFFFFFEFFFEFFFFFDFFFFFCFFFFFCFFFFFD
          FFFFFEFFFFFEFFFFFFFFFFFFFCFFFFFBFFFFFCFFFFFEFFFFFFFFFEFFFFFDFFFF
          FDFFFCF8FEFFFDFFFFFCFFF9F8FAFFFEFFFFFFFFFFFEFDFFFFFFFBFFFFF7FCFA
          FFFFF8FFFFF7FFFDFAFFFDFFF8FAFFEAE3FF250BB71F00D51903CE1B02CE2200
          D62205B68477D3EDEAFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFAFFF5F2FFECEBFF6760C92109C32104DD1903CE1D
          09CD250CCC1D0D9AECF2FFF1FFFCF0FBF3F7FFF5FDFFF4F9FFF3FDFFFFFDFDFF
          FFFDFFFDFDFFFFFDFFFDFDFFFFFDFFFDFDFFFFFDFFFDFDFFFFFDFFFDFDFFFFFD
          FFFDFDFFFFFDFFFDFFFFF7FFF8F8FFF8F8FFF7F8FFF5F1FDEBEDF9E7FAFFF4F8
          FFF1FBFFF5FDFFF8FFFFFBFFFFFEFFFEFFFFFCFFFFFBFFFDFAFFF6F7FFA8A2F1
          2D0DBF2000D91F03D91800D02002D12813B0C3C1FDF6FAFFFFF9FFFFF8FFFFFB
          FFFBF9F9FBFFFFF9FFFEFAFFFFFAFFFFFDFEFFFDFFFEFFFFF7FFFFF9FFFAFFFD
          F6FFFBF6FFEEEBFFE3E1FF584DBB2D0FC62100DA1500D2270ADB1B00BA4C35CD
          493BA1EEE7FFFAF8FFFFFFFBF7F5EDFFFFF9FFFEFFFDFEFFFDFFFFFBFFFFFDFF
          FEFFFFFEFFFEFFFFFDFFFFFEFFF3EBFF765BE72203C42005D71703D21506C221
          16B2251F8EEDEDFFEEF7FBF0FEE6FBFFEEFAFFEFF8FFF2F5FFF5FDFFFFFDFDFF
          FFFDFFFDFDFFFFFDFFFDFDFFFFFDFFFDFDFFFFFDFFFDFDFFFFFDFFFDFDFFFFFD
          FFFDFDFFFFFDFFFDFEFFF9FFFDF8FFFCF3FDF7F7FFFBF1F8F3FAFFFCEAF1EEFB
          FFFEFBFFFFFDFEFFFFFBFFFFFAFFFFF9FFFFF8FFFFF6FFF8EFFF6861C91B0DAB
          2402DC1F00E82000E1320DCD6455BEF4EFFFFDF5FFFFF5FFFEF2FFFCF6FBFFFF
          F4F3FAF5F4F3FF9C8DEF2809B2310DD51800BF270ED40C00C62003DC2C0CDC2A
          12B8BEB3FFF4F4FFE6EFE2FFFFE7FFFFEBF9FFEBF3FAEDFBFFFBFBFFFFFBFFFF
          FFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFFFBFFFAFEFFF6F6FFA897FF3115B42705
          C72101D61D00D92108C82F16A6F0E0FFF1F2FFFAFFFCFBFFF7FFFFFEFFFAFFFF
          FBFFFFFFFBF8FDFCF0EFFFD6CDFF280FA52000C32100D92200E81B00EE2000E3
          2612BF554FBEECF5FFF3FFFFF5FFF2FFFFF9FFF9FFFFF8FFFFFFFEFFFFF1FFFF
          E6FDFFEAFAFFFCFBFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFF
          FFFFF9FFFFF8FFFFFBFFFFFBFFFFF9FFFFFBFBFFFFF4F3FFEFE3FF2C15A52402
          C52100D91A00D42108CE280FB7AB9BFFECF1FFF8FFF9FFFFF8FFFDF8FFFCFFFF
          F8FFFFFCFFFDFDFFFBFDFFFAFFFFFBFFF8FBFFF8FFFFFFFFFEFFF9FCF3FDFFFE
          FBF9FFF5F2FFEFF1FFB6B0FF2306B72100D6240DD40C00B82207CC2811B39185
          DDF6EEFFFCF2FFFFFEFFFFFFFBFEFFFBFFFEFFFFFDFFFFFCFFECE9FFF4F0FF8B
          7FDF2509B02D0DD61C00CB2304DD1E00E52501DD220FAC978EEFF7F0FFFBF5FF
          F6F2FEFFFCFFFFFDFFFAF9FBFFFFFEFFFFFCFFFFFCFFFFFCFFFFFEFFFFFEFFFE
          FFFFFEFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFEFBFFF7FFFFF8FFFCFFFFFAFFFFFC
          FFFFFDFFFFFEFFFBFDFFF1F6FFECEEFF3F38A12511AA1900BE0F00B64127D121
          0DB41F07C91B01D71F00E01F00E01F00D91D01D61B00DA1800DA1700D81802D7
          1900D72002D12A07C36850D2F6F4FFF8FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1
          FF28179E2607C62100D91B00DB1900DA1902D61901D71B00DB1B00DD1F00D91F
          01D61400C81D00D42200E12903E91800D72501DD2605D22304BD2C14B05949BE
          EFEBFFECF1FFECF8ECF9FFEEFFFFF5FBFFFFEAF0FFE6E8FFBDB4FF2F1BA42805
          C73207EA2700E91100D71D00E21B01D7190BC4190DC11906CF1900DB1B00E81D
          00E72703D91F00D01500DE1600E71500DD2A16C3928CD9F8F8FFFBF9FFD9CEFF
          2F11B82300DA1A00DC1800DA1701D22411B48F85D2FBF5FFFAF4FFFDFAFFFFFD
          FFFFFFFFFFFFFEFFFBFAFFFAFDFFFAFFFFF9FFFFF9FFFFF9FFFEFAFFFEFBFDFE
          FCFCFFFDF9FFFDF8FFFDF8FFFDF8FFFDF9FFFCFBFFFCFBFFFBFCFFFAFCFFFDFF
          FFFCFFFFF8FFFFFBFFFFFBFFFFFAFFFFFBFFF9FCFFF9FEFDFFFFF8FFFFF7FFFB
          F8FFFDFFF7F9FFDDD6FF260CB82100D91B04D21F06D22200D62306B77769C7EB
          E8FFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFFFAF9FFF6F5FFEAEBFF4F49B6260ECA1E02DE1803D11E07CD280DCF210F9E
          E8EDFFF3FFFBFAFFFBFDFFF7FFFFF2FFFFF3FEFCFBFEFAFFFEFAFFFEFAFFFEFA
          FFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFC
          FCFCFDFFF8FBFFF4F9FFF2FBFFF2FDFFF2FAFFEFFDFFF4FCFFF3FDFFF7FDFFF8
          FFFFFBFFFFFFFFFEFFFFFCFFFFFBFFFDF9FFF6F7FFA8A1F22D0DC02000D91F03
          D91800D12001D22813B0B1AFEBF3F6FFFFF9FFFFF9FFFFFCFFFCFAFAFAFFFEFA
          FFFEFAFFFEFAFFFFFDFCFFFFFDFFFFFFF7FFFFF8FFFAFFFFF9FFF8F8FFF8FBFF
          D6DBFAC3BDFF2205AF2E0AE01100C7270ADC2D0FDA1E03B123118CF1E8FFF2F0
          FFF9FBFCFEFEF8FFFFFBFFFFFFFDFFFFFDFFFFFBFFFEFDFFFEFFFFFFFFFDFFFF
          FCFFFFFBFFF5EAFF5E41D62805D12002DD1400D61705CA2214B922198EECE8FF
          F4F8FFFAFFEFFFFFF1F5FCE7FDFFF5FDFFF9FCFCFCFEFAFFFEFAFFFEFAFFFEFA
          FFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFEFAFFFC
          FCFCFBFFF5FBFFF2FBFFF4FBFFF5F5FBF0FDFFF9F3F7F1FDFFFCFDFFFFFDFFFF
          FFFDFFFFFCFFFFFBFFFFFBFFFFFAFFF6F0FF5B57C11B0DB22607E02300E82000
          DB2F0AC46756BDF7EEFFFFF4FFFFF5FFFFFAFFFFFCFFFAFFF8F4FCFFBFBAFF33
          22A92102C12100D72408D71B00CE1100C92B0DD81D03ABB7A4FFF3EDFFF6F8FF
          F6FCE9FFFFE7F6FFDCFFFFEEF7F8F6FDFDFFFBFEFFFBFFFFFFFFFFFFFFFCFFFF
          F8FFFFFBFFFCFFFFFBFFFAFEFFF6F6FFA897FF3115B42705C72101D61D00D921
          08C82E16A4F0E0FFF1F2FFFAFFFEFBFFF9FFFFFFFFF9FFFFFAFFFEFEF8FBFFFB
          EFF4FFEBE7FF3420A12708BD2500D82000E81500EA1600DE2C18CF1D1592BBC0
          F7F3FCFFFAFFFEFFFFFCFFF9FFFFF9FFFFFFF9FFFFEEFFFFE7FBFFEEFAFDFFFA
          FAFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFF9FFFFF8FFFF
          FBFFFFFBFFFFF9FFFFFBFBFFFFF6F5FFD9CDFF321BAB2301C41F00D81C00D822
          08D02C12BC9483F6EFF4FFF8FFFBFFFFF8FFFFFAFFFCFFFFF8FFFFFCFFFDFDFF
          FBFDFFFAFFFFFBFFF8FBFFF8FFFFFFFFFEFFFAFBF9FCFBFDFDF9FFFAF9FFE9F2
          FCEFF0FF351FB31900C0250BD51700CB1B00CE290CC04735AAF6EAFFFFF6FFFF
          FDFEFCFEF8FFFFFCFFFEFFF1EEF7FDFCFFFAF5FFEBDFFF3E28A93310D21700CC
          2307CF2607D81B00E2310AE23023A3E6E4FFF7F2FFFAF6FFFBF8FFFFFEFFFFFE
          FFFCFCFCFDFEFAFFFFFCFFFFFBFFFFFBFFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFFFEFDFFF8FFFFF9FFFDFFFFFCFFFFFEFFFFFEFFFFFCFFFB
          FBFFF1F9FFEFF6FF9B99E53123A63211D82802DE280ACF2007C71D05CF1B01D7
          1F00E01F00E01F00D91D01D61B00DA1800DA1700D81802D71900D72002D12A07
          C36850D2F6F4FFF8FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1FF28179E2607C621
          00D91B00DB1900DA1902D61901D71B00DB1B00DD1F00D91F01D62808DB260BD7
          1300C0220BD1210BD51B02D60D00D12C09ED1A00CA2D15BB756AD0E9EAFFF0F6
          FFFBFFFFF3ECFBF2ECFDE7EDF4F3FAFFEFEDFF5B4CB83617C02000CB2000DE29
          00F01D00E41B00DA1909C8180CC41807CC1802D71900E71D00E52603D62504D7
          1600E22002ED1D03D93220B9DADAFFFBFFFFFDFAFFBAACF42F11B82403DA1600
          D81903DE1600D12913B97265B5F7F0FFF3EDFFFCF9FFFFFDFFFCFAFAFFFFFCFC
          F7F4FFFEFEFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFCFFFFFB
          FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFCFFFBFAFFFCFFFFFDFFFFF9FFFFF8
          FFFFF8FFFFF8FFFFF7FFF8FAFFFBFFFFFFFFF8FFFFF7FFFDFAFFFDFFEFF1FFC2
          BBFF2A10BC2402DC1C05D32107D62301D82609BA7264C2F1EEFFFBFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFF9FAFFF4F6FF
          E7E8FF322C99280FCF1A00DD1800D61D03D32402D22C13B1E3E0FFF6FCFFFAFA
          FFFFFCFFFFFEFFFCF7F8FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFEFFF6F5F9
          F8F7F9FEFEFEFFFFFEFFFFFEFAFBF7FDFEFAFFFFFCFFFFFCFFFFFEFFFFFFFFFE
          FFFFFDFFFFFCFFFBFBFFF6F7FFA8A0F32D0DC02000DB1F02DB1800D12001D228
          13B0ABA9E5F3F6FFFFF9FFFFF6FFFFFCFFFFFEFEFBFFFFFAFFFCFAFFFBFAFFFF
          FDFAFFFFFBFFFFFFF8FFFFF7FFFBFFFFFAFFFBFEFCECF3EEF4FFFFD8D9FF2B0F
          AE3710E11500C52201D81F00DA2106C83B2BB5A59CF3F4F3FFFBFCFFF4F5F3FF
          FFFAFFFFFFFDFFFFFDFFFEFBFFFEFDFFFEFFFFFFFFFCFFFFFBFFFDFBFFF2E8FF
          3A1CB52A05D72100E51700E01A03D7210BC12C19A4EDDEFFFBF4FFFFFDFFFFFC
          FFFCF5FCFFF9FFFFFBFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFF8FBF2FFFFF7
          FBFFF4FFFFF8FAFCF6FDFEFAFEFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FCFFFFFCFFFFFBF4F6FF5E5ACB1E12BE270ADC2701E32400D7300FBE6D5BC0F8
          EFFFFFF5FFFFF6FFFFFBFFFDFDFFE4ECF3D7DDFF5043BD1701AD210BCF2108DA
          1700CE2104D5381AE51F05AD8879E5F3EDFFF3F0FFFCFBFDFFFFFCFFFFF7F0F4
          DBFFFFF4FFFAFFF9F3FFFBFDFFFBFFFFFFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFF
          FBFFFAFEFFF6F6FFA897FF3115B42705C72101D61D00D92108C82F15A3F0DFFF
          F0F0FFFAFFFFFBFFFAFFFEFFFFF8FFFFF9FFFCFCF6FDFFF8F7FFFEEBECFF8677
          E03115B52600D02200E31500E11200D6200FCA160D9A6B68BDE4E5FFFAFAFFFF
          FEFFFFFCFFFFFDFFFFFFF8FFFFF4FFFFF2FBFFFCF8F8FFF8F6FFFDFCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFEFFFBFFFFFFFFFBFFFFF9FFFFFBFFFFFBFFFFF9FF
          FFFCFBFEFFF5F4FFB6AAFF341DAD2402C52100DA1F02DB2006D02D13BF7663DA
          F0F4FFF8FFFCFCFFF6FFFFFBFFFCFFFFFAFFFFFDFFFDFDFFFBFDFFFAFFFFFBFF
          F8FBFFF8FFFEFFFFFDFFFFFDFFF6F4FAF7F6FFFBFEFFF4FFFCF1F6FF7367D127
          0FB51D00CE2F0AEE2300DA2102C1250AA0D3C1FFFAF2FFF3F5F6F9FEF5FDFFFB
          FBFAFFF3F0FFFBFEFFF8F4FFA38FF92B0BB02B02D91100CC260CCE280DD21F00
          DF320CD6817ADBF1F5FFF9F9FFFFFEFFFFFEFFFDFDFDFFFFFEFFFFFCF8F9F5FF
          FFFBFFFFFBFFFFFBFFFFFEFFFFFEFFFEFFFFFEFFFFFDFFFFFEFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFDFFFBFFFFFBFFFFFFFFFEFFFFFFFBFFFFFEFFFAFFFBFAFFF6FDFFF1FBFF
          E7EBFF2A208A2405C02F07E80D00C52C0FE11D02D41B01D71F00E01F00E01F00
          D91D01D61B00DA1800DA1700D81802D71900D72002D12A07C36850D2F6F4FFF8
          FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1FF28179E2607C62100D91B00DB1900DA
          1902D61901D71B00DB1B00DD1F00D91F00D71F00D72102D31701C5210FCE0E00
          C2220CE01D00EA1900E92201E61C01C32919A3877ED9F4F0FFF9F4FFFFF6FFFF
          FAFFFBFFFBF5FFFFE0E0FFEFE6FF2A139E2706C22300D82000E71D00E71B00DE
          1906CF1809C81807CC1803D41900E21D00E11E00D02605D81500DF2003E91D02
          C83021A1F6F9FFF5FCEDFEF8FFA393E02B0FB62204D91200D51B05E01500D02C
          16BC6E64B1FAF5FFF9F6FFFDFBFFFFFEFFFDFCF8FFFFF9FFFFF9FFFFFBFFFFFC
          FFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFCFFFFFCFFFFFBFFFFFBFFFF
          F9FFFFF8FFFFF8FFFFF8FFFFF9FFFEFAFFFEFDFFFEFFFFF8FFFFF6FFFFF9FFFF
          FAFFF8FAFFFBFFFFFFFFF9FFFFF5FFFFFEFFFDFFE8EAFCACA5EE280EBA2100D9
          1700CF1C02D11E00D32406B96E60BEF4F0FFFBFBFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFF9FBFFF4F6FFE4E7FF1C1784270E
          CE1600DC1800DA1E02D82100D4391AC3E5DCFFF8F7FFFCF5FFFFF5FFFFF8FFFF
          F9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFFFFF9FFFFF9FFFDF6FFFFFA
          FFFFFCFFF7F3F9FFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFB
          FBFFF6F7FFA89FF52D0CC12000DC1F02DB1800D12001D22812B1ADAAE8F5F8FF
          FFF9FFFEF4FFFFFCFFFFFFFFFBFFFEF8FFFAFAFFF9FBFFFFFDF8FFFFF9FFFFFF
          F8FFFFF5FFFCFFFFFCFFFFFFF8FBFFF4E8F6EAEFF3FF3116AC2100C73411E31C
          00D41600DA3013E40C0092877EDFEFEDFFF7F8FFFFFEFFFFFFFCFFFFFEFDFFFE
          FDFFFCFBFFFCFDFFFEFFFEFFFFFCFFFFFBFFFDFCFFEFE6FF2003982A06D42201
          E51B00E41F05DB1F08C22E17A9E4D1FFFDF0FFFEF2FFFFF4FFFFF7FFFFF6FFFF
          F7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFBFDFAF5FFFFFCFFFF
          FFFDFAFCFFFEFFFBF8FAFFFFFFFFFFFEFFFFFCFFFFF9FFFFF7FFFFF4FFFFF2F4
          F8FF5E5BCF1C0EC01E04D32201D82500D02F10B96E5DBEF7F0FFFBF5FFFFFCFF
          F6F1FFF9F6FFEBEDFF605DB3200BAE1F05CD1201C7200DD80E00C52306CE3016
          C2604ECBF3ECFFE6E7FBF3F2F6FFFFFEFBF4F7F9F3F4FFFFF9F5F1F0FFF7FFFC
          F3FFFDFCFFFBFFFFFFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFFFBFFFAFEFFF6F6FF
          A897FF3115B42705C72101D61D00D92108C82F15A1F0DFFFF0EFFFFAFFFFFBFD
          FDFFFEFFFFF7FFFFF9FFFFFFFCFCFFF4FAFFF8F0F6FFE1D8FF391FAB2100BC2A
          04DF1A03DB1404D41100C32817BF2A1B9BCEC3FFF6F1FFF4F1FFFFFFFEFFFFF8
          FFFFF8FFFFF9FFFFFFFBFBFFF8F7FFF8F8FFFDFCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFEFFFBFFFFFFFFFBFFFFF9FFFFFBFFFFFCFFFFFBFFFFFCFBFEFFF2F0FF
          9B8EEA331CAC2503C62401DD2305E01E04CE2B0FC0614EC7EFF2FFF8FFFCF8FB
          F2FFFFFBFFFCFFFFFBFFFFFDFFFDFEFFFBFEFFFAFFFFFBFFF8FBFFF8FFFEFFFF
          FBFFFBF7FFFFFBFFFDFFFFF7FDF8F4FEF2F4FCFFC3BFFF2E1CA52200CE2B02ED
          2200D92000C62F0FC1836BEDF3ECFFF5F9FFFBFFFBF8FCF6F7F6FFFBFAFFFAFC
          FFE4E0FF462DB32F0ACA1F00D42D09E92209C92209C51E00CA2C0BB9ECE9FFED
          F5FFF1F4F9FFFFFFFFFFFFF4F5F3FDFEFAFFFFFCF9FBF5FFFFFBFFFFFBFFFFFC
          FFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFFFEFFFFFFFF
          FFFFFCFFFFF8FFFFF4FFFFFBFFF9FFFBF7FFFAFCFFF4FDFFDEE5FE8785D13017
          BB1D00CF2A05E91700DA1B01D71B01D71F00E01F00E01F00D91D01D61B00DA18
          00DA1700D81802D71900D72002D12A07C36850D2F6F4FFF8FFF6FDFEFAFFFFFE
          F8FDFEF1F4FFE8E1FF28179E2607C62100D91B00DB1900DA1902D61901D71B00
          DB1B00DD1F00D91F00DA2100E02100E01D01D71903D41603D41402D91400E014
          00E11600DB1800CD240ABB2F18A3EEDCFFF5E8FFFFF8FFFFFFFBFAFFEFFBFFF8
          EAEDFCF0ECFF9889F23318B52000CC2600E81D00E81B00E41901D91905D01906
          CD1904D21B00DD1D00DD2202D31F00D32404ED1B00D91D06B6BDAFFFEAEFF2FF
          FFEEFEF8FFB09FF02B11B81C00D51903DE1400D91D01D62711B76D66B1F6F7FF
          F8FBFFFAFDFFFBFFFCFCFFF7FFFFF5FFFFF3FFFFF5FFFFF7FFFFF9FFFFFBFDFF
          FBFDFFF9FDFFF8FDFFF9FFFFFCFFFFFEFFFFFCFFFFF9FFFFF8FFFFF5FFFFF4FF
          FFF4FFFFF4FFFFF5FFFFF7FFFFF9FFFFFCFFFFFFFFFEFFFDFEFFFBFEFFF8FCFD
          FFFFF9FFFFF6FFFFFEFFFCFFF8F9FFAAA3EE2A0FBD1F00D71B03D31C02D22200
          D72709BC6E60C0F4F0FFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFEFFF8FDFFF3F8FFECF0FF27228F2007C71D00E41A00DE1C
          00D92300D92E0DBBE9DEFFF6F3FFFFF4FFFFF2FFFFF4FFFFF9FFFFFFFFFDFFFB
          FDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFF
          FBFDFFFBFDFFFBFFFFFFFFF9FFFFF6FFFFF7FFFFF8FFFFF9FFFFFAFFFFFBFFFF
          FDFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFCFFF2F3FFB4ABFF
          2705BD2000DE2103DE1700D22404D72610AFACA9E7F8FBFFFFF8FFFFFAFFFFFC
          FFFFFFFFF7FCFAFAFFFBFBFFF8FBFFFFFDF8FFFFF9FFFFFFF9FFFFF5FFFCFFFF
          FDFFFCFFEFFBFFEEF6FFF2E0E6FF2910A03B15DF1E00CB1F00D91E00EA1C00D8
          2715B4665DC5E9E6FFFAFAFFFCFBFDFFFFFCFFFFFEFDFFFEFDFFFCFBFFFCFDFF
          FEFFFEFFFFFCFFFFFCFFFBFFFEEEEDFF331BA32606C91A00D61A00DC1B04D222
          0CBF2F18A3F2DFFFFBEDFFFFFAFFFFF7FFFFF9FFFFF8FFFFF9FFFFFFFFFDFFFB
          FDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFF
          FBFDFFFBFDFFFBFFFFFBFFFFFEFFFEFFFFFDFFFFFDFFFFFCFFFFFBFFFFFBFFFF
          FDFFFFFDFFFFFFFFFFFFFCFFFFF8FFFFF4FFFFF1FDFFF0F4F8FF5F5BD21103B5
          220AD42505D82500CF3719C06C60B8F6F5FFF6FBFAFDFFFFEDE7FFF5EAFFC1B5
          FF200F9C2206CE1800DA1F0FD80600B93014E32408BF4432ADEFE7FFF0EFFFFD
          FFFFFFFFFFFFFFFEFFFFFEFFFDFFFFFAFFFFF8FFFFF6FFFFF8FFFDFCFFFBFFFF
          FFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFFFBFFFBFFFFF6F6FFAD9CFF2F13B22503
          C52505DA1900D52209C73017A1EEDEFFF6F4FFF8FBFFFDFFFFFCFBFFFFF8FFFF
          F8FFFFFFFCFCFFF1F4FFEBF6FEFFF3ECFF5C49BD2D09B32200C51303C61306CE
          210BDB2003CE280AC14328B8EADBFFF8F5FFFDFFF9FBFFECFFFFF8FFFEFFFDF8
          FFFBF7FFF8FBFFF4F7FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFDFFFBFEFF
          FFFFFBFFFFF9FFFFFCFFFFFCFFFFFBFFFFFEF9FCFFF6F4FFA598F42F18AA2704
          CA2200DB1E00DB1E03CF290CBF6652CDF1F3FFF6FFFCFFFFF9FFFFFBFFFCFFFF
          FAFFFFFDFFFDFEFFFBFEFFFAFFFFFBFFF8FBFFF8FFFEFFFFFBFFFDFAFFFAF9FF
          F6F7F5FDFFF7F6FFF0F6FFFFE0E2FF5F53BD2907CA2C02E91E00D22202CB2A05
          CD3416B5E8E0FFF1F5FFFAFFFFF9FFFAFBFDFFFAFAFFF8F7FFB5AAF33E1EBD29
          01D22300D81E00D31A00C42309C12E12BF8570EFF3F2FFF0F8F8FDFFFFFFFFFE
          FFFFFEFFFFFCFFFFFCFFFFFBFFFFFBFFFFFBFFFFFCFFFFFCFFFFFEFFFFFEFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFEFFFFFBFFFFFDFFFFFFF9FFFFF4FFFF
          F1FDFFF9FDF8FFFDF6FFFDFCFFEEF3F6F4FEFFE3E4FF230F97290ACB1E00DB1E
          00E51B00D91B01D71F00E01F00E01F00D91D01D61B00DA1800DA1700D81802D7
          1900D72002D12A07C36850D2F6F4FFF8FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1
          FF28179E2607C62100D91B00DB1900DA1902D61901D71B00DB1B00DD1F00D91F
          00DB2200E52100E71D00E11900DB1601DA1402D91202D91202D91000D32B11E7
          1E00CC1F00B2573CC1F8E5FFF9F5FFFFFFF4FFFFEFFCFFF2FBFFFFF0F0FFD2CB
          FF3E2DAC2A09C82100DF1F00E81B00E81B00E11901D91906CF1B05CF1B00D91D
          00DA2000D12808DB1300D6260AD9230FA4E3DBFFFAFCF6FFFFEDFFF7FFB09DF2
          2B11B91C00D51904DD1400D81D01D72910B86B65B4F4F6FFF6F9FFF8FCFFFAFF
          FFFAFFF8FDFFF7FCFFF4FFFFF8FDFFF9FFFFFBFDFFFCFBFFFCFBFFFCFBFFFBFB
          FFFCFBFEFFFBFEFFFDFFFFFBFFFFFDFFFCFBFFF9FDFFF8FBFFF7FDFFF5FBFFF7
          FDFFF7FBFFF8FDFFFBFBFFFCFDFFFEFBFFFFFAFFFFF8FCFDFFFFF9FFFFF7FFFF
          FEFFFCFFF8F9FFAAA3EE2A0FBD1F00D81B03D31C02D22200D72709BC6E60C0F4
          F0FFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FEFFFAFCFFF3F8FFECF0FF28228D2007C71D00E31C00DC1C00D82300D82E0FB8
          E9DFFFF8F5FFFFF6FFFFF4FFFFF7FFFFFBFFFDFFFFFAFFFCFBFFFCFAFFFCFBFF
          FCFAFFFCFBFFFCFAFFFCFBFFFCFAFFFCFBFFFCFAFFFCFBFFFCFAFFFCFBFFFCFD
          FFFFFFFBFFFFF9FFFFFAFFFFFBFFFFFBFFFFFBFFFFFCFFFFFDFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFDFFF0F0FF9E95EC2604BD2000DE1E00
          DB1800D32202D52812B1ACA9E7F8FBFFFFF8FFFFFAFFFFFCFFFFFFFFF7FCFAFA
          FFFBFBFFF9FDFFFFFFF9FFFFF9FFFFFFF9FFFFF7FFFDFFFFFEFFFFFFF2ECF9DF
          F6FFF4EFF5FF5740D02501C92805D72602E21B00E81A00D92513B46258C2EDE9
          FFFBF9FFFCFBFFFFFFFBFFFFFEFFFFFEFDFFFCFBFFFBFDFFFCFDFFFFFFFCFFFF
          FDFFFBFFFEEEEDFF331BA12607C81A00D41A01DB1B05D0220DBD2F19A1F2E1FF
          FBF0FFFFFDFFFFFAFFFFFCFFFFFBFFFFFDFFFDFFFFFAFFFCFBFFFCFAFFFCFBFF
          FCFAFFFCFBFFFCFAFFFCFBFFFCFAFFFCFBFFFCFAFFFCFBFFFCFAFFFCFBFFFCFD
          FFFCFFFFFEFFFEFFFFFDFFFFFDFFFFFCFFFFFBFFFFFBFFFFFCFFFFFDFFFFFDFF
          FFFFFEFFFFFBFFFFF8FFFFF5FDFFF4F4F7FF5E58CF1C0CBD290FD72101D61C00
          CA2C0FB9655CB2F3F8FFF3FEF4F1F6F7F6EDFFBFABFF1800943619D41300D41B
          00E51300CD2A1BD70D00AD220FA2EFE6FFEDECFFFDFCFFFBFAF6FFFFFCFFFFFC
          FFFFFBFFFEFFFFF8FFFFF6FFFFF9FFFFFCFFFDFEFFFBFFFFFFFFFFFFFFFCFFFF
          F8FFFFFBFFFCFFFFFBFFFBFFFFF6F6FFAD9CFF2F13B22503C52505DA1900D522
          09C730189EEEDEFFF6F3FFF8FAFFFDFFFFFCFBFDFFFAFFFFFAFFFCFCF6FFFFF4
          FBFFF1F5FEFBECEAFFE4D5FF2C0E9D3F20CF1403BE1202CB1D05DB1400D02E06
          E1310BC8765CDEF3E9FFEBF0F9FBFFF4FBFFF9F6F9FDEBE7FFF9F6FFFAFEFFFA
          FFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFDFFFBFEFFFFFFFCFFFFF9FFFF
          FCFFFFFCFFFFFCFFFFFEF9FCFFF6F4FFA597F52F18AA2704CA2200DC1E00DB1E
          02D1290CC06651CFF1F2FFF6FEFDFFFFFBFFFFFCFFFCFFFFFAFFFFFDFFFDFEFF
          FBFEFFFAFFFFFBFFF8FBFFF8FFFEFFFFFBFFFBF8FFFAF9FFFFFFFCFFFFF5F9FF
          EEFAFFFBF4F9FFBCB5FF1E00AD2701D72705D52302CF2601D33114C5756AD2F1
          F0FFF8FBFFF0F4F5FBFEFFF3F4FFE9E4FF5847B02100B32800D72000D12508D3
          2B0ED91801B1271596E3DBFFE8E9FFFBFFFEFDFFFEFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFBFFFFFCFFFFFCFFFFFCFFFFFCFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFEFFFFFAFFFFFBFFFFFFF9FDFFF2FDFFF1FDFFF9FDF9FFFF
          F6FFFFF9FFFFFEFFFAFFFEF4F6FF7365CE331ABE1100C52302E71B01D71B01D7
          1F00E01F00E01F00D91D01D61B00DA1800DA1700D81802D71900D72002D12A07
          C36850D2F6F4FFF8FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1FF28179E2607C621
          00D91B00DB1900DA1902D61901D71B00DB1B00DD1F00D91F00DD2200E82100E9
          1F00E41B00DE1800DA1403D61206D01406D01805D61900D72600E42800D22905
          ABA28DF4F8F8FFF8FFF0FFFFF5FAFCF0FDFFFCF5F8FFF1F2FF655CBD2C0FBE21
          00D91F00E51B00E91B00E71B00DE1B05D01D06CD1D01D61F00D92404D71E00D1
          1E00D92209C5786AE0F2ECFFFFFFF8FFFFEEFFF5FFB09DF42A11B91A01D31904
          DC1400D81F00D7290EBC6B60BCF4F1FFF4F4FFF6F7FFF8FBFFF9FDFFFBFFFFFA
          FFFDFDFFFFFBFEFFFDFDFFFBFDFFFBFCFFFAFDFFFAFDFFFAFCFFFAFAFFFAF9FF
          FBF9FFFAFBFFFBFBFFFAFDFFFBFEFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFF
          FFFAFFFFFBFEFFFAFFFFFAFEFFF8FCFDFFFFF9FFFFF7FFFEFFFFFBFFF8F9FFAA
          A2EF2A0FBD1F00D81B03D31C02D22200D92708BD6E60C0F4F0FFFBFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFAFCFFF4F8FF
          EDF0FF28228D2007C51D00E01C02D81E01D22501D12E13B0E9E5FFF8FBFFFFFE
          FFFFFCFDFFFFF8FFFFF9FBFEFFF8FEFFFAFDFFF8FEFFFAFDFFF8FEFFFAFDFFF8
          FEFFFAFDFFF8FEFFFAFDFFF8FEFFFAFDFFF8FEFFFAFDFFFBFEFFFFFFFCFFFFF9
          FFFFF9FFFFF9FFFFF9FFFFF9FFFFFBFFFFFBFFFFFBFFFFFCFFFFFCFFFFFEFFFF
          FFFFFFFFFDFFFFFAFCFFF1F0FF8076D02705BE2200E11A00D81B01D71F00D42A
          13B5ACA9E7F8FBFFFFF8FFFFFAFFFFFDFFFFFFFFF7FCFAFAFFFCFBFFFBFDFFFF
          FFFAFFFFFBFFFFFFF9FFFFF8FFFDFFFFFEFFFFFFF4F6FFEEEFFDF7EDF1FF432E
          C01900BF3211E41900D71A00E81E04DA2412B16358C0F4EFFFFBF9FFFFFDFFFF
          FFFBFFFFFEFFFFFEFDFFFCFDFFFBFDFFFCFDFFFFFFFCFFFDFCFFFBFEFFEEEAFF
          3319A72605CC1A00D81A00DE1B04D2210DBD2D1A9FF1E3FFF9F3FFFFFFFBFFFF
          F6FFFFF8FFFFF9FFFFFEFBFEFFF8FEFFFAFDFFF8FEFFFAFDFFF8FEFFFAFDFFF8
          FEFFFAFDFFF8FEFFFAFDFFF8FEFFFAFDFFF8FEFFFAFDFFFBFEFFFFFFFCFFFFFB
          FFFFFCFFFFFEFFFEFFFFFDFFFFFDFFFFFCFFFFFCFFFFFCFFFFFDFFFFFEFFFFFE
          FFFFFFFFFDFFFFF4F3FF5D54C82311BC2609D41F00D92100DA2E11C4645FB4EF
          FAFFF3FFFBF1F8FFD8C6FF3D1DB8300CD01200CB2E0EF71200DC1F07DF1904BE
          2C1CAAB6ABFFE6E0FFFBF9FFFBF5FFFFFEFFFFFFFCFFFFF9FFFFF8FFFFFCFFFC
          FFFFFBFFFFFFFEFFFFFBFDFFFFFBFFFFFFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFF
          FBFFFBFFFFF6F6FFAD9CFF2F13B22503C52505DA1900D5220AC6301A9BEEDFFF
          F6F2FFF8F8FFFBFEFFFCFCFCFFFCFFFFFCFFFFFFFBFFFFF5FDFFF2F7FEF9F5F6
          FFF4EAFF9B84F022079D2E15D51000CD1D01D72100DB2100DE2A00D8330EC297
          81FFF3EEFFE4EDF7EFF9F3F8FFFBF8FBFFF6F9FFFAFFFBFBFFF8FDFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFCFFFBFEFFFFFFFCFFFFFBFFFFFCFFFFFCFFFFFCFF
          FFFEF9FCFFF6F4FFA597F52F17AB2703CB2200DC1E00DB1E02D1290BC26651D0
          F1F1FFF6FEFEFFFFFBFFFFFCFFFCFFFFFAFFFFFDFFFDFEFFFBFEFFFAFFFFFBFF
          F8FBFFF8FFFEFFFFFBFFFBF8FFFDFCFFFFFFFFFFFFF7FBFFEDF4FBEEF8FBFFF1
          ECFF614DD51F02B63112D91900CA1F00CF2A0DC8241699E4DEFFF3F1FFFAFCFF
          FAFFFFF1F2FFB4A4FB361AA93009D02904DC1B00C5270FD11D00CE2A13BC827F
          CFF3F7FFF1F2FFFFFEFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FEFFFFF9FFFFFBFFFDFFFBFBFFF4FBFFF4FBFFFBFFFBFFFFF9FFFFFBFFFFFEFF
          FFFFFAEAE9FDDDD3FF2E1BA02004C22203DC1D02D41B01D71F00E01F00E01F00
          D91D01D61B00DA1800DA1700D81802D71900D72002D12A07C36850D2F6F4FFF8
          FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1FF28179E2607C62100D91B00DB1900DA
          1902D61901D71B00DB1B00DD1F00D91F00DD2200E72100E71F00DE1B00D91902
          D61604D31406D01606D01C06DA0F00D12200E83408E9411AD43A239DF3F3FFF1
          F8F5FFFFFCFFFFFBF4F7EEF8FFFFF1F8FF9F9CEB250DAF2805D81F00E11D00E8
          1B00E81D00E01D04D01F05CD1F01D62100DA2505DA1A00CC2408D7230FB6DAD1
          FFF7F5FFFFFFF8FFF7EEFFF4FFB09DF42A11B91802D31705DA1400D72100D92A
          0DBE6D5FBFF4EFFFF4F3FFF6F7FFF8FBFFF9FCFFFBFFFFFCFEFEFDFFFFFDFEFF
          FDFCFFFBFCFFFBFBFFFAFCFFFAFCFFFAFCFFFAFAFFFBF9FFFBF9FFFBFAFFFBFB
          FFFBFBFFFBFCFFFBFDFFFBFEFFFBFEFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFAFEFFF8FBFFFFFFFBFFFFF7FFFEFFFFFBFFF8F9FFAAA2EF2A0FBD1F00D8
          1B02D41C02D22200D92708BD6E60C0F4F0FFFBFBFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFBFCFFF6F7FFEFEFFF2A228D2108
          C41F00DF1E02D71E03CF2503CC2E15ABEBE8FFF8FFFCFFFFFBFFFFF3FFFFEFFF
          FFF2FDFFFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFF
          FAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFBFFFFFFFFF5FFFFF0FFFFF1FFFFF2FFFF
          F2FFFFF4FFFFF5FFFFF8FFFFF9FFFFFBFFFFFCFFFFFEFFFFFFFFFFFFFDFFFFFB
          FBFFF5F4FF685EB82A07C32500E41900D71C02D81C00D12B14B6ACA9E7F8FBFF
          FFF8FFFFFAFFFFFDFFFFFFFEF7FDF8FBFFFCFDFFFEFFFEFFFFFCFFFFFDFFFFFF
          F9FFFFF9FFFDFFFFFEFFFDFFF5FAFFF9EDF7FFECECFF1E09A12000C92908DF15
          00D61A00E52006D6210FA8695EBFF6F0FFFCF9FFFFFEFFFFFDFAFFFEFFFFFFFE
          FFFFFCFDFFFBFDFFFCFDFFFEFFFDFFFDFCFFFBFCFFEEE7FF3316AC2602D21A00
          DE1900E21902D6210CBF2D19A1F1E3FFF9F3FFFFFFF9FFFFF5FFFFF5FFFFF7FD
          FFFBFBFEFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFAFCFF
          FAFCFFFAFCFFFAFCFFFAFCFFFAFCFFFBFEFFFFFFFCFFFFF9FFFFFBFFFFFCFFFF
          FEFFFFFFFFFEFFFFFEFFFFFDFFFFFCFFFFFBFFFFFBFFFFFBFFFFFBFFFDFCFFF6
          F1FF6659CC2410B71B00C92000DC2902E82C0FCA5B5AB6E9F5FFE9F8FFEEF1FF
          31199B2F07C43309E42300E60B00D41E03E21C00CF2C16BC6D63C7E9E4FFFBF6
          FFFDF6FFFFFAFFFFF9FEFFFFFBFFFFF8FDFFF9FDFFFBFFFFFEFFFFFCFFFFF7FF
          FFF7FFFFFEFBFFFFFFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFFFBFFFBFFFFF6F6FF
          AD9CFF2F13B22503C52505DA1900D5220AC6301B99EEE0FFF6F0FFF8F5FFFBFE
          FFFCFDFBFFFFFFFFFEFDFFFFFBFFFFF8F7FCEDF5FCF5FAFAFFDFDBFFF4E7FF31
          1D94270BC22205D72406D52808DD1C00D92A00E43209DD2A0DB79B8DF6EFEFFF
          F3FAFFDEEAECF8FFFFFAFFFFEDF5EBFCFFF7FFFFFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFCFFFBFEFFFFFFFCFFFFFBFFFFFCFFFFFEFFFFFCFFFFFEF9FCFFF6F3FF
          A597F52F17AB2703CB2200DE1E00DC1E02D1290BC26650D1F1F1FFF6FEFEFFFF
          FCFFFFFCFFFCFFFFFAFFFFFDFFFDFFFFFBFEFFFAFFFFFBFFF8FBFFF8FFFEFFFF
          FBFFFDFBFFFFFCFFFFFDFFFFFFF9FFFFF2F7FCEDF2F5FDF1EFFFCABEFF200DA0
          2E13CE1900CA2102D31F04C52613B09387F7EFE8FFFAF8FFF2F7FFF2F0FF6148
          C03713C32C04D51E00D32109CB1D07C41E02CA2613AAE7EEFFE7F5F1FDFDFFFA
          F5FEFFFEFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFEFFFFFAFFFFFBFF
          FBFFFEFAFFF9FAFFFBFBFFFEFFFEFFFFFEFFFFFDFFFAF0F0FFFEFEFAF5FFF5EF
          FF574CAD2E19BC1F04CA1D04D01B01D71F00E01F00E01F00D91D01D61B00DA18
          00DA1700D81802D71900D72002D12A07C36850D2F6F4FFF8FFF6FDFEFAFFFFFE
          F8FDFEF1F4FFE8E1FF28179E2607C62100D91B00DB1900DA1902D61901D71B00
          DB1B00DD1F00D91F00DA2200E12100DD1F04D01D07CB1B06CD1905D01802D618
          00DA1100D52807EC1900DE2700DF2200BD261098EDECFFF2F6FFFEF9FFFFFEFF
          F1F3EDFAFFFEEDF6FFD2D1FF2611AA2605D21F00DB1D00E21D00E51D00DE1F05
          CF2106CC2200DA2200DE1900D22B0EDF1400BC291AABEDEDFFFBFCFFFEF5F2FF
          F7FBFFF2FFB09DF42811BA1801D51706D91400D52100D92C0DBC6F60BBF6F2FF
          F8F5FFFAF8FFFBFDFFFCFEFEFDFFFBFEFFF8FFFFF9FFFFFBFFFFFEFDFFFFFDFF
          FFFBFFFFFBFFFFFBFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFEFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFEFDFFFCFDFFFBFDFFF9FDFFF8FDFFF8FDFFFBFBFEFFF8FBFF
          FFFFFBFFFEF9FFFEFFFFFBFFF8F9FFAAA2EF2A0EBF1F00D81B02D41C01D32200
          D92708BD6E5FC1F4F0FFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFCFFF8F7FFF1EEFF2C228D2307C42100DF1E02D720
          02CF2504CB2E16AAEBE8FFF8FFFAFFFFF8FFFFF2FFFFECFFFFF0FFFFF9FBFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFDFFFBFDFFF2FFFFEEFFFFF0FFFFF0FFFFF2FDFFF4FFFFF5FD
          FFF8FDFFF9FDFFFBFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFBFBFFF6F5FF5F54B0
          2D09C72600E61C00DC1C01DA1C00D22911B5ACA8E9F8FBFFFFF8FFFFFAFFFFFD
          FFFFFFFEF7FDF8FBFFFCFDFFFFFFFEFFFFFFFFFFFFFCFFFFFBFFFFFCFFFDFFFF
          FDFFF6FAF5F0F6FBF1F6FFE2DEFF2D18B52609D41600D32204E51A00DD1D04CA
          1E0E9C7C71CDF1EAFFF8F1FEFFFDFEFFFBF8FFFEFFFFFEFFFFFFFEFDFFFCFDFF
          FBFBFFFEFDFEFFFDFCFFFBFAFFF0E4FF3313B22600D71A00E41900E81900DB1F
          0AC52B18A5EFE0FFF7F1FFFFFFFEFFFFF7FFFFF8FFFFF9FDFFFBFBFFFEFBFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFDFFFEFDFFFCFFFFFBFFFFFCFFFFFCFFFFFCFDFFFCFFFFFEFD
          FFFFFDFFFFFDFDFFFFFCFFFFFBFFFFFBFFFFFAFFFFFAFFF8EFFF6F5ED12A11B9
          1D00C72600E02300E21A00BE5854C5E4EBFFE5E9FF6A62C13214B92000C42D06
          DE1900D31A00DE220BD9210AB83828A5F1EDFFF4F4FFFFF8FFFFF9FFFFF7FFFF
          FEFFFFFFF8FBFFF8FAFFFFFAFFFEFDFFF7FFFFF4FFFFF4FFFFF8FFFFFEFBFFFF
          FFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFFFBFFFBFFFFF6F6FFAD9CFF2F13B22503
          C52505DA1900D5220BC5301D96EEE1FFF6EFFFF8F4FFFBFDFFFCFDF9FFFFF9FF
          FFF8FCFAF2FFFFF9F9FCF3FAFDFBF9FBFFFAF8FFEFEAFFA79AF01E04A42608CB
          270ACB1B00C52705DC2100DC2300DC2401CD331DBC9386F9E7E6FFF1F6FFF2F7
          FFF2F7F8FBFFFAFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFCFFFBFEFF
          FFFFFCFFFFFBFFFFFEFFFFFEFFFFFCFFFFFFF9FCFFF6F3FFA597F52F17AB2703
          CB2200DE1E00DC1E01D2290AC3664FD3F1F1FFF6FDFFFFFFFEFFFFFEFFFDFFFF
          FBFFFFFEFFFDFFFFFBFEFFFAFFFFFBFFF8FBFFF8FFFEFFFFFBFFFAF9FFFFFDFF
          FFFDFFFEFAF9FFFFF8FFFFF9F8F8FEF3F3FFEDEBFF5046B81B04B22508D3290C
          D71C01C62E16CE3624B3F3E8FFF0EAFFF5F3FFF4E9FF3614AE2E03CE1C00CB22
          01D8270FD91601C12B15CC281D9BECFAFFF8FFF2FFFDFFFFFAFFFFFDFFFFFFFF
          FFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFEFFFFFBFFFFFBFFFBFFFFF8FFFFF8FE
          FFFAFFFFFFFFFBFFFFF8FFFFF9FFF6F4FFFCFFFFFAFFF7F2FFC6C0FF2B1BA423
          0EC11D06CC1B01D71F00E01F00E01F00D91D01D61B00DA1800DA1700D81802D7
          1900D72002D12A07C36850D2F6F4FFF8FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1
          FF28179E2607C62100D91B00DB1900DA1902D61901D71B00DB1B00DD1F00D91F
          00D92200DB2200D72106CB1F08C81D05CF1B02D61B00DD1B00E11700DA2000E2
          2800EA1D00D22000BD3320ABD8D9FFF3F7FFFCF5FFFFFDFFFFFFFCF8FFFCF3FD
          FFE7E8FF2D19AE1F00C81F01D61D00DD1D00E11F00DB2106CC2205CC2400DE24
          00E21500D12E12E11701B82D22A0EAEEFFFBFFFAFFFCFFFFF6FFFFF2FFB09DF4
          2811BA1701D51506D91401D42100D92C0DBC7160BBF8F2FFFAF5FFFBF9FFFDFD
          FFFEFFFBFFFFF8FFFFF6FFFFF8FFFFF9FFFFFCFFFFFEFFFFFFFFFFFEFDFFFEFD
          FFFCFFFFF9FFFFF9FFFFFBFFFFFBFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE
          FFFFFCFFFFFBFFFFF8FFFFF7FFFFF7FFFFF9FBFEFFF8FBFFFFFFFBFFFEF9FFFE
          FFFFFBFFF8F9FFAAA2EF2A0EBF1F00D91B02D41C01D32200D92708BD6E5FC1F4
          F0FFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFDFCFFFAF7FFF3EFFF2E218D2506C52300E02001D82001D22501CF2E14AE
          E9E6FFF6FDFFFDFFFEFFFFF7FFFFF1FFFFF4FFFFF9FFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFD
          FFFBFDFFF7FBFFF5FDFFF5FBFFF7FDFFF8FDFFF9FDFFFBFDFFFCFDFFFEFDFFFF
          FFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFBFBFFF6F5FF6257B32E0AC82400E42203
          E21900D71E00D42810B4ACA8E9F8FBFFFFF8FFFFFAFFFFFDFFFFFFFEF7FDF8FB
          FFFEFDFEFFFFFEFFFFFFFBFFFFF8FFFFFBFFFFFEFFFDFFFFFDFFFBFFFFF6FAFF
          EFF0FF8C86EB2D18BB2005D11B00DD1B00E21E03DD2109C525169DAA9FF5F6EE
          FFFDF5FFFFFEFFFFFFFCFFFDFFFFFEFFFFFFFEFDFFFCFDFFFBFBFFFCFDFFFFFD
          FDFFFBFCFFF0E6FF3314AF2600D41A00E11900E61900DA1F0AC52B17A6EDE0FF
          F6F1FFFFFEFFFDFEFAFFFFFBFBFFFCFBFFFCFDFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFD
          FFFEFDFFFFFBFFFFFDFFFFFBFFFFFDFFFEFDFFFCFDFFFCFDFFFCFDFFFEFDFFFF
          FFFEFFFFFEFFFFFDFFFFFCFFFFFBFFFAF0FF6A56CD2D10BA2701CF2D06E41A00
          D41900C0635CE2DBDBFF8E85FD220FA23715D4310ADB1700BF2E14DC1F06DA13
          00BA382BABE3DBFFF2F0FFFFFAFFFFF9FFFCEEF9FBF3F4FFFFFBFDFFF9F8FFFB
          F6FFFFF6FFFFFAFFF8FFFFF5FFFFF7FFFFF9FFFFFEFBFFFFFFFFFFFFFFFCFFFF
          F8FFFFFBFFFCFFFFFBFFFBFFFFF6F6FFAD9CFF2F13B22503C52505DA1900D522
          0CC3301E93EEE1FFF6EDFFF8F3FFFBFCFFFAFEF8FFFFF5FFFFF4FFFFF9F9F6F2
          FFFFFEFFFFFFECEEEFFBFEFFF2F4FFF1ECFF7A69E21B02A62006B82003C42202
          D31D00D71400CF2B0EDF240AC81D08AA7464E1DED5FFF4F0FFF9F8FFFFFFFFFF
          FFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFCFFFBFEFFFFFFFCFFFFFBFFFF
          FEFFFFFEFFFFFEFFFFFFF9FCFFF6F3FFA597F52F17AB2703CB2200DE1E00DC1E
          01D2290AC5664ED4F1F0FFF6FDFFFFFFFEFFFFFEFFFDFFFFFBFFFFFEFFFDFFFF
          FBFEFFFAFFFFFBFFF8FBFFF8FFFEFFFFFCFFF9F9FFFFFEFFFFFEFFFCF7F9FFFA
          FBFFFEFFFDFDFDF8FBFFECF1FFACAAFF1806A52309CB1D05C91C02CA250AD624
          0CB2C3B6FFEFE7FFF6EFFFB7A5FF2C05B52E00D82A01DE2704E01A00D6230DD1
          1001A28988EAE8F8FFFAFFF0FDF5FCFFF9FFFFFDFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFEFFFFFDFFFFFCFFFAFDFFF8FDFFF8FBFFFAFDFFFFFFF4FF
          FFEEFFFFF4FFFEFBFFEFFBFEEEFFFBFAFFF1F1FF6E64D62D1DBE1D08C81B01D7
          1F00E01F00E01F00D91D01D61B00DA1800DA1700D81802D71900D72002D12A07
          C36850D2F6F4FFF8FFF6FDFEFAFFFFFEF8FDFEF1F4FFE8E1FF28179E2607C621
          00D91B00DB1900DA1902D61901D71B00DB1B00DD1F00D91F00D72200D92201D4
          2105CD1F05CF1F00DA1D00E21D00E71D00E52200E11100CB2F0AEA2300D13719
          D02C1EA2D3DBFFEFFAFFFFFAFFFDF5FCFFFFFEF8FEFDF3FDFFECEDFF2D19AE21
          03C82103D01F01D61F00DA1F01D62207C92404CD2800E22600E82100E01D02CE
          2411BE746DDCF0F8FFF1F7E6FFF9FFFFF1FFFFF0FFB09DF22610BC1701D51507
          D71401D42100D92E0CBE725FBCFBF0FFFDF3FFFFF7FFFFFBFFFFFDFEFFFFFBFF
          FFF7FFFFF9FFFFFBFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFFFCFFFFF7FFFFF5
          FFFFF7FFFFF9FFFFFCFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFEFFFFFF
          FCFFFFFBFFFFF9FFFFFCFDFDFFF8FBFFFFFFFBFFFEF9FFFEFFFFFBFFF8F9FFAA
          A2EF2A0EBF1F00D91B02D41C01D32200DA2708BF6E5FC1F4F0FFFBFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFAF7FF
          F3F0FF2E218D2506C72300E32000DE2000D82500D82E0FB8E9E1FFF6F7FFFDF9
          FFFFF8FFFFFCFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFBFEFFFAFDFF
          FBFDFFFAFDFFFBFDFFFBFDFFFBFCFFFBFDFFFDFCFFFDFDFFFFFDFFFFFEFFFFFE
          FFFFFEFFFFFEFFFBFBFFF6F5FF695EBB2B06C61E00E02707E81700D62302D927
          0FB3ACA8E9F8FBFFFFF8FFFFFAFFFFFDFFFFFFFEF7FDF8FBFFFEFFFCFFFFFDFF
          FFFFF7FFFFF4FFFFFBFFFEFFFFFCFFFFFCFFFBFDFFF4F7FFC5C2FF31289C1D08
          B11A00CF2006E61000D82006DC220CBF3122A2DDD2FFFBF4FFFFF9FFFFFEFEFF
          FEFCFFFDFFFFFDFFFFFFFFFDFFFCFDFFFBFBFFFCFBFFFFFBFFFFFBFFFBF0EDFF
          331BA12607C81A00D71900DE1903D31F0CBF2919A2EDE1FFF4F1FFFDFFFFFBFE
          FCFDFFFEFAFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFBFBFFFAFAFF
          FBFBFFFAFDFFFBFEFFFBFFFFFBFFFCFBFFF9FDFFF8FDFFF8FFFFF9FFFFF9FFFF
          FBFFFFFCFFFFFFFAF2FF694FCB310DBF2A04CE2D0ADD1900CB250FCC5A4FEB91
          85FF2711C32000C51600C22605CC1E0CB32112BA1500CA2C1AC5CACBFFEFF4FF
          F9F3FFFFF1FFFFF2FDFFFFFBFFFFF5F4F4E6FBFFFCF6FFFFF3FFFFF3FFFFF8FE
          FFFFFEFFFFFFFCFFFFFCFFFFFFFBFFFFFFFFFFFFFFFCFFFFF8FFFFFBFFFCFFFF
          FBFFFBFFFFF6F6FFAD9CFF2F13B22503C52505DA1900D5220CC3302090EEE2FF
          F6EDFFF8F1FFFBFCFFFAFFF6FFFFF2FFFFF0FFFFF8F5F1F0FFFDFFFFFEFFF6F9
          F7EDF4EDFBFFF9F2F7FFE4E0FF6154C8270DB52D0CD31700C92106D81906C718
          07C31000BD3518DF2604C34828C7C8B1FFFBEDFFF5F1F6FFFFF2FFFFFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFCFFFBFEFFFFFFFEFFFFFCFFFFFEFFFFFEFFFFFEFF
          FFFFF9FCFFF6F3FFA597F52F17AB2703CB2200DE1E00DC1E01D32909C6664ED6
          F1F0FFF6FCFFFFFFFEFFFFFEFFFDFFFFFBFFFFFEFFFDFFFFFBFEFFFAFFFFFBFF
          F8FBFFF9FFFDFFFFFBFFFDFEFFFEFDFFFFFEFFFFF9FCFCEFFDFFFAFFF8F9F5F8
          FFFFE9F4FFE8EAFF4336C71C08BF1400BF1C03CF1C00D92E15CB5849A5EBDFFF
          F6E6FF5337B22A00BC2700D72C05E31900DA1200DC250CD8221DA2E0E7FFF1FE
          FFF2FAEFFFF7FFFFF8FFFFFCFFFFFEFFFFFEFFFFFEFFFFFDFFFFFEFFFFFDFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFFFEFFFFFDFFFBFDFFFAFCFFFAFAFFFBFEFFFFFFF2FFFFEEFFFFF3FFF7F5
          FFF9FFFFF9FFFDFCFFE4E7FFECE9FF392FA7210FBA1F04D01F00DB2100DE1F00
          D91D01D71900DB1800DB1500D91601D91900D52002CF2A08C06A52D0F8F5FFFA
          FFF5FDFEFCFDFFFFF8FDFFF0F4FFE8E1FF28179E2408C52100D71B00DA1901D9
          1903D41902D61B00DB1D00DD1F00DA2100D72101D62102D31F03D21F02D41D00
          DB1D00E11D00E51F00E41F00D92906E01B00D42A01D82000BF2C16A4EAEEFFEF
          F9FFFFFBFFF8F1F4FFFFFBFAFFFCE6F2F8ECEDFF270FAB2C08D82201D42101D6
          1F00DA2101D62205CC2403D02600E22400E72C06EC1900C31F129EE8E8FFEFF8
          FFFFFFF8FFF5FFFFF2FFFFF1FFAE9EF12811BA1800D61905DA1400D71D00DB2A
          0BC2725BC3FDEDFFFFF3FFFFF8FFFFFBFFFFFCFFFFFBFFFFFCFFFFFFFCFFFFFC
          FFFEFFFFFCFFFFFCFFFFFCFFFFFDFFFFFEFFFFFFF8FFFFF5FFFFF8FFFFF9FFFF
          FBFFFFFCFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFDFFFF
          FDFFFBFEFFF8FCFDFFFFF8FFFFF6FFFDFFFFFAFFF8F9FFA8A2EF280DC11B00DC
          1902D61802D22101D4270ABB6E5DC6F4EDFFFDF9FFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFDFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFEFFFFFCFFFFFBFFFFFBFFFFFC
          FFFFFEFFFEFFFFFDFFFFFDFFFFFCFFFFFCFFFFFAFFFBF6FFF4EEFF30208F2705
          C82400E62000DE2000D92700D8300FB7EBE2FFF6F8FFFDF9FFFFF8FFFFFBFFFF
          FDFFFFFDFFFFFEFFFFFDFFFFFEFFFFFDFFFFFEFFFFFDFFFFFEFFFFFDFFFFFEFF
          FFFDFFFFFEFFFFFDFFFFFEFFFFFDFFFFFDFFFDFAFFFBFAFFFBFBFFFBFBFFFBFC
          FFFBFDFFFDFCFFFDFCFFFFFBFFFFFCFFFFFCFFFFFDFFFFFEFFFFFFFFFFFFFEFD
          FCFFF1F0FF6F64C12704C01C00D92C0AEA1900D42703DF280EB6ACA9E7F8FBFF
          FFF7FFFFF8FFFFFAFFFFFDFFFDFEF5FFFFF9FFFDFFFFFEFFFFFFF4FFFFF1FFFF
          F7FFFFFEFDFCFFFAF9FFEAEBFFEAE7FF756CD4200FA02913CA1C02D21700DC1C
          03DD2004C9230AAE38259CF3E7FFFAF5FFFDF8FFFFFDFDFFFDFAFFFEFFFFFDFF
          FFFEFFFFFFFFFDFFFEFDFFFEFDFFFEFDFFFCFDFFF9F2EDFF341AA32607C81A00
          D11903D71906CF210DBE2D19A2F1E1FFF7F3FFFFFFFCFFFEFAFFFFFCFBFFF9FB
          FFFBFFFFFFFFFEFFFFFDFFFFFEFFFFFDFFFFFEFFFFFDFFFFFEFFFFFDFFFFFEFF
          FFFDFFFFFEFFFFFDFFFFFEFFFFFDFFFFFDFFFDFCFFFBFCFFFBFCFFFBFDFFFDFD
          FFFDFEFFFFFEFFFFFFFFFFFFFCFFFFF9FFFFF8FFFFF7FFFFF7FFFFF8FFFFF9FA
          F3FF6D55D32F0FC12505C22307CC1300C62510D73423DE2211CD2308D41E00D3
          2906D92607C82C18B714059C2F1BC1978BFFE4EAFFFAFFFCF7F0FFFFF2FFFFFC
          FFFFF8EFFFFFF4FFFFF5FBFFFFF6FFFFF4FFFFF4FEFFFAFCFFFDFCFFFFFEFFFF
          FFFCFDFFFEFBFFFEFDFFFFFFFFFFFFFFFCFFFFFEFFFDFFFFFDFFFBFFFFF6F5FF
          AD9AFF2F11B62300CC2502DF1700D6220CC3301D96EEE1FFF6EEFFF6F4FFFBFE
          FFFAFFF5FFFFF2FFFFF3FCFDF4FFFFFFFFFDFFF2EEF4FFFFFFFDFFFBEBF2E3FA
          FFFCF2F6FFE5E0FF442DB12B0DBA2303C6280BD21E0BC61C0BC7280EDD1200CA
          2500DB2C08CE3315AE927EE8F4ECFFF8F6FFFBF8FFFDFAFFFDFAFFFDFBFFFDFC
          FFFDFEFFFFFEFFFFFFFFFFFFFEFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFFFFFEFFFFFEFFFFFFFEFFFFFCFFFEFFFFFEFFFFFFFEFDFFFFF8FCFFF4F3FF
          A397F72F16AC2503CC2200DF1E00DE1E00D52907CA644DD8F1F1FFF4FFFDFDFF
          FCFFFFFEFFFBFFFFFAFFFFFFFEFFFFFCFDFFFEFBFFFEFDFFFBFDFFFCFDFDFFFD
          FCFFFDFEFFF2F2F2FFFFFCFFFEFFFFF7FFFFFAFFFBFAF6FBFFFBEDF7FEEDF2FF
          8079E82918B5230DC41B01D01A00DE1E00CB271296E7D6FFC4AEFF2305A44115
          E42300DB1C00D52300E22701ED1700BF8080E4D9E5FFF0FEFAFDFFF7FFFAFFFF
          F6FFFFFBFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFFFEFFFFFDFF
          FFFDFFFDFDFFFDFEFFFDFFFEFFFFF8FFFFF7FFFFFBECE9EBFFFCFFFFFCFFEDF0
          F4FAFEFFEFF3FFEDEBFF2719A12D15CF1400C62601DF1E00D61F01DC1400DA1E
          09E81100DC1401DA1700D42005CB2A0CB96C55C9FAF7FFFCFFF4FDFCFEFBFDFF
          F6FBFFEEF3FFE7E1FF26189C2409C41F02D41B01D71902D61903D31B02D41D00
          DA1F00DD2100DA2100D71F02D31D03D31B01D71B01D71904D21904D21B00D91D
          00DA1C00D42501DD2500DE2700DE420BEE2D03AEACA0E8FAFAFFFFFEFFFFFFF9
          FDFFF4FAFFF7EEFCFAEDEDFF2F0EBC2700DF2400E02200DE2100DD1F00DA2101
          D62101D62100DD2200E02100DF2C0FC35755A7EDF3FFF9F9FFFFFAFFFFFAFFFE
          F3FFFAF5FFABA0F02B11B92000D81C01E01600DE1800E02309C7745AD0FDE9FF
          F5EAFFFFFAFFFFFCFFFFF9FFFCEAFFFFF5FFFFFCFFFFFFFCFFFEFFFFFCFFFFFA
          FFFFFAFFFFFCFFFFFDFFFFFFFEFFFFFBFFFFFBFFFFFBFFFFF9FFFFF8FFFFF5FF
          FFF4FFFFF3FFFFF4FFFFF7FFFEF6FFFEFFFFFBFFFFF9FFFFF6FFFAFDFFF6FDFA
          FFFFF2FFFFF3FFFCFFFFF8FFF8F9FFA9A5F12006C41D00EA1607DB1003CB1B05
          C9240BB36A54CAF8E9FFFFF6FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFBFFFFFAFFFFF9FF
          FFFAFFFFFBFFFFFEFFFFFFFBFFFFF7FFFFF4FFFFF2FFFFF7FFFFFCFFFDFFFFFA
          FFFFF4FFFFF8FFFFF6FFFFF6FFFFF2FFF8ECFF331E922803CB2600E62300DB23
          00D22D03D42F11AAE3E0FFFBFFFBF8F7F3FFFFFCFFFFF9FFFBF4FFFDFFFFFDFF
          FFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFC
          FFFFFDFFFFFCFFFFFDFFFAF4FFFFFBFFF6F5F9F7F8F6FFFFFBFEFFF6FBFCF3FC
          FBF7FFFEFFFFFCFFFFFCFFFFFCFFFFFDFFFFFFFCFFFFF8FFFEFFF2F3FF6C61BD
          2909BC2600DA2300D82200DA2400DE2F0EBDABA6E3FAFCFFFFF5FFFFF2FFFFF5
          FFFFF5FFFFFFF4FFFFF0FFFFFCFFFFFCFFFFF2FBFFE8F7FFE8F8FFF8F4FDFFEF
          F3FFEAE7FF5E52C8311DBC1B02BE1200C52105DB1600D22206CE3A1BC41E028B
          CCB7FFF0E5FFF8F4FFF9F9FFF9F9F9FFFFFCFFFFFFFFFEFFFFFDFFFFFDFFFFFD
          FFFFFFFFFFFFFCFFFFFCFFFEFFF5E6FF3612B22801D31800D11905D41B05CF24
          0BBF3015A1EAD3FFFFF8FFFFFFF2FDF6EDFFFFF5FFFFEDFAFFEBFFFFFCFFFDFF
          FFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFCFFFFFDFFFFFC
          FFFFFDFFFFFCFFFFFFFFFFFFF8FFFFF7F2F5ECFFFDFCFFFCFFFFF7FFFFF8FFFF
          F8FFFFF9FFFFFBFFFFFEFEFFFFF9FFFFF7FFFFF7FFFFF8FAF4FF6553CE1E0AB1
          1E0DB41B0ABF210BDB1700DC1700DF1600D81E08D21D07CB1C00C72D0BCE2F10
          BF2B12A2B0A3FFE6E3FFFAFBFFFDFFFEFFFDFFFFFCFFFFFEFFFFFFFCFFFFFBFF
          FFFCFDFFFFFBFFFFFBFFFFFBFFFFFDFEFFFFFEFFFFFFFFFFFFFCFBFFF8FBFFF8
          FDFFFFFFFDFFFFFBFFFFFBFFFFFEFFFFFFFEFBFFFFF6F2FFAD97FF2F0DBF2300
          D82300EB1700D9200BC62E17A1EBDDFFF3F2FFF2FBFFF8FFF9F7FFF1FBFFF8FC
          FFFAFFFFFCFFFFFFFFFDFFFFFCFFFFFBFFFFFEFFFFFFFBFDFFF8FAFFFCF2F3FF
          E8DDFF8F78EC3213B02200B92100C7290ADB1200C92004DA1F04D6260FD61100
          B62310BD2D1DBE4B3DC0DED3FFF2E9FFF8F1FFF7F3FFF3F0FFFBFBFFFDFDFFF1
          F2F0FFFFF9FFFFF7FFFFF5FFFFF5FFFFF7FFFFF7FFFFF8FFFFFBFFFFFEFFFFFE
          FFFEFDFFFEFFFFF8FFFFFDFFF7F6F8FBFFFFF6FCFFF3F4FFA297F82D15AF2501
          CF2200E21E00DF2000D82A03D0644ADDEDF4FFF1FFF6F8FFF9FBFFFFFFF9FFFF
          F9FFFFFFF9FFFFF4FFFFF8FFFFFBFFFFFEFDFFFFFDFDFFFBFEFFFBFEFFFDFFFF
          FFFFF9FFFFFCFFFBFFFFFAFFFFFEFFFFFFFBFBFFF7F2F9FFE7E5FF4D41B12F18
          C01400C52602E91A00DC2003CE3B21DF3015D62103D02700E52600E92300DF23
          00D92E05DD260BAFE2E3FFECFAF8FAFFEDF8FEE5FFF9FFFFF7FFFFFCFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFFFEFFFFFDFFFFFCFFFFFDFFFFFF
          FCFFFFF8FFFFF7FFFFF9FDFFFFFDFCFFEBEBF7F7F8FFFBFEFFFBFFFEEAF2E8F4
          F6FFD0C5FF1F09AF3716DC2E0BDE2504D70700C13118F40000C21100D91402D7
          1701D12006C82C0BB96C54CAFBF4FFFCFDFBFDFAFFFDFAFFF6F9FFF0F1FFE7DF
          FF26169F2408C52101D61D01D71902D61B03D31B03D31F00DA2100DB2200DA22
          00D72102D31F01D61D00DD1B00DB1905D01906CF1903D41B01D71D00D42703DF
          2700E12800E02C00DB2F03B4B0A3E7F9FBFFFFFFFFFDFFF6F5FDECF5FFF4F4FF
          FEE2E2FF3612C22200DA2600E02200DD2100DD1F00DB1F00DB1F00DA1F00DA21
          00DA2A01DE2D12B6A8ABDEF6FFFFFCF7FFFFF7FFFCF4FEFFFCFFF7F8FFA9A3EA
          2D12B52100D52001DE1600DC1600DD200BC5725DD1FAEBFFF8F5FFFCFEFFF5F3
          F3FFFAFFFCEDFFFFF5FFFFFAFDFFFEF6FFFDF8FEFCFCFAF9FFF8F8FFF7FBFFF8
          FCFDFCFBFDFCFBFDFCFCFCFAFCFCFAFEF9F8FFF8F8FFF5F8FFF4FBFFF5F9FFF3
          FAFFF4F9FFF4FAFBF7FCFAFAFFFCFFFFFDFFF8FEFFF4FDFAFFFFF1FFFFF3FFFB
          FFFFF7FFF8FAFFA9A5F0240BC91300E20C00D11209CB2616CF2C17B96B56D0F3
          E3FFF8F3FFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFD
          FCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFAFFFEF7FFFEF7FFFEF7FFFCF8FFFCFB
          FFFAFDFBFAFEF8FAFFF5FFFFF8FFFFF9FDFBFAFFFBFFFFF7FFFFF4FFFFF8FFFF
          F7FFFFF6FFFFF2FFF6ECFF311E922803CB2400E42202D72103CE2903CD2E13A9
          F3F2FFF8FFFCF9FBFCFFFEFFFFFDFCFFFFFEFCFBFDFCFBFDFCFBFFFCFBFDFCFB
          FFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFA
          FAFFF8F6FFFDFCFFFDFEFFFAFDFBF7FAF1F7FBF0FFFFF8FFFFF9FFFFFEFFFEFF
          FFFDFFFFFDFFFFFEFFFFFFFCFFFFF9FFFEFFF1F3FF6963BC270AB92600D62100
          D32200D72400DB2D0FBCA6A5DDF6FDFFFDF6FFFFF3FFFFF5FFFFF3FBFFFFF0FF
          FFEBF3EFEAFFFBFCFFFFFCFBFFFCF6FFFFEDF4FFE2E6FFDAD7FF2F24A2321FC2
          2309CB1700CE2B0DE8290BE61100CD2209C52003966B52C0EBD8FFF1E8FFF5F3
          FFFAFDFFFBFFFEF6FDF6FDFFFEFDFFFFFFFCFFFFFBFFFFFCFFFFFEFFFFFFFBFF
          FFFCFFFCFFF5E4FF3410B62600D61801CF1707D11B05CF240AC23E21B4FAE1FF
          FFF4FFFFFBF2FFF6F9FFFEFFF8FFEEF3FFE9FAFEF9FCFBFDFCFBFFFCFBFDFCFB
          FFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFA
          FDFBF3FCEFFBFFF5FDFFF9FFFFFFFFFBFFFFF8FFFFF5FFFFF8FFFFF9FFFFFBFF
          FFFEFEFFFFFBFFFFF9FFFFF9FFFFFCFAF2FF6556D62512BF2414C01706C11500
          D30C00D61800E71D04E81600D0240DD42003CB2605C1300EB26E56CCF0EAFFFA
          FAFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFCFBFFF7FBFFF7FDFFFFFFFCFFFFFA
          FFFFFBFFFFFFFBFFFFF8FBFFFEF6F2FFAD99FF2F0EBD2100DA2300EB1500D520
          0BC52C16A4EBDBFFF3F4FFF2FEFFF6FFF5F7FFF1FBFFFCFCFEFEFFFFFFFFFFFF
          FFFDFFFFFCFFFFFAFFFFFBFFFFFFFEFFFFF8EFF3E7FDFFFFF0EBFFF6EAFFAA96
          FF2D13A12C0EBB2304C53113E01E02D70B00C61F08DC1B04D81E08DC0D00CB17
          02BC180689402E919283DEE4DAFFF3EBFFF0EBFFF4F2FFF8F8FFF9FAFFF8FBFF
          F9FBFCFAFBF9FAFBF9FEFCFBFFFEFEFFFEFFFDF8F9FFFDFCFFFFFEFFFEFFFFFC
          FFFFFCFFFEFDFFFBFFFFF6FCFFF3F3FFA297F82D16AE2503CC2200DE1E01DA20
          01D22A03D0644ADDEDF5FFEFFFF5F6FFF9FAFFFFFFF8FFFFF8FFFFFFF8FFFFF1
          FFFFF7FFFFFBFFFFFFFDFEFFFDFEFFFBFEFFFBFEFFFBFFFFFFFFF9FFFFF9FFFD
          FFFFFBFFFFFDFFFFFFFCFFFFF1FBFFFBF0F2FFA49BF11D069E2C0DD41C00DB21
          00EB1400DD2005E41A02D81600D41D00DE1B00DC2000D82905D32F0CC8826BEF
          F3F3FFF8FFF5FDFFE9FFFFECFFF6FFFFF4FFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFFFFFFFEFFFFFCFFFFFBFFFFFEFFFFFFF9FFFFF2FDFFF0FD
          FFF4FDFFFFF9F6FFFBF8FFF7F5FFF5F7FFFBFFFFF9FEFCF3F4FFEAE2FF4130C1
          1900AF2404C72305CA2508D31000C82C19EA1304D11406D01704CD2006C82A09
          BE6C4ED5FAEDFFFCF6FFFFF6FFFFF8FFF9F7FFF3EEFFEADCFF2A13A32806C922
          00DA1F00DA1B00D91D02D41D02D41F00D92100DA2200D72400D62401D42200D9
          2100E11F00E01D01D71B02D41900DA1B00DB1C00D92704E12000DC2A00E02200
          CB3718B5BEC1F4F0FCFCFDFFFFFFFEFDF6FAF4F8FFFCF4FFFFD9DAFF3819BC24
          00CF2401D32201D42100D71F00DA1D00DD1D00DD1D00DA2101D42702CE371FB3
          E8EBFFF8FFFFFBF5FFFFF9FFFEF9FAFFFFFEF7FDFFA9A7E22D16AE2103CE2005
          D71700D41805D01E12B8635ABBEDECFFF4FEFFF6FFF7F0FDEFFAFFFCF9F9FFFA
          FBFFFBFFFBFAFFF4FAFFF4F8FFF7F6FFFEF4FFFFF3FFFCF3FFFEF6FFFFF6FDFF
          F6FDFFF4FDFFF4FDFFF3FEFFF3FEFFF3FEFFF3FEFFEFFAFEF6FFFFF6FFFBF8FF
          F5FAFFF0FBFFEDFAFFF0F8FFFFF6FBFCFFFFF5FFFFF6FFFBFFFFF7FFF8FAFFA9
          A7ED250FC51500DD1005D10F08C31304B91604A36450CBF3E7FFF4F8FFF6FFFC
          F6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FF
          FEF6FFFCF6FFFEF6FFFFF8FEFFF8FEFFF8FEFFF6FFFFF6FEFFF6FDFFF6FCFFF6
          FBFFF5F8FFF0F2FDFAFDFFFDFFFFFFFFFEFFFFFCFFFFFEFFFAFCFFFCFFFBF7FF
          F3EFFF2E218D2506C72100E01E04D41E04CC2507D22911B1E8EAFFEFF6FFE3E5
          FFF8F5FFE9E8FFF8FBFFF8FFFFF6FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6
          FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6FFFFF6FBFFF1F7FF
          F4FBFFF6FDFFF4FAFFF8FFFFFAFFFEEEF5F2FBFFFEFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFEFBFCFFEDF4FF6564BA240CB82201D41E03CF1D04D01F00D228
          13B5A7AEE5EFFFFFF6F9FFFAF7FFFDFAFFF7F8F4FDFFEDFDFFEDFAFFFEF5F8FF
          E2E3FFE9E8FFEFEBFFD3CAFF8071EA3220B32D16C4250BCD1100C61E00DB1C00
          DC1200D21C00D9270CC73F26A6C8B5FFF6EBFFF5F2FFF8FBFFF9FFFDFBFFF8F5
          FDF2FDFFFCFDFFFFFFFCFFFFFBFFFFFBFFFFFEFFFFFFFCFFFFFCFFFFFFF2E8FF
          3114B12203D01504CA1508CE1606CF1F0AC51D05A1EBD4FFFBF1FFFBF5FFFDF4
          FFFAF5FFEFF8FFF1FFFFF4FFFFF6FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6
          FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6FFFCF6FFFEF6FFFEF4FFFFEAF4FB
          F4FAFFEDF0FFF6F6FFFBFBFFFDFEFFFFFFFCFFFFF9FFFFF8FFFFF9FFFFFCFFFE
          FFFFFDFFFFFCFFF8EEFF5B47D62107C92407D81A00D41A02D81500D41B05DA17
          00D91900DE1300D13410E02C0EBB331E98F3E7FFD3D2F4FAFCFFFDFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFCFBFFF9FBFFF9FDFFFFFFFDFFFFFAFFFFFCFFFFFFF7FF
          FFF2FBFFF8F4F7FFAB9DFF2D14B22100CF2302DF1502CB2010BC2C18A1EBDCFF
          F3F4FFF2FEFFF6FFF7F7FFF2FBFFFEFCFDFFFFFFFFFFFFFFFFFDFFFFFDFFFFFB
          FFFFFCFFFDFFFEFFFFFCFFFEFFF9F6FFFBFBFFE5E5FDF4F1FFDBD5FF35289423
          10A21F06BC1F00D21B00DD2400EC1C00E12203E01D04D62A12D62C0FC22709AE
          2E13B03D27B54835B46A5DCBA89EFBD6D0FFEAE7FFEDECFFEFF1FFF3F5FFF3F7
          FFF3F7FFF1F5FFF4F6FFFAFBFFFAFBFFF9FCFAF9FAF8F7F6F8F3F2F6FBFAFCFD
          FEFFF8FAFFF4F2FFA397F72F18AA2507C42204D11E09CA1E08C52A07C9644BDB
          EDF4FFEFFFF6F6FFFBFAFFFFFFF8FFFFF8FFFFFFF9FFFFF2FFFFF7FFFFFBFFFF
          FEFDFFFFFDFEFFFBFEFFFBFEFFFBFFFFFFFFFBFFFFF9FFFEFFFFFDFFFFFDFFFF
          FFFEFFFFF5FBFFFEF2F3FFEAE3FF331FA73519D01B00D31F00E31800D61301CA
          1505C41A0BC71F08CE1D03CD2102CF2D10CB2B15A9CFC4FFF3F6FFF8FFFBFDFF
          F0FFFFF4FFF7FFFFF8FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFFFEFFFFFDFFFFFDFFFFFFFFFFFFF9FFFFF5FDFFF5FDFFF8FBFCFFF6F5FF
          FBFBFFF5F5FFFBFDFFEBEDF5F4F4FFF6F3FF938EDD3F36A55E4BD8230AAE2C0F
          C31B00C22C0EE30A00C81505CE1608CC1704CB2005CB2A05C76A4ADEF8ECFFFC
          F8FFFFF9FFFFFBFFFDF9FFF5F1FFEEDEFF2E14A02906C82400DA2100DA1D00D9
          1D02D41D02D41F00D92100D92200D72400D62600D72600DD2200E42100E41F00
          DA1D01D71B00DB1B00DB1900D72304DD1500CF2F0AE22E0AD23420AFDBE5FFED
          FFFFFAFCFFFFFDFFFDFFFFF8FFFFF3FFFFE1E2FF2F16AE2703CB2405CC2104CF
          1F03D21F00D71D00DD1D00DE1D00DA2103D02607BC7661DFF3F5FFEFF5F4FEF6
          FFFFF9FFFFFFFBFFFFF8F7FFFFA9A9DF2D17AC2302CE2204D91900D21807CD1E
          11BB7166E4D3CDFFE1E6FFE8F1FFE1E7FFEAEDFFE5E0FFE4DFFFE6E6FFE6EAFF
          E6EBFFE4EAFFE2E7FFE1E6FFDFE8FFDFE7FFE2E3FFE2E1FFE2E1FFE1E2FFE1E1
          FFDFE0FFE1DEFFE1DDFFE6E2FFE5E2FFE3E2FFE8EAFFDAE1F4F2FFFDF6FFF4F5
          FFF3F6FFFFF6FBFEFFFFF8FFFFF8FFFAFFFFF7FFF8FAFFA9A7ED1903B51300D6
          170BD7170CCC1F0EC92F1AC3715DE6E4D5FFE2E0FFE2E6FFE2E6FFE2E6FFE2E6
          FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2
          E6FFE2E5FFE2E6FFE2E7FFE2E7FFE2E5FFE2E2FFE2DEFFE4DDFFF3EAFFE4DEFF
          F4F4FFFAFCFFF2F7F5F9FDF2FFFFF8FFFFF9FDFFFCF8FBFFEFF0FF2A218F2106
          C71D00E21A04D51803D11800D42B13CBCCC6FFE7E6FFEAE0FFEDE2FFE2D7FFE6
          DFFFE2E3FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FF
          E2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E4FFE5E3FFDCDBFFDEDCFFE4E4FFE6E7
          FFECEEFFE1E5FFF4FAFFF6FCFFF8FFFFFAFFFFFBFFFEFDFFFEFFFFFEFFFFFFFA
          FCFFEAF6FF6266B7220CB81F01D61803D11904D21900D5210FC0ABAFFFDDE7FF
          E7E4FFEAE2FFEBE3FFE3E0FFEBEDFFE5E7FFD6D4FFC9C4FFA69EF56B5FC93524
          A319059A1A02AE2206C41700C61D00D52102DB290CE51A00CF2308D4230BCF22
          0DAFA394F6F6EDFFEFECFFF8F9FFFAFFFFF7FFF4FBFFF4FAFFF4FDFFFBFFFEFF
          FFFCFFFFFBFFFFFBFFFFFDFFFFFFFEFFFFFCFDFFFEEEEBFF2F17AB2106CC1305
          C91208D11404D41905D0381DD1D2B9FFEAD9FFEDDFFFE9D7FFE6D9FFDEDCFFE4
          E9FFE1E5FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E6FF
          E2E6FFE2E6FFE2E6FFE2E6FFE2E6FFE2E5FFECEDFFE3E2FFEDE9FFEFEBFFF3EE
          FFE4E4FFF8FCFFEEF6EFFBFFF4FDFFF2FFFFF9FFFFFFFFFBFFFDFAFFFFFBFFF6
          EDFF624CE02304D12100E11800DD2106E0220ADA1E09D71100CD1F00E72700E6
          2503C63016A9B3AAFAF4F3FFFAFAFFEEF1F6FDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFEFDFFFBFBFFFBFFFFFFFFFEFFFFFCFFFFFEFFFFFFF5FDFFF2FAFFF7F4F8FF
          ABA0FD2D16AE2102C92105DB1503C82010BB2E18A0EDDCFFF4F3FFF4FDFFF8FF
          F8F7FFF4FBFFFFFCFCFFFFFEFFFFFFFFFFFEFFFFFDFFFFFBFFFFFCFFFDFFFEFF
          FFFCFFFBFFFFFDFFF7F7F7FBFFFFEEF6FDEAEEFFE6E6FF564EB22310A32C10C7
          2805D81F00DA1B00D62503DD2305D41B00CA2605D82401D32504D02104C51E03
          B72913B93623BA3123AB3429A54740AF6A64C9918EEAB4B2FFD2D0FFE3E2FFEC
          E9FFF3ECFFEEE9FFEDEBFFFAFAFFFDFCFFFFFEFFFFFFFEFBFDFDF9FBFFF6F2FF
          A596F82F16AC2505C82003D51C07CE1E06C82A08C6664DD7EFF4FFF1FFF9F6FF
          FEFAFDFFFFF8FFFFF8FFFFFFF9FFFFF4FFFFF8FFFFFBFFFFFEFFFFFFFDFFFFFB
          FEFFFBFEFFFBFFFFFFFFFCFFFFF9FFFFFBFFFFFCFFFEFFFFFEFFFFFFFCF3F6FA
          F3F5FFEFEDFF8A7FED2610AF2D0CD91900D51D08D61102C2190CC21E10C2200F
          C4230EC81F04C5280FB7594FBAEDEDFFF0F4FFF5FAFBFDFFF6FFFFF9FFF9FFFF
          F9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFC
          FFFFF9FFFFF9FFFFFCFFFEFFFDFBFFFDFCFFF8FBFFFBFFFBF3FDEDFBFFF7F8FD
          FFF8F6FFFAF0FF9E95CE3C3C789B9CE0DAD4FFAA9DFF3016B62603C93009EF1C
          00E11804CF1908C91B02CE2101D22A00D36A47E5F6F1FFFAFFF4FFFFF0FFFFF2
          FFFFF3F7F8FFEFE4FF2F19972B09C12401D42100D71F00D71D02D41D01D61F00
          DA2100DA2200D92400D92800DD2800E12400E72200E51F00DB1D01D71B02D61B
          02D41700CE2309D81300C82C0DDA2A0ECB1D0E98E4EFFFECFCFFF6F4FFFAF2FF
          FDFEFFF8FFFFEBF7FDEDEFFF2711A52304C52206CB2106CC1F06CC1D03D21D00
          DB1D00DE1D00DB2206CB2C14AECEC0FFF6F7FFF6F9F7FFF9FFFFF7FFFFFFF8F5
          F7EBF7FEFFA9A7E22D14B22300D52200E11900DB1B05D01E07CD0F00BC2E10CD
          2412AD2919A62512A42C14AE2E10B73212BD2E11B42C14AE2C16AA2A17AA2914
          B12713B22714B12714B12913B22912B42913B22913B22911B7270FBB290CC029
          0AC52402C02D0CC12A0EAE331EA3413496A8A4E5E6ECFFF1F9FFF6FCFFF7FAFF
          FFFFFBFFFFFBFFFAFFFFF7FFF8F9FFA9A5F02913C51C01E01605D80C00CA1700
          CE1B00C11A00A6381AB92C11B42A12B42A11B52A12B42A11B52A12B42A11B52A
          12B42A11B52A12B42A11B52A12B42A11B52A12B42A11B52A12B22914B02917AA
          2A1AA42A1AA32A18A72A15AE2C10B72E10B725089E412BA2A79EE7EFEFFFF8FE
          FFFBFFF9F9FFF3F8FFF2FBFFF8F4FDFFECF0FF2720931E05CB1B00E71700DE15
          00DD1D00EC1000D0301ACC2411B41B00B41D00B9280DBB280FB72A11B52A12B4
          2A11B52A12B42A11B52A12B42A11B52A12B42A11B52A12B42A11B52A12B42A11
          B52A12B42A11B52912B42811B3331EBB2F19B52C17A92F1CA12E2090383087D6
          D3FFF1F4FFF4FBFFF6FFFFF8FFFBFAFFFBFBFFFBFDFFFEF8FEFFE8F9FF6068B5
          1F0DB81B00D91501D61400DB1400E51B02DC1407A92D20B22F16BE3010C23112
          C13012BF3116C02A0EBB2508BB270ABE250ABE2307BE2308C3260BCC2608D521
          03D82000DC2504E11E00D61C02CC1701B81605AA1C11A3A39CFFF0EBFFF8F6FF
          EBEEFCFAFFFFF9FFF6F9FFF0F5FFEBFDFFF4FFFFFBFFFEFFFFFBFFFFFAFFFFFB
          FFFFFDFFFFFFFEFFFFFCFAFFFCEBEDFF2D1AA71F07C91104CC1204D81100E116
          00E20800C63511D92D0EAF3517B02C08B82D0EC52E17C51C08AF2911B52A12B4
          2A11B52A12B42A11B52A12B42A11B52A12B42A11B52A12B42A11B52A12B42A11
          B52A12B42A11B52911B5220AAE2A12B62309B02109A3291695332983E3E5FFF4
          FDFFF6FFF8FAFFF5FBFFFCFBFEFFFBFAFFFBF9FFFDFBFFF4EEFF7059EB2C0ADA
          2300E61600DD1E00DC1D02D42209D51D00D23009F11A00CB3418BF7565D0F3F4
          FFEDF4F7FBFEFFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFDFFFBFBFFFB
          FFFFFEFFFEFFFFFDFFFFFEFFFFFFF7FDFFF5FAFFFBF3F7FFAB9FFF2D15AF2100
          CC2102DF1500CE200EBF2E18A0EDDDFFF4F3FFF4FDFFF8FFF9F7FFF6FBFEFFFC
          FBFFFFFEFFFFFFFFFFFEFFFFFDFFFFFBFFFFFCFFFDFFFEFFFFFBFFFAFBFFFEFF
          FFFFFBF9FDF7F8FFFCF6FDFFE8EBFFE8E8FFB1A9FF5F4DCE250CAA2304B92F0C
          CE1F00C42400CB3612E82905EB1600E01900E12605EA2202E31900D61C00D31D
          02CE1500C21902C21F0AC42310C52311C2210EBB1B09B41A07AA260DA32D1795
          493B93A59FD6EDE9FFFCFCFFFFFFF9F8FCF1FBFDFEF8F2FFA793FD3111B62500
          D82000EA1A00E81C00DA2C07C7674FD3F1F3FFF2FFFCF8FFFFFBFCFFFFF8FFFF
          F9FFFFFFFBFFFFF5FFFFFBFFFFFCFFFFFEFFFFFFFDFFFFFDFEFFFBFDFFFBFEFF
          FFFFFEFFFFF9FFFFF7FFFFF8FFFFFCFFFEFFFFFDFFF7F8FFF6FAFFEEF0FFE0DC
          FF1C0E923516D51D00D31B02D41200C91C0CCB1607BD1B0BBC2410C11800B627
          14A9B7B9FFEDF8FFF4FAFFFAFCFFFFFEFFFFFEFFFFF6FCFFFCFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFCFFFFF8FFFFF2FFFFF5FFFE
          FFFDF9FFFDF5FFFDF7FFFBFFFEFBFFF2FBFFEDFBFFF4E4E6F1FAF2FFA191D148
          3D7CA8AAD2E3EBFFEDEDFFE9DEFF664ED62D0CBB1B00C92500E01E02D11D05CF
          1D00D22300D32A00CF684ADFF4F4FFF8FFEEFFFFEBFFFFEEFFFFEFF7F9FFEEE5
          FF2E1997290AC12400D62100DA1D00DA1D00D91B00D91D00DE1F00DE2100DB22
          00DA2600DB2600DE2400E52100E41F00DD1D00D91D01D71B02D41600CD250CD8
          1D01D02408CD1C05B5241B9ADEE9FFECFAFFFBF7FFFAF1FFF9FAFEF6FEFDF3FE
          FFECEEFF2E18AC2303C62204CF1F05CF1D07CB1D06CD1D00D91D00DB1D00D924
          0AC24230ADF3EAFFF7F7FFFFFFFEFFF9FFFDF0FEFFFFF8FAFBF1F7FDFFABA4E7
          2F11B82500DC2400E81D00E21D01D61E02D82801F12000E41700C62005C62102
          C92200D02200D52300D82300DA2300D62100CD2100CC1F00D11E00D41E00D31E
          00D31F00D31F00D31E00D01E00D01E00D31E00D81E00DF1F00E52100E92C00EB
          2100CF2000B427109AA79CFCEDEEFFF1F6FFF8FBFFF9FAFEFFFFFCFFFEFDFFFB
          FFFEF7FFF6F7FFA9A5F12007B51C00DA1F07E11600D82506E33412E82905CB29
          03C72300D11F00D61F00D71F00D61F00D71F00D61F00D71F00D61F00D71F00D6
          1F00D71F00D61F00D71F00D61F00D71F00D41F00D31E01CC1F06C21F07BF1F05
          C32100CC2300D72600D62A01C83B1BBAA798FAEBE8FFF0F6FFF9FFFAF9FEF5FD
          FFF9FAFFF9F4FBFFECEDFF271E971E04CC1B00E61701DC1500DD1800E91B00E5
          1D01D0270AD52906E32200DE2A0ADD1B00CC1F00D41F00D61F00D71F00D61F00
          D71F00D61F00D71F00D61F00D71F00D61F00D71F00D61F00D71F00D61F00D71F
          00D41C00CD2608D32000C92001C02A0EBF2710A8281992ECE5FFEFF0FFF3FAFF
          F4FFFFF8FFF8FAFFF8FBFFFBFDFFFFF8FBFFEAF5FF6065BA1F09BF1B00DE1500
          DA1400E01200E91800E71A06CB1F09C61F00D01E00D31F00D22200DA2000DD17
          00D92200E32601E52403E02001DA1C00D31C00D41900D71500D82703E91200D0
          2102D32D15CD1C0AA33E35AE5B5AB6E3E6FFF4F6FFF6F9FFF6FDFAFAFFF7EEFB
          E5FBFFF0FBFFEFFDFFF5FFFFFBFFFEFFFFFBFFFFFAFFFFFBFFFFFDFFFFFFFEFF
          FFFCFAFFFFEBEBFF2D1AA72108C81503CC1303DA1200E21600E72C08F42400DD
          2000BE2E0DC91E00CA1D00D32708DF1000C91E00D61F00D61F00D71F00D61F00
          D71F00D61F00D71F00D61F00D71F00D61F00D71F00D61F00D71F00D61F00D71F
          00D61900CD2A08DE2904DC300CD43217BB241489EDEEFFF0FCFFF4FFF8F8FFF4
          FAFFFFFBFBFFFBF8FFFBF9FFFDFCFFF6F0FF5A48CB2104BF2601D92100DC2200
          DA1900CC2001D22404D41A00C72405BA5C4AC5F1EBFFEFF6FFF1FBEBFFFFFCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFCFDFFFBFFFFFCFFFFFEFFFD
          FFFFFEFFFFFFFBFDFFFBF8FFFFF3F4FFAB9DFF2D13B32100D02300E41500D520
          0BC53018A0EEDDFFF6F4FFF6FCFFFAFFFCF8FEF9FDFCFFFEFAFFFFFDFFFFFFFF
          FFFFFFFFFDFFFFFCFFFFFDFFFDFFFEFFFFFBFFFFFCFFF8F5FFFCF8FFFFFEFDFF
          FFFAFDFFF6FAFFF4F6FFE9E8FFE2DEFFB2A7FF5240BB2E14A73012B93512C715
          00B91C00D81A00E12101E82000E91600DF1A00E32101EA1900E21C00E41B00E2
          1900DE1800DC1800D91A02DA1C04DA2107D72908CF2609B2311E95ADA4EDF4F0
          FFFBFEFFFFFFF8FFFFF7FDFDFDFAF2FFAA93FD3311B62500D82000EA1A00EA1C
          00DA2C0BC06952CCF3F4FFF2FEFEF8FEFFFBFBFFFFF8FFFFF9FFFFFFFBFFFFF8
          FFFFFCFFFEFFFFFFFEFFFFFEFFFFFFFDFEFFFBFDFFFBFEFFFFFFFFFFFFF8FFFF
          F2FFFFF4FFFFFBFFFDFFFDF6FFFDFAFFF4F8FFF1F7FFECEFFF4239A1290EB823
          01D11900D71700D7200ADB1300C51D08C2230DBF1E06B25244C7EAF1FFEAF9FF
          F6FBFFFBFBFFFFFCFFFFFAFFFFFAFBFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFBFFFFFDFFFCFFFFF7FDFFF0FDFFF5FDFBFFFDF5FFFDF2FFFB
          F8FFFBFFF7FBFFEBECFBE0F6FDF8FAF4FFB6A7E437256AABA0D8EDF5FFF1FBFF
          EEE6FFF1E2FF291481422AAE2C0FB23314CF2101D12100D91F00D92301D12A0A
          BD6853CDF4F6FFF7FFF4FFFFF3FFFFF7FDFFF9F5F5FFECE0FF2C15A02805CB21
          00E01D00E41900E41900E01900E11B00E41B00E41D00E11F00DB2101D42101D6
          1F00DE1F00E11D00E01D00DD1D00DB1D00D91C00D51F02D32708D5280AC72914
          B17E77E6DFE8FFEFFAFFFBF8FFFFFAFFF8FDFBF5FFFDF1FDFFB4B6F62E18B425
          04D12100D91D01D61D06CC1D07CB1D01D61F00D71F02D3260FB79085E2F1EEFF
          F8F8FEFFFFFEFFF8FFFFF7FFFFFFFBFFFFFCF7F9FFABA1EE2F0DBF2700E12700
          F12000E92100DD2200DB2200E71500D62006CE2910CE260BD12A0BD82807DA20
          00D82600E52600E22606D62509D12506D72305DA2305DA2304DB2303DE2303DE
          2306D82306D72306D72304DB2300E52500EC2100E92D00EF2800D93210C9311A
          A4AEA5FFEDF1FFF0F9FFFAFCFFFBFBFBFFFFFBFFFEFDFFFBFFFCF7FFF6F7FFAA
          A4F12309B32300DC2609E81500DB1400DA2000E22400D82D01DD2603DD2504DB
          2503DD2504DB2503DD2504DB2503DD2504DB2503DD2504DB2503DD2504DB2503
          DD2504DB2503DD2304DD2301E12304DB230BCD230EC9250ACF2605D82A00E82C
          00E82600D13311BCAD9BFFF3EEFFF8FAFFFAFFFFF6F8F9FDFEFFFBFEFFF6F6FF
          EFE8FF2A1A9D2105CA1D01DD1A06D11704CF1B01DD1C01DB1800C41800C21C00
          D11D03D31E09C9200CC92307D62504DB2503DD2504DB2503DD2504DB2503DD25
          04DB2503DD2504DB2503DD2504DB2503DD2504DB2503DD2505DA2608D71D00CC
          1E00CC2709CE3012C9331BBB241491ECE5FFEFF2FFF3FCFFF6FFFBF8FFF4FBFF
          F7FDFFFBFFFDFFFAF7FFEBEEFF635DCA2203CA1F00E51800DC1600DB1400E21A
          00E0210DD11E09C32309CB2006C81E06C2200CC91D08CF1701D21900D81D00DB
          1B00D51800CF1A00D11E02D82100DF1E00E01F00E01D00D32A09CF341BBF2D20
          94ACABF5E6EEFFF1FDFFECF2F7FBFFFEFAFFF7FBFFF4F5FFEBFDFFF1FDFFF4FD
          FFF8FFFFFEFFFEFFFFFCFFFFFBFFFFFDFFFFFFFFFFFFFBFFFFFEFAFBFFEDE5FF
          3117AA2607C61A03CA1905D41601DA1800DD1400D21B00CD250BC32F14C82507
          CC1D00CB260FD61E08D22306D82504DB2503DD2504DB2503DD2504DB2503DD25
          04DB2503DD2504DB2503DD2504DB2503DD2504DB2503DD2305DA290CDD1D00D2
          2000D71E00C72B11B927198FEDF0FFEDFBFFF4FFF2F8FFF1FAFFFFFBFAFFFDF6
          FFFDF7FFFFFCFFF8F4FF7668D12B17AC2810B6280CC42D0CD81E00D02200D325
          03CC290EB84839B3E3E2FFF2F8FFFAFFF9FDFFF4EBEAE6FFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFDFFFCFDFFFBFFFFFBFFFFFCFFFDFFFFFDFFFFFEFFFB
          FEFFF8FBFFF3F0FFAB99FF2D10B92300D62500EB1900DE2307CC31189EF0DFFF
          F6F5FFF6FCFFFAFFFCF8FDFBFDFCFFFEFAFFFFFDFFFFFFFFFFFFFFFFFEFFFFFC
          FFFFFDFFFDFFFEFFFFFBEDEAE2FFFFFCFFFCFFFAF0FFFFF8FFF7F1FFEFEDFFFA
          FAFFF6FCFFEEF5FFF3F7FFEDEBFFB3A6FA4733A42F129E3C1FC22108BC210ACA
          210BCF1600C61200C52309D9270BE01300D11E03DC1C01DA1600D61400D21200
          D01300CF1501D01A03D12A0CDB250BBD21148EB7B3FBE8EAFFF7FAFEF6F7EDFF
          FFF8FFFBFFFBF2FFAC95F73415AC2705C82201D81A04D51C07C72E12B26B56C3
          F3F5FFF4FDFFFAFCFFFBFAFFFFF8FFFFF9FFFFFFFCFFFFF9FFFEFFFFFEFFFFFF
          FEFFFFFCFFFFFFFDFEFFFBFCFFFBFDFFFFFEFFFFFFF8FFFFF0FFFFF0FFFFF9FF
          FCFFFBF2FFFDF8FFF4F8FDF4FEFFEAF2FF9B99E52B13A72706CD1B00DE1900E8
          2402F01800DB2507D42209BF321CBBA599FFEDF4FFEDF9FFEDF3FFFBFBFFFCF6
          FFFFFBFFFFFFFBFFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFB
          FFFFFDFFFCFFFFF9FDFFF4FDFFF8FDFBFFFDF7FFFBF8FFFBFCFFFBFFF5F9FFF0
          F5FAFBFAF7FFAB9CD93A286FE1D2FFF8F1FFF2F6FFF4F8FFD1C3FF352279B3A5
          F3F3E5FFB1A2FF29159D270ABD2403CF2200D12704CA2C0EB36858C4F4F5FFF7
          FEFBFDFEFCFFFFFFF9FCFFF3F2FFE8DEFF2813A52404CD1F00E11900E41800E2
          1800DE1600DE1800E11900E01900DD1B02D61B06CD1B05CF1B00DA1B00E11B00
          E41B00E41D00E11F00DD2503DD1900C82D0AD03316C04A35B9ECE6FFEDF7FFEE
          FAFFF4F3FCFFFEFFFBFFFEF2FDFFEEF6FF6563B5230BAF2301D71F00DE1D00DD
          1B04D21D04D01F00D72101D42208C62917A6F1EBFFEDEDFFFFFFFFFFFDFEFFF6
          FFFFF8FFFBF7F2FFFFFCF7F9FFABA1ED3110B92800D92B00E82400E02601D325
          04D12603DD1A00CE280FCB1F08BE1400BA1F02C9290CD42000D22100E02100DF
          2103CE2106C72104CC2102CF2102CF2002D12000D31E02D12005CA1E09C42009
          C32007C52003CE2100D62700DF2900DC2000C5300FBD2B1695A49DEEE8EDFFF2
          F9FFFBFEFFFDFBFAFFFFFBFFFEFDFFFDFFFCF9FFF6F8FFACA7EC2B13AD1D00C5
          2305D41E00D52300DD2C04E52600D72A00D82300D22002CF2102CF2002CF2102
          CF2002CF2102CF2002CF2102CF2002CF2102CF2002CF2102CF2002CF2102CF20
          00D32000DC2000D82006C8200AC12108C42303CC2700DC2800DC3005D23413B4
          AB9AFBF4F1FFFAFCFFFDFFFBF9F8FAFFFDFFFFFBFFFAF5FFF3E7FF2E1C99270A
          BD2308CE200DC21E0BC01B02C81E02CA2B12CE2209C52104CF260CD41201B624
          14C62005CA2002CF2102CF2002CF2102CF2002CF2102CF2002CF2102CF2002CF
          2102CF2002CF2102CF2002CF2102CF2002CF2607D41700C52806D62B09D21900
          B52D12B62F1C9BEDE4FFF1F1FFF4FCFFF8FFF9FBFFF2FFFFF5FFFFFBFFFBFFFD
          F5FFF1EAFF6959CE2702CA2400E11E00D61B02D41900DB1D02DC2107CF1B02C2
          260BCD2409CA1D06C01F0BC81B08D11903D31F04D62104D61F04D01F05CD250A
          CF280ED0260BCD2004C22509C13319C14F38C8CBBAFFEFE7FFF3F5FFECF5F8F8
          FFF8F3FAF3FBFFFBF2FAEFF5FFEFFDFFF4F9FFF1FAFFF5FDFFFCFFFEFFFFFDFF
          FFFCFFFFFDFFFFFEFFFFFFFEFFFFF9FFFFFEFBFBFFF0E5FF361AA32D0BBD2107
          BF2009C91D07CB1D06CD2204D12B0FD41F07B91800AF260AC72208CA1E07C719
          03C72003CE2002CF2102CF2002CF2102CF2002CF2102CF2002CF2102CF2002CF
          2102CF2002CF2102CF2002CF2102CF2002CF2004CC1100C0330DE82500CF2B0C
          BB2B1694EFEDFFF1FBFFF6FFF5FAFFF4FDFEFFFFF9FFFFF6FFFFF8FFFFFFFFFB
          F9FFCAC3FF584FB72B21931E0F962D12BC2603C52902D02C0AC23E2AABEDE8FF
          EFF6FFEEFCF1FBFFF4FCFFF2FFFFFEFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFFFFFDFFFEFFFFFBFFFFFCFFFDFFFFFDFFFDFDFFFBFDFFF8FAFFF4EFFF
          AD9BFF3113B22600CC2800E11D00D6270BC3331B99F0E2FFF8F6FFF8FDFFFBFF
          FCFAFDFBFFFBFFFEF9FFFFFDFFFFFFFFFFFFFEFFFFFFFFFDFFFDFDFFFDFFFEFF
          FFFCFFFFFCF6EDF0FFFAFFFFF8FFF9ECFFFFF8FFFFFBFFFAFCFDFBFFF9F7FFF5
          F8FFFEEBF1FEF6F2FFF3E9FFE6D4FFC0ADFF6153D02E22AA1A0C9A2819B02B19
          BA220CB81F08BE2309C71C01C71D03CD2004D32107D72208D82107D71E04D41D
          02D41900D12307C52C1F9FDDD9FFF4F6FFFBFFFFF3F4EAFFFFF8FFFBFFFFF2FF
          AE98F1361AA32A0ABD2307CC1C0AC9200DBA3018A66D5BB9F4F6FFF4FDFFFAFB
          FFFBF9FFFFF9FFFEFAFFFFFFFEFFFFFCFFFDFFFFFDFFFFFFFCFFFFFCFFFFFFFF
          FEFFFDFBFFFDFCFFFFFEFFFFFFF8FFFFEEFFFFEEFFFFF8FFFCFFFFF6FFFAF4FF
          FAFFFFF6FFFCE9F6FEEDF0FF412CAA2B0CC11D00D51800E32400EE1D00DE2B08
          DA2005B34232B5E7E1FFE9EEFFF4FDFFEFF4FDFDFCFFF9F3FEFFFCFFFFFFF9FE
          FCF2FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFE7E9E9
          FDFFFFFDFFFFEEF1F5FBFFFEF5FEF1FAFFF4F0F9EFFAFBFFFAEEFFAE9AE52B16
          6BF1E0FFE6E1FFF7F5FFF7F0FFDCD0FF4A3387725EABFAF1FFEDEDFFF3F3FFDF
          DBFF4536AF3923BF2507BA3010C32507A66D59CAF4F2FFF5F8FFFDFCFFFDFCFF
          F8FCFFEEF1FFE0D9FF2C1CAA1200BC1D01DD1600D91503DA1808D71809D61705
          D41302CF1200C91000C31408C61B0DD11D09DE1800E11400E41800E82100E925
          00E51F00D32D06D3350FC53F23B2F1E2FFE6E4FFF8FFFFEEFBE5FDFFF4F4FCF2
          F8FEFFF3F7FFEAEAFF211886280FBD2403DA2200E72202EB1400D41800D62100
          E02202D32916B9796FDAF4F2FFFBFEFFFFFFFEFFFDFFFFF8FFFFF9FFFFFFF9FF
          FFF9F8FDFF9B97D24026B22300BA2902CA2903C72A0DB73114BE2B08CA2907C9
          280EBA2910B82A0DC1290AC32709C02502C82800DD3105E62100BF2609BC2809
          C42C0BCA1800B62B0AC92609C4240DBD2611B32415AC2617A82617A82614AF28
          0FB73312C72A06BE3612BD2C0FA23B2792A69CE2F4F6FFF7FCFFFDFFFFFFFFFC
          FFFFFCFFFCFBFFFFFFFDFDFFEAEEF9B7B6E8311E972911B1260FB7240DBB260B
          BF280AC12909C22909C22809C42609C42809C42609C42809C42609C42809C426
          09C42809C42609C42809C42609C42809C42609C42809C42605CB2600D72600D4
          260AC1280FB72810B6290CBB2B06C62F06C52D09B1391E9DB1A5E7FAF9FFFDFF
          F6FFFFF1FFFFF9FFFBFAFFFEFFFCF6FFF6EBFF321E883116AC290FB62915AE27
          15B0280EBA290ABF290BBE2909C22605CC2406CB210CBF210DBD240BC12609C4
          2809C42609C42809C42609C42809C42609C42809C42609C42809C42609C42809
          C42609C42809C42607C62804CD1C00C62C03D62B02CF2A01C12F0CB43B21A3F3
          E2FFF6F0FFFAFAFFFDFFF9FFFFF2FFFFF4FFFFF9FFFBFFFFF5FFF6E9FF7965D0
          2300B12400CC3010D32308CA1D00CE2400D62702D42902D32902D32902D32502
          D42201D81E00E21E00E12102D32708CF290CCD270DC5270FBB2A15B13121AA39
          2FA1B1AAFFD7D5FFF1F1FFF4F5FFF4F6FFFDFFFEFFFFF8F9FDF2FDFFFCFDFFFE
          FDFFFCFDFFFBFFFFFBFFFFFBFFFFFEFFFEFFFFFDFFFFFDFFFFFCFFFFFDFFFFFF
          FEFFFFFBFFFFF8FFFFF9FFFEFFF7ECFF3C20913110A72307A62E15B9250EB62C
          13C1280AC1280AC1290CBB290CBB2809C22607C62407C82408C62608C52609C4
          2809C42609C42809C42609C42809C42609C42809C42609C42809C42609C42809
          C42609C42809C42609C42B0DCA2403C92D03DA2200C72D05BB3618A1EFE3FFF8
          F6FFFBFFFFFDFFFBFFFBFFFFF8FFFFF7FFFFFBFFFFFFF5FFFFFBECEEFFECEFFF
          E5E9FF7775C132209D3013B01E00A93417ADDDD3FFE7EBFFF3FFF8FAFFF0FDFF
          F5FFFFF9FFFDFEFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFFFDFEFF
          FFFFFCFFFFFCFFFEFFFFFDFFFDFDFFFBFDFFF6F8FFF6F4FFA699ED351E9E2506
          AF3010C9250ABE2F1AB3301C87E5D7FFFAF8FFF8FEFDFBFFFCF3F5F5FFFAFFFD
          F6FFFFFDFFFFFFFEFFFFFCFFFFFEFFFEFFFDFDFFFDFFFFFFFFFFFFFCFFFFFAFF
          FFFAFFFFFAFFFFFCFFFFFDFFFFFFFEFFFFFBFEFFF8FCFFF8FAFFFBF9FEFFF9FA
          FFF7F7FFF7F4FFF3F1FFEFF0FFECEDFFCFCCFF8D86DB4A3FA72B1A9328149D2D
          13AD2E11BB2809C02401C32501CA2902D32903D72701D72400D82F07EF2201CE
          201099E8E3FFF4F6FFF3F6FAFFFFF8FFFFF8FFF8FBFFF4FFAE99E8391D992606
          AB2C10C81F09C02916B9301B968373C1F3F4FFF8FEFFF7F8FFFBF9FFF2EDFCFF
          FCFFFFFFFEFFFFFEFFFDFFFFFDFFFFFFFCFFFFFBFFFFFFFFFEFFFDFBFFFDFCFF
          FFFFFFFFFFF8FFFFEEFFFFEEFFFFF9FFFBFFFFF5FFFFF8FFF1F7F2F8FFF7F0FE
          F8F1F6FFCDBDFF1B00982406C31F00D32702E22600D9330FD31D049CC6BDFFEB
          EDFFF4F7FFF8FBFFFBFEFFFDFEFFFFFDFFFFFEFFFFFFFBFFFFF9FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFFFBFEFFFDFCFFEDEAF9F9F8FFFBFF
          FBFBFFF2EBFADBFBFFF2F5F6FFF7EDFF7863B2422983E8D5FFE5D9FFF8F4FFF8
          F4FFEEE0FF564190422D78FBEBFFFDFAFFF0F5F4F0F5FEF3F6FFEDEAFF9B8FF9
          1E07973B1CBD3D1BBB6F57CDEAE7FFFAFFFFF8FBFFFAFEFFF1FBFFE6EDFFDFDC
          FF2B1FA7200BC61E07DB1401D41101D01003CB1003C91403D01807D4210ED524
          13D81306CC1102CF1100D71900E21F00ED2401EB2503DD2704D02A08C73C19C7
          3414A8F4DDFFF7EEFFF1F2FCECF2E1FFFFEAFDFFEBFAFFF8F4F8FFE5E3FF6D63
          C73D2DBA240DC31500CA1F00E50D00D92100E92E08F41E00E32A07D31B0F91CC
          CCFFF6F9FFFDFFFFFFFEFFFFFCFFFFF8FFFFFAFFFFFFF7FFFFF4F5FEFBB6B8DB
          7C6ED36F57DF7256E96C52DE6754C96956CA6A51DB6750DB6655CE6757CD6653
          D86551DA6351D2614ADC1D00B16743FB6851E16857D66B55DD7059E46750DB71
          59E7654FDD6352D76358CC635CC46360BC6361BB655DC16759C96752D06048CA
          7156D5765FCB8070BEC0B8E7F8F8FFF1F5F6FFFEFDFFFEFDFFFEFFFFFEFEFCFD
          F9FDFFFCF3F9F8D0D3EF6C62B56958CB6556CF6356D06356D06355D26553D465
          53D66553D66553D66553D66553D66553D66553D66553D66553D66553D66553D6
          6553D66553D66553D66553D66553D6654FDD6549E8654BE56554D3655AC8675B
          C56758CB6952D66C51D6765FD37666BAC5BFE2F7F9FAF8FCE9FFFFF1FFFFFBFF
          FEFFFFFBFCFCF5FFF3E8FF7467B3705DCA6E5BD45E51BF6558C66955D06A52D4
          6A52D66950DA674DE1614EE05E54D65E56D36354D46553D66553D66553D66553
          D66553D66553D66553D66553D66553D66553D66553D66553D66553D66553D665
          51D96D56E66B50E67254ED6D4EE56D4FDE755BD7725EBFEADEFFFAF5FFFDFDFF
          FFFFF7FFFFF2FFFFF7FFFFFCFFFAFFFFF7FFFCF4FFA092D45234B53516AD2A16
          9F25139C2914AD3015B82D0EB12D0EAF2F0FAE2B0FAF290DB4240BB92008C222
          0ABC230FA83724AF5240C97563E69788FFBCB1FFDDD7FFEDEEFFE6EBFFF4FCFF
          F8FFFFFCFFF7FBFEEFFFFFF5FFFFF8FFFBF6FFFFFFFDFFFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFDFFFFFCFFFFFDFFFFFDFFFFFEFFFFFFFCFFFFF9FFFFF7FF
          FFF8FDFDF7FAF1FF7F66BC7E61D67158D2725DD86251CA6250CD6752D76751D9
          6753D46753D46552D76551DA6350DB6350DB6552D76553D66553D66553D66553
          D66553D66553D66553D66553D66553D66553D66553D66553D66553D66553D665
          53D46050CD604DD27153EC6D4DE87B5AE57A61C9F5E8FFF7F5FFFFFFFCFFFFFB
          FFFBFFFFF8FFFFF8FFFFFCFFFFFFF2FFFFF4F8FEFFEBF5FFEFFAFFECF3FFE4DC
          FF8875E2442BABA28DFAEAE4FFEFF6FFF8FFF5FBFFEEFFFFF8FFFDFCFFFCFDFF
          FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFBFFFDFCFFFFFFFEFFFFFCFFFE
          FFFFFEFFFDFEFFFDFFFFEEF4F3F8FBFFBEB9EC796CC26F5BD26C57DB5B4DCA63
          56C28373C7F6E9FFFAFBFFFBFFFCFDFFFBF7F7F7FFFAFFFDF5FFFFFDFFFFFFFC
          FFFFFBFFFFFCFFFEFFFDFDFFFBFFFFFDFFFFFFFBFFFFFBFFFFFDFFFFFFFEFFFF
          F9FFFFF8FFFFF8FFFFF9FFFFFBFFFEFEFEFDFFFCFDFFFCFEFFFAFFFEFAFFFBF9
          FFFEF5FBFFF6FBFFF6F7FFF4F3FFF4EEFFEFE4FFD4C4FFB5A1FF6B54CE5940C6
          4226B53114AA2B0CA92C0BAC300EB22D0DB81900B3230CAE40389CE1E4FFF6FA
          FFFBFFFFFFFFFCFFFFFEF7EFF6FFF4FFC4B4F17B69C46E59D36756DB554CCB5D
          55C77061BD9F93CFE8E9FDEFF3F8F0EFFFFDFAFFFAF6FFFFFEFFFFFFFEFFFFFF
          FFFCFFFFFCFFFFFFFCFFFFF9FFFFFEFFFEFFFDFCFFFDFCFFFFFFFFFFFFF7FFFF
          EEFFFFF0FFFFFBFFFBFFFFF7FFFFF9FFF6FBF2FBFFF2F1FEF0F3FAFFD7CBFF4E
          3AB1321DAF2A12B82708BF1B00AF3213B44734A9E0E0FFF4FCFFF8FAFFFBFBFF
          FDFFFFFFFFFEFFFDFFFFFDFFFFFFFEFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFAFFFFFBFEFFF6F6FFFBF8FFF7F7FFF5FFEFFBFFEDF9FFEDF8
          FDFEEEE2FF7B66B5321F70D6C7FFF8F1FFEFEBFFF6F1FFE1D6FF523C945A4496
          F9EBFFFDF7FFF8F6F5FFFFFBFBFDFFF8FAFFF3F8FFE8E8FFE0D1FF3015A12500
          A47558D3F8F9FFECFBE0F0FAEAF8FFF9F4FFFBEFFCFFE8EBFF28219A2512BF0F
          00C31805D01908D51B0BD51F0BDA1E05DF1A00DE1900D71300D51C02E21600E1
          1A00E32105E82304E11C00CA1D06AF2510A23D26AA513AACF2DDFFE9DAFFFDFA
          FFFFFFF8FFFFF5FFFFF1EDFBDFF6FFFED9D7FFDACCFF311BAF1C02B31D06C023
          0BD51900D91300DD2800F51D00EA2500ED3814D8544FABEDF8FFF6FDFFFDFFFF
          FFFDFFFFFAFFFFF9FFFFFDFFFFFFF2FFFFEEFAFFF2F1FCFFE2E5FFE7E2FFEEE7
          FFF0E9FFF0EEFFF2F1FFF2EDFFF0EDFFEFF1FFEDF2FFEDEEFFECEDFFE8EFFFE6
          E7FF43349DDECFFFECEAFFE8EDFFEAEBFFEDEAFFF1EDFFF0E9FFEFE6FFEDE6FF
          EDEBFFEDF0FFEDF4FFEDF5FFEDF3FFEFEFFFF3EDFFEFE5FFF5E7FFF9ECFFF3EB
          FFFAF7FFFFFFFCFFFFF7FFFFFCFFFBFDFFFCFFFFFDFFFBFEF5FDFFF5FAFFF5EE
          F5F8F2F0FFF1EAFFEDEAFFEBECFFEBEFFFEAEFFFEAEEFFEBEDFFEDF0FFEFF1FF
          EFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1
          FFEFF1FFEFF1FFEFF0FFEFEDFFEFF0FFEFF7FFEFFBFFEFFBFFEFF7FFF1F0FFF2
          ECFFF2ECFFEBE5FFFDFCFFFFFFF9FFFFF7FFFFFBFFF7FFFFF5FFFFFDFFFFFEFF
          FDF7FFECE4FFF0E9FFF1ECFFE8E7FFF1F1FFF2EEFFF4EEFFF4EEFFF2EFFFF1EE
          FFEBF1FFE8F5FFE8F6FFEDF3FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEF
          F1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF2FFECF1FFF1F6FF
          EFF0FFEAE9FFEFEBFFF7F3FFEAE7FFFBFCFFFDFFFCFFFFF4FFFFF1FFFFF2FFFF
          F9FFFCFFFFF7FFFFFAFFFFFFF4F3F7F1F0E8FFF1EBFFECF1FFEDF4FFEDEFFFE8
          E6FFF3ECFFF3EEFFF4F1FFF1F1FFEFEDFFEAECFFE6EBFFE6EEFFEDF3FFEFF6FF
          EFF5FFF1F3FFEFF1FFEFF2FFF3F6FFF4F8FFF8FBFFFAFDFFFDFFFFFDFBFAFFFC
          FBFFFEFEFFFDFFFFFDFFFFFBFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFDFFFFFEFFFFFFFEFFFFFBFFFFF9FFFFF8FFFFF7FFFFF4FFFDFF
          E8D5FFF4DEFFF6E2FFF6E9FFF2EDFFF1F0FFEFECFFEDEDFFEDEFFFEDF1FFEFF3
          FFEFF4FFEFF3FFEFF2FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEF
          F1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF1FFEFF4FFF1FEFFF1FDFF
          F3F5FFF3EDFFF2EBFFE5E0FDFFFFFFFFFFF2FFFFEDFFFFF1FFFEFEFFFAFFFFF9
          FFFFFBFFFFFFF8FFFFF4F7FFF5F2FCF6F8FFFBF2FBFFF5F5FFF4EFFFDFD5FFF4
          ECFFF5F3FFF8FBFFFBFFFCFDFFF8FFFFFBFFFFFBFFFEFDFFFDFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFDFAFFFBFAFFFDFFFFFDFFFCFFFFFFFFFFFFFFFFFFFD
          FFFBFDFFF4FBFFF8F7FCFFEDECFFF1EBFFF0EAFFE9EBFFF1EFFFDFD3FFFBF1FF
          F9FCFFFDFFF8FFFFF8FDFBFAFFFAFFFFF7FFFFFDFFFFFFFBFFFFF9FFFFFBFFFE
          FFFDFDFFFBFFFFFDFFFFFFFFFFFFFFFCFFFFF7FFFFF2FFFFF0FFFFF1FFFFF5FF
          FFFBFFFCFFFFF9FFFFF8FFFFF9FFFFFCFFFEFFFAFEFFF3FCFFF1FDFFF5FCFEF8
          F7F7F7F1F1F7F7F4FFFBF7FFFBF4FFF1E9FFFAF0FFF8EFFFF0E5FFEBE2FFEDE4
          FFEEE7FFEFE9FFECE7FFECE8FFE1E5FFD8E7F7F3FFFBF1FEEEF7FDF2FFFDFFFF
          F5FFFFF9FFFFF7FFFBF2FFEEE9FFEEEFFFEAF3FFE4F7FFECFAFFEAE7FFEEE6FF
          FAFCFFFBFEFFF8F8FFFDFAFFF6F4FAFFFFFFFFFFFEFFFFFFFFFAFFFFFBFFFFFF
          FBFFFFF8FFFFFEFFFEFFFDFCFFFDFDFFFFFFFCFFFFF7FFFFF1FFFFF2FFFFFEFF
          FBFFFDF5FFFFFBFFFAFEF3FDFFF2F9FFF4F8FDFFF2EBFFAC9FED645EB0655CBD
          6E5CD16450C77664CFA097DAF5FFFFF8FFF2FBFEFFFDFCFFFFFFFCFFFFFBFFFE
          FFFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C
          7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFA
          FFFFF8FBFFF4F5FFFBF9FFF5F5FFFBFFF8EBF5E4F4FBF6FAF7FF8470BB442B85
          DBCCFFF8F1FFF8FAFFF7F8FFECE3FF5444914B3887F0E0FFF8F0FFFFFDFFFFFF
          F8FEFDF3FFFDFFECEEF6F5FCFFF3F8FFE9DFFFDBC4FF6A46D8785DCBEFF2FAFB
          FFE7FBFFF2FAFFF8F2FFF4E9F5FFE0E3FF1B13852A19BE1E06C8220BD11C06D0
          1701CB1700CE1A00D92100E22600E62800E81C00DE1900D91F00D92305D21C00
          BD1D07A6392C9F5D56ABCAC1FFF4ECFFFAF0FFFDF7FFEDEEE5FFFFF1F7F1F2FF
          FCFFF4FBF6F3FAFFEDE4FF4D37C52D0EC72507D21C04C61C07CE1300D32404EB
          1F00E91000D83200F22805BAB2B2F2ECFBFDF8FFFFFDFFFFFFFBFFFFFAFFFFFA
          FFFFFEFFFFFFF2FFFFEDF7FFEBF4FFF7F3FEFFF2F9FFF2F6FFF6FBFFFAFFFFFA
          FFFBFBFEFFFAFFFFFAFFF8F8FFF9F6FEFFF4FDFFF3FFFAF0FAFF2C2465F4E9FF
          F4FBFFF6FFFBF8FFFEF7FCFDFAFEFFFAFBFFF8F6FFF6F5FFF6FAFFF4FDFFF4FF
          FFF4FFFEF4FFFFF6FEFFF6FAFFF8F8FFFBF6FFFDF7FFFFFBFFFBF9F8FAFAECFF
          FFF1FFFFFCFEF7FEFFFAFFFFFCFFFBFFF7F9FFF0FBFFF0FAFFF8FAFBFFF8F7FF
          F6F9FFF4FCFFF3FFFFF1FFFEF1FFFFF1FFFFF4FFFFF6FFFCF8FFFCF6FFFCF8FF
          FCF6FFFCF8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF8
          FFFEF8FFFFF8FFFCF8FFF2F8FFEDF6FFEEF6FFF4F8FFFFF8FBFFFAFAFFFBFCFF
          FFFFFEFFFFF8FFFFFCFFFCFFFFF2FFFFF4FFFCF3F6FFFDF9EEEDF1FBFCFFF6FA
          FFF4FAFFF2F8FFF8FCFFFBFCFFFDFDFFFDFEFFFDFFFFFAFFFFF4FFFEF1FFFBF1
          FFF9F4FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFFC
          F8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFF9F8FFF1F8FFF0F8FFF4FAFFF7FAFF
          F9FBFFFBFDFFF9F6FAEEFFFFF2FFFFF1FFFFF2FFFFF7FFFFFEFFFBFFFFF8FFFF
          FCFFFFFFE6FFFFE8FDFFFCF8FEFFF0FFF7EFFFF8F1FDFFEBF4FEF6F9FFF7FCFB
          F7FFF1F6FFF3F2FBFEEFFAFFE9FCFFEBFDFCF1FFF8F6FFF6F6FFF6F5FFF6F3FE
          F4F2FDF5F5FFF8F9FFFBFAFFFDF8FAFAFBF9F9FFFDFFFFFCFFFFFCFFFFFCFFFF
          FBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFCFFFFFDFFFFFDFFFFFEFF
          FFFFFEFFFFFCFFFFFBFFFFFBFFFFFBFFFFF7FBFFE8F8FAEEFFF5FFFFEFFFFAEE
          FFFBF6FFFAFCFFF8FFFFF6FDFFF4FDFFF4FEFFF4FFFFF6FFF9F8FFF5FAFFF8FA
          FFF9F8FFFBF6FFFCF8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFFC
          F8FFFCF6FFFCF8FFFCF6FFFCF8FFFCF6FFF4F8FFE3F8FFE2FAFFF1F9FFF9FDFF
          FFFFFFFCFBFDEAFFFFE6FFFFEAFFFFEEFFFFF9FFFDFFFFFBFFFFFCFFFFFFFBFF
          FFF5FFFFF4F4FCEBFDFFF7F7FEF7F1F4F8FAFBFFFAF8FFF6F3FFFAFAFFFBFBFF
          FDFEFFFFFFFFFFFEFDFFFFFBFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFFFBF9FFFBFAFFFDFFFFFDFFFBFFFFFEFFFFFFFFFFFFFFFFF9FBFFEAF4FFE4
          F8FFF0FBFFFFF8FBFFF6FAFFF6FEFFF6FCFFFAF3FFF7F1FFFAFDFBFFFFF4FFFF
          F7FFFFFCFFF7FFFFF9FFFFFEFFFFFFFBFFFFF8FFFFF9FFFEFFFDFDFFFBFEFFFB
          FFFFFDFFF9FDFFF5FFFFF1FFFFF0FFFFF0FFFFF2FFFFF7FFFFFEFFFBFFFFF9FF
          FFF9FFFFFAFFFFFDFFFFFFFBFFFFF4FFFFF1FFFFEFFFFFF5FFFFF7FFFFF8FEFD
          F9FEFCFBFFFDFFFFFDFFFAF7FFFAF9FFFDFCFFFBFEFFFBFEFFFBFEFFFAFDFFF1
          F7FEF1F8FFE9F3FDF3FFEFF5FFE4EEFDDEFBFFF3FFFBFFFFF6FFFFF4FFF8F0FF
          F7F6FFFAFDFFF6FFFFF3FFFCEFFFF1F1FFF5FAFAFFF7F3FFFDFEFFFBFDFDFDFB
          FFFDFAFFF7F6F8FEFFFBFFFFFCFFFEFFFFFAFFFFFBFFFFFFFBFFFFF8FFFFFEFF
          FDFFFFFCFFFDFEFFFFFFFBFFFFF5FFFFF4FFFFF7FFFEFFFFFBFFFDF7FFFFFEFF
          FCFDF3FFFFF4FBFFF8FAFFFFFAF5FFEEEAFFF1F4FFEFF2FFF1ECFFF3EAFFECE1
          FFF8F6FFFBFFF1EFFDDBFFFFFCFFFDFFFFFFFBFFFFFBFFFEFFFFFCFFFFFCFFFF
          FDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9
          FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFFF7FCFBFBFFFF
          F2F4FCFBFDFFF8FDFFF8FAFFFAF4FFA395CF382378D7C4FFF8F1FFE7E9FBF6FF
          FFE9EDFF504289554592EDE9FFF8F8FFEFE9FFFFFAFFFFFFFEFFFCF4FCF8F7FF
          FEFFFBFEFFEBECFFF4ECFFF4E4FF6046B1C7B3FFF0F2F2FFFFEDF9FCF3F8F8F8
          F9FFFEF4FAFFEDE9FF2C1D90321ABC2709C6270ACB2409CB2708CF2806D62D01
          E22C00E52A00E12600D72B02D52F0CCE3012C5290EB1240C9A4537A09E9ED4F3
          F8FFF6FAFFF8FBFFE6E6F4F7F9FAFFFFF2FDFEF4FFF4FFFDF0FFF6F2FFE3DFFF
          6250CB3519C60D00BD3413F01701CC1200C81600D72002E31B00DA2C01E42E00
          DE300FB0E7E8FFF4FFF7FAFFFBFDFFFFFFFBFFFFFAFFFFFBFFFFFEFFFFFFF7FF
          FFF2F7FFEEF6FFF4F4FFF8F3FFF8F4FDF3FCFFF6FFFFF0FFFFEDFDFDF7FAFBF7
          F9FEEFF8FFF2F7F9FFF6FAFFF2FFF1F0F6FB322367F8E9FFF6F8FFF5FEF1FDFF
          F9F3F4F0FFFFFFFBFAFEFAF9FFF8F9FFF8FCFDF7FEFBF7FFF8F7FFF6F7FFF8F7
          FEFBF1F6F9FBFDFFF9F8FFF7F5FBFFFFFFFFFFFBFFFFF7FFFFF7FFFFFEFCF5FC
          FEF6FFFFFBFFFDFFFCFAFFF3FBFFF1FDFFF5FAFCFDFAFAFFFAFCFDF8FFF6F7FF
          EBF5FFE7F1FFEDF3FFF2F7FFF5F8FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8F8
          FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8FAFDFBFCF9FFFCF9FF
          FAFDFBFAFFF6F8FFF6F8FEF9F7FAFFF7F9FFEAEAF8FAFAFFF7F8FCF5F4F6FFFC
          FFFFFBFFFFF6FFFFF8FFFFFEFFFFFFF9FAFFF6FAFFF8F8FFF9EDF9F3F5FDFDF3
          F6FBFCFBFFFFFAFFFFFAFDFFFBFDFCFCFCF8FCFDF5FBFFF3FCFFF7FEFBF8FFF8
          FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFE
          F8F8FFF8FAFEF8F8FFF5F9FFF1FDFFF4F7FEEFFAFFF4FCFFF7F7FCF3FFFFFBF7
          F9F3FFFFFBFFFFFBFFFFFCFFFFFEFFFFFFFFFDFFFFFDFFFFFEFFFFFFF8FCFBF1
          F9F8FAF7FAFEEEF8F2F2FDFAF8FDFFFAFCFFFFFEFFFFFFF9FFFFEEFFFFF0FBFF
          FFF8FFFFF4FFF9F6FFF9FCFDFFFFFEFFFFFFFBFDFFF4FDFFEDFBFFEAFBFFEAFD
          FFEBFDFFF2FEFFF6FFFFFCFFFEFFFFFDFFFFFCFFFFFBFCFFFEFFFFFDFFFFFCFF
          FFFBFFFFFBFFFFFBFFFFFBFFFFFDFFFFFEFFFFFFFEFFFFFCFFFFFBFFFFFBFFFF
          FCFFFFFEFFFFFFFFFFF8FFFFE9FCFFEAFFFDFFFFF7FFF7F0FFF9F6FFF7FCF3F3
          FCEFF7FEFBF5FBFFF5FAFFF7FBFFF8FEF9FAFFF6FCFDF9FCFDF9FAFEF8F8FFF8
          FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFEF8F8FFF8FAFE
          F8F8FFF8FAFEF8F8FFF2F5FFE3F6FFE4F6FDEEF6F7F5FFFCFFFFFEFFFFFCF7FF
          FFF5FFFFF4FFFFF5FFFFFBFFFFFEFFFEFFFFFEFFFFFFFCFFFFF8FFFFF4FFFFF4
          FFFEFAFBF9F9FFFFFEFDFFFCE3E7E1FDFFFCFDFDFFFDFCFFFDF9FFFDFAFFFFFE
          FEFFFFFEFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFBFAFFFAFBFF
          FBFFFCFDFFF8FFFFFEFFFEFFFFFDFFFFFFFCFFFFF1FFFFEDFFFFF0FFFFF5F7F8
          F4F9FDF8FDFFF4F5FAF1FDF7FFF2EDFFFFFFF8FFFFF0FEFFF1FFFFFBFFFAFFFF
          F9FFFFFEFFFFFFF9FFFFF7FFFFF8FFFEFFFDFCFFFBFEFFFBFFFEFAFFF4FAFFF0
          FBFFF1FDFFF4FFFFF8FFFFFBFFFEFFFFFDFFFFFCFFFFFCFFFFFCFFFFFDFFFFFE
          FFFFFFFFFFFFFEFFFFFBFAF9EFFEFEF2FFFFF7FFFFF9FFFFFBFFFFFCFFFDFCF9
          F7F7FFFFFFFFFEFFFCFBFDFAF9FBFAF9FBF9FAFEFAFBFFFAF9FFF8F5FFF1F1FD
          FDFFF1FDFFE9FFFFEDFFFFF8FFF8FFFEF5FFFFFAFFFFFDFFFFFFFEFDFFFCF2F8
          F7F4FDFAF8FFF8F0FBF1F6F5FEEFEEF8F9FAF8FAFDFBFCFBFFFDFCFFF9FCFAFD
          FFF9FFFFFCFFFEFFFFF9FFFFFBFFFFFFFBFFFFF8FFFFFEFFFDFFFFFDFFFDFFFF
          FFFFF8FFFFF5FFFFF8FFFFFCFFFCFFFFFBFFFFFEFFFFFFFBFDFEF4FFFFF8FFFF
          FCF4F5F9FCFAFFFAFCFFEFF5FAE9F1F8F7F8FFFAF7FFFAF4FFFFFDFFFFFFF0FF
          FFEBFFFFF5FFFFFBFFFFFBFFFFFEFFFDFFFFFCFFFFFCFFFFFEFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFCFFFBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFF
          FFFEFFFFFFFEFFFFFEFFFFFEFBFFFFFAFFFFFBFFFEFBFFFEFBFFFFFBFDFFE4E2
          F8FAF2FFA192CF4D3B82A594DDF8ECFFE8E4FFF8F9FFF6FAFF484767554A88DC
          D4FFF6FCFFF8FFFFFCF8FFFBF2FFFFFDFFEAE4DDFFFFF8FFFFF8FAFEF8FAFCFF
          F1EDFFF8ECFF6A55A4A08FCEFFFDFFF2F5E6FFFEFFFFFCFFFFFFFEFAFBFFDFD9
          FF403290311BA3220AA62611AA2510A82610A52B10AD300EB9340BC03407BC30
          05B23815AC270B94371D997761D1C7B4FFF3E9FFF6FAFFEBF4F1F7FDFCEDF1F2
          FBFEFFFDFFFEF0F9E4FDFFFBFDF0FFF6E2FFE5D5FF3F2F9F2F15AF2505C22601
          E11A00DF0800C62610E41C01E01D00DB1E00CE3310D61F00B99A7DFFF3F6FFF4
          FFF2FAFFF8FDFFFFFFFBFFFFFAFFFFFCFFFFFDFFFFFFFCFFFFFBEFF7F0F3FFF3
          F6FFF3F7FFF1FDFFF4FFFFF1FFFFF0FFFFF2FFFFFBFFFFFCFFFFF5FFFFF9FFFB
          FFFDFCFFFBFFF7F8FBFF432F78FBE6FFF6F3FFF8FDEEFFFFF8FBF8F3FFFFFEFF
          FEFFFFFFFEFFFFFCFFFFFBFDFFFBFDFFFBFBFFFBFBFFFCFBFFFEFAFFFEFDFFFF
          FFFFFFFAFBF9FFFFFBFFFFFBFFFFF5FFF9F2FFFFFEFDF6FDFEF5FFFDFAFFFDFF
          FFFBFFF8FDFFF5FAFEF3FFFFFFFFFDFFFFFEFFFFFFF7FFFFEAFBFFE7FAFFEEFA
          FFF4FDFFF9FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFFFFFCFFFFFBFFFFFDFFFFFEFFFFFF
          FFFDFFFFFBFEFFFBFDFFFBFDFFFBFEFFFBFEFFFDFFFFFFFEFFF8F6FCFFFAFFFF
          FAFFFCFAFFFBFDFDFBFFF8F0FFEAF6FFF0F2FFEEFAFFFEFDFEFFFFFDFFFFFDFF
          FFFDFFFFFEFFFFFFFEFFFEFFFBFBFFFAFBFFFFFEFFFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFCFFFFFBFFFFF9FFFFF9FBFEF5FFFFF9F4F6F0FFFFFEFFFFFFFFFEFFFDFDFF
          FDFDFFFDFDFFFDFEFFFDFFFFFDFFFEFFFFFEFFFEFFFDFAFCFFFEFFFBFFFFF8FF
          FCF5FDFCF3F3FFEDEAF9FFFCFFFFFFF7FFFFEAFFFFEDFFFCFFFCFBFFF9FFF7FA
          FFF6FFFEFFFFFCFFFFFFFEFFFFF7FEFFEFFBFFEAF8FFE9F7FFE8FDFFF2FFFFF7
          FFFFFBFFFFFEFFFCFDFFFAFBFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFDFFFFFD
          FFFFFDFFFFFFFFFFFFFEFFFFFBFFFFF9FFFFF9FFFFFBFFFFFEFFFEFFFFFDFFFF
          FFFBFDFFEAF1FFE1FDFFFFFFFBFFFFFAFFFFFFFFFFFFF1FDFFF0FBFFF8FAFFFF
          FAFCFFFBFDFFFFFFFCFFFFFBFFFFFEFFFEFFFFFFFEFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFF
          FFFBFFFFF7FFFFF7FFFFFEFFFBFFFFFAFFFFFBFFF9F2F7FFFEFDFFFFFBFFFFF9
          FFFFFBFFFFFCFFFFFEFDFFFFFDFFFFFFFFFCFAF9EBFFFFF7FFFBFFF8EEFBFCF5
          FCFFFFFCFFFFF4FFFFF2FEFFF8FCFCFCFBF9FFFCF9FFFFFCFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFBFBFFFAFDFFFBFFF8FBFFF7FFFF
          FCFFFEFFFFFAFFFFFCFFFEFDF3FFFFEDFFFFF4FFFFF7FFFDF9FFFFFBFFFFF2FF
          FFF7FAF5FFF7F5FFFFFFF4FFFFEBFEFFEEFFFFF9FFFBFFFFF9FFFFFEFFFFFFF8
          FFFFF5FFFFF8FFFEFFFDFCFFFBFEFFFAFFFFF8FFF7F8FFF4FAFFF7FBFFFBFDFF
          FFFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFEFFFFFFFEFFFFFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFCFEFCFBF9F8F4FBFAF6FFFFFBFFFFFCFFFFFCFFFFFCFDFEFA
          FBFCF8FBFCFAFDFEFCFDFFFFFFFFFFFFFCFFFFF6FFFFF8FFFFFFF1FBFFE2FFFF
          ECFFFFF9FFFAFFFFF8FFFCF8FEFBFCF8FFFFF5FFFFF5FAFEF9FDFFFFFDFFFFFF
          FFFFFFFFFFFFFFFEFFFFF9FFFFFCFCFBFFF8F7FFFAFEF8FDFFF8FFFFFCFFFEFF
          FFF9FFFFFAFFFFFFFBFFFFF8FFFEFFFFFDFFFFFEFFFDFFFEFFFFF7FFFFF5FFFF
          FBFFFEFFFFFBFFFFFCFFFFFFFBFFFFF6FFFFF6FFFFFBFFFEFFFBFAFEFFFFFEFD
          FFFBFDFFF9FBFFF9FCFFFDFEFEFEFCFAFAFDFAF6F8F6ECFFFFF5FFFFF2FFFFF5
          FFFFFCFFFDFFFFFCFFFFFCFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFF
          FBFAFFB3ADD63D2C7DF0E3FFF8F6FFF9FEFFFFFDFFFFFEFFFFFEFFFFFFFEFFFF
          FEFFFFFEFBFFFFFAFFFFFBFFFBFBFFF9EDF2F0F7F7FFFAF0FFB6A6E636276BAC
          A0DCF8F3FFEBE7FFF6F1FFDFD6FF7F71B84C417FE8E7FFF6FEFFF3FFF2E3F0E2
          F0EDFCFFF8FFFFFBFFFFFFF9EBE7D5FFFFEDFFFFEAFDFFF1EDF2F5FAF4FF7966
          ABC8B4F5FFF6FFFAF3F8FFFDFFFFFAF7FFFFF2FAFCF6FAF8FFD7D1FFEDE0FFED
          E2FFCAC5FFBCBBFFADAEE8ABAAE2BCB4F5D6CBFFF3E4FFFAEBFFFAECFFFBEFFF
          FBEFFFFBEEFFF8E9FFF8EEFFFDFCFFFBFFFFFDFCFFFBFAFFEFEDFFFAFDFFF9FF
          F4DFE8E5F8F0FFF0DDFF5338BE2C0DAE2506B52E0ED11B00D51300DA2A0FF214
          00DC1B00E72002DD220CBF250DAF2C0BACF1D9FFF6F7FFEEFBEDFAFFF8FBFFFC
          FFFCFFFFFBFFFFFCFFFFFCFFFFFBFFFFFBFFFBFBFFFAFDFFFAFFFEFBFFFBFEFF
          FBFFFDFAFFF7F9FFF1F5FFFAFFFFFAFDFFFEF6FFFCFBFDF6FFFBF7FFF9FDF7F5
          F5FF472D81F8DDFFFDF8FFFEFFF8FFFFFBFFFFFEFFFDFFFFFDFFFFFEF9FFFFF7
          FFFFF9FDFEFCFDFCFEFBFBFFFBFAFFFBFAFFF7F7FDFAFBFFFFFEFFFEFEFEFFFF
          FEFFFFFCFFFFFCFFFEFBFFFFFCFFFBFDFFF8FFFDF9FFFAFBFFFBFFFEFDFFFEFB
          F8FAFFF8FFFFF6FFFFF6FFFFFAFFFFFFF3FDFFF0F9FFFAF9FDFEFDFCFFFFFBFF
          FFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFA
          FFFFFBFFFFFAFFFFFBFFFFFCFDFFFCFCFFFBFEFFFCFEFFFCFEFDFDFDFBFDFDF9
          FEFCF6FDF8FAFFFCF0F8F1FAFFF9FBFFF8F2FBEEFDFFF5FDFFFBFBFBFFF7F7FF
          F8FFFFF4FFF3F2FFECF1FFEDFAFFFFFCF8FFFFF9FFFFFAFFFFFBFDFFFDFAFFFE
          F9FFFDFDFBF7FFF9F7FFFFF9FFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFF
          FBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFCFFFFFDFF
          FFFEFFFAF8F7FFFFFCFCFDFBFFFEFFFDFCFFFDFAFFFBF9FFFAFAFFFAFBFFF8FE
          FFF8FFFEF8FFF8FBFFF9FFFEFFFBF9FFFAFDFBF9FFFAF5FFF8F8FFFFFBF9FFFF
          F9FFFFFBFFFFFFF8FFFFECFFFFF1FFF8FFFFF7FFFAFFFBFCFFF4FFFFF5FFFDF9
          FFFDFEFFFBFFFFFAFFFFFAFFFFFBFFFDFCFFFAFCFDFCFFFBFCFFF8F9FEF5FBFD
          F7FFFFFEFFFEFFFFFEFFFFFFFCFFFFFBFFFFFCFFFFFEFFFFFEFFFFFEFFFFFBFF
          FFF9FFFFF8FFFFF7FFFFF8FFFFFBFFFFFFFFFDFFFFFBFFFDFFFFFAFFF0F8FFF1
          F9FCFFFDFAFFFFFBFFFFFFFFFEFFEFFAFFEAF9FFF5F8FEFDF8FAFFF9FBFFFDFF
          F9FFFFF6FFFDFAFFFBFDFFFBFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFF
          FBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFFAFFFFFBFFFFF7FFFFF9FF
          FFFAFFFFF9FFFFF9FFFFF7FFFFFAFFFFFBFFFFFEFFFFFFFCFFFFF9FDFFF9FBFF
          FCFAFFFFF8FEFFFBFEFFFFFFF8FAEDEBFFF7FFFFF3FFFFF1FFFBEEFEFFFFF9F3
          F5E1FFFFF0FFFFF0FEFEF8FFFCFEFFFCFFFFFBFFFFFBFFFDFBFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFBFEFFFAFFFEFBFFF4FBFFF2FFFFFEFFFBFFFFF7FFFF
          F6FFFFFBFFFFFDFFFFFCFFFFFBFFFFF8FFFFF6FFFFF8FEFFF8FBFEF7FFFFFDFF
          FFFFF0FFFFE9FFFFEEFFFFF6FFFAFFFFFAFFFFFEFFFFFFF8FFFFF5FFFFF7FFFE
          FFFDFCFFFBFDFFF8FEFFF6FFFFF4FFFFF6FFFFFAFDFFFBFDFFFFFCFFFFFCFFFF
          FEFFFFFEFFFFFFFEFFFFFCFFFFFCFFFFFEFFFFFEFFFEFFFFFEFFF1F0FAF8F7FF
          FDFCFFFDFDFFFDFFFFFDFFFFFDFFFEFDFFFBFDFFFBFDFFF9FDFFF9FDFFF9FDFF
          F9F7FEF7F6FAF4F6F5F9FFF3FFFFF7FFFFFFF3FFFFEDFFFFF2FFFFFCFCF4FFFB
          F5FFFFFEFFFFFFF7FFFFF0FFFFF2FFFFFCFFFCFFFFF6FFFFF7FFFAF9F5FFFFF5
          FBFFF1FBFEF5FBF8FFFCFAFFFDFFF9FDFFF7FFFFFBFFFEFFFFF9FFFFF9FFFFFF
          FBFFFFF8FFFEFFFFFDFFFFFEFFFDFFFCFFFFF5FFFFF5FFFFFEFFFCFFFFFAFFFF
          FCFFFFFFF6FDFEEEFFFFF8FFFFFEFFFAFFFFFDFFFFFFF7FFFFF5FFFEFAFFFEFE
          FFFEFDFFFFFCFFFFFCFFFDFFFFF8FFFFFAFFFFFFF4FFFFF1FFFDFFFFFAFFFFFA
          FFFFFCFFFFFFFFFDFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFBFFFBFBFFB3AFD33D2D
          7AF0E3FFF8F7FFF9FEFFFFFEFFFFFEFFFFFDFFFFFDFFFFFDFFFDFFFFFBFFFCFA
          FFFBFAFFFCF7FCFDF5F7FFFAF5FFAB9CDA392970E0D4FFF8F1FFF8F6FFF0ECFF
          F0E2FF5B4996412F7CF0E6FFF8FDFFEAF7E7FAFFF1F7FFF1FDFCFFFFF9FFFDF6
          FBFDF7F2FFFFF4FEFFE9F8FFE3F8FFEDFAFFFEF6F3FFB5A8E071609FF1E6FFFF
          F8FFFFF9FFFFFCFCFFFFF4FCFCEEFFFFFFFBF9FFF8F4FFECE8FFF2F5FFEFF6FF
          EEF7FFF3FBFFFAFCFFFBFBFFFDFCFFFCFAFFF9F5FAFEFAFFFFFBFFFEF6FFFDF1
          FFFFF7FFFFFDFFFBFDFEF6F5FFFAF7FFF0EFFFEFF1FFF1FAFFEFF5FF443C8F37
          22A12103AA2C0AC82F0FD21C00CC2402E21800E11200DB1C01E51800E11E02D7
          250EBE2F1BAA533FB6F3E6FFE6E7FCFBFFFBFBFFF9FBFFFCFFFEFFFFFCFFFFFD
          FFFFFCFFFFFAFFFFF9FFFDF9FFFAFAFFF9FCFFFCFEFEFFFFFFFFFDFFFFFAFFFF
          FAFFFFFBFFFFFDFFFFFFFEFFFEFFFFF9FFFDFAFFFDFFFFF9F6FF3D2278EED2FF
          FDF7FFFFFFFCFFFCFDFFFEFFFFFDFFFFF9FAFFFFFBFFFFF9FFFFFCFFFFFFFFFD
          FFFFFCFFFDFCFFFDFCFFFDFCFFF9FAFEFDFCFEFFFFFFFFFDFCFFFBFAFFFEFFFF
          FFFEFFFEFAFFFEFFFFFAFFFFFAFFF6F7FBFCFEFEFFFEFFFEFAFFFFF9FFFFF8FF
          FFF8FFFFFAFFFFFFFCFFFFFBFDFEFFFDFCFFFFFCFFFFFCFFFFFBFFFFFCFFFFFB
          FFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFF
          FDFFFFFFFEFFFFFCFFFEFFFFFEFFFFFEFFFFFFFFFDFFFEFBFFFBFBFFFBFBFFF9
          F1FAF0FAFFF8FBFFF7F4FEEDFBFFF1F5FDF2FAFAFFEDEDFFF8FFFFF6FFF8F7FF
          F1F8FFF5F7FBFCFFFBFFFFFBFFFFFCFFFFFDFFFFFFFCFFFFFBFFFFFFFDFAFFFD
          F9FFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFF
          FFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFEF6FFFEF9FFFFFDFFF2F0F0FFFF
          FFFFFFFFF6F5F9F9F8FFFDFAFFFBF9FFFAFAFFFAFCFFF8FEFFF8FFFEF8FFF8FA
          FFF9FAF9FDFFFDFFFDFFFEFAFFFBF3FBF4FAFFFFFDFAFFF7F1FFFFFCFFFFFFFB
          FFFFF2FFFFF8FFF8FFFFF8FFFDFFFFFFFFF7FFFFF5FFFFF8FFFCFFFFFAFFFFF6
          FFFFF6FFFEF5FFFBF7FFFDFCFFFBFFFFFDFFFBFDFFF9FDFFFBFDFFFEFDFEFFF7
          F6F8FFFFFCFFFFFBFFFFFBFFFFFCFFFFFCFFFFFCFFFFFBFFFFF9FFFFF8FFFFF8
          FFFFF9FFFFFCFFFFFFFFFDFFFFFBFFFDFEFFF4FEF1F8FFF7F1F4F8FDFBFFFFFB
          FFFFFFFFFFFFF4FDFFF1FBFFF8FBFFFFFBFDFFFDFDFFFFFFFCFFFFF9FFFFFCFF
          FEFFFFFCFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFCFF
          FFFBFFFFFCFFFFFBFFFFFCFFFFFBFFFFFBFFFFF9FFFFF9FFFFF9FFFFF9FFFFF9
          FFFAF0FFFFFAFFFCF6FFFFFDFFFFFFFEFDFFFBFBFFF9FAFFFCFAFFFFF8FEFFFB
          FEFFFFFBF6FFFEFEFFF1FFFFEDFFFFF4FFFFF7FFFFFFFEFFFFF4FFFFF0FFFFF1
          FFFFF6FFFFFFFFFDFFFFFBFFFEFAFFFBF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFBFFFFFBFFFCFBFFF4FDFFF5FFFFFEFFFBFFFFF7FFFFF6FFFFF9FFFFF8FF
          FFF3FFFFF9FFFFF6FFFFF3FFFFF3FFFFFBFFFFFBFFFFFEFFF7FBE8FEFFEAFFFF
          F2FCFAF2FFFCFFFFFBFFFFFFFEFFFFF9FFFFF7FFFFF9FFFEFFFDFDFFFBFEFFFA
          FEFFF8FEFFF6FDFFF8FDFFFAFCFFFDFCFFFFFCFFFFFDFFFFFEFFFFFFFEFFFFFC
          FFFFFCFFFFFCFFFFFCFFFFFEFFFFFFFFFEFFFDFCFFFBFBFFFDFCFFFBFDFFFDFE
          FFF9FDFEF9FCFAF6FCF7FAFEF8F9FFF7FCFFF8FAFFF8FCFFF8FBFFF9FDFFFBFF
          FEFFFDEEFFFFF8FFFFFAF1FFFFF2FFFFF5FFFFFEFFFAFFFFFBFFFDFFFFFCFFF6
          F9FFECFFFFF4FFFFFCFFF9FFFEF3FFFFFBFFFFFEFAFFFFF7FEFFF6FFFFFBFFFE
          FFFFFEFFFDFFF9F5FBF0FFFFFCFFFEFFFFFAFFFFFBFFFFFFFCFFFFF9FFFFFFFF
          FDFFFFFEFFFDFFFCFFFFF7FFFFF8FFFFFFFFFCFFFFFBFFFFFDFFFFFFF8FCFFF0
          FFFFF9FFFFFFF6F0FBFFFDFFFFFFF7F5F8E9FEFCFBFFFEFFFFFCFBFBF6F3FFFF
          FBFDF3F9FFF6FFFFF2FFFFFFF7FFFFF4FFFDFFFFFAFFFFFBFFFFFDFFFDFFFEFD
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFF8FFFFF7FFFBFBFFB3B1CE3D2F76F0E5FFF8F8FFF9
          FFFEFFFFFCFFFBFAFBF4FBFFFBFFF4EFFEFBFEFFFAFFF7EFFCECF8FFFFF8F9FF
          F5EEFFB1A5E1403077D7CAFFF8F4FFEEEDFFF8F3FFE6DAFF5B459E4F398BE1D9
          FFFAFDFFFAFFFBF6FFF2FFFFF8FFFFFCFFFEFFFFFDFFFFFFFFFFFFFEFFFFFCFD
          FFFBF7FDF8F4F9FAF8FBFFF1F2FF8C87B4A099CCEDE7FFF4EDFFFFF7FFFFFCFF
          FFFFFBFFFFF5FBFBEDF7FAEBFDFEF5FFFFFCFFFDFCFFFFFFFFFEFFFAF8FEFAF7
          FFF9F7FDF9F8FCFFFEFFFFFEFFFFFEFFFFFDFFFFFBFFFFFAFFFDF9FFFBFCFFF8
          FCFFF8FBFFEEF1FFEDF0FFE1E3FF8F8FE92A24990E02982F1BC82409C42205CD
          2100D71F00DE1B00E11800E11800E01800DB1500D02107D12607C6250EA0B6AE
          F5F1F2FFFAFAFFFDFFFFFDFFFFFDFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FDFFFFFDFFFDFEFFFDFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFE
          FFFDFFFEFDFFFDFFFFFBFFFFF9FCFFF6F1FF3F287AF9E2FFF8F3FFFDFFFFFCFB
          FFFFFCFFFFFEFFFFFFFEFFFFFCFFFFFEFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
          FFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFF
          FEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFDFFFEFDFFFEFDFFFEFDFFFCFDFF
          FCFDFFFBFDFFFBFDFFFCFDFEFFFDFDFFFDFFFFFBFFFCFDFFFBFDFFFCFDFFFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFFFFFEFFFFFDFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          FEFFFFFDFFFDFDFFFDFDFFFDFEFFFDFFFFFDFFFFFDFFFCFDFFFEFFFEFFFFFEFF
          FFFFFFFDFFFEFDFFFEFDFFFFFFFEFFFFFDFFFFFEFFFFFFFEFFFFFBFFFFFCFFFD
          FFFFFDFFFFFFFFFFFFFCFFFFFCFFFFFCFFFFFFFFFDFFFFFCFFFFFCFFFFFCFFFF
          FDFFFFFEFFFDFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFCFFFFFEFFFFFEFFFF
          FFFFFEFFFFFEFFFFFEFFFDFFFCFDFFFCFDFFFFFFFEFFFFFEFFFFFFFFFFFFFBFF
          FFFBFDFFFCFDFFFFFDFFFFFFFEFFFFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FEFFFFFEFFFFFFFFFFFFFEFDFFFEFDFFFEFDFFFFFDFFFFFDFFFFFFFFFEFFFEFF
          FFFCFFFFFCFFFFFBFFFFFDFFFFFFFFFFFFFBFFFFF9FFFFFBFFFFFCFFFFFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFE
          FDFFFBFFFFFCFFFFFFFFFEFFFFFCFFFFFCFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFBFFFFF9FFFFFBFFFFFEFFFEFFFF
          FEFFFFFFFFFFFFFEFFFFFCFFFFFEFFFFFFFFFEFFFDFFFFFDFFFFFDFFFFFBFEFF
          FDFEFFFDFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFEFFFFFEFFFDFEFFFFFEFFFDFFFFFFFEFFFDFFFFFFFFFFFD
          FFFEFFFFFEFDFFFEFFFFFEFDFFFEFFFFFEFDFFFEFFFFFEFFFFFFFFFDFFFFFDFF
          FFFFFCFFFFFBFFFFFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFCFFFFFBFFFFFBFFFF
          FEFFFEFFFFFDFFFFFDFFFFFFFEFFFFFCFFFFFCFFFFFEFFFEFFFFFEFFFFFFFEFF
          FFFCFFFFFEFFFEFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFFFFFEFFFFFFFFFFFFFE
          FFFFFCFFFFFCFFFFFFFFFEFFFFFEFFFFFEFFFFFFFCFFFFFCFFFFFEFFFFFFFFFE
          FFFFFEFFFFFFFCFFFFFCFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFEFFFFFCFFFF
          FDFFFFFFFCFFFFFBFFFFFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFF8FFFFF8FFFBFAFFB3B0D03D2F77F0E5FFF8F9FFF9FFFBF2F3EFFBF9F8
          FFFCFFFBF5FFFFFBFFF1F4F9E2EDE3F6FFFCF3F7FFEFECFFA399D54A3E809F95
          D1F6F0FFEAE7FFF8F4FFE7DAFF55448D4D3A83FAEDFFFBFAFFFBFFFCE2E9E2FD
          FFFBFFFFFEFFFEFFFFFFFEFFFFFEFFFFFEFDFFFEFDFFFFFBFEFFFAFCFFF8FBFF
          F0F3FFEBEBFF75749BAFACD9F3F0FFF6F2FFF8F6FFFCFAFFFFFFFFFFFFF9FFFF
          F4FFFFF1FFFFF1FBFCECFFFFF8F3F0ECFFFCFFFFFDFFF7F5FBFDFDFFFDFFFFEB
          EDEEFDFCFEFFFBFFFFFBFFFFF9FFFFF9FFFDF7FFFAF7FFF8F4FFF3F1FFEAE9FF
          AAA5FF463DB51508A02411C62812DC1300CC1F05CF1F03D21F00DE1B00E21900
          E11800DE1800DD1901D91D07D21B01C33111CE331CA6DAD9FFF8FFFFF2F2F8FF
          FDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFF
          F9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF
          FBF6FFB3AADD3D2B7EF0E5FFF8FBFFF9FFF7FBFEFCFFFEFFF4EEF3FFFDFFFFFE
          FFFAFDFFF6FDFFEBF1FFF6F3FFA9A2D5504682A59ED1F6F4FFF8F6FFF5E9FFEE
          DBFF59409C4C3A7FFAFCFFEDF6ECFBFBFFF8F7FFF5F6FFFDFEFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFEFDFFFEFDFFFFFBFEFFF2F5FDF8FBFFF0F3FFF6F7FF6F6F
          93BBB9E3F2EFFFF3F1FFF8FCFFFAFFFFEEF3F1EAF0EBF2F6F1FAFEF9FDFFFFFD
          FFFFFFFEFFEFEFF5FBFCFFF4F6FFF8FEFFDBE4E8F0F9FCF6FFFFF8FCFFFAFAFF
          F8F5FFF6F1FFF3E9FFEFE3FFEBDDFFE7D7FF7C6AD54C36B7270FAB260BBF2707
          D81A00DB1200DF1D00E51F00D71F02D41F00DE1B00E11900DD1800DB1800DB19
          01D92006D62409CA260BB56D5AD1F3F3FFF8FFFFF2F2F8FFFDFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6
          F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFEFFFBF6FFB3A8E03D2A
          81F0E4FFF6FCFFF9FFF8FDFEFFFFFEFFFFFEFDFEFEF8FFFFFBF4F7FBE9E9FFF4
          F1FFA49AD64B427BA9A4D1EFEEFFF7F7FFE6E0FFF8E4FF4D359454408BF4ECFF
          E9F5E3FAFFEEEBECF6FBF7FFFBFAFFFDFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFEFDFFFFFBFEFFFAFDFFFAFCFFF5F6FFF6F7FF706F8FAEADD4EDEBFFF4
          F3FFF5F7FFF6FAFFF8F9FFF8F7FFFAF5FFF5EFFFF4EDFFF6EEFFF2EDFFF8F2FF
          F6F2FFD9D8FFF1F1FFEFF0FFEDF0FFE2E1FFECE7FFDDD5FFC2B8FF9E91E57967
          C5533EAB361E9A250A963314B51A00AD1700BA2B07DD310BF11E00E81700E423
          00EA1F00DA1F00D71D00DD1B00DD1900DA1801D91800DA1901D91B00D22E15D1
          1F099DBFB4FFF3F5FFF8FFFFFDFEFFFEFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FF
          F8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFBFFFEFFFBF9FFB3ABDA3B2C7DF0E3FFF6F8FFF7
          FEFFF9F8FFF9F8FCFFFFF7FBFFECFDFFF7F4F6FFF6EEFF978AD6483788ABA0DE
          E6E9F8F8FDFFF8F0FFE9D6FF4B2C99594297EFF0FEF9FFF1FBFFF8F0F5F4FBFB
          FFEFEDFFF4F4FFFDFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFB
          FEFFF3F7FCF3F5FFF3F5FFF0F2FF6C6C8A4B4A6C44416824214F2F296230276A
          2F226C2C1C6F2F1D763C2986513D9C624EAD6A58B66E5DBE6D5CC37E6EDD1E0C
          8928139E210BA0240CA82B0FAE2B0FAE2C10B02D10B3300FB82F0EBD300BC52E
          09CB2B04D2340CE02E08E31E00D51400CE1B00D41F08D62006D61F00D71F00DA
          1D00DB1B00DA1903D41903D41901D71B00D92000D61B02B85749BFEDEBFFEDF1
          FFFAFEFFFFFEFFFFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFE
          FEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9
          FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFEFFFBFBFFB3AED53B2D7BEFE2FFF6F5FFF7FCFFFCFBFFFFFEFF
          FAFDEEFFFFF5EEF1EFFAF7FFACA0E2463689A595E3F6EDFFF7FAFFF8F9FFF0E1
          FF634CA8523993EFE2FFF7FFF2FAFFE9F7FDF8FBFBFFFBFAFFEBEBF9FBFDFFFC
          FDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFDFEFFFBFEFFF7F9FF
          F8F8FFF8F9FFEBEAFFE4E4FFF6F5FFF2EEFFF3EDFFF3E9FFF3E6FFF3E3FFF3E1
          FFE5D3FFCEBCFFBBACFFB0A1FD6054B43526922513942F17B3280BBF320DD924
          00D52400D62401D42702D42702D42803D52903D92901DC2900E01C00D91900D9
          1F00DE2603E02005D71801C71605C01E0CCB1D01D61F00DB1D00DA1D01D61B04
          D21B04D21B02D61F00D72C0AE10C009EB7B0FFEEF4FFEEF2FFFBFEFFFAF9FBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFF
          F9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFDFEFF
          FAFEFFB1B1CF3B2C7DEFE1FFF6F3FFF7FBFFFBFFFFFAFCF6FFFFFBFFFDFFE6DE
          FCC3B8EA211759D4CAFFF6EEFFEFE7FFE9E0FFF8EAFF432A866B55A7FAF6FFFA
          FFFEF9FFF7ECF4EAF4F7FBF0F1FBFDFAFFFDFCFFE3E5E5FDFFFEFFFFFFFFFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFEFFF8FBFFF4F7FFEDEEFCFAFAFFFAF8
          FFF8F7FFF8F6FFF5F6FFF4F8FFF1F5FFEDEFFFEFEEFFF4F3FFF4F3FFF3F5FFEE
          F3FFF1F6FFEDF3FFBBBEFB2B27863121AB2104B7330DE31300D32000E51E00E3
          1E00DF1D00DD1F00DA1E00DA1E00DD1E00E12400EC2D06F52903EF1900DA1800
          CF2410D42516CB1A09C41D01D71D00DE1D01D71D03D31B05CF1B05CF1D02D421
          01D62C09DB3119B9ECEDFFEBF7FFF8FDFFFCFCFFFFFCFEFFFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6
          F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFDFDFFFAFEFFB1B0D03B2B
          7FEFE0FFF4F4FFF7FEFFFBFFF9F4F8F2FCF8FFFFF4FFB9A7E2402F72E3DBFFF4
          F0FFF1EFFFF6EFFFF4E3FF5B469B54408DF8EEFFF5FCF7F2FEEAFAFFFEFBFCFF
          FBFDFFFBFEFFFAFBFFF1F3F4FDFFFEF9FAF8FFFFFFFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFFFFFDFFFFF4F7FBFBFDFFFBFCFFFAFBFFF5F5FFF5F4FFF6F4FFF5
          F8FFF4FBFEF6FFFFF6FFFFF6FEFFF5FAFFF0F9FDF3FEFBF4FFF9EDFEF3EFFFFF
          ECF8FFDEE0FF5247BB270FAF1C00C12C06E81A00E11700E31800DF1800DC1900
          DA1900DA1900DD1900E11C00E81800E51800E41D00E31B00D91500CA1807C321
          0DD11D00DB1D00DE1D01D61D04D01B06CD1D06CD1F02D32202D22100C7705CEB
          EDF4FFF3FFFBFAFFFFF1F1F7FFFFFFFBF7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FF
          F8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFFEFF2FFACAAD4372681F3E4FFF0F4FFF6
          FFF9FBFFF7FCFEFFF9ECFFF2DEFF321A6E9987D4EBE8FFF4F6FFF8F5FFEFE2FF
          654AAA533C91E4E2F8F8FFF7FBFFFBF6FBFAFBFBFFFBF9FFFDFCFFFDFFFFFDFF
          F7FDFFF7FFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFD
          FFFFFDFEFFFDFDFFFDFCFFFBFCFFFBFBFFFBFAFFFBFAFFFBFCFFFBFFFBFBFFF8
          FBFFFBFBFFFEFDFFFCFBFFF9FBFFF2FAFFEDEFFFE4F4FFF2F1FFFFEFF4FFE0D9
          FF7563E42104AD2909CC1400CF1904DC1802D61100CC200CDA1602D01D07DB16
          00D91900E11900E41900E71B00E51B00E11B00DB1B01D71B00D91B00E11B00E0
          1B02D41B05CF1D06CD1D05CF2103D22404CD2405BEE0D0FFE8F3FFF4FFF2F8FD
          FBFFFEFFFFFBFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFE
          FEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9
          FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFDFCFFF6F4FFF8F9FFB1AEDC37277EE0D6FFE2EAFBF6FFFBEFF3F4FDF7FF
          D9C6FD37206B836CBEF8E7FFF2EFFFF4F5FFE5DEFF5445824A3584F9EBFFFAFF
          FEFAFFEEE9F1E7FBFDFFFBF9FFFBF8FFFDFCFFFDFFFEFDFFF5FDFFF5FFFFFFFF
          FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFEFF
          FDFDFFFDFCFFFDFCFFFBFCFFFDFCFFFDFEFFFDFFF9FFFFF7FFFFFBFFFFFEFFFF
          FEFFFFFBFFFFF4FDFFEEFBFFEAF6FFECEFFDF2F2FAFFF1EFFFDAD1FF7E6BE21F
          0AA3331BDD0D00CB1501D02511E00D00C7200CDB1000D01500D81800DD1800E0
          1900E11900E11B00E11B00DE1B00DD1B00DE1B00E21B00DE1B03D31B06CD1D05
          CF1F04D02203D02607C82108ACE0D5FFF0FCFFF6FFEEF7FBF5FFFEFFFFFEFFFF
          FCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFF
          F9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFAFFFBF9FF
          E5E4FEBCBAE4281E64F1ECFFF3FAFFDEE6F3FAF2FFE5D4FF4E3978715F9CFBED
          FFEFE6FFE4E1FFF3EDFF62519B453575FAF7FFE8EDEEF6FBFAF7FDF8F8FFF8FA
          FEFFFDF9FFFDF8FFFFFCFFFFFFFFFFFFFCFFFFFBFFFFFCFFFFFEFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFE
          FFFDFEFFFFFEFFFFFEFFFFFFFCFFFFFEFFFDFFFFFBFFFFFAFFFFFBFFFFFDFFFF
          FFFCFFFFF5FBFFF2FBFFF7F5FDFCF0F4FFF4F4FFE1DCFF7366CC1903B51B00D7
          1C01DB1D01DD1400D81000D41F06E41E05E11800DA1801D91901D71901D71B01
          D71B01D71D00D91D00DB1B00E01B00DD1B04D21B05CF1D03D32102D32403D028
          0AC1341EACE2DBFFF3FFFFF8FFF0F5FAF1FFFEFFFFFDFFFEF7FAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6
          F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF8F4FFFBF7FFEFEEFFAFAED5433B
          7AF1ECFFE3E5FFF4F5FFA795DA442E7CBDAAE9F5E8FFF5EFFFF7F3FFDDD8FF35
          2B717261ABFAEEFFF0F5F8FAFFF7E6EBEAFBFEFFFBFFFCF5FAF8FDFCFFFDFAFF
          FFFCFFFFFEFFFFFFFFFFFFFEFFFFFCFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFCFFFFFAFFFFF8FFFFF6FFFFF6FFFFF8FFFFFAFFFFFDFFFDFBFA
          FDFFFBFBFFFBE4EAE9F2F8FDF6FCFFDDDBFF4735C4240AC81600C22808DB2100
          DD1100D42B0CF11C01E11901D91902D61903D31904D21B02D41B01D71D00DA1D
          00DD1B00DE1B00DA1B05D01D04D01F00D72100D72402D2290CBB6757CCE7E5FF
          F4FFFFFAFFF4FAFDF4FFFFFEFFFCFFFFF8FEFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FF
          F8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFF4EFFFFBF7FFF6F9FFA7A9CB3E377AEEE4FFF3EEFF9B
          93CF563F94A48CE0F8E8FFFBF6FFF7F8FFF1F3FF3E37746C64A5F8F2FFF5F1FF
          FBF9FFFAFBFFFBFFFFF1F7F2FDFFFCFCFFFBFDFFFEFDFEFFFFFAFFFFFBFFFFFF
          FEFFFFFBFFFFFFFFFEFFFFFEFFFDFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFCFFFFFCFFFFFCFFFFFFFFFBFFFFF9FF
          FFF8FFFFF6FFFFF4FFFFF4FFFFF4FFFFF5FFFFF7FFFBF3FFFCF9FFFDFFFFFBFF
          FEF4FCF5F6FFF5F4F8FFDBD5FF3B2CB3341FBC2207BB2706D32D0AE71C00DE19
          00DC1B00DA1B02D61B03D31B03D31B02D61B00DB1D00E21D00E41B00DE1901D7
          1B05D01D03D21F00DB2200DB2602D22B10B4ABA2FDEFF1FFF1F8FFFBFFFBFFFF
          F9FFFEF9FFFCFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFE
          FEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9
          FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFDFCFFFBFAFFEDF1FFB3B2DE251671EFE0FFB1A6EF4D4385D3BFFFEDD9FF
          FDF0FFFBF5FFD7D5EB3B3B59908BC2F3F0FFF3F3FFFBFEFFF5F4FFFBFAFFF5F8
          FDE6EAEBFDFFFFF6F8F8FDFFF9FDFFFBFFFDFFFFFCFFFFFEFFFFFFFFFFFDFFFF
          FEFFFFFEFFFDFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFE
          FFFFFCFFFFFBFFFFFBFFFFFBFFFFF9FFFFFEFFFCFFFDFBFFFFFBFFFFFBFFFFFA
          FFFFF9FFFFF8FFFFF7FFFFF7FFFFF8FFF6F2FEF5F5FBFBFFFEFBFFF8F1FDEBF6
          FFFFEFF3FFECE7FF36279A3A24B91900B62804DA2300DF1C00DD1D00DA1B02D4
          1B05CF1B05CF1B02D41B00DB1D00E41B00E41900DD1902D61B05CF1D03D31F00
          E02200E02801D22D12AFDCD8FFF3F9FFF1F4FFFBFFFFFFFFF9FFFCF4FFFCFFFF
          FBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFF
          F9FBFFF9F8FBFFF6F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFF8E9EEEC
          F6F8FFB0A7EA391D9FAF93FF211168D9D3FFF8F1FFF0E7FFFDF0FFD1C5F7473A
          727971A6F3F3FFEAF0FFFAFFFFF2FAF0FBFFFFF7FAFFFBFBFFFBFAFFE9E6F5FD
          FDFFFFFFF9FFFFF5FFFFF7FFFFFBFFFCFFFFFAFFFFFBFFFFFDFFFFFEFFFDFFFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFCFFFFFBFFFF
          FBFFFFF9FFFFF8FFFFF9FDFFFCFBFFFCFDFFF8FDFFF5FFFFF4FFFFF4FFFFF7FF
          FFF9FFFFFFFFFEFFFFFDFFF3F4F8F8FDFCFBFFFBF9FFF6F6FFF8F2FFFFEDF4FF
          EDE9FF28158C4225CE2300CA1800CF2F09EB1F00D71D04D01B08C91B09C81D06
          CD1D02D41D00DE1B00E01901D91903D31B05CF1D02D42100E22400E22900D32D
          14AAECEDFFF3FDFFF5F7FFFDFCFFFFFFF9FFFEF4FFFBFFFFF9FFFFFDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFDFFFCFEFEFDFFF9FBFFF9F8FBFFF6
          F0FF3E287AF8E4FFF8F3FFFBFEFFFCF9FFFEFDFFFFFFFEFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF4FAFFFAF7F8FFABA0DE391F
          94311590BEAFFFECE6FFF6F1FFFAF2FFC7BBEF4839767769A9EBE5FFF0F6FFF3
          FFFFF2FDF5FBFFF8FBFFFBF8FCFDF9F9FFF2F0FFFBFAFFFBFAFFFDFFFCFDFFF7
          FDFFF4FDFFF9FFFCFFFFF9FFFFFBFFFFFDFFFDFEFFFDFFFFFDFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFEFFFFFEFFFFFCFFFFFCFFFFFBFFFFF9FF
          FFF9FBFFFBFAFFF8FBFFF5FBFFF2FBFFF0FDFFEEFFFFF1FFFFF5F9FEF5FCFFFD
          FDFEFFFBFEFFFAFEFFFAFFFEFAFFF9F6FFF6F8FFF8F4FDFFEBEDFFDBD3FF341F
          A31D00AF3813E51600D21F00D91D03D21B09C81B0AC51D07CB1D03D31F00DD1D
          00DE1902D61904D21905D01D01D61F00E22400E02804CC2D17A5EAEBFFF2FBFF
          FAFAFFFDFBFFFFFDFCFFFFFAFFFDFFFDF7FCFFFEFFFDFFFFFDFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFEFFFFFBFEFFFAFCFEFEFCFEFEFBFFFCFBFFFFF8FAFFF6F0FF3E2C71F8E8FF
          F8F3FFFBFEFFFAFBFFFCFEFEFFFFFBFFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFFFBFBFFB3B0CA382E5DAEA3DBF8EEFFEC
          E3FFE2D7FFE3D7FF413478665E9BF3F0FFF2F6FFECFBFEF2FFFBF8FFFEFAFFFF
          FAFFFFFAFFFFFAFDFFFAFDFFFAFDFFFBFEFFFBFFFFFBFFFEFBFFFEFBFFFFFBFE
          FFFBFDFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFB
          FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFAFFFFFAFFFF
          FAFFFEFAFFFCFAFFFCFBFFFBFBFFFCFBFFFEFBFFFFFBFFFFFBFEFFFAFFFFFAFF
          FFFAFFFFFAFFFFFAFFFFFDFCFFF8FAFFF2F9FCF3F8FFC2BEFF3D30B00000A136
          16F12408E41700D40F00C11B09C82009D02001D82400E41800D9220ADA1200C6
          1A05D31D04D81B00DC1D00D2280BBE2E1D9CF1EEFFF8F9FFFBFBFFFFFCFFFFFC
          FFFDFFFFFBFFF9FBFFF8FBFFFFFBFFFFFBFEFFFBFFFFFBFEFFFBFFFFFBFEFFFB
          FFFFFBFEFFFBFFFFFBFEFFFBFFFFFBFEFFFBFFFFFBFEFFFBFFFEFBFFF5FBFFF4
          FBFFF9FBFFFEFAFFFFFAFCFFFAF8FFFAF5FF3F3563F1E9FFFAF9FFFAFDFFF1F6
          F5F8FFF6FBFFF4FBFFF5FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFF8F6FCFFFDFFEFEEF2BCBCC2CAC8D4F2EEFFF4EBFFF8EBFFF0DCFF3D2884
          6754B1EDDFFFF3EBFFEAEBFFF1F9FFF3FBFFF5F5FFF7F4FFF7F4FFF7F4FFF7F4
          FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7
          F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FF
          F7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4
          FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF8
          F2FFFFF1FFFFF2FFF6F4FFF4F6FFEDEAFFA99FFF3B24D20000B30D00CF2A10EC
          0B00C4250FD92B12DE0C00C32C07EB2604E51E04D31300C71B05D61C03DD1E00
          E12201D8260BBF3722A7F0E3FFF5EEFFFAF0FFFCF0FFFAEDFFF8EFFFF5F6FFF5
          F8FFF7F5FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F4FF
          F7F4FFF7F4FFF7F4FFF7F4FFF7F4FFF7F5FFF7F7FFF7F8FFF7F6FFF7F3FFF7F0
          FFF7EEFFF7ECFFF7ECFF433968FAF2FFF6F3FFF5F6FFFAFFFFFAFFF9FAFFF4FB
          FFF4FDFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAFBF9
          FFFFFEEEEFF3FDFBFFF6F1FFFBEEFFD9C5FF351A816547BEF2D2FFF4D7FFE3CA
          FFF3E0FFDDCFFFEEE1FFF1E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4
          E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FF
          F4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0
          FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4
          E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4DEFFEED0FFF9DCFF
          F2D8FFE4CFFFEED8FFE0CBFF957DFF3F22E32300DD1900E02D0CF00A00C91700
          CD2E14E30900C32C10E6260CDC1A02D21500D60F00D71600E22B04EC3A16DF65
          46E9ECD4FFF1DBFFF6DBFFF8D9FFF6D4FFF4D4FFF3D9FFF1DDFFF3DFFFF4E0FF
          F4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0FFF4E0
          FFF4E0FFF4E0FFF4DEFFF4DCFFF4DBFFF4DAFFF4D9FFF4D9FFF4D9FFF4D9FFF4
          DBFF341F6AFBEBFFFBF1FFF9F4FFFBFBFFFBFFFFE9F1E6F8FFF4FDFFFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFFFFFEF6F5F7F1EE
          F7FDF7FFFAEEFF352464563E9643288F3E218F351A883921853927802F226E3E
          30773D2A733E29743E29743E29743E29743E29743E29743E29743E29743E2974
          3E29743E29743E29743E29743E29743E29743E29743E29743E29743E29743E29
          743E29743E29743E29743E29743E29743E29743E29743E29743E29743E29743E
          29743E29743E29743E29743E29743E29743E29743E29743E29743E29743E2974
          3E29743E29743E29743E29743E29743E297441297741297D45298C3920882A16
          793120873021941905942306C12200D72300E31400D81500D32209DB1A03D711
          00CE1500CE1B00D72204E52101EA1A00E81900DA0700AB391BBA361F8B3D2779
          42267944247D421E883E1E8A3D23813B277A3E28763E29743E29743E29743E29
          743E29743E29743E29743E29743E29743E29743E29743E29743E29743E29743E
          28763E257B3E257D3E247E3E247E3E247E3E247E3E257B3E28774B377FE6D7FF
          F7ECFFFAF4FFFBF9FFFBFDFFFBFFFFFBFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFBFFFEF8FFF6F2F7FFFEFFFFFFFFEFEEF2FDFAFFFB
          F6FFE3DAFFFAF0FFFAF0FFF8F1FFEAE8FFF1F5FFF6FFFFEDF3FAF8F6FFF9F3FF
          F9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3
          FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9
          F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FF
          F9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3
          FFF9F3FFF9F3FFF9F6FFFBFDFFF0F2FDF7F1FFF8F2FFF1F0FFF1F4FFF1F6FFED
          EDFF4D3FB51E03AD2300D52F07F21900E01A00DF1F07E11300D41A00DD1D00E1
          1800E11600E01A00E23210E7381DCBA18FFFF1E9FFF8F3FFFDF5FFFFF4FFFDF0
          FFFBF0FFF8F6FFF6F7FFF9F4FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9
          F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F3FFF9F4FFF9F7FFF9F7FF
          F9F7FFF9F5FFF9F4FFF9F3FFF9F2FFF9F2FFEAE3FFFBF5FFFBF6FFFBF7FFF5F3
          FFF6F5FFF6F6FFEAECF4FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFF8EFFCFFF9FFFAF3FAF9F7F7FFFFFCFFFFFBF6F7F5EEEFF3FDFCFFFBFBFF
          F9F9FFF4F7FFFAFFFEFAFFF5EEFDE2FAFFF1FBFFFFFBFCFFFBFCFFFBFCFFFBFC
          FFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFB
          FCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFF
          FBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFC
          FFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFB
          FFFFFAFFF1EBF8E2F3F9F8FAFEFFF9FFFDF8FFF9F6FFF8E3EBF8CFCBFF4331AC
          2B0AC62200DB1700E12507F20D00D11E0ADF1600D91E00E21C00E22002E51C00
          DA2004C918059CA196F6F4F6FFFAFFFEFFFFF7FFFFF8FFFEFFFDFFFFFAFFF7FA
          FFF7FBFEFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFF
          FBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFEFFFBFFF8FBFFF4FBFFF5FBFFF7FBFF
          F9FBFFFCFBFFFFFBFFFFFBFEFFFBFDFFF1F2FCFBFBFFF7F7FFFBFBFFFBFBFFFD
          FCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFFFFF7FF
          FFFDFFFFFFFEF6F4ECFAFBF1FFFFF7FFFFFCFFFEFFF6F6FCFDFCFFFBFEFFF4F9
          F8FBFFF9FBFFF4F7FFF3FBFEFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFD
          FBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFF
          FDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFB
          FFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFD
          FBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFBFEFFF7FFF8F7FFF6
          FAFFFBFBFFFCFBFFF9FDFFF9FBFFF5F6FDFAF6F7FFC1B6FF371BB42300CA2400
          E70D00DC2513E80D00CB230ADE2205DE1400D01800D11600C9240EC13022A6E7
          E3FFF4FBFFFAFFF2FFFFEEFFFFF1FFFFFBFDFFFCFBFFF4FAFFF5FBFEFFFDFBFF
          FDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFB
          FFFDFBFFFDFBFFFDFEFFFDFFF7FDFFF1FDFFF2FDFFF2FDFFF2FDFFF2FDFFF4FD
          FFF5F3FAEDFDFFF8FDFFFBFDFFFCFCFEFEF2F4F5F9FBFCF9FBFCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFAF1FBFFFEFFFFFEFAFFFF
          F7FFFFF8FAFBF2FCFBF7F3F2F6FFFCFFFAF6FFFDFAFFFDFBFFF4F3FCFDFEFFFD
          FFFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFF
          FDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFD
          FFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFD
          FDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFF
          FDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFBFEFFF8FEFFF8FFFFF9FEFFFCFEFFFCFB
          FFFEFBFDFEFEF8FBFCF8EEF0F8F4EEFF9481F53013BD2000D42002E51301D015
          05CE1801CF1E02D11A01CD2810DA2008CC210EB9231795E6E3FFF4FCFFFBFFF2
          FFFFF0FFFFF5FFFEFFFDFDFFFBFFFCFAFFFBFDFFFFFDFDFFFDFDFFFDFDFFFDFD
          FFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFD
          FEFFFDFFFEFDFFFCFDFFFBFDFFF8FDFFF7FDFFF5FDFFF4FDFFF2F8FFEDFDFFF4
          FBFFF3F2F9ECFDFFF8FDFFFBFBFFFAFDFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFEFFFFFCFFFFFBFFFFFBFFFFFEFF
          FDFFFFFAFFFFF8FFFFF5FFFFF4FFFFF3FFFFF2FFFFF3FFFDF7FFFDFEFFFDFFFB
          FDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFF
          FBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFD
          FFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFB
          FDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFF
          FBFDFFFBFDFFFBFBFEFFF8F8FFF8F6FFFAF7FFFDF7FFFFF5FFFFF6FFFFF9FFFF
          FBFFF3F1F7FAF6FFF3E6FF6A58D5280FBD1600C32A17DE1605CB220BD21E04CC
          260FD61B04CA1A02C61D06B42B1DA0E0DAFFF4F8FFFBFFFEFFFFFEFFFBFFFFF5
          FFFFF3FFFBF6FFFAFBFFFDFFFFFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFD
          FFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFFFDF8FFFDF5FF
          FDF7FFFDF9FFFDFBFFFDFEFFFDFFFEFDFFFBFDFFF8FDFFF7FDFFF5FDFFF5FDFF
          F7FDFFF8FDFFF9FDFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFEFFFFFFFEFFFFFCFFFFFBFFFFFCFFFFFEFFFEFFFFFCFFFFFAFF
          FFF8FFFFF7FFFFF6FFFFF5FFFFF4FFFFF8FFFFFEFFFDFFF9FDFFF9FDFFF9FDFF
          F9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FD
          FFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9
          FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFF
          F9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FB
          FFFFF8FBFFF8F9FFFBF9FFFDF9FFFFF7FFFFF8FFFFFAFFFFFCFFFFFEFFEFEFFD
          EBE6FFE9DFFF3324A42B18BB1601BC1D06CD2106D21500C81C00CF1D02CE2C10
          D82B13C53021A8EBE3FFF6F7FFFBFFFFFFFFFEFFFBFFFFF5FFFFF3FFFBF7FFFB
          FBFFFDFFFFFDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9
          FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFFFFDF8FFFDF5FFFDF7FFFDF8FFFDFB
          FFFDFDFFFDFFFFFDFFFCFDFFFBFDFFF9FDFFF8FDFFF9FDFFFBFDFFFCFDFFFEFD
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFFFDFF
          FFFEFFFFFFFEFFFFFCFFFFF9FFFFF8FFFFF7FFFFF7FFFFF7FFFFF7FFFFF7FFFF
          F7FFFFF7FFFFF7FFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFBFAFFF1F8FFF0
          FBFFF5FFFFF7FFFFF5FFFFF4FFFFF4FFFFF5FFFCF7FDFEFFF1F4FFF3F2FFD2CD
          FF2D209A361ECA1F01CC2605DC2000DC2403E01E00D82606D91A00B8221099EB
          E3FFF6F9FFFDFFF7FFFFF2FFFFF7FFFDFFFFFDFFFDFFFBFBFFF8FDFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFBFFFFF9FFFFF8FFFFF8FF
          FFF8FFFFF9FFFFFBFFFFFEFFFEFFFFFDFFFFFBFFFFFAFFFFFBFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFF
          FEFFFFFCFFFFF9FFFFF7FFFFF4FFFFF1FFFFF0FFFFEEFFFFEDFFFFEDFFFFEEFF
          FFF2FFFFFCFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFDFFF9FBFFEAFAFFE6FDFFF0FFFFF2FFFF
          EEFFFFEDFFFFEEFFFFF2F8F8F2FFFFFFFBFEFFE2E6F8F1F2FFBAB1FF2A10A32A
          09C52100D32100DE2000DF1400D22200DA2004C22B17A6EDE4FFF8F7FFFDFFF8
          FFFFF2FFFFF4FFFFFEFFFFFEFDFFF4FBFFF4FFFFFCFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FFFFFFFFFBFFFFF8FFFFF8FFFFF7FFFFF8FFFFF8FFFFF8FFFFF9FFFFFCFFFFFE
          FFFEFFFFFCFFFFFBFFFFF9FFFFF8FFFFF9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFFFFFFFDFFFFFFFEFFFDFFFFFFFEFFFF
          FFFEFFFFFBFFFFF9FFFFF8FFFFF7FFFFF7FFFFF7FFFFF8FFFFF9FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFBFDFFF4FDFFF4FDFFFBFFFFFCFFFFF8FFFFF5FFFFF5FF
          FFF9FFFEFFF9F7FDFAFEFFFAFDFFE8EAFFF4EEFF7C67CE23069C2706CC2200DC
          2100DD1400D02603DF3010D3321BB3E0D3FFF8F3FFFDFEFFFFFFFCFFFFFEFFFB
          FFFFFBFFFDFFFCFBFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFDFFFFFDFFFFFCFFFFFBFFFFFB
          FFFFFAFFFFF9FFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFDFFFBFDFFFBFDFFFFFDFEFFFDFDFFFDFCFFFDFCFFFDFDFFFFFEFFFFFFFF
          FFFFFEFFFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFEFFFFFCFFFFFEFFFEFFFFFDFFFBFBFF
          F3F5F6FBFEFFFBFAFFE4DEFFFAEAFF5842B22004B51B00CD2C0EE32305DA1F00
          D42304C52E17AFDDCDFFF8F2FFFDFDFFFFFEFFFFFEFFFFFAFFFFFAFFFDFFFEFB
          FFFBFFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFBFFF9FBFFF9
          FBFFFEFBFEFFFBFCFFFBFBFFFBFBFFFBFBFFFDFCFFFDFDFFFDFFFFFDFFFFFDFF
          FFFDFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFBFF
          FFFFFFFFFFFCFFFFFFFDFDFFFFFBFFFDFCFFFDFEFFF5F7F8FDFDFFFFFBFFFDF5
          FFFFF5FFF6ECFFD1C3FF3B27BC1000B71F07CB270DD51D00CA1F03BB3720B0E4
          D7FFF8F4FFFDFFFFFFFFFBFFFFFBFFFCFFFFFDFFFDFFF8FBFFF5FFFFFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFFFEFFFFFCFFFFFBFFFFFBFFFFF9FFFFF8FFFFF9FFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFBFFFBFBFFFBFBFFFEFBFEFFFDFC
          FFFBFBFFFDFAFFFDFBFFFDFCFFFDFDFFFDFEFFFDFFFFFDFEFFFDFEFFFFFDFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFAFFFFFAFFFFFFFFFFFFFCFDFF
          FFFDFCFFFDFBFFFDFCFFFDFFFFFDFFFFFFFEFFFBF7FFF9F0FFFFF8FFFBF6FFFA
          F3FFB1A1FF3B26BF1901B3250ACF2608D72107C5210CA4B1A6FFF6F6FFFDFFFB
          FFFFF8FFFFF9FFFEFFFFFFFFFBFFF9FBFFF8FDFFFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFCFFFFFCFFFFFCFFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFCFFFFFB
          FFFFFBFFFFF9FFFFF8FFFFF7FFFFF7FFFFF8FFFFFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFFFEFDFFFEFDFFFFFDFFFFFFFEFFFDFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFEFFFFFEFFFFFDFFFFFDFFFFFEFFFDFAFFF9F1FF9282DA
          3216B52F0EDA0E00CF2308E11906B39F98FFEFF4FFFBFFF3FFFFF7FFFFF8FFFC
          F9FDFBFBF9FEFFF8FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDF7FFFBEFFF422BA51C01AF361A
          F00C00CE331BDD6357D9ECF2FFF9FFEEFFFFF4FFFFF9FFFEFFFFFDFFF7FDFFF6
          FDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFDF3FFF9EEFFF0E9FF594FC11401AC1C01CD2000D23E
          26C2F3F3FFFDFFF4FFFFF4FFFFFBFFF9FFFFF9FFFAFFFFF4FEF8FDFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFF8FFF6EDFFF4F9FFE5E8FF332BA82E16C82802D82707B2F4EFFFFDFFF8
          FFFFF5FFFDFAFFF4FFFFF7FFFAFFFEF8FFF8FDFFFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9FFF5EEF5
          FAFFF2E4F6F7DFDFFF1C0B983810DA320CBCE5DAFFFAF9FBFFFFF8FFFFFCFFF3
          FFFDF6FFFAFFFEF8FFF8FDFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF0FBFFFFFCFDFFE6EFFFEBECF5
          FFA399FD2602AC2B05A5D0C2FFEDE9F5FFFFFEFFFEFEFFFAFFFFFBFFFAFFFEF7
          FFFAFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFAFCFFFFF8FDFFE6EDFCE1F3FFFFEFEFFFA088FE39
          1D95D9C8FFF1E8FFFFFBFFFFFFFEFFFFFBFFFFFBFAFFFEF7FDFCFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFEFEFFFAF3FFFFF4FDFFF4F4FFF5EAF0FFF4E9FFDBC8FFF2E4FFFFF6FF
          FFF9FFFFFBFCFDFFF0FFFFF4FBFFFFF9FDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFFFDFF
          FFFCFFFFFEFFFBFFF5FAFFF9FAF9FFFBF5FFFDF8FFFFF9FFFFFAFFFFFEFFFFFF
          F1FFFFF0FBFFFEFBFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFF9FFFFF6FFFFFAFFFFFF
          F5FDFFF0FDFFF9FDFFFEFFFFFCFFFFFFFFFBFFFFFDFFFFFFF4FDFFF1FDFFFEFD
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFFAFFFFF7FFFFF4FFFFF8FFFFFFF8FFFFF0FFFFF2FF
          FFF1FFFFEBFFFFF2FFFDFFFDFBFFFDFFFCFDFFF8FDFFFBFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFBFFFFF8FFFFF5FFFFF8FFFFFFF9FFFFF1FFFFF2FFFFEEFFFFE6FDFFEB
          FDFEFFFDFAFFFDFDFFFDFFFEFFFFFBFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFDFFFBFBFF
          FDF9FFFFFBFFFFFFFBFFFFF7FFFFFBFFFFF5FFFFE9FDFFEDFDFDFFFBF9FFFDFB
          FFFFFEFFFFFFFCFFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFFFF8FFFFFBFCFFFFFCFFFFFF
          FBFFFFF9FFFEFFFFFFFEFDFFF0FBFFF2FBFBFFFBF8FFFDFAFFFFFDFFFFFFFEFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBFFFCF6FFF8F6FFF9FAFFFFFDFEFFFFFFFBFFFFFCFFFBFFFF
          FAFFFDFFFCFBFFFFFBF9FFFBF8FFFDFCFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          FFFBF6FFF4F4FFF5FAFFFFFDFFFFFFFFFBFFFFFCFFF9FFFFF8FFFDFDFFFBFDFF
          FAF8FFFAF8FFFDFEFFFFFFFEFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080}
        mmHeight = 32808
        mmLeft = 0
        mmTop = 0
        mmWidth = 94192
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3503
        mmLeft = 162719
        mmTop = 12700
        mmWidth = 10886
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3503
        mmLeft = 164307
        mmTop = 17463
        mmWidth = 9009
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3503
        mmLeft = 161925
        mmTop = 21431
        mmWidth = 12012
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 175155
        mmTop = 12965
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 175419
        mmTop = 16933
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 175419
        mmTop = 21431
        mmWidth = 7408
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 3440
        mmTop = 38894
        mmWidth = 198967
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CRUCE SANGUINEO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 3969
        mmTop = 32544
        mmWidth = 42069
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 34131
        mmLeft = 2910
        mmTop = 43656
        mmWidth = 199761
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clRed
        mmHeight = 8467
        mmLeft = 2910
        mmTop = 43656
        mmWidth = 199761
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Datos del Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5130
        mmLeft = 4498
        mmTop = 45244
        mmWidth = 37662
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Paciente........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 6879
        mmTop = 55033
        mmWidth = 23773
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telefono........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 6879
        mmTop = 60590
        mmWidth = 23773
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Muestra No...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 6879
        mmTop = 66146
        mmWidth = 23523
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Resultado......:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 6879
        mmTop = 71438
        mmWidth = 24149
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PACIENTEID'
        DataPipeline = ppPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppPaciente'
        mmHeight = 2878
        mmLeft = 32279
        mmTop = 55563
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NOMBREPACIENTE'
        DataPipeline = ppPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppPaciente'
        mmHeight = 2878
        mmLeft = 47890
        mmTop = 55563
        mmWidth = 101336
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TELEFONOS'
        DataPipeline = ppPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppPaciente'
        mmHeight = 2910
        mmLeft = 32279
        mmTop = 61383
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NoAsCorto'
        DataPipeline = ppPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppPaciente'
        mmHeight = 2910
        mmLeft = 32279
        mmTop = 66675
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TELEFONO2'
        DataPipeline = ppPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppPaciente'
        mmHeight = 2910
        mmLeft = 57150
        mmTop = 61648
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RESULTADO_CRUCE'
        DataPipeline = ppPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppPaciente'
        mmHeight = 5027
        mmLeft = 32279
        mmTop = 71702
        mmWidth = 46831
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 34131
        mmLeft = 2646
        mmTop = 80433
        mmWidth = 199761
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = clRed
        mmHeight = 8467
        mmLeft = 2646
        mmTop = 80433
        mmWidth = 199761
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Datos Donaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5130
        mmLeft = 5556
        mmTop = 82021
        mmWidth = 32282
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Donaci'#243'n........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 7938
        mmTop = 91811
        mmWidth = 25275
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha..............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 7938
        mmTop = 98690
        mmWidth = 25525
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tipo de Sangre......:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 7938
        mmTop = 103981
        mmWidth = 32782
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ISTBDonacion'
        DataPipeline = ppDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDonacion'
        mmHeight = 2910
        mmLeft = 42598
        mmTop = 92340
        mmWidth = 65352
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDonacion'
        mmHeight = 2910
        mmLeft = 42598
        mmTop = 99219
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'reactivo'
        DataPipeline = ppDonacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDonacion'
        mmHeight = 2910
        mmLeft = 42598
        mmTop = 104511
        mmWidth = 61119
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 7144
        mmLeft = 2646
        mmTop = 121973
        mmWidth = 198967
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PRUEBAS REALIZADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 80169
        mmTop = 116681
        mmWidth = 39914
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 5556
        mmTop = 124090
        mmWidth = 12012
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 124090
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Resultado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4254
        mmLeft = 96309
        mmTop = 123825
        mmWidth = 16892
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Usuario..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159809
        mmTop = 25665
        mmWidth = 13494
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 175155
        mmTop = 25400
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 81227
        mmTop = 72231
        mmWidth = 10054
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FECHA'
        DataPipeline = ppPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppPaciente'
        mmHeight = 2910
        mmLeft = 93134
        mmTop = 73025
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRUEBAID'
        DataPipeline = ppPruebas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPruebas'
        mmHeight = 2910
        mmLeft = 3440
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DESCRIPCION'
        DataPipeline = ppPruebas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPruebas'
        mmHeight = 2910
        mmLeft = 35454
        mmTop = 0
        mmWidth = 57944
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Resultado'
        DataPipeline = ppPruebas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPruebas'
        mmHeight = 2910
        mmLeft = 96573
        mmTop = 0
        mmWidth = 41275
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppPruebas: TppBDEPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'Pruebas'
    Left = 200
    Top = 248
  end
  object ppDonacion: TppBDEPipeline
    DataSource = DSdatosdonacion
    UserName = 'Paciente1'
    Left = 48
    Top = 152
    object ppDonacionppField1: TppField
      FieldAlias = 'DonacionID'
      FieldName = 'DonacionID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDonacionppField2: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDonacionppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object ppDonacionppField4: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppDonacionppField5: TppField
      FieldAlias = 'NOMBRE'
      FieldName = 'NOMBRE'
      FieldLength = 82
      DisplayWidth = 82
      Position = 4
    end
    object ppDonacionppField6: TppField
      FieldAlias = 'NOMBRE1'
      FieldName = 'NOMBRE1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppDonacionppField7: TppField
      FieldAlias = 'APELLIDOS'
      FieldName = 'APELLIDOS'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppDonacionppField8: TppField
      FieldAlias = 'TipoDonante'
      FieldName = 'TipoDonante'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppDonacionppField9: TppField
      FieldAlias = 'TipoSangre'
      FieldName = 'TipoSangre'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppDonacionppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'DonanteActivo'
      FieldName = 'DonanteActivo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDonacionppField11: TppField
      FieldAlias = 'RH'
      FieldName = 'RH'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object ppDonacionppField12: TppField
      FieldAlias = 'ISTBDonacion'
      FieldName = 'ISTBDonacion'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppDonacionppField13: TppField
      FieldAlias = 'REACTIVO'
      FieldName = 'REACTIVO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 12
    end
  end
end
