inherited frmListaRechazosMes: TfrmListaRechazosMes
  Caption = 'Donaciones'
  ClientWidth = 707
  ExplicitWidth = 715
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 707
    ExplicitWidth = 707
    ExplicitHeight = 338
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 683
        ExplicitHeight = 314
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 683
          ExplicitHeight = 314
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            TabOrder = 3
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'TOTAL'
                end
                item
                  Kind = skSum
                  FieldName = 'Cantidad'
                end>
              OptionsView.Footer = True
              object tvDatosAnno: TcxGridDBColumn
                DataBinding.FieldName = 'Anno'
                Visible = False
                GroupIndex = 0
                SortIndex = 1
                SortOrder = soAscending
              end
              object tvDatosMes: TcxGridDBColumn
                DataBinding.FieldName = 'Mes'
                Visible = False
                GroupIndex = 1
                SortIndex = 0
                SortOrder = soAscending
              end
              object tvDatosMuestraNo: TcxGridDBColumn
                DataBinding.FieldName = 'MuestraNo'
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
              end
              object tvDatosPacienteID: TcxGridDBColumn
                DataBinding.FieldName = 'PacienteID'
              end
              object tvDatosDonacionTipo: TcxGridDBColumn
                DataBinding.FieldName = 'DonacionTipo'
              end
              object tvDatosTipoSangre: TcxGridDBColumn
                DataBinding.FieldName = 'TipoSangre'
              end
              object tvDatosRH: TcxGridDBColumn
                DataBinding.FieldName = 'RH'
              end
              object tvDatosDu: TcxGridDBColumn
                DataBinding.FieldName = 'Du'
              end
              object tvDatosFechaUltimaDon: TcxGridDBColumn
                DataBinding.FieldName = 'FechaUltimaDon'
              end
              object tvDatosNOMBRE: TcxGridDBColumn
                DataBinding.FieldName = 'NOMBRE'
              end
              object tvDatosTELEFONO: TcxGridDBColumn
                DataBinding.FieldName = 'TELEFONO'
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
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 683
        ExplicitHeight = 314
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 683
          ExplicitHeight = 314
          object cxDateEdit1: TcxDateEdit [0]
            Left = 10000
            Top = 10000
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Visible = False
            Width = 121
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
  inherited pnCaption: TPanel
    Width = 707
    ExplicitWidth = 707
  end
  inherited dsDatos: TDataSource
    DataSet = qrDatos
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
    Top = 112
    object Open: TAction
      Caption = 'Open'
      OnExecute = OpenExecute
    end
  end
  inherited qrVistas: TABSQuery
    Left = 260
    Top = 160
  end
  object qrDatos: TADOQuery
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
      'SELECT        dbo.BSDonacion.DonacionID, '
      '                    dbo.BSDonacion.MuestraNo, '
      '                    dbo.BSDonacion.MuestraNoAS, '
      
        '                     DATEPART(year, dbo.BSDonacion.Fecha) AS Ann' +
        'o, '
      
        '                     DATENAME(month, dbo.BSDonacion.Fecha) AS Me' +
        's, '
      '                     dbo.BSDonacion.Fecha, '
      '                     dbo.BSDonante.PacienteID, '
      '                     DonacionTipo, '
      '                     dbo.BSDonante.TipoSangre, '
      '                     dbo.BSDonante.RH, '
      '                     dbo.BSDonante.Du, '
      '                     dbo.BSDonante.FechaUltimaDon, '
      '                     dbo.PTCLIENTE.NOMBRE, '
      '                     dbo.PTCLIENTE.NOMBRE1, '
      '                     dbo.PTCLIENTE.APELLIDOS, '
      '                     dbo.PTCLIENTE.TELEFONO'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.BSDonante ON dbo.BSDonacion.PacienteID' +
        ' = dbo.BSDonante.PacienteID INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.BSDonante.PacienteID ' +
        '= dbo.PTCLIENTE.CLIENTEID'
      'WHERE     (FECHA BETWEEN :Desde AND :Hasta)')
    Left = 400
    Top = 15
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
    object qrDatosAnno: TIntegerField
      FieldName = 'Anno'
      ReadOnly = True
    end
    object qrDatosMes: TWideStringField
      FieldName = 'Mes'
      ReadOnly = True
      Size = 30
    end
    object qrDatosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDatosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDatosDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrDatosTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDatosRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDatosDu: TWideStringField
      FieldName = 'Du'
      FixedChar = True
      Size = 10
    end
    object qrDatosFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
    object qrDatosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object qrDatosNOMBRE1: TStringField
      FieldName = 'NOMBRE1'
      Size = 30
    end
    object qrDatosAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Size = 50
    end
    object qrDatosTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
  end
end
