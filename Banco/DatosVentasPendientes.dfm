inherited frmDatosVentasPendientes: TfrmDatosVentasPendientes
  Caption = 'Despachar pagos anticipados'
  ClientHeight = 471
  ClientWidth = 827
  ExplicitWidth = 835
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 827
    Height = 438
    ExplicitWidth = 827
    ExplicitHeight = 438
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 523
      ActivePage = tsDatos
      ExplicitWidth = 736
      ExplicitHeight = 523
      ClientRectBottom = 523
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 803
        ExplicitHeight = 414
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 499
          ExplicitWidth = 803
          ExplicitHeight = 414
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 415
            ExplicitWidth = 550
            ExplicitHeight = 415
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'Id'
              DataController.KeyFieldNames = 'Id'
              object tvDatosENTRADAID: TcxGridDBColumn
                Caption = 'Entrada'
                DataBinding.FieldName = 'ENTRADAID'
              end
              object tvDatosFECHA: TcxGridDBColumn
                Caption = 'Fecha'
                DataBinding.FieldName = 'FECHA'
              end
              object tvDatosPACIENTEID: TcxGridDBColumn
                Caption = 'Paciente'
                DataBinding.FieldName = 'PACIENTEID'
              end
              object tvDatosNOMBREPACIENTE: TcxGridDBColumn
                Caption = 'Nombre'
                DataBinding.FieldName = 'NOMBREPACIENTE'
              end
              object tvDatosPRUEBAID: TcxGridDBColumn
                Caption = 'Producto'
                DataBinding.FieldName = 'PRUEBAID'
              end
              object tvDatosDESCRIPCION: TcxGridDBColumn
                Caption = 'Descripcion'
                DataBinding.FieldName = 'DESCRIPCION'
              end
              object tvDatosAnticipo: TcxGridDBColumn
                DataBinding.FieldName = 'Anticipo'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 803
        ExplicitHeight = 414
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 499
          ExplicitWidth = 803
          ExplicitHeight = 414
          object cxDBTextEdit6: TcxDBTextEdit [0]
            Left = 64
            Top = 63
            DataBinding.DataField = 'NOMBREPACIENTE'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 305
          end
          object cxDBTextEdit1: TcxDBTextEdit [1]
            Left = 64
            Top = 90
            DataBinding.DataField = 'FECHA'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 117
          end
          object cxButton1: TcxButton [2]
            Left = 528
            Top = 371
            Width = 123
            Height = 25
            Caption = 'Asociar Despachos'
            TabOrder = 4
            OnClick = cxButton1Click
          end
          object cxGrid1: TcxGrid [3]
            Left = 23
            Top = 149
            Width = 745
            Height = 212
            Align = alClient
            TabOrder = 3
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              NavigatorButtons.SaveBookmark.Enabled = False
              DataController.DataSource = dsInventario
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView2CodigoId: TcxGridDBColumn
                Caption = 'Codigo'
                DataBinding.FieldName = 'CodigoId'
              end
              object cxGridDBTableView2ProductoDes: TcxGridDBColumn
                Caption = 'Producto'
                DataBinding.FieldName = 'ProductoDes'
              end
              object cxGridDBTableView2Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
              end
              object cxGridDBTableView2Reservado: TcxGridDBColumn
                DataBinding.FieldName = 'Reservado'
              end
              object cxGridDBTableView2Disponible: TcxGridDBColumn
                DataBinding.FieldName = 'Disponible'
              end
              object cxGridDBTableView2NOMBREPACIENTE: TcxGridDBColumn
                Caption = 'Donante'
                DataBinding.FieldName = 'NOMBREPACIENTE'
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
          object cxDBTextEdit2: TcxDBTextEdit [4]
            Left = 64
            Top = 36
            DataBinding.DataField = 'FECHA'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 117
          end
          object cxButton2: TcxButton [5]
            Left = 657
            Top = 371
            Width = 123
            Height = 25
            Align = alRight
            Caption = 'Asociar Reservas'
            TabOrder = 5
            OnClick = cxButton2Click
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Datos'
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Factura'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Cliente'
                Control = cxDBTextEdit6
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fecha'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup1: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Productos para despachar'
              object lcDatosItem5: TdxLayoutItem
                Control = cxGrid1
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup3: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avBottom
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = cxButton1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = cxButton2
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 827
    ExplicitWidth = 827
  end
  inherited dsDatos: TDataSource
    DataSet = qrAnticipos
    Left = 172
    Top = 65535
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39366.416310555560000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39366.416311273150000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qrAnticipos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSVenta.ENTRADAID, dbo.BSVenta.FECHA, dbo.BSVenta' +
        '.PACIENTEID, dbo.BSVenta.NOMBREPACIENTE, dbo.BSVENTADETALLE.PRUE' +
        'BAID, '
      
        '                      dbo.BSVENTADETALLE.DESCRIPCION, dbo.BSProd' +
        'uctos.Anticipo, dbo.BSVENTADETALLE.CODIGOID, dbo.BSVenta.RECID, ' +
        'dbo.BSVENTADETALLE.Id, '
      '                      dbo.BSProductos.Servicio'
      'FROM         dbo.BSVenta INNER JOIN'
      
        '                      dbo.BSVENTADETALLE ON dbo.BSVenta.RECID = ' +
        'dbo.BSVENTADETALLE.RECID INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSVENTADETALLE.PRUE' +
        'BAID = dbo.BSProductos.ProductoID'
      
        'WHERE     (dbo.BSProductos.Anticipo = 1) AND (dbo.BSVENTADETALLE' +
        '.CODIGOID IS NULL) OR'
      '                      (RTRIM(dbo.BSVENTADETALLE.CODIGOID) = '#39#39')')
    Left = 140
    Top = 3
    object qrAnticiposENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrAnticiposFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrAnticiposPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrAnticiposNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrAnticiposPRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrAnticiposDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrAnticiposAnticipo: TBooleanField
      FieldName = 'Anticipo'
    end
    object qrAnticiposCODIGOID: TStringField
      FieldName = 'CODIGOID'
    end
    object qrAnticiposRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrAnticiposId: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrAnticiposServicio: TBooleanField
      FieldName = 'Servicio'
    end
  end
  object dsInventario: TDataSource
    AutoEdit = False
    DataSet = qrInventario
    OnStateChange = dsDatosStateChange
    Left = 396
    Top = 65535
  end
  object qrInventario: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.CodigoId, dbo.BSInventario.DonacionI' +
        'd, dbo.BSInventario.ProductoID, dbo.BSInventario.Cantidad, dbo.B' +
        'SInventario.Fecha, '
      
        '                      dbo.BSInventario.Hora, dbo.BSInventario.Pr' +
        'ocesoID, dbo.BSInventario.Reservado, dbo.BSInventario.ReservadoH' +
        'asta, dbo.BSInventario.Dias, '
      
        '                      dbo.BSInventario.Vence, dbo.BSInventario.C' +
        'ruce, dbo.BSInventario.CrucePacienteId, dbo.BSInventario.Disponi' +
        'ble, dbo.BSInventario.ReceptorId, '
      
        '                      dbo.BSInventario.DoctorId, dbo.BSInventari' +
        'o.Precio1, dbo.BSInventario.Costo1, dbo.BSInventario.Status, dbo' +
        '.BSInventario.Caja, '
      
        '                      dbo.BSProductos.ProductoDes, dbo.PTENTRADA' +
        'PACIENTE.NOMBREPACIENTE'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.PTENTRADAPACIENTE ON dbo.BSInventario.' +
        'DonacionId = dbo.PTENTRADAPACIENTE.ENTRADAID INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      
        'WHERE     (dbo.BSInventario.Disponible = 1) AND (dbo.BSInventari' +
        'o.Reservado = 0)'
      'AND (dbo.BSInventario.Caja = 0)')
    Left = 364
    Top = 3
    object qrInventarioCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrInventarioDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrInventarioProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrInventarioCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrInventarioFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrInventarioHora: TStringField
      FieldName = 'Hora'
    end
    object qrInventarioProcesoID: TWideStringField
      FieldName = 'ProcesoID'
      FixedChar = True
      Size = 10
    end
    object qrInventarioReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrInventarioReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrInventarioDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrInventarioVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object qrInventarioCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrInventarioCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object qrInventarioDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrInventarioReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrInventarioDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrInventarioPrecio1: TBCDField
      FieldName = 'Precio1'
      Precision = 19
    end
    object qrInventarioCosto1: TBCDField
      FieldName = 'Costo1'
      Precision = 19
    end
    object qrInventarioStatus: TWideStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 10
    end
    object qrInventarioCaja: TBooleanField
      FieldName = 'Caja'
    end
    object qrInventarioProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrInventarioNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
  end
  object tbDetalle: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'Id'
    MasterFields = 'Id'
    MasterSource = dsDatos
    TableName = 'BSVENTADETALLE'
    Left = 272
    object tbDetalleId: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object tbDetalleCODIGOID: TStringField
      FieldName = 'CODIGOID'
    end
    object tbDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object tbDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
  end
end
