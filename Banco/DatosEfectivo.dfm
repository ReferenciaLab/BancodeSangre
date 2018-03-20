inherited frmDatosEfectivo: TfrmDatosEfectivo
  Caption = 'Cobros realizados'
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
        ExplicitWidth = 602
        ExplicitHeight = 327
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 602
          ExplicitHeight = 327
          inherited dgDatos: TcxGrid
            TabOrder = 4
            inherited tvDatos: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'TotalCobrado'
                  Column = tvDatosTotalCobrado
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'TotalFactura'
                  Column = tvDatosTotalFactura
                end>
              OptionsView.Footer = True
              object tvDatosReciboNo: TcxGridDBColumn
                DataBinding.FieldName = 'ReciboNo'
              end
              object tvDatospaciente: TcxGridDBColumn
                Caption = 'Paciente'
                DataBinding.FieldName = 'PACIENTE'
              end
              object tvDatosCobroID: TcxGridDBColumn
                DataBinding.FieldName = 'CobroID'
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
              end
              object tvDatosTotalCobrado: TcxGridDBColumn
                Caption = 'Cobrado'
                DataBinding.FieldName = 'TotalCobrado'
              end
              object tvDatosTotalFactura: TcxGridDBColumn
                Caption = 'Factura'
                DataBinding.FieldName = 'TotalFactura'
              end
              object tvDatosClienteID: TcxGridDBColumn
                DataBinding.FieldName = 'ClienteID'
              end
              object tvDatosMonedaID: TcxGridDBColumn
                DataBinding.FieldName = 'MonedaID'
              end
              object tvDatosTipoDoc: TcxGridDBColumn
                DataBinding.FieldName = 'TipoDoc'
              end
              object tvDatosUsuarioID: TcxGridDBColumn
                DataBinding.FieldName = 'UsuarioID'
              end
            end
          end
          inherited btBuscar: TcxButton
            Left = 346
            TabOrder = 2
            OnClick = btBuscarClick
            ExplicitLeft = 346
          end
          object desde: TcxDateEdit [2]
            Left = 59
            Top = 36
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 121
          end
          object hasta: TcxDateEdit [3]
            Left = 219
            Top = 36
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 121
          end
          object cxButton4: TcxButton [4]
            Left = 427
            Top = 36
            Width = 75
            Height = 22
            Caption = 'Reimpresion'
            TabOrder = 3
            OnClick = cxButton4Click
          end
          inherited dxLayoutGroup1: TdxLayoutGroup
            inherited lcGrupoBuscar: TdxLayoutGroup
              Visible = True
              object lcGridItem3: TdxLayoutItem [0]
                Caption = 'Desde'
                Control = desde
                ControlOptions.ShowBorder = False
              end
              object lcGridItem2: TdxLayoutItem [1]
                Caption = 'Hasta'
                Control = hasta
                ControlOptions.ShowBorder = False
              end
              object lcGridItem1: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = cxButton4
                ControlOptions.ShowBorder = False
              end
            end
            inherited lcGridGroup2: TdxLayoutGroup
              inherited dxLayoutItem1: TdxLayoutItem
                ControlOptions.AutoColor = True
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 602
        ExplicitHeight = 327
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 602
          ExplicitHeight = 327
          object cxDateEdit1: TcxDateEdit [0]
            Left = 10000
            Top = 10000
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Visible = False
            Width = 121
          end
          object cxButton1: TcxButton [1]
            Left = 11
            Top = 11
            Width = 580
            Height = 25
            Caption = 'cxButton1'
            TabOrder = 0
          end
          object cxButton3: TcxButton [2]
            Left = 11
            Top = 42
            Width = 75
            Height = 25
            Caption = 'cxButton3'
            TabOrder = 1
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosItem2: TdxLayoutItem
              Caption = 'cxButton1'
              ShowCaption = False
              Control = cxButton1
              ControlOptions.ShowBorder = False
            end
            object lcDatosItem4: TdxLayoutItem
              Caption = 'cxButton3'
              ShowCaption = False
              Control = cxButton3
              ControlOptions.ShowBorder = False
            end
          end
          object lcDatosItem1: TdxLayoutItem
            Caption = 'cxDateEdit1'
            Control = cxDateEdit1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrVentas
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39385.797214513890000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39385.797214513890000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited alEdit: TActionList
    Top = 176
    object Open: TAction
      Caption = 'Open'
      OnExecute = OpenExecute
    end
  end
  inherited qrVistas: TABSQuery
    Left = 260
    Top = 160
  end
  object qrVentas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     TOP (100) PERCENT CobroID, TurnoID, EntradaID, Sucurs' +
        'alID, Fecha, Hora, PacienteID, PacientePrincipalID, UsuarioID, T' +
        'otalCobrado, refRecid, '
      
        '                      TotalFactura, TotalPagado, PendienteFactur' +
        'a, PendienteCobro, ReciboNo, ClienteID, Aplicado, Secuencia, Mon' +
        'edaID, TipoDoc, CuadreGlobal, '
      '                      CuadreUsuario, Concepto,'
      
        '                     PACIENTE = (SELECT TOP 1 NOMBREPACIENTE FRO' +
        'M BSVenta WHERE recid = dbo.PTCobro.refrecid)'
      'FROM         dbo.PTCobro'
      'WHERE     (FECHA BETWEEN :Desde AND :Hasta)')
    Left = 408
    Top = 271
    object qrVentasCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrVentasTurnoID: TStringField
      FieldName = 'TurnoID'
      Size = 10
    end
    object qrVentasEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object qrVentasSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object qrVentasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrVentasHora: TStringField
      FieldName = 'Hora'
    end
    object qrVentasPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrVentasPacientePrincipalID: TStringField
      FieldName = 'PacientePrincipalID'
      Size = 10
    end
    object qrVentasUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrVentasTotalCobrado: TBCDField
      FieldName = 'TotalCobrado'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrVentasrefRecid: TLargeintField
      FieldName = 'refRecid'
    end
    object qrVentasTotalFactura: TBCDField
      FieldName = 'TotalFactura'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrVentasTotalPagado: TBCDField
      FieldName = 'TotalPagado'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrVentasPendienteFactura: TBCDField
      FieldName = 'PendienteFactura'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrVentasPendienteCobro: TBCDField
      FieldName = 'PendienteCobro'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qrVentasReciboNo: TStringField
      FieldName = 'ReciboNo'
    end
    object qrVentasClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrVentasAplicado: TBooleanField
      FieldName = 'Aplicado'
    end
    object qrVentasSecuencia: TLargeintField
      FieldName = 'Secuencia'
    end
    object qrVentasMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrVentasTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object qrVentasCuadreGlobal: TStringField
      FieldName = 'CuadreGlobal'
    end
    object qrVentasCuadreUsuario: TStringField
      FieldName = 'CuadreUsuario'
    end
    object qrVentasConcepto: TStringField
      FieldName = 'Concepto'
      Size = 50
    end
    object qrVentasPACIENTE: TStringField
      FieldName = 'PACIENTE'
      ReadOnly = True
      Size = 80
    end
  end
end
