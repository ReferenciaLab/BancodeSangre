object dmPruebas: TdmPruebas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 109
  Width = 250
  object qrPruebasDonantes: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSPrueba')
    Left = 48
    Top = 32
    object qrPruebasDonantesPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrPruebasDonantesalias: TStringField
      FieldName = 'alias'
      Size = 80
    end
    object qrPruebasDonantesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrPruebasDonantesPRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPruebasDonantesCOSTO: TBCDField
      FieldName = 'COSTO'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPruebasDonantesCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
    end
    object qrPruebasDonantesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPruebasDonantesGRUPOPRUEBAID: TStringField
      FieldName = 'GRUPOPRUEBAID'
      Size = 10
    end
    object qrPruebasDonantesDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 10
    end
    object qrPruebasDonantesPERMITECAMBIOPRECIO: TIntegerField
      FieldName = 'PERMITECAMBIOPRECIO'
    end
    object qrPruebasDonantesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
    end
    object qrPruebasDonantesPRECIODOLARES: TBCDField
      FieldName = 'PRECIODOLARES'
      Precision = 28
      Size = 12
    end
    object qrPruebasDonantesEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrPruebasDonantesFACTURARCABECERA: TIntegerField
      FieldName = 'FACTURARCABECERA'
    end
    object qrPruebasDonantesPRUEBAS: TIntegerField
      FieldName = 'PRUEBAS'
    end
    object qrPruebasDonantesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
    object qrPruebasDonantesORINA: TIntegerField
      FieldName = 'ORINA'
    end
    object qrPruebasDonantesSANGRE: TIntegerField
      FieldName = 'SANGRE'
    end
    object qrPruebasDonantesCONDPACIENTE: TStringField
      FieldName = 'CONDPACIENTE'
      Size = 255
    end
    object qrPruebasDonantesCONDMUESTRA: TStringField
      FieldName = 'CONDMUESTRA'
      Size = 255
    end
    object qrPruebasDonantesCODDIAPROC: TStringField
      FieldName = 'CODDIAPROC'
      Size = 5
    end
    object qrPruebasDonantesDIASRESULTADO: TIntegerField
      FieldName = 'DIASRESULTADO'
    end
    object qrPruebasDonantesUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object qrPruebasDonantesABREVIACION: TStringField
      FieldName = 'ABREVIACION'
    end
    object qrPruebasDonantesTIPOMUESTRA: TIntegerField
      FieldName = 'TIPOMUESTRA'
    end
    object qrPruebasDonantesMEDIO: TIntegerField
      FieldName = 'MEDIO'
    end
    object qrPruebasDonantesCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object qrPruebasDonantesDEPID: TStringField
      FieldName = 'DEPID'
      Size = 10
    end
    object qrPruebasDonantesTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrPruebasDonantesMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrPruebasDonantesNOPROCESAR: TIntegerField
      FieldName = 'NOPROCESAR'
    end
    object qrPruebasDonantesCOMENTARIONOPROCESAR: TStringField
      FieldName = 'COMENTARIONOPROCESAR'
      Size = 255
    end
    object qrPruebasDonantesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPruebasDonantesRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPruebasDonantesmsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
  end
  object qrPruebas: TADOQuery
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
    Left = 168
    Top = 40
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
    object qrPruebasESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPruebasGRUPOPRUEBAID: TStringField
      FieldName = 'GRUPOPRUEBAID'
      Size = 10
    end
    object qrPruebasDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 10
    end
    object qrPruebasPERMITECAMBIOPRECIO: TIntegerField
      FieldName = 'PERMITECAMBIOPRECIO'
    end
    object qrPruebasCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
    end
    object qrPruebasPRECIODOLARES: TBCDField
      FieldName = 'PRECIODOLARES'
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
      Size = 5
    end
    object qrPruebasORINA: TIntegerField
      FieldName = 'ORINA'
    end
    object qrPruebasSANGRE: TIntegerField
      FieldName = 'SANGRE'
    end
    object qrPruebasCONDPACIENTE: TStringField
      FieldName = 'CONDPACIENTE'
      Size = 255
    end
    object qrPruebasCONDMUESTRA: TStringField
      FieldName = 'CONDMUESTRA'
      Size = 255
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
    object qrPruebasMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrPruebasNOPROCESAR: TIntegerField
      FieldName = 'NOPROCESAR'
    end
    object qrPruebasCOMENTARIONOPROCESAR: TStringField
      FieldName = 'COMENTARIONOPROCESAR'
      Size = 255
    end
    object qrPruebasDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPruebasRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPruebasmsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
  end
end
