object frmDialogShowFactura: TfrmDialogShowFactura
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Datos de la Factura'
  ClientHeight = 398
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 672
    Height = 398
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    ExplicitWidth = 670
    ExplicitHeight = 396
    object btcancelar: TcxButton
      Left = 586
      Top = 362
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cerrar'
      ModalResult = 2
      TabOrder = 6
      OnClick = btcancelarClick
    end
    object cxGrid2: TcxGrid
      Left = 23
      Top = 149
      Width = 624
      Height = 196
      TabOrder = 5
      TabStop = False
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.SaveBookmark.Enabled = False
        DataController.DataSource = dmFactura.dsEntradaPacienteDetalle
        DataController.DetailKeyFieldNames = 'SECUENCIA'
        DataController.KeyFieldNames = 'SECUENCIA'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'PRECIO'
            Column = cxGridDBTableView1PRECIO
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'DESCUENTO'
            Column = cxGridDBTableView1DESCUENTO
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'TOTALLINEA'
            Column = cxGridDBTableView1TOTALLINEA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1PRUEBAID: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CodigoId'
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
        end
        object cxGridDBTableView1DESCRIPCION: TcxGridDBColumn
          Caption = 'Descripci'#243'n del Producto'
          DataBinding.FieldName = 'DESCRIPCION'
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
        end
        object cxGridDBTableView1PRECIO: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
        end
        object cxGridDBTableView1DESCUENTO: TcxGridDBColumn
          Caption = 'Descuento'
          DataBinding.FieldName = 'DESCUENTO'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
        end
        object cxGridDBTableView1TOTALLINEA: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTALLINEA'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 70
      Top = 63
      TabStop = False
      DataBinding.DataField = 'PACIENTEID'
      DataBinding.DataSource = dmFactura.dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 70
      Top = 90
      TabStop = False
      DataBinding.DataField = 'TELEFONOS'
      DataBinding.DataSource = dmFactura.dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 197
      Top = 63
      TabStop = False
      DataBinding.DataField = 'NOMBREPACIENTE'
      DataBinding.DataSource = dmFactura.dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 176
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 199
      Top = 36
      TabStop = False
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = dmFactura.dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 122
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 70
      Top = 36
      TabStop = False
      DataBinding.DataField = 'ENTRADAID'
      DataBinding.DataSource = dmFactura.dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 88
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group3: TdxLayoutGroup
        Caption = 'Factura de origen'
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'Factura'
            Control = cxDBTextEdit9
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'Fecha'
            Control = cxDBTextEdit10
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'Ciente'
            Control = cxDBTextEdit6
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Control = cxDBTextEdit8
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Telefono'
          Control = cxDBTextEdit7
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Valor Nota de Credito'
        object dxLayoutControl1Item4: TdxLayoutItem
          Control = cxGrid2
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btcancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
