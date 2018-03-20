object InterfaseAS: TInterfaseAS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 357
  Width = 543
  object ASConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=INTERFASE;Persist Security Info=True' +
      ';User ID=INTERFASE;Data Source=INTERFASE;Mode=ReadWrite;Initial ' +
      'Catalog=INTERFASE'
    DefaultDatabase = 'S10D7471'
    LoginPrompt = False
    Mode = cmReadWrite
    Left = 128
    Top = 40
  end
  object qrASDetalle: TADOQuery
    Connection = ASConnection
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
    Left = 280
    Top = 203
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
  object qrASEncabezado: TADOQuery
    Connection = ASConnection
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
    Left = 280
    Top = 131
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
      
        '                      RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(day, dbo.P' +
        'TCLIENTE.FECHANACIMIENTO))), 2) + RIGHT('#39'00'#39' + LTRIM(STR(DATEPAR' +
        'T(month, '
      
        '                      dbo.PTCLIENTE.FECHANACIMIENTO))), 2) + RIG' +
        'HT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.PTCLIENTE.FECHANACIMIEN' +
        'TO))), 4) AS FechaNacimiento, '
      
        '                      ISNULL(dbo.PTCLIENTE.TELEFONO, '#39'0'#39') AS Tel' +
        'efono, '#39'Categoria'#39' AS Categoria, RIGHT('#39'00'#39' + LTRIM(STR(DATEPART' +
        '(day, '
      
        '                      dbo.PTENTRADAPACIENTE.FECHA))), 2) + RIGHT' +
        '('#39'00'#39' + LTRIM(STR(DATEPART(month, dbo.PTENTRADAPACIENTE.FECHA)))' +
        ', 2) '
      
        '                      + RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, ' +
        'dbo.PTENTRADAPACIENTE.FECHA))), 4) AS FechaEntrada, dbo.PTENTRAD' +
        'APACIENTE.USERID, '
      
        '                      dbo.PTCLIENTE.SEXO, REPLACE(dbo.PTCLIENTE.' +
        'IDENTIFICACION, '#39'-'#39', '#39#39') AS Cedula, dbo.PTENTRADAPACIENTE.SUCURS' +
        'ALID, '
      
        '                      ISNULL(dbo.PTENTRADAPACIENTE.DOCTORID, '#39'0'#39 +
        ') AS DoctorId, '#39#39' AS Doctor, REPLACE(dbo.PTENTRADAPACIENTE.PACIE' +
        'NTEID, '#39'-'#39', '#39#39') AS Cliente, '
      
        '                      0 AS Facturado, 0 AS Pagado, 0 AS Resto, 1' +
        ' AS TipResPaciente, 0 AS Internet, 0 AS TipResDoctor, 0 AS Inter' +
        'netDoctor, 1 AS TipResCliente, '
      
        '                      0 AS InternetCliente, '#39'Banco de Sangre'#39' AS' +
        ' Comentario'
      'FROM         dbo.PTENTRADAPACIENTE INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.PTENTRADAPACIENTE.PAC' +
        'IENTEID = dbo.PTCLIENTE.CLIENTEID INNER JOIN'
      
        '                      dbo.BSDonacion ON dbo.PTENTRADAPACIENTE.EN' +
        'TRADAID = dbo.BSDonacion.DonacionID'
      'WHERE dbo.PTEntradaPaciente.MuestraNo = :MuestraNo')
    Left = 120
    Top = 131
  end
  object qrSQLDetalle: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.MuestraNoAS AS Muestra, REPLACE(dbo.PT' +
        'ENTRADAPACIENTEDETALLE.PRUEBAID, '#39'-'#39', '#39#39') AS PruebaID, '
      
        '                      dbo.PTPRUEBA.DESCRIPCION, '#39'C'#39' AS Status, I' +
        'SNULL(dbo.PTPRUEBA.DEPARTAMENTO, '#39'0'#39') AS Departamento, RIGHT('#39'00' +
        #39' + LTRIM(STR(DATEPART(day,'
      
        '                       dbo.PTENTRADAPACIENTE.FECHA))), 2) + RIGH' +
        'T('#39'00'#39' + LTRIM(STR(DATEPART(month, dbo.PTENTRADAPACIENTE.FECHA))' +
        '), 2) '
      
        '                      + RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, ' +
        'dbo.PTENTRADAPACIENTE.FECHA))), 4) AS FechaEntrada, '
      
        '                      SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRAD' +
        'A, 1, 2) + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTRADA, 4, 2) '
      
        '                      + SUBSTRING(dbo.PTENTRADAPACIENTE.HORAENTR' +
        'ADA, 7, 2) AS Hora, dbo.PTENTRADAPACIENTE.USERID, '#39'Banco de Sang' +
        're'#39' AS Comentario, '
      '                      0 AS Peticion2, 0 AS MuestraAnterior'
      'FROM         dbo.PTENTRADAPACIENTEDETALLE INNER JOIN'
      
        '                      dbo.PTPRUEBA ON dbo.PTENTRADAPACIENTEDETAL' +
        'LE.PRUEBAID = dbo.PTPRUEBA.PRUEBAID INNER JOIN'
      
        '                      dbo.PTENTRADAPACIENTE ON dbo.PTENTRADAPACI' +
        'ENTEDETALLE.MUESTRANO = dbo.PTENTRADAPACIENTE.MUESTRANO INNER JO' +
        'IN'
      
        '                      dbo.BSDonacion ON dbo.PTENTRADAPACIENTE.EN' +
        'TRADAID = dbo.BSDonacion.DonacionID'
      'WHERE dbo.PTEntradaPacienteDetalle.MuestraNo = :MuestraNo')
    Left = 112
    Top = 195
  end
  object qrASResult: TADOQuery
    Connection = qrResult
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
      'SELECT *'
      'FROM QS36F.LAP04901'
      'WHERE ( L49MUE = :Muestra )'
      'AND ( L49PRU = :Codigo )')
    Left = 384
    Top = 139
    object qrASResultL49MUE: TBCDField
      FieldName = 'L49MUE'
      Precision = 11
      Size = 0
    end
    object qrASResultL49PRU: TIntegerField
      FieldName = 'L49PRU'
    end
    object qrASResultL49RES: TStringField
      FieldName = 'L49RES'
      FixedChar = True
      Size = 15
    end
  end
  object qrResult: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=FIDEL;Persist Security Info=True;Use' +
      'r ID=JULIO;Data Source=Laboratorio;Mode=ReadWrite'
    DefaultDatabase = 'S10D7471'
    LoginPrompt = False
    Mode = cmReadWrite
    Left = 368
    Top = 40
  end
  object qrTipificacion: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM INTERFASE.LAP05701')
    Left = 384
    Top = 211
    object qrTipificacionL57MUE: TBCDField
      FieldName = 'L57MUE'
      Precision = 11
      Size = 0
    end
    object qrTipificacionL57PRU: TIntegerField
      FieldName = 'L57PRU'
    end
    object qrTipificacionL57GRU: TStringField
      FieldName = 'L57GRU'
      FixedChar = True
      Size = 15
    end
    object qrTipificacionL57FAC: TStringField
      FieldName = 'L57FAC'
      FixedChar = True
      Size = 15
    end
    object qrTipificacionL57VAD: TStringField
      FieldName = 'L57VAD'
      FixedChar = True
      Size = 15
    end
    object qrTipificacionL57FEC: TIntegerField
      FieldName = 'L57FEC'
    end
    object qrTipificacionL57HOR: TIntegerField
      FieldName = 'L57HOR'
    end
    object qrTipificacionL57USU: TStringField
      FieldName = 'L57USU'
      FixedChar = True
      Size = 15
    end
    object qrTipificacionL57NOM: TStringField
      FieldName = 'L57NOM'
      FixedChar = True
      Size = 50
    end
  end
  object tbConfig: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    TableName = 'BSConfig'
    Left = 240
    Top = 24
    object tbConfigSendToAs400: TBooleanField
      FieldName = 'SendToAs400'
    end
  end
  object qrGetTipificacion: TADOQuery
    Connection = ASConnection
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
      'FROM INTERFASE.LAP05701'
      'WHERE L57MUE = :Muestra')
    Left = 384
    Top = 275
    object qrGetTipificacionL57MUE: TBCDField
      FieldName = 'L57MUE'
      Precision = 11
      Size = 0
    end
    object qrGetTipificacionL57PRU: TIntegerField
      FieldName = 'L57PRU'
    end
    object qrGetTipificacionL57GRU: TStringField
      FieldName = 'L57GRU'
      FixedChar = True
      Size = 15
    end
    object qrGetTipificacionL57FAC: TStringField
      FieldName = 'L57FAC'
      FixedChar = True
      Size = 15
    end
    object qrGetTipificacionL57VAD: TStringField
      FieldName = 'L57VAD'
      FixedChar = True
      Size = 15
    end
    object qrGetTipificacionL57FEC: TIntegerField
      FieldName = 'L57FEC'
    end
    object qrGetTipificacionL57HOR: TIntegerField
      FieldName = 'L57HOR'
    end
    object qrGetTipificacionL57USU: TStringField
      FieldName = 'L57USU'
      FixedChar = True
      Size = 15
    end
    object qrGetTipificacionL57NOM: TStringField
      FieldName = 'L57NOM'
      FixedChar = True
      Size = 50
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=INTERFASE;Persist Security Info=True' +
      ';User ID=INTERFASE;Data Source=INTERFASE;Mode=ReadWrite;Initial ' +
      'Catalog=QS36F'
    DefaultDatabase = 'S10D7471'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'MSDASQL.1'
    Left = 464
    Top = 56
  end
  object ADOTable1: TADOTable
    Connection = DM.Database
    CursorType = ctStatic
    TableName = 'BSConfig'
    Left = 208
    Top = 96
    object BooleanField1: TBooleanField
      FieldName = 'SendToAs400'
    end
  end
  object qrASEncabezadoCruce: TADOQuery
    Connection = ASConnection
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
      'SELECT *               '
      'FROM INTERFASE.INP00301'
      'WHERE IN3MUE = :Muestra')
    Left = 128
    Top = 275
    object qrASEncabezadoCruceIN3MUE: TBCDField
      FieldName = 'IN3MUE'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoCruceIN3NOM: TStringField
      FieldName = 'IN3NOM'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoCruceIN3HOR: TIntegerField
      FieldName = 'IN3HOR'
    end
    object qrASEncabezadoCruceIN3DIR: TStringField
      FieldName = 'IN3DIR'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoCruceIN3EDA: TIntegerField
      FieldName = 'IN3EDA'
    end
    object qrASEncabezadoCruceIN3NAC: TIntegerField
      FieldName = 'IN3NAC'
    end
    object qrASEncabezadoCruceIN3TEL: TStringField
      FieldName = 'IN3TEL'
      FixedChar = True
      Size = 10
    end
    object qrASEncabezadoCruceIN3CAT: TStringField
      FieldName = 'IN3CAT'
      FixedChar = True
    end
    object qrASEncabezadoCruceIN3FEC: TIntegerField
      FieldName = 'IN3FEC'
    end
    object qrASEncabezadoCruceIN3USU: TStringField
      FieldName = 'IN3USU'
      FixedChar = True
      Size = 10
    end
    object qrASEncabezadoCruceIN3SEX: TStringField
      FieldName = 'IN3SEX'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoCruceIN3CED: TBCDField
      FieldName = 'IN3CED'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoCruceIN3SUC: TIntegerField
      FieldName = 'IN3SUC'
    end
    object qrASEncabezadoCruceIN3CDO: TIntegerField
      FieldName = 'IN3CDO'
    end
    object qrASEncabezadoCruceIN3DOC: TStringField
      FieldName = 'IN3DOC'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoCruceIN3CLI: TBCDField
      FieldName = 'IN3CLI'
      Precision = 10
      Size = 0
    end
    object qrASEncabezadoCruceIN3FAC: TBCDField
      FieldName = 'IN3FAC'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoCruceIN3PAG: TBCDField
      FieldName = 'IN3PAG'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoCruceIN3RES: TBCDField
      FieldName = 'IN3RES'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoCruceIN3EPA: TIntegerField
      FieldName = 'IN3EPA'
    end
    object qrASEncabezadoCruceIN3IPA: TIntegerField
      FieldName = 'IN3IPA'
    end
    object qrASEncabezadoCruceIN3EDO: TIntegerField
      FieldName = 'IN3EDO'
    end
    object qrASEncabezadoCruceIN3IDO: TIntegerField
      FieldName = 'IN3IDO'
    end
    object qrASEncabezadoCruceIN3RCL: TIntegerField
      FieldName = 'IN3RCL'
    end
    object qrASEncabezadoCruceIN3ICL: TIntegerField
      FieldName = 'IN3ICL'
    end
    object qrASEncabezadoCruceIN3COM: TStringField
      FieldName = 'IN3COM'
      FixedChar = True
      Size = 50
    end
    object qrASEncabezadoCruceIN3ABR: TIntegerField
      FieldName = 'IN3ABR'
    end
    object qrASEncabezadoCruceIN3REL: TBCDField
      FieldName = 'IN3REL'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoCruceIN3REF: TStringField
      FieldName = 'IN3REF'
      FixedChar = True
    end
    object qrASEncabezadoCruceIN3ACT: TStringField
      FieldName = 'IN3ACT'
      FixedChar = True
      Size = 1
    end
  end
  object qrASDetallecruce: TADOQuery
    Connection = ASConnection
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
    Left = 288
    Top = 275
    object qrASDetallecruceIN4MUE: TBCDField
      FieldName = 'IN4MUE'
      Precision = 11
      Size = 0
    end
    object qrASDetallecruceIN4COD: TIntegerField
      FieldName = 'IN4COD'
    end
    object qrASDetallecruceIN4NOM: TStringField
      FieldName = 'IN4NOM'
      FixedChar = True
      Size = 50
    end
    object qrASDetallecruceIN4STS: TStringField
      FieldName = 'IN4STS'
      FixedChar = True
      Size = 1
    end
    object qrASDetallecruceIN4DEP: TIntegerField
      FieldName = 'IN4DEP'
    end
    object qrASDetallecruceIN4FEC: TIntegerField
      FieldName = 'IN4FEC'
    end
    object qrASDetallecruceIN4HOR: TIntegerField
      FieldName = 'IN4HOR'
    end
    object qrASDetallecruceIN4USU: TStringField
      FieldName = 'IN4USU'
      FixedChar = True
      Size = 10
    end
    object qrASDetallecruceIN4COM: TStringField
      FieldName = 'IN4COM'
      FixedChar = True
      Size = 100
    end
    object qrASDetallecruceIN4PET: TIntegerField
      FieldName = 'IN4PET'
    end
    object qrASDetallecruceIN4ANT: TBCDField
      FieldName = 'IN4ANT'
      Precision = 11
      Size = 0
    end
    object qrASDetallecruceIN4VAL: TBCDField
      FieldName = 'IN4VAL'
      Precision = 11
      Size = 2
    end
    object qrASDetallecruceIN4TIP: TStringField
      FieldName = 'IN4TIP'
      FixedChar = True
      Size = 1
    end
    object qrASDetallecruceIN4ACT: TStringField
      FieldName = 'IN4ACT'
      FixedChar = True
      Size = 1
    end
  end
end
