inherited frmFactura: TfrmFactura
  Caption = 'Editar facturas'
  ClientHeight = 556
  ClientWidth = 728
  ExplicitWidth = 736
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 728
    ExplicitWidth = 728
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 39
    Width = 728
    Height = 509
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    LookAndFeel = dmAppActions.lnfWeb
    DesignSize = (
      728
      509)
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 694
      Height = 200
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsEntradaPacienteDetalle
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Navigator = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1PRUEBAID: TcxGridDBColumn
          DataBinding.FieldName = 'PRUEBAID'
          Width = 82
        end
        object cxGrid1DBTableView1CODIGOID: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGOID'
          Width = 82
        end
        object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIPCION'
          Width = 227
        end
        object cxGrid1DBTableView1SECUENCIAACT: TcxGridDBColumn
          DataBinding.FieldName = 'SECUENCIAACT'
          Width = 46
        end
        object cxGrid1DBTableView1PRECIO: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO'
          Width = 93
        end
        object cxGrid1DBTableView1TOTALLINEA: TcxGridDBColumn
          DataBinding.FieldName = 'TOTALLINEA'
          Width = 107
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 0
      Top = 0
      DataBinding.DataField = 'NOMBREPACIENTE'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Width = 611
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 0
      Top = 0
      DataBinding.DataField = 'TELEFONO2'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 176
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 0
      Top = 0
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 88
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 0
      Top = 0
      DataBinding.DataField = 'FAX'
      DataBinding.DataSource = dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 237
    end
    object dxLayoutControl2: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 713
      Height = 505
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      LookAndFeel = dmAppActions.lnfWeb
      object cxGrid2: TcxGrid
        Left = 23
        Top = 149
        Width = 661
        Height = 149
        TabOrder = 6
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Enabled = False
          NavigatorButtons.SaveBookmark.Enabled = False
          DataController.DataSource = dsEntradaPacienteDetalle
          DataController.DetailKeyFieldNames = 'Id'
          DataController.KeyFieldNames = 'Id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Navigator = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Producto'
            DataBinding.FieldName = 'PRUEBAID'
            Width = 82
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CODIGOID'
            Width = 82
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'DESCRIPCION'
            Width = 227
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Secuencia'
            DataBinding.FieldName = 'SECUENCIAACT'
            Width = 46
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'PRECIO'
            Width = 93
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTALLINEA'
            Width = 107
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 111
        Top = 36
        DataBinding.DataField = 'ENTRADAID'
        DataBinding.DataSource = dsEntradaPaciente
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 111
        Top = 63
        DataBinding.DataField = 'NOMBREPACIENTE'
        DataBinding.DataSource = dsEntradaPaciente
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 3
        Width = 419
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 111
        Top = 90
        DataBinding.DataField = 'TELEFONO2'
        DataBinding.DataSource = dsEntradaPaciente
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Width = 176
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 354
        Top = 36
        DataBinding.DataField = 'FECHA'
        DataBinding.DataSource = dsEntradaPaciente
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 2
        Width = 88
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 293
        Top = 90
        DataBinding.DataField = 'FAX'
        DataBinding.DataSource = dsEntradaPaciente
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 5
        Width = 237
      end
      object cxButton2: TcxButton
        Left = 238
        Top = 36
        Width = 75
        Height = 21
        Caption = 'Buscar'
        TabOrder = 1
        OnClick = cxButton1Click
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 563
        Top = 304
        DataBinding.DataField = 'TOTALLINEA'
        DataBinding.DataSource = dsTotal
        Properties.ReadOnly = True
        Properties.OnChange = ChangeValueExecute
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 7
        Width = 121
      end
      object cxButton4: TcxButton
        Left = 447
        Top = 404
        Width = 75
        Height = 25
        Action = DataSetPost1
        TabOrder = 11
      end
      object cxButton5: TcxButton
        Left = 528
        Top = 404
        Width = 75
        Height = 25
        Action = DataSetCancel1
        TabOrder = 12
      end
      object cxButton6: TcxButton
        Left = 609
        Top = 404
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Align = alRight
        TabOrder = 13
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 111
        Top = 363
        DataBinding.DataField = 'TOTALPAGADO'
        DataBinding.DataSource = dsEntradaPaciente
        Style.BorderColor = clTeal
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 8
        Width = 176
      end
      object cxButton1: TcxButton
        Left = 374
        Top = 363
        Width = 124
        Height = 21
        Action = Desaplicar
        TabOrder = 10
      end
      object cxButton3: TcxButton
        Left = 293
        Top = 363
        Width = 75
        Height = 21
        Action = Cobros
        TabOrder = 9
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl2Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup2: TdxLayoutGroup
            Caption = 'Factura'
            object dxLayoutGroup3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Factura'
                Control = cxDBTextEdit6
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem2: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fecha'
                Control = cxDBTextEdit9
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutItem3: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Paciente'
              Control = cxDBTextEdit7
              ControlOptions.ShowBorder = False
            end
            object dxLayoutGroup4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem4: TdxLayoutItem
                Caption = 'Telefono'
                Control = cxDBTextEdit8
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem5: TdxLayoutItem
                Control = cxDBTextEdit10
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutGroup5: TdxLayoutGroup
            Caption = 'Detalle'
            object dxLayoutItem7: TdxLayoutItem
              Control = cxGrid2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Total'
              Control = cxDBTextEdit1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Group3: TdxLayoutGroup
            Caption = 'Cobros Aplicados'
            LayoutDirection = ldHorizontal
            object dxLayoutControl2Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Cobros Realiados'
              Control = cxDBTextEdit11
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item7: TdxLayoutItem
              Caption = 'cxButton3'
              ShowCaption = False
              Control = cxButton3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = cxButton1
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl2Group1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          LayoutDirection = ldHorizontal
          object dxLayoutControl2Item4: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'New Item'
            ShowCaption = False
            Control = cxButton4
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item5: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'New Item'
            ShowCaption = False
            Control = cxButton5
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'New Item'
            ShowCaption = False
            Control = cxButton6
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'Detalle'
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'Factura'
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 40
    Top = 10
  end
  inherited alEdit: TActionList
    Left = 372
    Top = 0
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Anterior'
      Enabled = False
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = dsEntradaPaciente
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Sigiente'
      Enabled = False
      Hint = 'Next'
      ImageIndex = 2
      DataSource = dsEntradaPaciente
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Borrar'
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 5
      OnExecute = BorrarExecute
      DataSource = dsEntradaPaciente
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Aceptar'
      Enabled = False
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsEntradaPaciente
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancelar'
      Enabled = False
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsEntradaPaciente
    end
    object ChangeValue: TAction
      Caption = 'ChangeValue'
      OnExecute = ChangeValueExecute
    end
    object Desaplicar: TAction
      Category = 'Botones'
      Caption = 'Desaplicar Cobros'
      OnExecute = DesaplicarExecute
    end
    object Cobros: TAction
      Category = 'Botones'
      Caption = 'Cobros'
      OnExecute = CobrosExecute
    end
    object Borrar: TAction
      Category = 'Botones'
      Caption = 'Borrar'
      OnExecute = BorrarExecute
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 316
    Top = 4
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EntradaId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSVenta '
      'Where EntradaId = :EntradaId')
    Left = 128
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
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '#,##0.00'
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
      DisplayFormat = '#,##0.00'
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
      DisplayFormat = '#,##0.00'
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
    Left = 160
    Top = 56
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = tbEntradaPacienteDetalle
    Left = 264
  end
  object tbEntradaPacienteDetalle: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeDelete = tbEntradaPacienteDetalleBeforeDelete
    AfterDelete = tbEntradaPacienteDetalleAfterDelete
    IndexFieldNames = 'RECID'
    MasterFields = 'RECID'
    MasterSource = dsEntradaPaciente
    TableName = 'BSVENTADETALLE'
    Left = 232
    object tbEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object tbEntradaPacienteDetalleCODIGOID: TStringField
      FieldName = 'CODIGOID'
    end
    object tbEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object tbEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object tbEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object tbEntradaPacienteDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
    end
    object tbEntradaPacienteDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object tbEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object tbEntradaPacienteDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object tbEntradaPacienteDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object tbEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object tbEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object tbEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object tbEntradaPacienteDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object tbEntradaPacienteDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object tbEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object tbEntradaPacienteDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object tbEntradaPacienteDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object tbEntradaPacienteDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object tbEntradaPacienteDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object tbEntradaPacienteDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      Precision = 28
      Size = 12
    end
    object tbEntradaPacienteDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object tbEntradaPacienteDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object tbEntradaPacienteDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object tbEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object tbEntradaPacienteDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object tbEntradaPacienteDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object tbEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object tbEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object tbEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 2
    end
    object tbEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object tbEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object tbEntradaPacienteDetalleResultado: TStringField
      FieldName = 'Resultado'
      Size = 15
    end
    object tbEntradaPacienteDetalleId: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
  end
  object qrTotal: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'RecId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     RECID, SUM(PRECIO) AS PRECIO, SUM(TOTALLINEA) AS TOTA' +
        'LLINEA'
      'FROM         dbo.BSVENTADETALLE'
      'GROUP BY RECID'
      'HAVING      (RECID = :RecId)')
    Left = 128
    Top = 456
    object qrTotalRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrTotalPRECIO: TBCDField
      FieldName = 'PRECIO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 12
    end
    object qrTotalTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 12
    end
  end
  object dsTotal: TDataSource
    AutoEdit = False
    DataSet = qrTotal
    Left = 168
    Top = 448
  end
end
