object dmDonaciones: TdmDonaciones
  OldCreateOrder = False
  Height = 261
  Width = 417
  object Datos: TDataSource
    DataSet = qrDatos
    Left = 112
    Top = 32
  end
  object qrDatos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from BSDonacion')
    Left = 32
    Top = 32
    object qrDatosDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDatosMuestraNo: TStringField
      FieldName = 'MuestraNo'
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
    object qrDatosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDatosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDatosDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDatosDisponible: TBooleanField
      FieldName = 'Disponible'
    end
  end
end
