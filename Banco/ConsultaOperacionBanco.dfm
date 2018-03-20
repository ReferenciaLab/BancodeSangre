inherited frmDialogConsultaOeracionBanco: TfrmDialogConsultaOeracionBanco
  Caption = 'Consultar productos'
  ClientHeight = 437
  ClientWidth = 906
  OnCreate = FormCreate
  ExplicitTop = 2
  ExplicitWidth = 914
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 906
    Height = 437
    ExplicitWidth = 722
    ExplicitHeight = 437
    object Label1: TLabel [0]
      Left = 545
      Top = 36
      Width = 54
      Height = 13
      Caption = 'ProductoID'
      Color = 16311249
      FocusControl = DBEdit1
      ParentColor = False
    end
    inherited cgDatos: TcxGrid
      Left = 0
      Top = 0
      Width = 702
      Height = 234
      TabOrder = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 702
      ExplicitHeight = 234
      inherited dbDatos: TcxGridDBTableView
        DataController.DataSource = dsDetalles
        DataController.KeyFieldNames = 'CodigoId'
        object dbDatosCodigoId: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CodigoId'
        end
        object dbDatosCantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object dbDatosHora: TcxGridDBColumn
          DataBinding.FieldName = 'Hora'
        end
        object dbDatosDonacionId: TcxGridDBColumn
          Caption = 'Origen'
          DataBinding.FieldName = 'DonacionId'
        end
        object dbDatosReservado: TcxGridDBColumn
          DataBinding.FieldName = 'Reservado'
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 820
      Top = 401
      TabOrder = 6
      ExplicitLeft = 820
      ExplicitTop = 401
    end
    inherited btaceptar: TcxButton
      Left = 739
      Top = 401
      TabOrder = 5
      ExplicitLeft = 739
      ExplicitTop = 401
    end
    object cxGrid1: TcxGrid [6]
      Left = 35
      Top = 145
      Width = 190
      Height = 234
      TabOrder = 3
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'ProductoID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView1ProductoDes: TcxGridDBColumn
          Caption = 'Producto'
          DataBinding.FieldName = 'ProductoDes'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object DBEdit1: TDBEdit [7]
      Left = 56
      Top = 71
      Width = 130
      Height = 17
      BorderStyle = bsNone
      DataField = 'ProductoID'
      DataSource = dsDatos
      TabOrder = 2
      OnChange = ActDetallesExecute
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        Visible = False
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'Label1'
          ShowCaption = False
          Control = Label1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item8: TdxLayoutItem [1]
        Caption = 'DBEdit1'
        Visible = False
        Control = DBEdit1
      end
      object dxLayoutControl1Group4: TdxLayoutGroup [2]
        Caption = 'New Group'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group3: TdxLayoutGroup
          Caption = 'New Group'
          object dxLayoutControl1Item3: TdxLayoutItem
            Control = cxGrid1
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          Caption = 'New Group'
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrBancoInventario
    Left = 100
    Top = 151
  end
  object qrDetalles: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductoId'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         dbo.BSInventario'
      'WHERE     (ProductoID = :ProductoId) AND (Disponible = 1)'
      'ORDER BY Fecha, Hora')
    Left = 128
    Top = 283
    object qrDetallesProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDetallesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrDetallesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDetallesDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrDetallesReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDetallesCodigoId: TWideStringField
      FieldName = 'CodigoId'
      ReadOnly = True
      Size = 31
    end
    object qrDetallesHora: TStringField
      FieldName = 'Hora'
    end
  end
  object dsDetalles: TDataSource
    DataSet = qrDetalles
    Left = 208
    Top = 280
  end
  object alEdit: TActionList
    Left = 364
    Top = 120
    object ActDetalles: TAction
      Caption = 'ActDetalles'
      OnExecute = ActDetallesExecute
    end
  end
  object qrBancoInventario: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.ProductoID, dbo.BSProductos.Producto' +
        'Des, SUM(dbo.BSInventario.Cantidad) AS Cantidad, dbo.BSProductos' +
        '.Precio, '
      '                      dbo.BSProductos.PrecioDolares'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      'WHERE     (dbo.BSInventario.Disponible = 1)'
      
        'GROUP BY dbo.BSInventario.ProductoID, dbo.BSProductos.ProductoDe' +
        's, dbo.BSProductos.Precio, dbo.BSProductos.PrecioDolares')
    Left = 64
    Top = 147
    object qrBancoInventarioProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrBancoInventarioProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrBancoInventarioCantidad: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 19
    end
    object qrBancoInventarioPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrBancoInventarioPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
  end
end
