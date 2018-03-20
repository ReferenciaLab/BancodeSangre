object DMI: TDMI
  OldCreateOrder = False
  Height = 286
  Width = 431
  object Inventario: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    TableName = 'BSInventario'
    Left = 24
    Top = 32
    object InventarioCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object InventarioDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object InventarioProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object InventarioCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object InventarioFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object InventarioHora: TStringField
      FieldName = 'Hora'
    end
    object InventarioProcesoID: TWideStringField
      FieldName = 'ProcesoID'
      FixedChar = True
      Size = 10
    end
    object InventarioReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object InventarioReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object InventarioDias: TIntegerField
      FieldName = 'Dias'
    end
    object InventarioVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object InventarioCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object InventarioCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object InventarioDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object InventarioReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object InventarioDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object InventarioPrecio1: TBCDField
      FieldName = 'Precio1'
      Precision = 19
    end
    object InventarioCosto1: TBCDField
      FieldName = 'Costo1'
      Precision = 19
    end
    object InventarioStatus: TWideStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 10
    end
    object InventarioCaja: TBooleanField
      FieldName = 'Caja'
    end
  end
  object Consulta: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       PTCliente'
      'WHERE     (ClienteID = :PacienteID)')
    Left = 128
    Top = 35
  end
end
