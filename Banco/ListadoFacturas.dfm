inherited frmListadoFacturas: TfrmListadoFacturas
  Caption = 'LISTADO DE OPERACIONES EN CAJA'
  ClientHeight = 383
  ClientWidth = 964
  ExplicitLeft = -247
  ExplicitWidth = 972
  ExplicitHeight = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 964
    Height = 350
    ExplicitWidth = 964
    ExplicitHeight = 350
    inherited pcDatos: TcxPageControl
      Width = 849
      Height = 350
      ExplicitWidth = 849
      ExplicitHeight = 350
      ClientRectBottom = 350
      ClientRectRight = 849
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 849
        ExplicitHeight = 309
        inherited lcGrid: TdxLayoutControl
          Width = 849
          Height = 326
          ExplicitWidth = 849
          ExplicitHeight = 309
          inherited dgDatos: TcxGrid
            Width = 825
            Height = 225
            Align = alClient
            TabOrder = 3
            ExplicitWidth = 825
            ExplicitHeight = 225
            inherited tvDatos: TcxGridDBTableView
              DataController.DetailKeyFieldNames = 'ENTRADAID'
              DataController.KeyFieldNames = 'ENTRADAID'
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',#0.#0'
                  Kind = skSum
                  Column = tvDatosNETO
                end
                item
                  Format = ',#0.#0'
                  Kind = skSum
                  Column = tvDatosTOTALPAGADO
                end
                item
                  Format = ',#0.#0'
                  Kind = skSum
                  Column = tvDatosTotalPendiente
                end
                item
                  Format = 'Totales ,#0'
                  Kind = skCount
                  Column = tvDatosENTRADAID
                end>
              OptionsView.Footer = True
              object tvDatosENTRADAID: TcxGridDBColumn
                Caption = 'Entrada Id'
                DataBinding.FieldName = 'ENTRADAID'
              end
              object tvDatosFECHA: TcxGridDBColumn
                Caption = 'Fecha'
                DataBinding.FieldName = 'FECHA'
              end
              object tvDatosRECID: TcxGridDBColumn
                DataBinding.FieldName = 'RECID'
                Visible = False
              end
              object tvDatosPACIENTEID: TcxGridDBColumn
                DataBinding.FieldName = 'PACIENTEID'
                Visible = False
              end
              object tvDatosNOMBREPACIENTE: TcxGridDBColumn
                Caption = 'Nombre Cliente'
                DataBinding.FieldName = 'NOMBREPACIENTE'
              end
              object tvDatosCLIENTEID: TcxGridDBColumn
                DataBinding.FieldName = 'CLIENTEID'
                Visible = False
              end
              object tvDatosCLIENTENOMBRE: TcxGridDBColumn
                DataBinding.FieldName = 'CLIENTENOMBRE'
                Visible = False
              end
              object tvDatosBRUTO: TcxGridDBColumn
                DataBinding.FieldName = 'BRUTO'
                Visible = False
              end
              object tvDatosDESCUENTO: TcxGridDBColumn
                DataBinding.FieldName = 'DESCUENTO'
                Visible = False
              end
              object tvDatosSUBTOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'SUBTOTAL'
                Visible = False
              end
              object tvDatosNETO: TcxGridDBColumn
                Caption = 'Neto'
                DataBinding.FieldName = 'NETO'
                HeaderAlignmentHorz = taRightJustify
                Options.Filtering = False
              end
              object tvDatosTOTALPAGADO: TcxGridDBColumn
                Caption = 'Total Pagado'
                DataBinding.FieldName = 'TOTALPAGADO'
                HeaderAlignmentHorz = taRightJustify
                Options.Filtering = False
              end
              object tvDatosTotalPendiente: TcxGridDBColumn
                Caption = 'Total Pendiente'
                DataBinding.FieldName = 'TotalPendiente'
                HeaderAlignmentHorz = taRightJustify
                Options.Filtering = False
              end
            end
          end
          inherited btBuscar: TcxButton
            Left = 465
            TabOrder = 2
            OnClick = btBuscarClick
            ExplicitLeft = 465
          end
          object edbuscarpor: TcxComboBox [2]
            Left = 23
            Top = 36
            TabStop = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownSizeable = True
            Properties.Items.Strings = (
              'Registro No.'
              'Paciente'
              'Nombre del Paciente'
              'Cliente'
              'Nombre del Cliente'
              'Telefono')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Text = 'Nombre del Paciente'
            Width = 130
          end
          object edbuscar: TcxTextEdit [3]
            Left = 159
            Top = 36
            RepositoryItem = DM.cxTextEdit
            Properties.OnChange = edbuscarPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 300
          end
          inherited dxLayoutGroup1: TdxLayoutGroup
            inherited lcGrupoBuscar: TdxLayoutGroup
              Visible = True
              object lcGridItem1: TdxLayoutItem [0]
                Control = edbuscarpor
                ControlOptions.ShowBorder = False
              end
              object lcGridItem2: TdxLayoutItem [1]
                Control = edbuscar
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 849
        ExplicitHeight = 309
        inherited lcDatos: TdxLayoutControl
          Width = 849
          Height = 326
          ExplicitWidth = 849
          ExplicitHeight = 309
        end
      end
    end
    object cxButton2: TcxButton [1]
      Left = 861
      Top = 100
      Width = 114
      Height = 25
      Action = Descuento
      TabOrder = 4
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B7300A57B
        7300A57B7300A57B7300A57B7300A57B73009C6B52009C6B52009C6B52009C6B
        52009C6B5200A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300FFFF
        FF00FFFFFF00FFFFF700F7DEC600DEC69C00D6BD9C00DEBD9C00DEBD9C00E7CE
        AD00F7DEC600FFE7D600FFFFFF00FFFFFF00FFFFFF00A57B7300AD7B7300FFFF
        FF00A57B7300A57B7300004A6300ADBDB500F7D6B500F7D6B500F7D6B500FFD6
        B500FFD6AD00EFBD9400BD8C7300D6A58400D69C8400A57B7300B5847B00FFFF
        FF00FFFFFF00FFFFFF00108CB50000B5E700108CB500D6CEC600E7BDAD00DEBD
        A500E7BDA500F7CEAD00B58C7B00B58C7B00B58C7B00A57B7300C6948400FFFF
        FF00A57B7300A57B7300108CB50000CEFF00735A31009C310000A57B7300A57B
        7300A57B7300FFDEB500FFDEAD00FFD6A500FFD69C00A57B7300CE9C8400C6F7
        CE00C6F7BD00BDCEFF0063A5FF00B54A0000FFA52900EF7B00009C310000FFEF
        D600FFEFD600FFE7CE00FFE7C600FFDEBD00FFDEB500A57B7300D6A58C00BDEF
        C6004A7BFF004A7BFF004A7BFF00B54A0000FFC68400FFB54200E77B00009C31
        0000FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00A57B7300DEAD8C00DEA5
        8400DEA58400DEA58400DEA58400DEA58400B54A0000FFC68400FFB53900B573
        1800004A6300DEA58400DEA58400DEA58400DEA58400DEA58400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B54A0000BD9C7300429C
        AD00B58421009C310000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A6300A5AD
        8C00FFB53100EF7B00009C310000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B54A
        0000FFC68400FFB53900EF8400009C310000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD4A0000AD42
        0000B5521800FFC68400FFB53900EF730000B5390000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B54A
        0000AD390000B5522100FFC68400E77B100052736B002184A500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00B54A0000A5310000844A31004A84940000BDFF0000A5D600FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B54A0000A531000000A5D60000A5D600FF00FF00}
    end
    object cxButton3: TcxButton [2]
      Left = 861
      Top = 7
      Width = 114
      Height = 25
      Action = Mostrar
      TabOrder = 1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF002173
        B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002173B500218C
        EF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5FF0052BD
        FF00218CEF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF00218CEF002173B500636B7300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0052BDFF00218CEF002173B500636B7300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00218CEF005A6B7300FF00FF00D6BDB500D6AD
        A500D6ADA500D6ADA500D6BDB500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0031A5FF0031A5FF004A423900B59C8C00F7E7C600FFEF
        CE00FFF7CE00FFF7CE00EFDEC600D6ADA500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00BD9C8C00F7E7B500FFF7D600FFF7
        CE00FFF7CE00FFFFD600FFF7D600F7E7C600D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6BDB500EFE7B500FFEFBD00FFF7C600F7D6
        A500B55A1800F7D6A500FFFFC600FFFFD600D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFE7B500FFEFBD00F7D6A500F7D6
        A500B55A1800F7D6A500F7D6A500FFFFC600EFE7BD00D6ADA500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFE7B500F7EFBD00B55A1800B55A
        1800B55A1800B55A1800B55A1800FFF7C600F7EFC600CEAD9C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500EFDEB500F7E7BD00F7D6A500F7D6
        A500B55A1800F7D6A500F7D6A500FFF7C600EFE7BD00D6B5A500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6BDB500E7DEB500EFE7B500F7E7BD00F7D6
        A500B55A1800F7D6A500FFEFBD00F7EFBD00D6ADA500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D6ADA500EFDEBD00EFE7B500F7E7
        B500F7E7B500F7E7B500EFE7B500F7E7BD00D6BDB500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6ADA500E7D6B500EFDE
        B500EFDEB500EFDEB500D6ADA500D6BDB500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDB500D6AD
        A500D6ADA500DEB5A500FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object cxButton4: TcxButton [3]
      Left = 861
      Top = 38
      Width = 114
      Height = 25
      Action = Imprimir
      TabOrder = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF009C9C9C00FF00FF00FF00FF00FF00
        FF0084848400848484008C8C8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009C9C9C009C9C9C00D6CECE0094949400393939005252
        52009C949400C6C6C600D6D6D60084848400FF00FF00FF00FF00FF00FF00FF00
        FF009C9C9C009C9C9C00F7F7F700FFFFFF00D6D6D6009C9C9C00424242002118
        2100211821003131310063636300848484008C8C8C00FF00FF00948C8C009C9C
        9C00EFEFEF00FFFFFF00EFE7E700C6C6C6009C9C9C008C8C8C00949494008484
        84006363630039393900182121002118210073737300FF00FF009C9C9C00E7E7
        E700E7E7E700BDBDBD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C
        8C00949494009C9494008C8C8C006B6B6B0084848400FF00FF0094949400ADAD
        AD00A5A5A500ADADAD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6
        C600ADADAD009C9C9C00948C8C00949494008C8C8C00FF00FF00948C8C00ADAD
        AD00C6C6C600CECECE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECE
        CE00D6D6D600D6D6D600C6C6C600B5B5B50094949400FF00FF00FF00FF009C9C
        9C00CECECE00CECECE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5
        A500ADA5A500A5A5A500B5B5B500C6BDBD00A5A5A500FF00FF00FF00FF00FF00
        FF009C9C9C00BDBDBD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7
        DE00D6D6D600CECECE00B5B5B50094949400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009C9C9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6
        D600D6D6D600C6C6C600ADADAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6
        CE00CECECE0094949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD
        9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD
        9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD
        9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE9C9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD
        9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE9C9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object cxButton5: TcxButton [4]
      Left = 861
      Top = 69
      Width = 122
      Height = 25
      Action = PrintCobros
      TabOrder = 3
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF009C9C9C00FF00FF00FF00FF00FF00
        FF0084848400848484008C8C8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009C9C9C009C9C9C00D6CECE0094949400393939005252
        52009C949400C6C6C600D6D6D60084848400FF00FF00FF00FF00FF00FF00FF00
        FF009C9C9C009C9C9C00F7F7F700FFFFFF00D6D6D6009C9C9C00424242002118
        2100211821003131310063636300848484008C8C8C00FF00FF00948C8C009C9C
        9C00EFEFEF00FFFFFF00EFE7E700C6C6C6009C9C9C008C8C8C00949494008484
        84006363630039393900182121002118210073737300FF00FF009C9C9C00E7E7
        E700E7E7E700BDBDBD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C
        8C00949494009C9494008C8C8C006B6B6B0084848400FF00FF0094949400ADAD
        AD00A5A5A500ADADAD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6
        C600ADADAD009C9C9C00948C8C00949494008C8C8C00FF00FF00948C8C00ADAD
        AD00C6C6C600CECECE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECE
        CE00D6D6D600D6D6D600C6C6C600B5B5B50094949400FF00FF00FF00FF009C9C
        9C00CECECE00CECECE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5
        A500ADA5A500A5A5A500B5B5B500C6BDBD00A5A5A500FF00FF00FF00FF00FF00
        FF009C9C9C00BDBDBD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7
        DE00D6D6D600CECECE00B5B5B50094949400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009C9C9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6
        D600D6D6D600C6C6C600ADADAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6
        CE00CECECE0094949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD
        9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD
        9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD
        9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE9C9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD
        9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE9C9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited lgDatos: TdxLayoutGroup
        LayoutDirection = ldHorizontal
        inherited liDatos: TdxLayoutItem
          AutoAligns = []
        end
      end
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        AutoAligns = [aaVertical]
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = cxButton3
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = cxButton4
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Visible = False
            Control = cxButton5
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Visible = False
            Control = cxButton2
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 964
    ExplicitWidth = 964
  end
  inherited dsDatos: TDataSource
    DataSet = dmFactura.qrPendientesCobros
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39907.430613564810000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39907.430613738430000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 96
    Top = 200
  end
  inherited qryHelper: TADOQuery
    Left = 412
    Top = 3
  end
  inherited alEdit: TActionList
    Images = frmMain.ilNavBarSmall
    Top = 160
    object Cobrar: TAction
      Category = 'Botones'
      Caption = 'F8 = Cobrar'
      ImageIndex = 14
      ShortCut = 119
      OnExecute = CobrarExecute
    end
    object Descuento: TAction
      Category = 'Botones'
      Caption = ' Descuento'
      ImageIndex = 15
      ShortCut = 117
      OnExecute = DescuentoExecute
    end
    object Mostrar: TAction
      Category = 'Botones'
      Caption = 'Mostrar'
      ImageIndex = 89
      ShortCut = 118
      OnExecute = MostrarExecute
    end
    object Imprimir: TAction
      Category = 'Botones'
      Caption = ' Imprimir'
      ImageIndex = 3
      ShortCut = 119
      OnExecute = ImprimirExecute
    end
    object PrintCobros: TAction
      Category = 'Botones'
      Caption = 'Cobros'
      ImageIndex = 3
      ShortCut = 120
      OnExecute = PrintCobrosExecute
    end
    object CobrarNCF: TAction
      Category = 'Botones'
      Caption = 'F9 = Cobro NCF'
      ImageIndex = 14
      OnExecute = CobrarNCFExecute
    end
  end
  inherited strView: TJvStrHolder
    Top = 188
  end
  object Timer1: TTimer
    Interval = 30000
    OnTimer = Timer1Timer
    Left = 104
  end
end
