inherited frmDatosCruce: TfrmDatosCruce
  Caption = 'frmDatosCruce'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 509
        ExplicitHeight = 314
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 509
          ExplicitHeight = 314
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              object tvDatosENTRADAID: TcxGridDBColumn
                DataBinding.FieldName = 'ENTRADAID'
              end
              object tvDatosFECHA: TcxGridDBColumn
                DataBinding.FieldName = 'FECHA'
              end
              object tvDatosHORAENTRADA: TcxGridDBColumn
                DataBinding.FieldName = 'HORAENTRADA'
              end
              object tvDatosNOMBREPACIENTE: TcxGridDBColumn
                DataBinding.FieldName = 'NOMBREPACIENTE'
              end
              object tvDatosTELEFONOS: TcxGridDBColumn
                DataBinding.FieldName = 'TELEFONOS'
              end
              object tvDatosTELEFONO2: TcxGridDBColumn
                DataBinding.FieldName = 'TELEFONO2'
              end
              object tvDatosMuestraNoAS: TcxGridDBColumn
                DataBinding.FieldName = 'MuestraNoAS'
              end
              object tvDatosNoAsCorto: TcxGridDBColumn
                DataBinding.FieldName = 'NoAsCorto'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 509
        ExplicitHeight = 314
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 509
          ExplicitHeight = 314
        end
      end
    end
    object cxButton1: TcxButton [1]
      Left = 521
      Top = 7
      Width = 75
      Height = 25
      Action = ActNuevo
      TabOrder = 1
    end
    object cxButton2: TcxButton [2]
      Left = 521
      Top = 38
      Width = 75
      Height = 25
      Action = ActEditar
      TabOrder = 2
    end
    object cxButton3: TcxButton [3]
      Left = 521
      Top = 69
      Width = 75
      Height = 25
      Action = ActBorrar
      TabOrder = 3
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
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrDatos
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39455.758460115740000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39455.758460300920000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited alEdit: TActionList
    object ActNuevo: TAction
      Caption = 'Nuevo'
      OnExecute = ActNuevoExecute
    end
    object ActEditar: TAction
      Caption = 'Editar'
      OnExecute = ActEditarExecute
    end
    object ActBorrar: TAction
      Caption = 'Borrar'
    end
  end
  object qrDatos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM  PTEntradaPaciente'
      'Where EsCruce = 1')
    Left = 276
    Top = 3
    object qrDatosENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrDatosFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrDatosHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrDatosPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrDatosCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrDatosDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrDatosPOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrDatosENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrDatosRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrDatosNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrDatosFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrDatosFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrDatosRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrDatosRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrDatosFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrDatosHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrDatosFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrDatosNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrDatosPROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrDatosRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrDatosBRUTO: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object qrDatosDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrDatosSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrDatosNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object qrDatosNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrDatosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrDatosTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrDatosTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrDatosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrDatosCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrDatosSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrDatosUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrDatosCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrDatosTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrDatosPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrDatosFAX: TStringField
      FieldName = 'FAX'
    end
    object qrDatosTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrDatosCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrDatosCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrDatosCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrDatosDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrDatosDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrDatosDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrDatosORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrDatosAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrDatosAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrDatosCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrDatosCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrDatosFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrDatosMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrDatosMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrDatosCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrDatosEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrDatosSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrDatosNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrDatosPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrDatosCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrDatosPUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrDatosCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrDatosCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrDatosDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrDatosGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrDatosNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrDatosNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrDatosNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrDatosFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrDatosHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrDatosREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrDatosENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrDatosTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrDatosFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrDatosDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrDatosDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrDatosACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrDatosCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrDatosDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrDatosFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrDatosHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrDatosTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrDatosESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrDatosTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrDatosCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrDatosCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrDatosCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrDatosPACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrDatosCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrDatosDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrDatosDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrDatosRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrDatosTotalPendiente: TBCDField
      FieldName = 'TotalPendiente'
      Precision = 19
    end
    object qrDatosMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDatosNoAsCorto: TStringField
      FieldName = 'NoAsCorto'
      ReadOnly = True
      Size = 11
    end
    object qrDatosEsCruce: TBooleanField
      FieldName = 'EsCruce'
    end
  end
end
