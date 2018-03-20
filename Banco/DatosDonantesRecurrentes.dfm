inherited frmDatosDonantesRecurrentes: TfrmDatosDonantesRecurrentes
  Caption = 'frmDatosDonantesRecurrentes'
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
            inherited tvDatos: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#0'
                  Kind = skSum
                  FieldName = 'Donaciones'
                  Column = tvDatosDonaciones
                end>
              OptionsView.Footer = True
              object tvDatosPacienteID: TcxGridDBColumn
                Caption = 'Donante'
                DataBinding.FieldName = 'PacienteID'
              end
              object tvDatosNOMBRE: TcxGridDBColumn
                Caption = 'Nombre'
                DataBinding.FieldName = 'NOMBRE'
                Width = 300
              end
              object tvDatosTipoSangre: TcxGridDBColumn
                Caption = 'Tipo Sangre'
                DataBinding.FieldName = 'TipoSangre'
              end
              object tvDatosRH: TcxGridDBColumn
                Caption = 'Rh'
                DataBinding.FieldName = 'RH'
              end
              object tvDatosDonaciones: TcxGridDBColumn
                DataBinding.FieldName = 'Donaciones'
              end
              object tvDatosDonacionStatus: TcxGridDBColumn
                DataBinding.FieldName = 'DonacionStatus'
                Visible = False
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
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrDatos
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39660.670584849540000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39660.670584849540000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qrDatos: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     COUNT(*) AS Donaciones, dbo.BSDonacion.PacienteID, db' +
        'o.BSDonacion.DonacionStatus, dbo.PTCLIENTE.NOMBRE, BSDonante.Tip' +
        'oSangre, BSDonante.RH'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCLIENTE ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCLIENTE.CLIENTEID'
      
        #9#9#9#9#9'  INNER JOIN BSDonante on BSDonacion.PacienteID = BSDonante' +
        '.PacienteID '
      'WHERE     (dbo.BSDonacion.DonacionStatus = N'#39'Procesada'#39')'
      
        'GROUP BY dbo.BSDonacion.PacienteID, dbo.BSDonacion.DonacionStatu' +
        's, dbo.PTCLIENTE.NOMBRE, BSDonante.TipoSangre, BSDonante.RH'
      'HAVING      (COUNT(*) > 0)')
    Left = 192
    Top = 3
    object qrDatosDonaciones: TIntegerField
      FieldName = 'Donaciones'
      ReadOnly = True
    end
    object qrDatosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDatosDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDatosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
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
  end
end
