object Frmconsulta_general: TFrmconsulta_general
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Formulario de Consulta General de Banco'
  ClientHeight = 640
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 136
    Top = 543
    Width = 31
    Height = 13
    Caption = 'Label5'
  end
  object Label8: TLabel
    Left = 56
    Top = 455
    Width = 31
    Height = 13
    Caption = 'Label8'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 9
    Width = 753
    Height = 217
    Caption = 'Parametros de Busqueda'
    TabOrder = 0
    object cxTextEdit1: TcxTextEdit
      Left = 118
      Top = 28
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 121
    end
    object cxTextEdit2: TcxTextEdit
      Left = 118
      Top = 55
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 118
      Top = 136
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 299
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 32
      Caption = 'Numero Donacion'
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 59
      Caption = 'Paciente ID'
    end
    object cxLabel3: TcxLabel
      Left = 27
      Top = 135
      Caption = 'Nombre Paciente'
    end
    object cxLabel4: TcxLabel
      Left = 24
      Top = 88
      Caption = 'Identificaci'#243'n '
    end
    object cxTextEdit5: TcxTextEdit
      Left = 118
      Top = 163
      Properties.CharCase = ecUpperCase
      TabOrder = 7
      Width = 299
    end
    object cxLabel5: TcxLabel
      Left = 24
      Top = 167
      Caption = 'Numero Muestra'
    end
    object cxLabel6: TcxLabel
      Left = 24
      Top = 193
      Caption = 'Fecha Donaci'#243'n'
    end
    object cxLabel7: TcxLabel
      Left = 245
      Top = 190
      Caption = 'Hasta'
    end
    object cxDateEdit1: TcxDateEdit
      Left = 118
      Top = 190
      TabOrder = 11
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 283
      Top = 190
      TabOrder = 12
      Width = 134
    end
    object cxLabel9: TcxLabel
      Left = 421
      Top = 191
      Caption = 'Tipo Sangre'
    end
    object cxComboBox1: TcxComboBox
      Left = 499
      Top = 189
      Properties.Items.Strings = (
        'A'
        'B'
        'O'
        'AB'
        'TODOS')
      TabOrder = 14
      Width = 238
    end
    object cxLabel11: TcxLabel
      Left = 420
      Top = 162
      Caption = 'Factor RH'
    end
    object cxComboBox3: TcxComboBox
      Left = 499
      Top = 162
      Properties.Items.Strings = (
        'POSITIVO'
        'NEGATIVO'
        'TODOS')
      TabOrder = 16
      Width = 238
    end
    object cxTextEdit4: TcxTextEdit
      Left = 118
      Top = 82
      Properties.CharCase = ecUpperCase
      TabOrder = 17
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 27
      Top = 112
      Caption = 'Lugar Colecta'
    end
    object cxTextEdit6: TcxTextEdit
      Left = 118
      Top = 108
      Properties.CharCase = ecUpperCase
      TabOrder = 19
      Width = 299
    end
    object CheckBox1: TCheckBox
      Left = 480
      Top = 30
      Width = 193
      Height = 17
      Caption = 'Solo Colecta Movil'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
  end
  object GroupBox2: TGroupBox
    Left = 767
    Top = 8
    Width = 250
    Height = 217
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 47
      Top = 11
      Width = 161
      Height = 43
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 47
      Top = 106
      Width = 161
      Height = 42
      Caption = 'Limpiar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 47
      Top = 165
      Width = 161
      Height = 43
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 47
      Top = 60
      Width = 161
      Height = 40
      Caption = 'Imprimir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = cxButton4Click
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 8
    Top = 231
    Width = 1006
    Height = 401
    ActivePage = cxTabSheet1
    TabOrder = 2
    ClientRectBottom = 401
    ClientRectRight = 1006
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Donaciones'
      ImageIndex = 0
      object DBGrid1: TDBGrid
        Left = 3
        Top = 6
        Width = 993
        Height = 368
        BorderStyle = bsNone
        Color = clInfoBk
        DataSource = DSdonaciones
        FixedColor = clMoneyGreen
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Colecta'
            Title.Caption = 'Lugar Colecta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DonacionID'
            Title.Caption = 'DonacionId'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MuestraNo'
            Title.Caption = 'MuestraId'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PacienteID'
            Title.Caption = 'Paciente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDENTIFICACION'
            Title.Caption = 'Cedula Paciente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Caption = 'Nombre'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoSangre'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RH'
            Title.Caption = 'Factor RH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DonacionStatus'
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fecha_entrada'
            Title.Caption = 'Fecha Crea'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'horaentrada'
            Title.Caption = 'Hora Crea'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'userid'
            Title.Caption = 'Usuario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHAMODIFICACION'
            Title.Caption = 'Ulti. Mod'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIOMOD'
            Title.Caption = 'Usuario Mod'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Productos'
      ImageIndex = 1
      object SpeedButton1: TSpeedButton
        Left = 536
        Top = 318
        Width = 113
        Height = 35
        Caption = 'Refrescar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 3
        Width = 718
        Height = 193
        BorderStyle = bsNone
        Color = clBtnHighlight
        DataSource = DSproductos
        FixedColor = clNavy
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DonacionID'
            Title.Caption = 'Donacionid'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoId'
            Title.Caption = 'Codigo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProductoDes'
            Title.Caption = 'Descripci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Title.Caption = 'Tipo Sangre'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCE'
            Title.Caption = 'Fecha Vence'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status'
            Title.Caption = 'Estatus'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end>
      end
      object RadioButton1: TRadioButton
        Left = 24
        Top = 328
        Width = 145
        Height = 17
        Caption = 'Todos los Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object RadioButton2: TRadioButton
        Left = 184
        Top = 328
        Width = 137
        Height = 17
        Caption = 'Todos los Activos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object RadioButton3: TRadioButton
        Left = 352
        Top = 328
        Width = 153
        Height = 17
        Caption = 'Todos los Reservados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Panel1: TPanel
        Left = 727
        Top = 5
        Width = 276
        Height = 296
        BevelInner = bvLowered
        TabOrder = 4
        object Label1: TLabel
          Left = 16
          Top = 21
          Width = 60
          Height = 13
          Caption = 'Fecha Salida'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 16
          Top = 71
          Width = 78
          Height = 13
          Caption = 'Usuario Modifico'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 16
          Top = 117
          Width = 55
          Height = 13
          Caption = 'Comentario'
          FocusControl = DBMemo1
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 40
          Width = 161
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'FECHA_SALIDA'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 17
          Top = 90
          Width = 160
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'USUARIO_SALIDA'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBMemo1: TDBMemo
          Left = 16
          Top = 136
          Width = 249
          Height = 153
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'COMENTARIO_SALIDA'
          DataSource = DataSource1
          TabOrder = 2
        end
      end
      object DBGrid7: TDBGrid
        Left = 3
        Top = 227
        Width = 718
        Height = 85
        BorderStyle = bsNone
        Color = clBtnHighlight
        DataSource = DSproductos_cobrados
        FixedColor = clNavy
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DonacionId'
            Title.Caption = 'Donacionid'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoId'
            Title.Caption = 'Codigo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProductoDes'
            Title.Caption = 'Descripci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'userid'
            Title.Caption = 'Usuario Despacho'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fecha_salida'
            Title.Caption = 'Fecha Despacho'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 113
            Visible = True
          end>
      end
      object cxLabel8: TcxLabel
        Left = 3
        Top = 202
        Caption = 'Productos Despachados'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object BitBtn1: TBitBtn
        Left = 264
        Top = 196
        Width = 153
        Height = 25
        Caption = 'Imprimir Movimientos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        Visible = False
        OnClick = BitBtn1Click
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Movimientos'
      ImageIndex = 2
      object Label4: TLabel
        Left = 24
        Top = 24
        Width = 161
        Height = 14
        Caption = 'Historico de Transacciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 223
        Width = 116
        Height = 14
        Caption = 'Otros Movimientos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 672
        Top = 37
        Width = 23
        Height = 13
        Caption = 'Nota'
        FocusControl = DBMemo2
      end
      object DBGrid3: TDBGrid
        Left = 24
        Top = 43
        Width = 633
        Height = 174
        BorderStyle = bsNone
        Color = clBtnHighlight
        DataSource = DShistorial
        FixedColor = clNavy
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'HISTCONS'
            Title.Caption = 'Secuencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACION'
            Title.Caption = 'Operaci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECEPTOR'
            Title.Caption = 'Receptor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USERID'
            Title.Caption = 'Usuario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end>
      end
      object DBGrid4: TDBGrid
        Left = 24
        Top = 243
        Width = 545
        Height = 128
        BorderStyle = bsNone
        Color = clBtnHighlight
        DataSource = DSmovimientos
        FixedColor = clNavy
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ISTBDONACION'
            Title.Caption = 'Etiqueta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOVIMIENTO'
            Title.Caption = 'Movimiento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA'
            Title.Caption = 'Hora'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Caption = 'Usuario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
      object DBMemo2: TDBMemo
        Left = 672
        Top = 56
        Width = 249
        Height = 157
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NOTA'
        DataSource = DShistorial
        TabOrder = 2
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Resumen Inventario'
      ImageIndex = 3
      object SpeedButton2: TSpeedButton
        Left = 578
        Top = 16
        Width = 335
        Height = 121
        Caption = 'Refrescar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          0EB80000424D0EB80000000000003600000028000000930000006A0000000100
          180000000000D8B70000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFEFEFFFCFDFFFCFD
          FFFDFEFFFDFEFFFDFEFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFBFF
          FFFBFFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFE
          FEFEFDFDFDFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFEFEFFFCFDFFFCFDFFFDFEFF
          FDFEFFFDFEFFFEFEFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFD
          FDFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDF7F8FCF7F8FFFBFCF9F7
          F7FDFBFBF6F4F4FFFFFFF9F9F9EAECECFAFCFCEBF0EFF9FEFDF7FDFCF7FDFCF0
          F6F5F7F9F9FFFFFFF6F6F6FFFFFFF8F8F8FAFAFAFFFFFFFFFFFFFAFAFAFCFCFC
          FBFBFBF8F8F8F8F8F8FDFDFDFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF6F6F6FAFA
          FAFFFFFFFFFFFFFEFEFEFFFFFFFCFCFCF9F9F9FAFAFAFEFEFEFFFFFFFFFFFFFD
          FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EEEFFFFEFFFFFEFFF8F6F6FFFFFFF5F5F5
          EBEBEBE8EAEAC1C3C38D9291969B9ADDE3E2F4FAF9F8FFFFE8F0EFF3FBFAF5F7
          F7FFFFFFFFFFFFE6E6E6F7F7F7FFFFFFB1B1B19292929B9B9BBEBEBEEBEBEBFF
          FFFFFFFFFFF7F7F7F3F3F3F5F5F5FFFFFFFBFBFBF6F6F6FFFFFFFFFFFFF1F1F1
          ECECECFEFEFEFFFFFFFFFFFFFFFFFFFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE6E4E4FFFFFFFFFFFFF1EFEFFFFFFFC9CBCB2C
          313000020101070600010006110F545F5DCBD8D6EEFBF9F6FFFFF0F5F4E1E1E1
          FEFEFEFFFFFFDCDCDC5252525D5D5D4E4E4E4848483838383D3D3D707070B6B6
          B6E8E8E8FAFAFAFCFCFCF7F7F7FFFFFFF9F9F9EAEAEAF3F3F3FFFFFFFFFFFFFF
          FFFFF5F5F5F7F7F7F9F9F9FBFBFBFCFCFCFEFEFEFFFFFFFFFFFFFEFEFEFEFEFE
          FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFAFAFFFFFFFBF9F9F4F4F4FFFFFFCACCCC0A0F0E000504161C
          1B0002013843414E5B59455250616F6DBFCDCBF3FFFEF7FCFBFFFFFFF4F4F4C4
          C4C44B4B4B5E5E5E4949494646463D3D3D3A3A3A3D3D3D474747565656717171
          9F9F9FC7C7C7EFEFEFFAFAFAFFFFFFFFFFFFFFFFFFFBFBFBF2F2F2F7F7F7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF5F5F5FFFFFFFDFFFFE9EBEB656A69000100030B0A212C2A4E5B59
          47545204121000110E0003001627248E9B99F6FBFAF9F9F9BABABA4F4F4F5656
          566565655F5F5F6B6B6B5E5E5E4F4F4F4242423E3E3E3B3B3B3434342F2F2F30
          30305C5C5CB2B2B2EEEEEEEEEEEEEFEFEFFFFFFFFFFFFFFBFBFBFEFEFEFCFCFC
          FAFAFAFAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFEFEFEFEFE
          FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
          FCF9FBFBFDFFFFE7ECEBDADFDE393F3E1C242300020034413F64727032403E00
          110E293C395C6F6C293C391F2D2B9FA4A39999996B6B6B919191969696656565
          6060606E6E6E5E5E5E6363636565655C5C5C4D4D4D4141414040404343433737
          372929293B3B3B7F7F7FC2C2C2D9D9D9E7E7E7FBFBFBFFFFFFFEFEFEFCFCFCFB
          FBFBFCFCFCFEFEFEFFFFFFFFFFFFFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFCF4F6F6
          FDFFFFF8FDFCEBF0EF3036350006051E2927626F6D263432000F0C3F524F7487
          844E636000100D0F201D040A093E3E3ED0D0D0AAAAAA6161614A4A4A6C6C6C6C
          6C6C6363637575758080807979796969695E5E5E5555554E4E4E3F3F3F444444
          3E3E3E3838383E3E3E555555838383B3B3B3E8E8E8F3F3F3FFFFFFFFFFFFFFFF
          FFFBFBFBF8F8F8F9F9F9FBFBFBFCFCFCFCFCFCFDFDFDFEFEFEFEFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F8F8F3F8F7FAFFFFF2
          FAF9E4EAE9797F7E000201484E4D3A45430002004B625E809B97304B4700100C
          1B34301F302D2429281412122725256D6B6B4F4D4D4B4B4B5353534646466262
          626F6F6F7575757171717272727777777070706161615E5E5E53555541434338
          3A3A393B3B3A3C3C4648485D5D5D7D7D7DA0A0A0CFCDCDF0EEEEFEF9FAFFFBFC
          FFFEFFFFFEFFFBFBFBFBFBFBFCFBFDFDFDFDFEFDFFFEFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEFEFEFEFDFDFDFCFCFCFCFCFCFCFEFEFBFFFFEFFAF8E9F6F4F6FF
          FFCFD5D41C1A1A5553532226272533325C7B783D6560032F290A322D001B1825
          3534383838140C0D0D0708282223312C2D504E4E4040404444446466664D4F4F
          595B5B7678787070707373737979797777776365656368675F6463555A594F54
          53525756575C5B5C5E5E6F706E6D6B6A6F6B6A807878A59B9BD4C8C8FAECEDFF
          FDFFFFFCFEFCFEFFF9FAFEF5F7F8F9FAFEFDFFFFFDFFFFF7F9FAFFFEFFFEFDFF
          FFFDFDFFFFFFFFFFFFFFFEFFFDF9F8F7F3F2FFFFFFFEFCFCFEFCFCFFFDFDFFFE
          FEFFFDFDFFFDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFDFDFDFDFDFDFCFCFCFAFCFCECF1F0F8FFFFF6FFFFE6EEEDFAFFFF
          B7B7B774747400050648585742615E0026210017120A2B27253B393B45452927
          27393132231D1E0C07082D2B2B4040408181816062621517174345456365654B
          4D4D5C5C5C6262627474746F6F6F8181817577777577777A7F7E757A79636867
          5B5D5D5E60605E5F5D7A78778E8A897B7675554B4B4B3F3F756768A69B9DE3DE
          E0EFF0F4FFFEFFFDFEFFFDFEFFFBFCFFFCFEFFFDFFFFF2F1F3FCFBFDFFFFFFFC
          FAFAF2EDEEF3EEEFFFFDFCFFFFFEFFFDFDFFFDFDFDFBFBFFFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFEFEFEFDFDFDFDFDFDFCFEFEF8FAFAF6F8F8FDFFFFF8FDFCFAFFFFF5FFFEB4
          C2C06B7E7B445B57192F2D1B302E20302F313B3B282C2D2E3031363636282828
          2323232123230E10101217164F5453AFB4B3B8BDBC6166653234343A3C3C5B5B
          5B5050505E5C5C6F6D6D615C5D777273807B7C7573737674748785858C8C8C85
          85858787877F7F7F7C7D7B7A7B796C6A6954504F4945444E494A545153737276
          AAA6ABDBDADEF6F5F9FAF9FDF2F1F3EDECEEFFFEFFFFFEFFF9F7F7F8F6F6FFFE
          FFFFFEFFFFFFFEF3EFEEF9F7F7FCFAFAFEFCFCFDFBFBFBF9F9FBF9F9FDFBFBFF
          FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
          FEFEFEFCFEFEF9FBFBFDFFFFFAF5F6FDF7F8FFFFFFE8EEEDE0F1EEE4FDF99DBB
          B68EA7A34D5D5C04090A070406382F32251A1D2F282B3D3F3F373D3C363C3B30
          3635181E1D202625030908313736C8CDCCDBE0DFD8DADAA2A4A4656565414141
          3F3F3F484646605B5C554F505C5657767071807B7C7A75767F7D7D9391919292
          928C8E8E8E918F9398968B908E6B706E464B493133333837393430353B373C58
          5459837F84B2B1B5E8E5E7FFFEFFE5E4E6F4F3F5FFFDFDF8F6F6F4EFF0F8F3F4
          FDF9F8FCFAF9FEFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFDFDFDFBFBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FEFEF7F9F9F9F9F9FFFDFFFFF5F7FCF6F7EFF4F3EAFFFDDDFFF9D3F9F393B1AC
          B2BDBB4943444A373A2B121641282C423436101212313E3C303B391F2A283A45
          43252D2C272F2E0001000001008E9392F9FEFDC8CDCCF3F5F5B2B4B47C7E7E45
          45453C3738534E4F5C5758524D4E5954557873748987878684847B7B7B939595
          A6ACABA0A8A78991906B76744F5C5A414948373638363035322C31312B30352F
          34484449746F71989597E4E1E3F2EFF1FEFCFCFFFEFEFFFDFDFEFCFCF8F6F5F0
          EEEDFDFBFBFEFCFCFDFBFBFCFAFAFFFEFEFFFFFFFFFFFFFFFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFF
          FFF6F4F4FFFDFFFFF6F8FFFDFEF8FDFCEAFFFDD4F8F2DFFFFFE0FEF9969E9DB9
          B1B2947D8152373B351C2016080A2C3130303D3B343F3D313C3A3038371C2423
          1F25242228271E2322272C2B646968E9EEEDD4D9D8FBFFFFE4E9E8D3D8D7AAAF
          AE6E73723C3E3E393B3B4C4E4E595B5B666868737575878989929796999F9E98
          A09F97A2A0909D9B7683815A64646362665F595E524C51443E43393338383237
          443F41524D4F1F1A1C5B585AACAAAAE6E4E4FAF8F8F7F7F7F9FAF8FDFEFCFFFE
          FEFFFFFFFCFAFAF6F4F4F8F6F6FFFDFDFFFFFFFDFBFBFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFCFCFC
          FFFAFCFFF8FAFFFEFFF7F9F9DDF0EDE2FFFBC2E3DCE8FFFECEDCD840413F9B91
          9195858627191A160E0E171C1B101817252B2A3339382F34335B605F3133332E
          30300D0F0F000101080D0C444A49C7CDCCD4DCDBD3DEDCE7F4F2DCEDEADDF0ED
          C2D3D082908E4855533B46444C57556068677B8081858A8B8D92939196979199
          998D95957D85856D727568676B696368635D62605A5F615A5F5F585D544D5048
          4345504B4D433E40424040615F5F8D8D8DBABABAE0E1DFF3F6F4F5F5F5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFEFEFEFFFEFFFF
          FEFFFAF5F6F2F2F2F6FFFFEDFFFCE9FFFBCDE7E1485E59C3D2CEBDC6C3969D98
          9EA29D4B514C0E13110E14131C21202B2D2D3535352828284644443432323C3C
          3C2F31310409080E1413000402808D8BC8D6D4DAEFECC3E3DEC6EAE4D6F6F1DF
          FDF8D1ECE8ADC4C08095926879764B59585963636E767684898A8E92938A8D91
          85868A8382868480858F8B90938F948C868B827C817D767B77707370696C6E69
          6B625D5F5A58585C5A5A5959595A5C5C6F72708A8D8BC9C9C9E3E3E3FAFAFAFF
          FFFFFDFDFDFEFEFEFCFCFCF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFFFEFFFCFEFFFCFEFEF9FBFBFAFA
          FAF9F9F9F5F6F4F6FBF9EBF9F57A928A8FB1A7DAFFF79EC8BD5981756F8F848B
          A29A636C690000002020202E2C2C151011423D3E4640413A3435373233373737
          2025240C14130613111526236A7D7AD4F2EDB7E4DBACE1D7BFF0E8B0DFD7C4F0
          E9D2FBF4CAEBE7C8E5E2AEC3C48190925E676A656A6D78797D807C82847D848B
          848B8D898E8C8B8F939296A09CA1A9A5AAABA5AAA19C9E989395918C8E8D888A
          8583837D7B7B7575756F71716A6F6D696E6C6D6F6F7272729A9A9AD5D5D5F9F9
          F9FFFFFFFFFFFFFCFCFCF4F4F4F8F8F8FAFAFAF8F8F8F8F8F8FAFAFAFCFCFCFD
          FDFDF9F9F9FCFCFCFEFEFEFDFDFDFAFAFAFAFAFAFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFEFEFDFDFDF6F5F7FDFFFFF2FAF9F8FFFFFAFFFFFFFFFF
          FDF9F8FFFFFE9DA7A1677F77DAFFFC8FCABB69AD9C579888427B6C5D877C93A4
          A05055543739390606063331312D2829383233423C3D484344403E3E2E33322A
          3231192725000906081D1A43635EA5D9CFB1EDE29EDAD0B2EBE2B6EDE4A7DCD3
          C9F7F1CDF6F1D9FBFAD4EEEEC6D8D9AFBBBD94989D7E7C827770777871789495
          99999CA0A3A4A8A8A9ADABAAAEAFABB0B5B2B4BCB7B9B5B0B2B2ADAFABA9A9A2
          A2A2999B9B90959489908D878C8A6668686565655F5F5F575757676767A0A0A0
          DCDCDCF7F7F7FEFEFEFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCF9F9F9F5F5F5FDFD
          FDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFE
          FEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFDFDFDFDFDFDFBF8FAF8FAFBF1FBFBF4FFFFF8FFFFEFF1F1FFFFFEC2
          BEBD727C76D9F6ED84BFB088D7C4338C783B957E4698821452428BAAA3889694
          5B6664242A291B1D1D232121393435403B3C4540413F3D3D3234343038372836
          34041714000502001A151D4F458FCBC0B1EFE3B2F0E494D3C9BEFBF1A6E1D9BF
          F8F0B3E5E1CCF7F4E0FFFFE1FAFCD9E7EDC7CFD6AEB0B894979C7B82858B9295
          A3A8ABB4B7BBBEBFC3C3C2C6C9C6C8CBC8CAD2CDCFD2CDCFCECCCCC8C8C8C0C2
          C2B7BCBBAEB5B2ABB0AE9799998688887577776163634B4D4D5052526F717187
          8989C3C5C5DBDDDDF5F7F7FCFEFEF3F5F5EDEFEFF5F7F7FDFFFFFFFFFFFFFFFF
          F8F8F8F7F7F7FBFBFBFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFEFEFEFEFEFEFEFE
          FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FDFDFDFDFDFDFFFDFFF7F9FAF6FFFFF0FCFCF3FEFCF9FFFED6D7D5717674CEE0
          D9C6EEE294D8C73C947D40A58C2B9178207E6625715F82B1A888A8A379928E5D
          706D2A37351D25241E20202626263331313E3E3E3638382A302F2D3A382D3E3B
          1C2F2C08231F00150D00271D82B7ADA2DED3BEFDF39FE3D8A5EAE09DE2D8A3E6
          DFAAE8E2B2E7E4BDE9E8D4F5F8E5FFFFE1F5FAD2E2E8BCCBCEB7C4C6B0BCBEB2
          B9BCB9BEC1C3C4C8CAC9CBCDCACCDCD9DBDDDADCDCDCDCDADCDCD8DADAD2D7D6
          CDD4D1CAD1CEC7C9C9A9ABAB9698988A8C8C6E7070535555494B4B484A4A4648
          485C5E5E898B8BC0C2C2EDEFEFFDFFFFFDFFFFFDFFFFF4F4F4F4F4F4F7F7F7FD
          FDFDFFFFFFFFFFFFFFFFFFFCFCFCFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFC
          FCFCFCFBFDFDFFFFFAFFFFECF4F4F5FDFCF6FFFF64726E9BB1ACD8FDF3B4EBDC
          70BCAA5AB49D32947C21866C0B6C5271C9B2ADEFE381B8AF7EAFA75E8780718F
          8A283D3A000D0B0C1413252A293A3C3C3E4040333837343C3B35424027353313
          2421091F1A00140E000E065D8C83AEE7DEA8ECE199E5DA9CEEE29CEFE69AEAE3
          9AE6E2A0E5E2ABE7E7BAEDEFC9F6F9D8FEFFE8FFFFE6FAFBDCEBEDD3E0E2D2DB
          DED6DBDED9DBDCDAD9DBE5E2E4E6E3E5E5E5E5E5E7E7E6E8E8E5EAE9E4EBE8E4
          EBE8D7D9D9CACCCCB4B6B69A9C9C8A8C8C898B8B797B7B5A5C5C575959444646
          363838424444656767949696C3C5C5E2E4E4FFFFFFFFFFFFFFFFFFFEFEFEF9F9
          F9F8F8F8FAFAFAFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFCFCFCFCFCFCFEFD
          FFF5F4F6FCFBFDFAFCFDF7FDFC9FADAB849E98DBFFFA9BD4C57AC0AF66B8A263
          BBA4439F86217F6634957B9DFBE3AEFFF479C5B97ABEB35E9A9064938B537771
          2F4844192725222A292328272C2E2E383A3A373C3B2E343328302F2B31301D20
          1E2A2F2D000C080010094C7D7587C9BE9EEDE2A6FFF78DEEE488EBE18DEDE698
          F5EE9CF0EC9AE7E4A2E8E7B8F2F1C7EBEBDDF5F5EDFFFFEFFFFFEEFBFDECF3F6
          EDF1F2F2F4F5EDECEEEFECEEEEEEEEECEEEEEEF0F0EDF2F1EEF5F2EFF6F3ECEE
          EEE4E6E6DBDDDDCBCDCDB6B8B8A7A9A99395957A7C7C5254544E505045474737
          39392D2F2F393B3B6264648B8D8DC2C2C2D6D6D6EEEEEEFDFDFDFFFFFFFEFEFE
          FFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFCFCFCFCFCFCFDFFFFF0EDEF
          FEF7FAFEF7FAC7C9C971827FD2FBF3BCF9EB74BEAC64B6A35CAE985AAC9653A3
          8C3D917981DCC295F5DD76DAC86BCDBD6DC5B76CB8AC4C8B81699A92698B8543
          5A562C39371B21201B1D1D303030363838333535343938413F3F473738231314
          2B29281F302C0006002E6B6161B3A78EF0E49AFFFC83F7EA75E8DE76E7DD7CE6
          DF83E7E18EEDE9A8F5F2C7F3F2DBF7F7E3FBFBE2F6F7E0EFF1E4EDF0F1F6F7FD
          FFFFF6F5F7F6F5F7F6F6F6F4F6F6F4F6F6F3F8F7F2F9F6F3FAF7F7F9F9E6E8E8
          E1E3E3DFE1E1CACCCCB4B6B6ACAEAEA9ABAB9D9F9F8385856466664D4F4F3B3D
          3D2E30302D2F2F3436363D3D3D676767A3A3A3D6D6D6F1F1F1FBFBFBFEFEFEFE
          FEFEFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFBFD
          FDFCFEFEFCFEFEFCFEFEFCFEFEFBFDFDFCFCFCFCFCFCF6F5F7FEF9FBFFFDFFE4
          DEDF747B78ADCAC1C2F9EA7FC9B77CD1BB71C6B067B49F58A08C468D795DAA95
          A4FEE78BF0DA52C5B162D8C558CBB857C1B079D6C7438F83528B825C857E3C51
          4E2C3433282626312C2D3A35363D3B3B3335352927274D3D3E4E393B2A1E1E0F
          1210162926000A0419544C65B4AB8CEEE27DEBDF74EADD6FEBDF72ECE277F1E7
          84F8F19DFFF9BCF8F7D0F8F7D9FBFBE0FEFFEBFFFFF0FFFFF0FBFFF2F8FDF5FB
          FFF6FDFFF7FFFFF5FFFFF3FFFEF2FFFEEFFFFCEEFFFBE3F4F1E5F8F5E6F9F6D9
          ECE9CADFDCCADFDCBDD2CFA5B8B58B9E9B7F908D72807E677270565E5D434948
          3D42414345454141414E4C4C5F5D5D7171718D8D8DB5B5B5DFDFDFFCFCFCFAFC
          FCFAFCFCFAFCFCFAFCFCFBFDFDFCFFFDFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFCFEFEFAFEFFF9FEFFF1F9F9F8FFFF
          F8FDFEF1F6F7FBFFFFFBFFFFF4F7F5F9F9F9FFFDFFFFFDFFEFE8EB8D908EA3BA
          B2D5FFF2A1E9D352A98F67C0A664B79E54978268A6944A8979B0F9E98AE6D568
          D7C35ADDC843D1BA3CCEB64EDDC656DFC954CDB939968754968B5D7F795E6967
          3E36372A1C1E26191B302A2B3035343036353536342F2A293E3434403434241A
          1A1715150917150008045E9A9293E9DF8AF3E86FEADC5CE0D360EBDD63EFE286
          FFF6A3F7F3BFFBFBC2F7FAD8FFFFCFF1F7E0FAFFECFFFFDDEEF7EDFEFFEBFEFF
          E5FEFFE1FFFFDFFFFCDBFFF9D9FEF6D3FCF4C6F5EDC7FAF3C7FBF4C2F8F1BDF6
          EDB8F1E8ABE4DBA1D8CF93C6BE8DB9B27FA69E74938C6D837E66757155605D49
          4E4D4A4848484345544F51605D5F5A5A5A5B5B5B6C6E6E7D7F7FC5CAC8D7DCDA
          FBFFFEF3F8F6F5FCF9F0F7F2F7FEFBFBFFFEF7F9F9FBFBFBFDFDFDFDFDFDFCFC
          FCFCFCFCFAFAFAF8F8F8FBFBFBFBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          FEFFFFFCFFFFFEFFFFFEFFFFFFFAFFFEF9FEFFF7FFFFF6FDFFF8FFFFE9F1F1FA
          FFFFF4FAF9EEF3F2FDFFFEFFFFFFF9F2F5FAF3F6C3C3C37B8A86DCFFF6B7F4E0
          61B49B72CEB159B09464B29A54937F58928088C9BAA5F6E788EEDD54D1BE3FD1
          B93BDCC23ADFC428CFB435D7BD41D3BB72E8D532897B79AAA24A5D5A65636359
          4C4E312628181314272D2C313C3A353D3C2D32303934334335363E292B362627
          27212204110F00050151928972CBC173E1D57BF7EB77FBEE7AFFF870EDE3ADFF
          FFAAF5F3A4E5E6CCFFFFCFFCFFD3F9FEDCFCFFDDFDFFD4F6FCD4FAFED2FFFFD0
          FFFFCAFFF9BEF7EEB3EDE2A8E6DAA4E9DE9CE6DA8FDBD082D1C47CCEC17FD1C4
          82D2C581D0C390D8CC8ACCC17CB6AB6D9C93658A82617D775D736E5C6A68656A
          6B6163645B5D5E5B5D5E666B6A777C7B6A6F6E474C4B5C615F585F5C949997D0
          D5D3FAFFFCFAFFFCF4FBF6F9FFFAFDFFFFFCFCFCF8F8F8FAFAFAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF7F7F7F5F5F5F8F8F8FBFBFBFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFC
          FFFFFEFFFFFEFFFFFFFCFEFEFAFEFFF9FEFFF5FAFDFAFFFFEEF3F4FBFFFFF6FB
          FAFBFDFDF5F8F6EFEFEFFFFEFFE8E7E94A5856DBFDF3BFF8E979C4AE67C0A66C
          C7AD53A68D60A89151907C63A390B9FFF48CECDB6BE4D040CDB830D0B834DFC5
          2AD9BE24D3B830D9BF5BF4DD36B9A56BD0C1478A817BA39E5969685C60614140
          42313032252A2B2D38362936342934323234343B36373E3335382D2F2A252715
          1D1D102B28000701002D2681D4CB8AEBE178E1D69AFFFF86F1E893F0E9B3FFFF
          B3FFFBBDFFFDB2ECEBCBFFFDD3FFFFC2F8F3C6FFFBB5F4EB9CE1D785CFC37AC7
          B97AC7B981CFBE84D5C66FC7B771CDBC76D1C277D5C478D8C776D9C772D2C16D
          CBBA65BDAD79CABB8BD3C691CFC388BDB47EAAA3749A94718F8A6E8381637170
          606E6D6B7978727F7D727D7B656D6C515756434846464B49484B492A2D2B5F60
          5EB4B5B3EFF0ECF8F9F5EEEEEEF5F5F5FCFCFCFFFFFFFCFCFCF9F9F9F9F9F9FB
          FBFBEFEFEFF6F6F6FEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFEFF
          FFFEFFFFFFFCFEFFFCFDFFFCFDFFF8F9FDFDFEFFFDFFFFF1F3F4FDFFFFFDFFFE
          EEEFEDFAFBF9F7F6F8646E6EB9D7D2C1F6E98AD6C459B49B63C1A85FB89E5BA7
          8F589C8562A28F96DDCCACFFF36CDDC942CBB631CFB725D2B727DCC02EE5C92A
          DFC329D8BD2ED0B759E8D25FD5C372CCBF4B8C83769F9A5F7775576564343C3C
          1D2525131B1B18262523312F2E36363237363835372F2C2E2524262226271220
          1F1934310005030B433E5CA099A9F6EF9DF2EA92EBE29CF8ED9EFAEF9AF0E6B7
          FFFBB5FFF3B2FAEEA6EEE199E4D477C9B777D0BD7BD7C47BDDC77ADCC671D5BF
          6CCDB965C8B46CD3BE6CD5C06EDAC473DFC977E3D079E8D47DE9D67EE9D68CF2
          E076D6C55EB6A65CAB9D71B6AB7FBEB479B2A96E9F976C948F64858168878476
          918E758C887083807583817984824F56531D22202B2C2A444241534F4E3A3635
          5B56539F9B9AEFEDEDF1F1F1F9F9F9FDFDFDFBFBFBF7F7F7F8F8F8FBFBFBFFFF
          FFFFFFFFFDFDFDF9F9F9FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FFFEFDFFFEFDFFFEFDFFFFFEFFF7F6FAFFFEFFFCFBFDFFFFFFE8E9E7FDFFFEFA
          FFFD767E7DA3BAB6D0FFF8ADF6E650AD9856BDA258B99F5CB3995EA48D53947E
          90D5C1B3FFF273E0CA4AD0B930CEB623D2B722D9BD1BD8BB23DFC22AE4C729DD
          C121CCB249E5CD51DCC76CDFCE6FCEC050978D75A9A251726E475C5A3A464613
          1D1D1826251D2D2C222F312A3434343B3E33363A2C2D312C2B2F282A2B14191A
          172524071F1D000A0660908ABCF5EDA8EFE59CF9EAA0FFF595F8E6A0FFEB8CE9
          D47EDCC375D4B970D7B878E5C56ADCBE57CEAF48BFA240B79A42B99D4BC0A753
          C8AF52C7AE52C8AF52CAB155CDB454CEB654CEB655CFB758D0B861D4C079E8D4
          8FF7E692F4E489E1D47BCFC374C3B876BDB372B1A873ACA470A39C6A98927499
          958BAAA78FA6A2788986727A79484D4C373534201B1A2A22222F25254539395C
          52523A3536676767ADADADE5E5E5FBFBFBFCFCFCFDFDFDFFFFFFFBFBFBFDFDFD
          FBFBFBF9F9F9FCFCFCFFFFFFFEFEFEF8F8F8FFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFDFFFEFDFFFEFFFFFFFFFEFFFFFDFF
          FFFCFFFFFCFFFFFDFFFBF8FAFAF9FBFFFFFFFAFDFBEAEDEBFBFFFCA2ACA6768A
          85D8FDF5B3F3E777CDBB55BDA659C4AA48A48B69BAA15EA28B67A893B4FFEC95
          F7E148C7AE36CDB338E4C81CD3B721DEC118D8BA13CFB221DBBE2EE2C642EFD4
          14BAA150ECD450DBC663DDCB75DACB3D8C815C958D6287834B605E414F4E2A36
          381D292B1623251F2C2E303C3E3B424537383C2E282D4E45480F06092B26271C
          2120000D0B000E08487169A4E2D48DEEDA9DFFF584F1D76CD7BC57C2A260CEAA
          5BCCA64CC49B34B28835B9903FC49C45CCA64DD0AF51D3B459D7BA5ED9BF6CE5
          C96FE8CC74EFD378F5DB79F6DC74F3D972F1D873F2D96DE9D36BE2CD6BDECB76
          E4D287F0E18CF3E480E2D472CEC177CBBF6FBDB26BB2A86DACA377ADA68BB7B1
          8BADA77B928E677573505655514F4E45403F574B4B4D3F40403031332727534E
          4F4747475151517A7A7AAEAEAED5D5D5EAEAEAF2F2F2F4F4F4FCFCFCFFFFFFFE
          FEFEFEFEFEFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFBFFFEFBFFFEFDFFFFFFFFFFFFFEFFFFFDFFFFFCFFFF
          FCFFFFF9FCFFFCFEFEFBFDF5F7F7F3F8F6FAFFFECED8D270827BCAEBE4BAEFE5
          83D1C05AB9A45EC6AD57BDA452A68E5BA48E70B19C91D9C3A4FFE863D8BF3FCE
          B32CCFB333E3C621D9BB1AD6B920DCBF27DEC220D4B827D8BD28D5BA57FFE819
          C2A856F6DE48DEC752D2BF7AE5D553A2974A837B5B7E7A4E636140494C2B2F34
          1E272B1E2A2E222D3130393D3B3A3E32282E2D1C204E3B3E402E2F1B120F262C
          27081D1400180C1B594778DDC45ED5B839B18F4DC49E5AD0A754CEA040BE8D3C
          BF8D43CC9947D4A34FDDAE53E0B554DBB54FD2B14DCBAE4FC7AE4ABFA448BC9F
          46BA9D48BDA24BC4A851CCB260DAC26BE7CF7AF6E07BF7E179F4E078F0DE79F0
          E17DF2E37CF1E27BECDE78E1D46ACABF68C1B770C1B875BAB076B1A97FABA584
          A5A1889D9A65706E545656403A3B5044445343445846475A4C4D3B3637464646
          5656565959595555556767679D9D9DD1D1D1EDEDEDF8F8F8FDFDFDF4F4F4EEEE
          EEF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFBFFFEFAFFFEFBFFFFFFFFFFFFFEFFFFFDFFFFFCFFFFFCFFFFFB
          FEF9F4F6FFFFFFEFF4F3F2FBF8F1FFF975867DADCBC0D1FFF592D7C875CCB853
          B59F59BEA556B19A6AB59F3C7F6A87CAB5B7FFF179E3CC45CAB043E0C526D3B5
          1DCDB02ADEC124D9BD27DBBF2DDCC133E0C52ED9BF2ED9BF1DCAAF3AE9CE2DDC
          C13AE3C954ECD55CDFCB69D0C161AFA4588E875D7C7B4F585C3E3E4433393E28
          333715202422282D3A393D3B30333B282B503A3C2A16153D322E091106082212
          001604002A100F7A5A3BB99548C59E4AC69C3AB6883DBA8840C28D4AD09B50DA
          A446D29D36C09022AB7F1598731590701B907526947C319980389F8445AC9152
          BAA156C3A956C4AC56C8B15BCEBA56CBB663DCC873EDDB77F4E176F3E375F2E2
          73F2E375F2E380F6E97AEBDD6FD8CB5FBFB464B8AC7CC3B983BCB474A09A83A1
          9C5C6F6C535B5A5250506C64646B5D5E6151525B4D4E706B6C5959594E4E4E56
          56566262626969696F6F6F767676898989B6B6B6E7E7E7FEFEFEFFFFFFFFFFFF
          FFFFFFFCFCFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFAFFFFFAFFFFF9FDFEFDFCFEFFFDFFFFFBFFFEF7FCFFFDFFFFFCFFFDFAFC
          FAFFFEE4EFEDF3FFFE7990888DA89ED7FFF5A8E9D971C3B058B39E60BEA65DB5
          9E52A18C61A18E6CAA98ACF4E0A9FFF153D0B62EC4A73BE3C62CDABC2AD4B831
          DBBF2DD8BE2FD7C035D8C238D9C339DAC436DCC531DDC52BDEC527DEC42CE0C7
          35DFC846DDC961DDCD6ED0C463AEA65A898669757961616742464B313A3E1E27
          2B25292E3632373C31344D3A3D3A282734282423241A16291800170106412528
          7C5A37AA8347C79E40BE9435B1834EC9975DD9A554D09C52D09C2AAC770F8F5E
          00794D0680582295743EA98E57BCA36BC8B382D7C186D9C388DBC589DECA85DE
          CA7FDBC876D7C36ED2C06ED6C569D6C667DAC96BE2D371ECDE77F6E77AFAEE7C
          FDEE79F8E984FDEF82F7E871DDD066C6BB66BCB26EB5AB71ACA45A86804B6A67
          5063605D6564605E5E69616276696B7065676B66676969696A6A6A6B6B6B6E6E
          6E7272727474747373737A7A7A5C5C5C7E7E7E949494E3E3E3F2F2F2FDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFF
          FFFAFFFFF9FDFEFDFCFEFFFDFFFFFAFFFFF5FBFFFDFFFFFAFCE4E6E7F8FFFFF1
          FFFEA6C1B86F9186CFF5E9B6EDDE78C9B661BFA765C3AB5FB7A05AA792549985
          65A18F9DDFCCA9FBE865D1BA4EDBC034D7B81DCBAD2DDDBF34D9BE33D3BB34D5
          BF35D6C03AD7C23DD8C33ED9C439DAC432DCC52BDEC528E3C929E4CA2DE1C839
          DFC854E1CE68DFD06BCDC170B4AD7591925A6367566165374347333E42262D30
          2524262A24253428283F363231302612221100260D124D2E307E5944A67C48BE
          9339B88B32AE8048C29265DBAA46BB8A128554027544006F401E91664FBE9872
          DDBC85E9CD8BE9D08FE6D295E4D1AEF4E3B3F4E4B2F5E6B2F7E8B1F8E8AAF5E7
          A2F1E399EEE088E2D581E2D479E2D572E1D36EE2D56DE6D870ECE071F1E578F7
          E884FFF48FFFF986F8EA73DDD068C8BD6BC1B577C0B64A857D2B595333534E5A
          6F6C6F7A78727474767172746F707371717777777474746A6A6A6B6B6B777777
          7C7C7C7777777373736B6B6B5858580F0F0F4A4A4AA4A4A4D7D7D7FCFCFCFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFFFF8FFFF
          F9FCFFFDFCFFFFFDFFFFFAFFFEF4FAFFFCFFF3F0F2FAFFFFE3F1EFD0EAE46085
          7BA4D2C5D4FFFB84C9B56AC5AE62C5AB63BEA559AB944B907C5694828DCBBBB8
          FFF089ECD83CB8A03BD4BA35DFC217C7AA29D6BA3ADBC135D1B937D4BF38D5C1
          3DD5C23FD7C440D8C53AD9C533DAC52CDCC529E1C928E2CA27DFC732DDC746E0
          CD5EE5D567E0D276D1C879ACA8789494445D5F586F71384A4B2733352327281A
          1B1922211D30362B17291804290F00381633825949AC7C4DBE8C32AC7C45C193
          4DC59547B98A319E700C754A076D43288B6359BB9775D6B48DEDCF95F0D69AEF
          D9A3F4E1AEF7E7B2F5E6B8F3E5BCF2E5BCF1E7BDF2E8BBF3E8B8F1E8B1EEE4A8
          EBE2A0E9DF97E8DF8CE5DC7FDFD574DBD372DFD677E8DE78F0E584FFF17BF8E9
          78F3E582F8EB8BFDEF84F0E371D3C761B8AE83D1C63E7D740E3E381D403C4059
          555D6B696D75747277767072727979798080808585858888888C8C8C8C8C8C8A
          8A8A8E8E8E7070706161612B2B2B2D2D2D383838606060FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFFFF8FFFFFAFDFFFE
          FDFFFFFDFFFFF9FEFDF3F9FFFAFFF8FAFBF1FCFAEDFFFF5B7E7488B8ACCFFFFB
          96DBC76DBFA859BCA262C7AD58B09856A48D44867365A592B5FCEBA0F9E557CB
          B449D4B923C3A728D5B730DDC121CDB135D6BC37D5BD35D5BF35D5C139D6C23A
          D7C33BD8C439D9C533DAC52CDCC528DEC629E1C92CE2CA30E0C93EE1CC4CE3D0
          54E0CF62D6C98ADBD2659F9A70A39F466E6C486766344947273230262D28212C
          220D2011001C0409401F18673C399A6840B17840B97F3AB68254CD9B46B88914
          7F5403643C207D585EB59492E8CA96EAD19EF2DAA1F4DE9BECD999E7D6A2EBDB
          ACF1E4B5F3E7BAF1E8BCEFE7BDEDE7BEEEE8BFEFE9BFEFE9BCEEEAB7EDE8AFEB
          E5A5E7E298E2DC8CDCD582DAD47EDDD67EE3DB7DE8DF70E4D776EFE17FF8EA81
          FAEC82F9EA7EF3E472E1D366CFC25BBAAC7ED0C498DBD286BAB3547D76375550
          3F545154615F7C81807C7C7C8484849393939696968E8E8E9191919D9D9D9898
          988686868181814C4C4C2E2E2E161616202020FFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFFFFFAFFFFFAFDFFFEFDFFFFFD
          FFFFF9FEFAF3F8FCF8FDF9FDFEEAF8F6A6C4BF679589CAFFF79BE2D172C4AE6C
          C8AF43A88E5DC1A554AB91448F795DA4908FDAC59BF6E176E4CC3ABFA54AE2C5
          24C7AB21CBAE39E3C729D3B72BD0B533D7BE2CD6BF2CD6C030D7C233D8C334D9
          C433DAC531DBC52EDBC52DDDC62FE1CA33E3CC35E2CC3AE1CC3FE2CD45E2CE51
          DECD68DFD07EE0D253A79B64A79E40706A3E5D5A3B514C25382F1C3325001701
          002E101C633B3B96653AA56C3FB9793FBD7C58D0992FA270026B3E04653D4198
          7686D5BAA8F1DBAEF5E495DDD09CE6DAA8F2E6AAF6EAA3EDE19AE4D8A3E8DDAF
          F3E8B7F3EDB9F0EDBBF0EDC0F1EFC4F3F1C7F3F2C7F3F2C6F2F1BFF0EEB4E8E8
          A6E0DF9BDCDA94DBD88DDAD683D7D278D5CE71DACF7BEDE082F6E979F2E479F4
          E680FDEE7BF7E770E7D851C0B271D3C793E7DBACF1E7B1EAE29BC7C171928E54
          6A68484E4D7E7E7E9A9A9A8B8B8B818181949494A3A3A39F9F9F9999998C8C8C
          8383834F4F4F4141413D3D3D2D2D2DF9F9F9FFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFFFFFAFFFFFAFDFFFEFDFFFFFDFFFFF8FD
          F8F1F6FBF7FCF8FFFFB7CAC7567A74C7FCEFC4FFF96BBEA86BC9B060C5AB5CC2
          A65ABBA0479B8229775F88D5C0B8FFF960CCB554D5BA3BCEB22DCDAF38DBBF29
          CFB22CD1B638DFC425D1B527D6BB24D7BE24D7C026D8C128DAC32BDBC42DDAC4
          2DDAC42FDAC430DBC531DCC632DDC732DDC732DDC737E1CB3DE7D147EAD44EE6
          CF4AD0BC71E3D250AA9D55948B4B756E395851284437123423002B1119593531
          845749AE7742B5764DCA8442C17C1D925900673603683B4EA88496E3C7A8EDD9
          A5E3D7A6E2DAAFEFEAA2E4E29CE1DE9DE7E19DE8E096E4D999E7DCA6EFE5A6E9
          E4A9E8E6AEE7E8B3E9E9BAEAECC0ECEDC2EBEEC2E9EBC6EFF1BDE9EAB3E3E4AF
          E3E3ABE5E4A2E3E197DCD986D6D185E5DB7EEADE76E6DA6FE5D877F4E584FFF6
          7EFFF16EF0DF65E1D155C6B84FB1A372C6BAA9EEE4C0F9F1BDEBE5C7E4E1B3BE
          BC7D7D7D606060828282A0A0A0979797939393A1A1A1ADADAD8D8D8D8B8B8B6E
          6E6E636363515151414141FEFEFEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFAFFFFFAFFFFFDFEFFFFFDFFFFFCFFFFF7FEF7F1F6F7
          F6FAE6F0F0637A76A1CAC3B9F4E68BD7C568C3AC4BB29749B29760C6AA45A285
          34876E4D9E85A2F7E1A1FFED45C2A83DCEB23CDCC020C6A937D8BE33D4BA2ACB
          B133DABF23D5B81CD6B91AD9BE19DAC01CDAC11FDBC221DBC326DCC429DBC42F
          DAC432D9C434D9C435DAC533DAC531DCC631DEC833E5CE37EBD22ADFC343EDD1
          4CD9C46CDCCB5EADA05A8F8550756B385B4D1C4732154D302E774F439E6D47B1
          7649BD7A40BD75219D5700591F0F784759B78E97EBC9A4EAD395D3C59AD2CDA9
          DFDFA7E0E29AD9DD91D6D994DEDE9CECE79CF1E999EFE396E9E09DEAE6A0E9E7
          A5E8E9ACEAEAB5EAEDBAEAECBEE6EBBFE5E9C0E5E9BEE3E7BCE2E6BCE7EABBEB
          ECB8ECECAEE7E6A0E2E087DDD781E6DE82EEE279EDE06BE8D963E8D86CF6E57A
          FFF370F6E465E1D158C8B76DCCBE98E7DCAFF0E7B7EDE6CEF3EFE3F0EEEFEFEF
          CBCBCB9090907676768B8B8BA0A0A0A0A0A0AAAAAA9393939292925F5F5F4E4E
          4E5151515E5E5EFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFEFFFFFEFFFDFEFFFDFEFFFFFEFFF9F8FCF4F0F5F5F7F88895
          9390ACA6C7F9EFA2E9D83A957E45B0953FB49526987A2B8C711F765C30836A9B
          F1D9A3FFEB57C9B14CD5B932CCAF35D8BC30D8BB21C4A834D5BB36D8BE1FC9AD
          23D9BB1BD8B91AD9BE19DAC01CDAC11FDBC221DBC326DCC429DBC42DDAC434DE
          C837DEC939E0CB39E3CD35E2CC2FE1CA2BE1C929E3CB34F1D634E9CD56F4DC67
          ECD86BD3C25FB19F53958249856D2866482066412B7E5150AE7846AD734ABA7A
          24975400662712774459B88C96EDC99AE7CB92D4C1A5E1D6B0E7E49BD2D5A0D8
          DDA5E3E9A3E7EC95DFDF8CDBD890E3DB98EEE49BF1E79BEBE69DE8E6A2E8E7A9
          E9E9B1E9EAB6E7E9B9E4E7BAE0E4BADDE1BCDFE2BCE1E5BEE5E7BEE7E9B8E6E7
          B4E4E5A9E3E2A6F0EC89DFD97BDAD37FE8DD7BEEE46AE9DA67EBDE70FAE968EF
          DF6EF2E15CD6C64FBCAC6AC9BB88DCD098E4D9B2EBE2CFEDE8D3E1DFD9E6E4E7
          F2F0DDE3E2B4BAB9939897898E8D909695696F6E757B7A656A696567675F5F5F
          6E6C6CFBF9F9FFFFFFFFFFFFFFFFFF000000FFFEFFFFFEFFFFFFFFFFFFFFFFFF
          FFFDFFFFFBFFFFFBFFFFFAFFFFF8FEFDF9FEFDFBFFFFFBFFFFF9FBFBFAFAFAFF
          FBFCFFF4F8FFFDFFF5F7F8F8FFFFF6FFFFF8FFFFE7E9E9B9BCBA5C6A64DBFDF2
          B7F6E63A957C47B99B2DAF8C1FA8821D98761D785E14624B7FD3BBA7FFEF73E1
          C74FCEB433C3A63AD5B631D4B52ED4B52DD3B42BD3B627D4B624D4B620D5B620
          D6B825D9C025D8BF25D8BF24D7BE25D8BF27DAC12ADAC32BDBC42EDBC52EDBC5
          2FDCC82FDECA2EDFCB2EE1CC2FE2CD30E3CE2FE1CA37E2CC47EAD444DCC559E3
          CB61DFC240B18F3EA67D0D6D3E16743E5AB7804EAC735EBC853C9D6500592513
          714273C6A083CFB093DDC19DE2CD9EE1D29EDDD39FDCD8A1DDDD9FDCDE9EDEDF
          9EDFE09BE1E09CE3E09BE5DF9CE7DF9DE8E09DE7E19FE6E3A3E5E3A8E4E3ADE3
          E3B2E2E3B6E2E3BAE1E3BEE1E4BDE1E1BBE1E3BDE3E3C0E8E7BFE9E8BCE8E7B5
          E7E5ABE4E3A6E7E597E1DD83D7D278D8D277E4DB75ECE36CECE072F6E966EBDB
          77FBEA4CCAB74AC0AE6CDCCA88F4E297F2E3ABEAE0BBEAE2C4EAE4D0EEE9DDF2
          EFE0F1EED6E4E2C8D6D4899A9758696640514E4A57554E5453565656867E7FFE
          F6F7FFFFFFFFFFFFFFFFFF000000FFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFDFFFF
          FBFFFFFAFFFFFAFFFFF6FEFDF8FEFDFBFFFFFBFFFFF9FBFBFAFAFAFFFBFCFFFC
          FFF7E9EDFDFCFEF8FFFFE9F6F4DFEDE9E2E9E659655FDDF6ECCBFCEC6EBEA750
          BA9D1B99762EB7910E986F0E86630258406EB9A4B1FFF28EF4DB50C6AD43C8AD
          41D3B52EC9AA33D3B530D4B52CD5B52AD5B528D6B827D7B924D9BA26D8BB29D8
          BD2BD7BF2BD7BF2BD7BF2AD8C02BD9C12ADAC32ADAC32ADCC52ADCC52BDCC82C
          DDC92DE0CB2EE1CC2FE1CE31E2CE37E1CE37DEC93FE5CE3FE1C750ECCE5EF2CE
          5EE6BC2FAE7B006C3335A06247A86A59B57A47A26B106C390E693C40956F8FD9
          BB95D9C096D9C496DAC998DACE97DAD19BDBD69ADADA9DDDDE9CDDDE9DDFDE9E
          E0DE9DE2DF9DE3DC9EE4DD9EE5DB9FE2DD9FE2DDA2E2DDA7E2DEACE1DEAFE0DE
          B4E0DFB8E0DFB9DFDFBADEDEB8DEDEB9DFDFBBE3E2BAE4E3B7E3E2B4E3E1B1E1
          E2AFE5E5A3E1E191DAD886DBD781E3DD78E7DF6DE4DB69E9DD70F5E561E6D659
          DFCB3EC1AD53D4BF72F0DA81F0DCA2F7E9ADEFE4ACE5DCB0E1D9C0E6E0CFEFEA
          D6F4EFD4F2EDDCFCF7C4E4DF8AA8A3556C68313E3C3C4140352F30FFFEFFFFFF
          FFFFFFFFFFFFFF000000FFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFA
          FFFFFAFFFFF8FEFDF9FEFDFBFFFFFDFFFFFBFBFBFAFAFAFFFBFCFDF5F6FFFCFD
          FDFBFBF4F6F6EAEFEEF8FFFE515F5B9CB7AED8FFFB6AB29E4AAD933EB39425A3
          801F9D79259E78066F4E257961A5F4E1A3FCE870D8C154CCB441C8AE47D8BC32
          CCAF32D2B62FD2B62ED4B72DD5B829D5B929D6BA28D8BB28D8BB2AD7BC2AD6BE
          2BD7BF2CD8C02BD9C12BD9C129D9C229D9C22BDBC42CDCC52BDCC82CDDC92EDF
          CB2FE0CC2FE2CD30E1CD3BE5D238DFCA3BE1CA42E4CA4CE8CA5BF1CD65EFC50D
          8C5903783F4AB77949AC6E4BAA6D27844D0059263A956885DCB8A4EFD3A0E5D0
          9ADECD97DCCD9BDFD49DE1DA9DDEDC99DBDA9BDCDD9BDCDD9BDDDC9ADFDC9ADF
          DC9BE1DA9BE1DA9DE2D89CDED99EDED9A0DDD9A4DDDAA8DDDAAEDDDBB2DCDBB4
          DCDBB4DADAB4DADAB4DADAB5DBDBB6DEDDB4DEDDB1DDDCACDDDBADDFDFAEE4E4
          A6E4E499DFDE8EDFDC85E3DE7BE3DC6EDED662DCD179F8E952D3C46DF2DE42C7
          B341C4AF64E6CF73E8D397F4E5A0EFE2A4E9DEA6E5DBAFE8DFB8EDE4B8EBE3B3
          E6DEBEF1E9C6F7EFC9F5EECAEEE8A1B8B46A7775343636FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFBFFFFFBFF
          FFF9FEFDF9FEFDFDFFFFFFFFFFFDFBFBFCFAFAFEFCFCF9F9F9FFFFFFF4EFF0FF
          FFFEF8F6F59FA6A17D958DD8FFFB84D1BC3CA18738B09130B08D249E7A229371
          177B580862457CCEB8AFFFEE79D6C15BC7B162DCC449D0B647D8BC40D9BF36D3
          B834D4B832D4B831D3B92CD3B82AD4B827D3B726D3B828D5BA29D5BD2BD7BF2D
          D9C12BD9C12BD9C12AD7C128D8C12BDBC42CDCC52DDCC82CDDC92DDECA2FE0CC
          2FE0CC32E1CD38E3CD38E2CB37E0C646ECCF46E5C552E9C238C699006E3929A1
          6640AF715BC08224854705632C1F7B4A64C095AFFFE49EECD49EE5D49CE3D39E
          E3D8A2E6DFA1E7E19EE0DF97DBDA9ADBDC98DBDC98DCDB98DDDA98DED898DED7
          98DFD59ADFD59CDCD79EDBD7A0DBD7A3DAD7A8DAD8ABDAD8AFD9D8B1D9D8B2D8
          D8B2D8D8B2D8D8B2DAD9B0DAD9AEDAD9ABDAD8A8D9D7A8DCDCA9E2E1A7E3E39E
          E2E196E3E08DE4E083E3DD76DED767D8CE71EADC5CD9CA6EF1DD53D8C431B8A2
          52DAC263E1CB86EEDD94EFE09AF1E3A0F2E5A5F4E7A2EEE293DFD384D0C481CB
          BF95DACFB0EDE3C7FAF2DCFFFAE0F7F3CAD2D1F4F6F6FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFBFDFD
          FBFDFDFFFFFFFFFFFFFFFAFBFEF9FAFCFCFCF8FFFCF7FEFBFAF5F4FFF6F3C9C4
          C14E5B53DDFFFBA6F1DC46B49837BA9926B18F139B7730A6832184641A68495A
          A187B4FFEEA5FEEB76D9C55AC6B358D4BE52DAC24ADAC145DBC33FD8BF3ED8BF
          3BD7BE38D6BE33D3BB30D2B92AD0B726CFB529D4BA2AD5BB2BD8BD2CD9BE2DD9
          C12DD9C12CD8C029D7BF2DDAC42DDAC42EDBC52EDEC72FDECA30DFCB31E0CC32
          E2CB31DDC53AE5CB35DFC349EFD048E7C54BE5BC09996900824D4AC4883BAD6E
          48B07107692D004C1656B58381DFB6A0F9D892E1CC95E0D297E1D59AE3DB9BE3
          DD9AE0DF99DDDC94DADA98DBDC98DBDC98DCDB98DDDA97DDD797DDD697DED499
          DED49EDBD7A1DAD7A3DAD7A5DAD7A7D8D6ABD7D6ADD7D6AFD7D6B0D8D7B1D9D8
          B1D9D8AFD9D8ADD9D8AAD9D7A8D9D7A7D9D7A3D9D9A4DDDCA3DFDE9EE0DE9BE1
          E095E4E18DE4E085E3DE74DBD362D2C671EADC5EDECB65EBD72FBBA440CFB653
          DBC37FF3E088F2E188F2E18BF3E28CF4E386F0DF79E3D26ED6C56DD3C274D1C2
          86D8CB90D2C7A5D6CEDFFFFAE9FAF7F9FFFEFDFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFDFDFDFDFDFF
          FFFFFFFEFFFFFAFBFFF9FAFCFCFCE8F6F2F6FFFCFFFFFCCFC9C4878781B6CEC2
          C0FEEC5BC0A622AA8824BD9613AC850A957033A381146A4C3C7C5FC1FDE5B8FF
          F47BDAC66AD0BE5FD0BC56D4BE57DFC748D6BF44D8C048DCC446DCC446DCC543
          DBC43FD8C13AD6BE33D3BB31D3BA2ED4BB2AD5BB2BD6BC2CD7BD2DD7C02DD7C0
          2DD7C02CD8C02ED9C32FDAC430DBC531DCC631DECA32DFCB33E0CC35E0CA34DE
          C73DE9CD34DEC141E8C744E6C232CFA30083511FA87045C18541B37418814207
          6B3106663085E5B69BF8D18DE7CA92E4D294E1D995E2DB96E0DC93DCDA93DBDB
          95DDDD99DFDF96DCDC96DCDC98DCDB98DDDA98DED898DED798DFD59BDED5A1DC
          D8A4DBD8A5DAD7A7D9D7A7D8D6AAD6D5ACD6D5ABD5D4ADD5D4ADD7D6AED8D7AC
          D8D7A9D8D6A6D7D5A5D7D5A4D9D69ED7D69ED8D79EDAD99EDDDB9FDFDF9CE2E1
          99E6E393E9E37FDED75FC7BC7CEEE053D1BE69F0DA3CCCB333C9AC45D6BA71F0
          DB7BF4E07EF7E379F4E070EFDA66E7D25ADBC652D1BC58D3BF5ACAB877D6C78F
          DED197CEC5BFE5DF8DA29FF5FFFEFBFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFFEFFFFFE
          FFFFFAFBFFF9FAFCFCFCEAF8F4EFFDF7E9E8E4A0A09A9EACA1D1FBEA91E8CE21
          9F7C13B1891AC297039F7625AC86096E4E327D6171A88FCEFFEFA0F2DF5FC2B0
          58C2B162D6C35DDAC655DBC549D5BE49D8C14BDAC44CDBC54DDBC84BDBC849DC
          C845DAC641D8C43DD8C331D5BC2CD5BB2CD5BB2DD6BC2DD6BC2ED7BD2FD7C030
          D8C131D9C230DAC331DBC532DCC633DDC735DFC936E0CA36E0C939E2C840EACE
          38E0C33AE1C045E8C20FAD7F008A5632BC822FAE7037AB6A046F31096D334EAD
          7B99F8CC9EFAD790E9CF95E7DB97E4E097E4E196E1DF93DDDD93DDDF95DFE199
          E0E395DCDF95DDDD97DDDC97DEDB99DFD999DFD899E0D69CDFD6A3DCD9A8DAD8
          A7D9D7A7D8D6A8D7D5A7D6D4A8D4D3A7D3D2A7D1D0A7D3D2A9D5D4A7D6D4A3D4
          D2A1D3D1A0D5D29FD6D39AD5D19AD5D19DD7D6A1DBDAA5DFDEA3E2E0A3E5E39D
          E9E586DAD56FCFC56EDACD5AD4C25BE2CC52E4CB29C3A638D0B359E2CC6CEFDA
          74FBE56BF7E058E7D046DAC23ED2BA3CCEB64FD8C25BD6C25FC7B677C9BCA6E2
          D8D3FCF5839A96E8F5F3FBFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFCFDFFFEFFFFFEFFFFFAFB
          FFF9FAFAFDFBEAF8F4EFFFF8B3BBB46E7C71D5F4E5AEEED827947427B8911BC3
          9800A47812A77F06825E106D4E5A9F84D8FFF4ADE8D382D9C56ED7C46AD8C662
          D8C553D2BD4ED4BE52DBC54DD9C249D4BF4DD6C150D8C650DAC84FDCC94EDCC9
          4BDBC844DBC734D4BC31D5BC30D4BB30D4BB30D4BB32D6BD34D7C135D8C235D8
          C234DAC337DAC536DBC639DCC738DDC83BDEC93AE0C937DDC43EE6C93CE2C33B
          E0BD4CF0C700986A0EA16D39C58A27A66822975815804200632B8BE9BA95F0C9
          88E3C293EBD490E1D891DFDE95E1E096E2E195E0E294DFE192DCDE91DBDD95DC
          DF95DDDD98DEDD98DFDC9AE0DA9AE0D99BE2D89EE1D8A5DCD9A8DAD8A8D9D7A7
          D8D6A7D6D4A5D4D2A4D3D1A3D2D09FCECCA2D1CFA4D3D1A2D3D19FD1CF9CD1CE
          9BD2CF9BD4D198D3CF98D3CF9DD6D5A4DADAA8DEDEA8E1E0A9E3E2A5E6E488D5
          CE82DBD15BC4B767DDCA4DD3BC64F7DB25C1A330CCAE4BDBC25FEDD668FAE259
          F2D942DEC535D6BC3DDCC24AE4CB4CDBC454D3BE5DC5B48BDDD0BBF4EBA0C6C0
          8DA4A0F6FFFFFBFFFFFFFFFFFFFFFF000000FDFFFFFDFFFFFFFFFFFEFEFEFEFE
          FEFEFEFEFFFEFEFFFFFFFFFFFFFFFFFFF9F7F7FFFFFFFFFDFDFCFAFAEAE5E6FD
          FFFEEFFDF9CFE1DA475A51C4E5D7CFFFF45DB69C26A88518B48B0EB58A1BBC8F
          00835D0D785726775CBAFBE2C3FDE589CCB771CDBA67D2BF66D6C462D8C55AD9
          C456D9C455DBC556DDC756DBC759DCC859DBCA57D9C852D6C551D7C54FD9C74D
          DDCA43DCC542E1C736D5BB2DCCB235D3BB3DDBC33CDAC23DDBC33CD9C43EDEC8
          41DEC93CDCC63DDAC63EDDC943E0CC42E2CC47E9CF39DFC244E8C94CF0CD2FD0
          A8008C5F31C58F2CB67C23A062188B4C00541A4BAD7990ECC190EAC797EED48D
          E1CF91E1DC91DEE090DDDF8FDCDE91DBDF91DBDF93DDDF93DDDF96DEDE95DDDD
          95DBDA94DBD894DCD695DED699E0D69DE0D7A3DAD7A6D8D6A5D7D5A5D7D5A6D7
          D5A6D7D5A6D7D5A7D8D6A3D4D2A1D3D1A1D3D1A0D5D2A0D5D29DD4D199D0CD95
          CECB95D0CC9AD5D1A4DBD8ABE0DDAFE1E1AFE1E1ADE1E1AAE3E29DE0DB83D6CD
          65C7BB56CAB747CBB45BEED23BD9BB20C0A23DD2B852E6CE61FAE137D6BC42E4
          CA31D6BB3DDFC537D1B851DDC64EC7B373D5C5B9FFF7A8DBD3799994D6E7E4F8
          FFFFFDFFFFFFFFFFFFFFFF000000FDFFFFFDFFFFFFFFFFFEFEFEFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFEFEF8F6F6FBFBFBFFFFFFE8E8E8FFFFFFDDE3E2E7F6
          F24D685FB9DCD2B5EBDA7BCBB440AE912CB89310AC830EAB7F06966C178B6807
          64478BD5BBBBFCE6A5E6D08CD9C472D3BF6AD6C367DAC764DAC75DDAC659DAC5
          5ADBC65BDCC75EDCC95FDCC961DBCB5EDACA5CD9C959D9C856DAC952DDC848DC
          C447E1C83FD8BF35CFB63ED6BF47DFC849E1CA4BE3CC48DFCB4BE2CE4CE3CF49
          E0CC47DECB4AE1CE4DE4D14CE5D04AE9CF40E0C448E8CA4BEAC82DCBA3009265
          36C8922DB57B229E620A7B3F00531A63C2909AF3CC94E8CB95E8D292E2D594E1
          DE92DFE193DEE092DDDF91DCDE91DCDE92DCDE93DDDD96DEDE95DEDC96DDDA95
          DCD995DDD796DFD799DFD89DE0D9A1DAD7A4D9D6A6D8D6A5D7D5A5D7D5A5D7D5
          A5D7D5A5D7D5A0D5D29FD4D19FD4D19DD4D19DD4D19AD3D096CFCC93CECA94CF
          CB98D3CFA3D8D5AADCDAAFDDDEB0DEDFB0DEDFACE1DEA4E4DF8CD9D16BCABC57
          C7B543C5AE55E6CA40DCBD24C4A636CFB547E0C752F1D730D2B83FE4C931D6BB
          3EDDC339CDB54DD0BB79E7D579D0C2BFFEF47CA69FBFD8D4E8F5F3FBFFFFFDFF
          FFFFFFFFFFFFFF000000FCFEFEFCFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFCFCFCF9FBFBF7FCFBEBF0EFFAFFFFEAF5F37C938F739890
          C3F9ECA1EDDB349A81209F7F30C19B1FB38B0D96700F876403634552A388C5FF
          F6A2EAD48CDAC380DAC374D9C46DDCC66ADDC967DEC962DEC85FDDC75FDCC862
          DDC965DECA66DCC968DBCA68DBCA65DDCB63DDCB5EDCC957DCC84FDDC650E4CC
          49DBC33ED2BA47D9C14FE1C952E3CD55E6D052E3CD55E6D058E6D355E3D053E1
          CE56E4D158E6D355E5D251E7CF48E3C84EEACC48E4C22BC49D059A6E3BC89529
          AE75219B5F00672D00592284DFB2A4F8D697E8CF95E2D499E4DC97E2E095E0E2
          95DFE194DEE093DDDF93DDDD92DCDC92DCDC96DEDE95DEDC95DFDB95DFDB95DF
          D995E0D897E0D89BDFD8A0DBD7A3DAD7A4D9D6A3D8D5A3D8D5A3D8D5A1D8D5A1
          D8D59ED5D29DD4D19CD3D09AD3D09AD3D097D2CE94CFCB91CCC893CFC997D1CC
          A2D4D2A6D7D5ACD8D7B0DAD9B2DCDBAEDFDDABE6E295DED673CDC059C5B33DBC
          A64CDBC046E1C22CCAAC35D0B53DD9C044E5CB2DCFB53FE4C938D9BF44DAC243
          CAB45ACEBB88E5D6B5FAEF84B5AD9ABAB5F1FFFFF8FEFDFDFFFFFFFFFFFFFFFF
          FFFFFF000000FBFDFDFCFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFEFEFEFEFEFEFE
          FEFAFCFCFDFFFFF9FEFDF0F6F5F3FBFAF2FDFBACBFBC5D7F79C3F6EEA4ECDF4A
          A99438AF9328B08E25B18C28AC87178B6816795925765BACF4DDB7FFEA8AD9C4
          7FD9C276D8C272DBC66EDDC76BDFC86ADFCA65DEC965DEC965DEC967DDCA6BDE
          CB6BDBC96DDBC96CDCCB6DDFCE6AE0CE65DDCB5CDBC657DEC857E5CE50DCC546
          D2BB4BD7C052DEC754DFCA5AE3CE59E2CD5CE5D05EE4D25BE1CF5BE1CF5DE3D1
          5DE3D157E1CF57E6D052E6CE57ECD24AE0C22CC09C15A67A3FC89524A46D1D92
          59005E260E6D3B9FF5CBA3F3D49CE7D29AE1D79EE5E29BE3E39AE2E298DFE295
          DFDF96DEDE93DEDC95DDDD95DEDC96DFDD96E0DC97E1DD97E1DD97E1DB96E0DA
          95DFD998DED89FDCD8A1DAD7A0D9D69FD8D59ED7D49ED7D49DD8D49ED9D59BD6
          D299D4D098D3CF98D3CF97D2CE96D1CD93CECA91CCC895CFCA9BD1CCA1D2D0A5
          D4D2ABD5D4AFD7D6B2DAD9AEDDDBABE3DE98DFD57BD1C55CC5B23AB6A045D0B5
          4EE4C631CDAF33D3B736D7BD39DEC32CD1B643E4CA43DCC34DD9C254CDB96ED1
          C1A1EDE1B1E8DF7A9E98DEF3F0F8FFFFFBFDFDFDFDFDFFFFFFFFFFFFFFFFFF00
          0000FBFDFDFBFDFDFEFEFEFFFFFFFFFFFFFFFEFEFDFDFDFDFDFDFDFDFDF1F3F3
          FAFFFFF3FBFAF6FFFFF2FFFDCFDDDB405B57B1DFD9C2FFFC56B2A130A28B36B8
          9A33BB9929A9861889681E7B5C226F539FE3CAB2F8E19DEAD588DFCB77DAC671
          DAC571DDC76FDDC56BDDC56ADEC76ADFC86BE0C96BE0C96EDFCB71DDCA70DBC8
          72DBC872DCCB73DFCD70E0CE6ADECB60DBC75BDEC95DE5CD55DBC44BD1BA51D7
          C159DFC95BE1CB60E3CE5EE1CD60E3CF62E2CF60E0CD60E0CF62E2D162E2D15D
          DFCE5AE5D058E7D05EEED54FE1C32FBF9C24B1883FC6961C9A66178953005F2A
          318D5EACFFD9A0EAD09FE4D5A2E4DFA3E4E5A0E3E49DE3E29BE1E198E1DF99DF
          DE96E0DC98DEDD96E0DC96E0DC96E0DA97E1DB97E1DB96E0DC96E0DC95DFDB96
          DED89BDDD89EDBD79DDAD69CD9D59BD8D49BD8D49BD8D49BD8D498D5D197D4D0
          95D2CE95D2CE95D2CE94D1CD93CECA92CBC898D0CB9ED1CDA3D2CFA7D4D1ABD3
          D2ADD5D4B0D8D7ACDBD9A4DCD798DDD381D5C95FC5B33AB19C3DC4AA56E8CA2F
          CAAB31D3B72ED5BA32D9BE31D3B945E1C84AD9C258D7C269D3C293E3D6BBF7ED
          789E98D2E7E4F1FCFAFAFCFCFDFDFDFFFDFDFFFFFFFFFFFFFFFFFF000000FBFD
          FDFCFEFEFFFFFFFFFFFFFFFFFFFFFDFDFCFCFCFBFBFBFDFFFFF4F9F8F5FDFCF3
          FEFCF3FFFFEFFFFD6E817E7C9E98CDFFFF73C7BB2692803DBCA322AC8D25AA8A
          1D8F712F8C6F1A64486DAB93CFFFF79CE1CC8BDCC984E3CF78E1CE69D5C272DE
          C770DEC66DDDC56CDEC66CE0C96DE1CA6FE1CA73E0CA74DDCA76DCCA78DCCA77
          DDCB74DECD71DFCD6EDECC68DECB60DFC962E4CD58DAC350D2BB5CDBC666E5D0
          67E6D169E8D364E1CE66E3D068E2D067E1CF68E2D26BE5D569E3D362DFCF61E6
          D25CE8D161EDD554E2C533C19E32BC9341C5961C986414834D00632F4FA87CAF
          FCDAA2E7D2A4E6DBACE8E8A5E2E6A2E4E39FE3E29EE2E19BE2DF9CE1DE99E0DD
          99E0DD99E1DB99E1DB97E1DB96E0DA96E0DA95DFDB94DEDA92DEDA94DEDA9ADD
          D89BDDD89BDBD698DAD599D9D497D9D499D9D497D9D496D6D194D4CF93D3CE94
          D1CD95D2CE94D1CD95D0CC94CDCA9CD2CDA1D3CFA6D3D0A9D4D1ABD3D2ACD2D2
          ADD5D4ABD7D6A0D8D397DAD185D7CA61C5B33AAE9737BA9F59E8C82BC4A528CE
          B127D3B72DD7BB34D6BC42DCC34AD3BD62D6C384E1D2C1FFF88BB7B0ABC2BEF4
          FFFDFBFDFDF6F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFDFDFBFBFBF7F9F9FBFFFFFAFFFFF5FFFEEDFAF8E1F2
          EFA6BBB86A817DDDFFFF96DDD32183754CC7B3149C8228B49729AA8B167C604F
          9C81528A73C2F3DDB6EFDA9BE3CD7FD6C27DE2CD76E2D068D7C376E2CB74E1C7
          70DEC46CDFC46EE0C870E2CA74E2CA74E0C978DFCA7ADFCA7CDFCB7BE0CB76DF
          CC73DFCC73E2CE6FE4CF66E2CC64E3CD5AD8C253D1BB60DDC96BE8D46CE7D36B
          E6D269E1CF6BE3D16DE3D16DE3D16FE4D572E7D872E4D669E0D165E7D65EE4D0
          62E9D358E1C537C19F3DC49C46C79A239C6A15814D01623065B98FACF7D7ACEE
          DBA9E8DFB0E9EBA6E0E5A3E3E3A1E3E1A0E2E09DE3DD9FE2DD9DE3DD9DE3DD9B
          E4DC9AE3DB99E2DA95DFD994DED891DDD991DDD991DDD994DEDA99DFD99ADDD8
          9ADCD797DAD597D9D496D9D496D8D395D8D394D6D192D4CF92D2CD92D2CD95D2
          CE95D2CE97D2CE96CFCC9ED1CDA1D3CFA7D4D1A9D4D1AAD2D1AAD0D0AAD2D1A4
          D3D19FD7D297DAD186D8CB60C3B137A99231B0965BE5C625BB9D20C8AB22D2B5
          2CD8BC37DCC140D9C04CD2BC6DDBC9A0F2E5B4EBE2789893F3FFFFE8EAEAFFFF
          FFF8F3F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFFFFFDFFFFFD
          FFFFFDFFFFFCFCFCFAFAFAF8F8F8F5F5F5FCFEFEFAFFFFE0EDEBD1E8E32B4C45
          DDFFFCC3FDF237928346B9A62EAD972BB0962AA98F45B69B51A78F377862AEE1
          CDCAFAE8ADE8D499E1CD82DCC97EE4D26CD8C677E6D276E6CE73E4C970E1C66E
          E1C66FE1C972E2CA74E0C975DFC87BE0CB7EE1CD7FE2CE7CE1CC76DFCC73DFCC
          73E4D073E8D36CE5D069E5CF5DD6C156CFBA66DCC970E6D36FE3D06CE0CD6EE1
          CE70E3D070E2D16FE2D172E5D473E9D773E6D56AE2D06CE8D861E1CE62E5D057
          DFC339C0A044C9A14BCA9D2AA06F16824E01602E6DBF94ACF6D4B7F8E3AEEAE0
          B1EAEBA7DFE4A4E2E2A2E3E1A1E2E0A1E3DE9FE2DD9FE2DD9EE4DE9EE4DD9AE3
          DB97E2DA94DED890DDD68FDCD58FDDD690DDD992DFD897DFD998DED797DDD797
          DBD496D9D495D9D295D8D395D9D292D5D092D5CE92D2CD94D2CC95D2CE98D4CE
          98D3CF98D2CD9CD2CBA1D4CDA5D4D1A9D4D1A9D1D0A7CFCEA7CFCEA3D0CDA3D9
          D29ADCD088DAC85EC2AC32A78C28AC8E56E5C41CB8961DC5A826D2B637D9BF48
          DEC650D7C15DCFBE83DDD0BCFFF678A19CC2D9D5EEF6F5FFFFFFF9F4F5FFFEFF
          FCFAFAFAFAFAFFFFFFFFFFFFFFFFFF000000F7F8F6FDFFFEF6FCFBF2FAF9F8FF
          FFF9FEFFFEFDFFFFFDFFFFFCFEF2EAEBF9F7F6DCE7E4405F56B2E4D8BDFFF06B
          C4B039AF9655D6BB3DBAA058CDB44CB19B54AB973D84707AB6A4C7FEEFC5FEEF
          91D5C48EDCCB77D1BE77DAC87EE4D26FDBC86BE0C76BE1C86DE3CA6DE2C970E0
          C871DFC775DEC978DFCA79DFCD78DECC76DCCA74DDCA73DFCC70E1CD6EE1CE6D
          E1CE6BE2CD69E0CB5BD0BB5CCFBB71E2CE76E5D170DCC975E0CD77E2CF74E0CD
          72E0CE6FE2CF6FE5D26DE6D26AE5D167E2CE74EAD86BE1CF6AE7D363E6CB44CB
          AB44C9A143C5962EA5720B7540005D2A78C79BB0F6D1BAF8E0B1ECDEABE4E1AC
          E5E6ACE5E6AAE6E5ABE7E6A9E8E6A7E8E6A5E8E3A3E9E3A2E8E29EE6E09CE6E0
          99E6DE96E5DC93E4DB91E2D990E0D992E1D895E0D896DFD594DDD594DBD192D8
          D192D9CF94D8D194D9CF95D8D196D7CE97D5CF98D4CC97D3CD98D3CB98D2CD9A
          D3CB9DD6CD9BD2C99ED2CB9CCBC9A5CED0AAD1D3A3C9C9B0D8D6A0D2C897D6C6
          87D7C052B89C2CA78529B79248E5C015BA9517BB9C32CEB53DCAB552CFBC6FD6
          C781D2C9B9F5EF9BC6C39FB9B9DEEEEDF8FFFFF3F5F5FCFAFAFFFFFEFFFFFEFB
          F9F8FFFFFFFFFFFFFFFFFF000000FFFFFEFFFFFEF3F9F8F8FFFFF6FFFFE5EAEB
          FEFDFFFFF9FCF8EAECFFFDFFFFFCFB8B979186ABA1BEFCEC99EBD557BDA441BC
          A04CCCAF4FC4A956BCA351A894549E8C3D8170B4F3E3BCFDEE70B7A787D5C48C
          E2D084E0CF7DE0CE82E6D471DAC56BDAC46CDEC671E1C975E3CB78E2CB7AE2CB
          7CE1CC7DE2CD81E5D381E5D37DE3D178E1CE72DECB72E1CD74E4D275E9D664E0
          CA5DD9C358D1BC65DAC578E9D57DECD879E4D17CE5D27CE2D079E2CF77E2CF75
          E4D073E6D270E7D26CE5D06CE2CF78EAD970E3D26FEAD664E7CC4AD1B143CAA2
          4ED2A327A06D107C4703612B75C596B5FBD3B9F6DAB4EBDAB3E9E2B1E7E7AEE7
          E6AEE7E8AEE8E7ADE9E8AAE9E7A8E9E7A6E9E4A4EAE4A0E8E29DE7E19AE7DF98
          E7DE94E5DC90E3DA8FE2D990E1D893E1D694E0D595DED493DCD294DBD193DAD0
          94D9CF94D9CF95D8CF96D7CE97D6CD98D4CC98D3CB98D3CB98D3CB9AD3CA9CD6
          CB98D2C79ED2CB9ACBC9A5CED1A9CFD3A1C7C9AED7D29CCEC494D2C084D8BC56
          BE9D2AAB8622B68E3BDFB612BA9525C1A325B49D57D6C15EC9B97ED2C6BEFCF6
          B4DFDC86A2A2E5F7F8F1FDFFF5FDFDF4F9F8F7F7F7F7F5F4FFFCF8FFFFFEFFFF
          FFFFFFFFFFFFFF000000FFFFFEFFFFFEF6F8F8FBFFFFF9FEFFEBEFF0FFFEFFF9
          F0F3FDF0F2F5EAECCFCDCC71817AD4FCF1BEFDED78CBB558BDA45ECBB14FBCA2
          67CDB450AE964BA08C44938069B5A3BEFFF8AAFAE960B6A477D3C07EDFCB78DB
          C96FD3C175D9C772D7C282E5D181E5CF82E4CE7FE1CB7EDDC87DDCC781DDCA81
          E0CC7EDCCB82E2D186E9D785E9D77CE5D277E2CF77E3D172E6D362E6CF4BD5BD
          4DD3BC60E2CB6DE9D373EAD577E8D478E4D17CE5D27BE4D17BE4D17AE5D27BE6
          D37AE6D376E5D173E3D177E9D872E8D670EDD962E7CC4ED9B83FCBA25DE4B61C
          9B6715854F0264306CBD8EBCFFDAB8F3D7B6EAD9BFEEE6B8E9E7B2E8E8B0EAE9
          B1EBEAAFEBEAADECEAABECEAA9ECE7A7EDE7A3EBE5A0EAE49DEAE29AE9E096E7
          DE93E4DB91E2D992E1D893E1D694E0D596DFD595DED496DDD394DBD195DAD094
          D9CF95D8CF96D7CE97D6CD96D5CC97D3CB97D3CB97D3CB98D4CA9BD5CA98D1C8
          9FD2CE9BCCCAA4CFD2A6CFD29EC5C7A6D4CE94C9BF8ED0BD81D6BA54BF9E2AAB
          8423B78F32D6AD12B79124B89A2DB39C5BD2BD67CABAA3F2E5CBFFFC668E89BB
          D5D5EFFEFFF6FFFFFAFFFFF3F8F7F3F3F3FFFEFDFFFFFEFFFDFCFFFFFFFFFFFF
          FFFFFF000000FFFCFCFFFEFEFEFCFCFDFDFDFCFEFFFDFFFFFFFDFFEFE8EBFFFD
          FFE4DEDF5B605ED3EAE2CEF9EE8DD1C074CCB565C7AF6FD4BB56B69E6EC9B259
          AE984798854F9E8BB5FFF193E4D189DFCD98F2DF73D4C07BE0CB6CD2C062CBB8
          65CBB96ACFBA77D6C27CD9C481DEC983E0CB84E1CC83E0CB82E1CD82E1CD7CDC
          CB80E0CF82E5D381E5D37EE2D07AE0CE7AE2D175E5D36BEFD84BD7BF50D8C062
          E6CF66E4CE6DE4CF77E8D479E4D17FE5D381E5D382E5D382E5D382E5D381E5D3
          80E4D27BE4D178E8D674EAD770EFD960E8CC52DFBE3BCBA164F0C1189B681489
          520065315AAE7EBEFFDCB8F2D6BDEAD9C8F1E9C1E9E7B9EBE9B3ECEBB4EDECB4
          EEEDB2EEEDB0EFEDADEFEAACEFEAA8EEE8A5EDE7A2EDE59EEBE39BEAE195E6DD
          95E4DB93E2D994E0D595E1D697E0D697E0D697DED495DCD295DAD093D8CE95D8
          CF94D7CE95D6CD96D5CC95D4CB97D3CB97D3CB97D3CB97D3C997D0C79DD3CE9C
          CCCDA2CFD2A3CED197C3C49ED1CA8EC9BB8BD4BE7AD4B749B79324A8802CC096
          32D2A811AF8A22AC8D4CC7AD57C3AD78D1C1C6FFFE8EC1B97B9D97ECFFFFE3F0
          F2ECF3F6F9FEFFF7FBFCF4F6F6FFFFFEFFFFFEF7F5F4FFFFFFFFFFFFFFFFFF00
          0000FFFEFEFFFEFEFFFEFFF5F3F3FDFCFEFFFEFFECE9EBFEF9FBFFFBFC999999
          9CA7A4D9F8EFABE0D36CB6A468C6AE6DD3BA6FCFB760BBA467BCA664B39E4690
          7E85CCBBC5FFFB89D5C37BCDBB9FF8E583E2CE84E9D477E0CD72DDCA68D4C162
          CBB655B8A45FC1AB68CCB673D7C179DEC87DE2CC7DE4CF7EE5D083E9D77FE5D3
          79DFCD77DBC977DBC97BDFCD81E4D47DE9D76AE6D053D5BE5DDCC66FEBD572E7
          D277E6D280E9D680E4D283E3D288E4D38BE4D48BE4D48BE4D48AE3D38AE3D384
          E4D37BE7D476EBD670EED863E8CD56E3C238C9A263F1C221A975118C54006732
          3D9665B9FFD7BBF3D6C3EDDBD0F2E8C6E9E5BEEDEBB7EDEDB8EEEEB7F0EFB6F1
          EDB4F1EDB2F2EDB0F2EDADF1EAAAF0E9A8F1E9A4EFE79FEDE29AE9DE98E6DB96
          E4D994E0D597E0D697E0D697E0D697DED495DCD295DAD093D8CE95D8CF94D7CE
          95D6CD94D5CC93D4CB95D4CB95D4CB97D3CB97D2CA97D0C89DD2CF9BCDCDA0D0
          D29FCFD192C2C398D1C98ACBBC89D9C270D0B239AB861CA07837C99F30CCA30E
          A57E31B09059C4A976D4BC9CE8D6A4DFD1759E96E8FFFFDDEEEBF6FFFFEBF0F1
          F2F6F7FBFFFFFAFCFCF5F5F5FCFAF9FFFFFEFFFFFFFFFFFFFFFFFF000000FFFD
          FEFFF8F8FFFEFFFCF7F8FFFEFFFCFBFDEBEAECFDFFFFA0A2A2747F7DEDFFFE9E
          C8BD97D5C76EC3AF5AC0A759C6AC61C7AE62C2AA5BB39C60AF9A509483BEFDED
          9FDACBB4F2E2A9ECDD87D2C29EF2E089E5D285E8D685EEDB7DE8D56CD9C368D4
          BE63CFB85CC8B155C3AB53C3AB58CAB263D5BE6BDDC671E2CE71E2CE75E1CE78
          E3D07CE5D27CE5D27BE1D075DDCC59CAB65ACDB96BDCC87DE9D681EAD783E7D5
          87E5D488E1D18DE2D390E3D494E5D694E5D695E4D694E3D595E4D691E6D786E9
          D77FEBD878EDD66EEDD35DE6C63ECBA45BE9BC3AC38F13925B006E381F7B4AAC
          F6CCBCF5D6C7F2DDCFEFE4CAEAE5C1EEEBBBEFEFBCF0F0BBF1F1B9F2EFB8F3EF
          B6F3EFB4F4EFAFF2EBAFF3ECACF2EBA9F2EAA4F0E5A0ECE19CE8DD9AE6DB97E0
          D696DFD596DFD595DED496DDD394DBD195DAD094D9CF95D8CF94D7CE95D6CD94
          D5CC93D4CB93D4CB93D4CB95D4CB96D2CA97CFCA9DD1D19BCCCE9FD0D29ECFD1
          8EC5C294D3CA85CFBD82D9BF62CAA92CA37C169A713BCCA029C196109D7640B1
          9057B499ADFDE6BEFEEB679588BBDDD3EFFFFEEBF6F4F8FEFDF5F9FAF9FDFEFB
          FFFFF7F9F9F6F8F8FCFDFBFFFFFEFFFFFFFFFFFFFFFFFF000000FFFEFEFFF8F8
          FFFAFBFFFFFFFCFEFFF3F7F8F4F8F9CBD3D3616E6CCADFDCC2E7DF9CD2C577C2
          B26FCCB75BC9AF4CC3A751C8AC52C0A656B8A050A28C6CAB9BD5FFFAA0CBBECE
          F6EAD1FCF1A7DCCFB3F1E398E3D393E8D990EEDD89EDDB7CE9D382F6DF74ECD3
          60DBC14DCAB040BFA53FC0A546C6AD4DCDB44CCBB554D2BC63DCC76FE4CF72E5
          D174E3CF71DDCB71D9C860BFB078D3C486DED08BE2D48FE4D690E2D58EDED193
          DFD397E1D59CE4D89EE6DA9FE7DB9EE6DA9DE5D99FE7DB9DEADC97ECDD8DEEDA
          84EDD882F4DC6BE9CC49CFAB55DDB359E0B01C9B6705774205663499E9BEBBF6
          D7CAF6DFCCEDDFCCEDE6C4EFECBDEFEDBEF0EEBDF2EFBEF3F0BCF3F0BAF4EFB9
          F5EFB4F2ECB3F3EDB0F5EBADF4EAAAF1E7A5EEE4A1EAE09EE7DD97E0D698DFD5
          97DED495DCD296DBD195DAD094D9CF94D9CF94D9CF93D8CE93D6CD92D5CC91D4
          CB91D4CB91D4CB93D4CB97D3CD98D0CB9DD1D198CBCD9DD0D29AD0D08CC8C291
          D6CB7FD2BC73D4B453C29C2AA47B159A6F35C3961FB084179B7342A58575C2A7
          C5FFEFA2D4C28DB1A3EDFFFBCFDDD7FAFFFEE8EAEAFDFFFFFDFFFFF2F4F4F7F9
          F9FDFFFFFFFFFFF5F5F5FFFFFFFFFFFFFFFFFF000000FFFEFEFFFDFDF8F3F4FF
          FFFFEDF1F2EBF3F3EDF7F7627271ACC3BFD7F9F3AEE0D666A99A6EC4B26AD2BB
          3EB59969E9CC4DCFB140BB9F58C3A941968086C5B5CBF9ECC7E9DEBDD8CEC1DE
          D5E3FFFCBAE8DCB4EFE1ACF1E49DECDE8FE4D58BECD879E6D074EAD174ECD36D
          EAD061E0C652D5BA45CAB03FC4AA3CC2AB42C6AF49CBB44DCCB654D0BA5DD6C1
          6BE1CE7BE9D773D0C192E9DB96EBDD8EE0D392E2D592E1D492DED29DE7DB9AE2
          D69FE4D9A2E7DCA4E8DDA5E7DCA5E7DCA7E9DEA7ECDFA8F0E39EEEDD94EEDB93
          F8E37AEBD056D1B153D4AD70F4C625A471097F4C0059298AE0B6B5F6D6C6F8E0
          C7ECDCCEF1E7C4F0EABEEFEDC0F1EFC0F2F0C1F3F1BFF4F1BDF5F0BBF5F0B7F3
          EDB5F3EDB2F5ECB0F5EBAEF3E9A8EFE5A4EBE1A2E9DF9BE0D69ADFD598DDD396
          DBD194D9CF94D9CF94D9CF94D9CF94D9CF93D8CE93D6CD92D5CC91D4CB91D4CB
          91D4CB93D4CB98D4CE96CFCC9BD1D198CBCD9BD1D299D2D187CAC18CDAC979D4
          BA65CDAA4ABD952CA97B189C6D31B88A19A276249B74469B7BA5E4CAB6E9D55D
          8573ECFFF9D9E9DEFAFFFCDDE1DCFBFBFBFFFFFFF6F8F8F3F5F5FDFFFFFBFDFD
          FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFEFBF9F8FBFBFBF8FDFCF8FF
          FFF0FCFCA4B6B5829A98DDFFF9BAE9E188C6BA78C6B56ACBB75BCBB356D4B744
          CAAC48D1B259DBBD51C2A7419C8569AD9CB6E9DBE1FFF8D6F1E7D1E9E1C9E4DB
          BEE1D7BDE7DCBFF1E7BEF6EBB3F1E5A2EBDB8DE7D48BEFD987EFD87BE7D074E6
          CE72E8CF63DFC753D3BA46C8B13FC5AE3DC3AC3CC2AB3FC5AE44CAB349CFB955
          D0BC6FD9C87EE0D088E7D88AE9DA89E6D78CE4D690E7D998EADD9BEADD9EEADE
          A4ECE0A8ECE1ACEBE1ADEAE0ABE8DEABE7DCAEEADFAFF0E1AAF2E59CF0DE8BED
          D763D1B54BC3A172EFC742C2931F9866005E2E55B488AEFAD8BCF7DBBDEBD8CD
          F5E9BFEBE5C2EEEDC8F4F3C7F6F4C6F5F2C2F4F0BFF5F0BEF6F1B9F4ECB7F3EB
          B6F5ECB4F5ECB4F6EBB0F4E9ACF0E5A8EDE29CDFD69ADDD499DCD399DCD39ADD
          D49ADDD498DBD296D9D095D8CF94D7CE94D7CE93D6CD92D5CC91D4CB8FD4CA90
          D3CA94D2CC93CCC996CCCC9AD0D097D0CF8FCCC889D1C586DBC76BCFB162D2AA
          43BD8F22A27139BC8A27AA78139364238E6758A082D4FFEE6B9381E3FFF0EEFF
          F4F5FEF4FFFFFCFEFDF9FFFDFDFEFEFEFDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFEFFFFFEFAFFFEFAFFFFEEF8F8C7D7D6
          4A605EE2FFFEDCFFFF83BAB184CABD79CFBD57BEA95CD1B84DCDB046CCAE40C6
          A846C6A959CAAF64C4AC5BA7955492827AAB9DACD4C8D7FAF0D6F9EFD0F5EBC5
          EDE2B9E2DAB3DED5B4DFD6AFE4D7B2F3E4A2EEDC9CEDDA9EF3DF97F2DD84E8D2
          79E2CD73E5CE6BE2CD5DDBC54ED0B93EC6AE36C0A835C1A939C7B043CAB44CC9
          B559CFBC64D8C56ADDCA6FDFCD76E2D07FE7D689EBDB8EEBDC92E9DB98E7DA9E
          E6DAA3E7DCACEBE1B4F0E6B9F2E9B9EEE4BBF0E6B7F5E9ACF4E7A2F8E67DE1CB
          58CAAC6BE5BF58D6AC209D6F006F402C926891E8C4BAFFE2BAF2DDC4F2E5C6F2
          ECC6F0EFC6F0EFC5F1F0C6F3F0C4F3F0C0F3EFBDF3EEBBF4ECB8F3EBB7F3EBB6
          F5ECB6F5EBB2F4E9AEF0E5ABEDE2A5E4DBA2E1D89FDED59DDCD39DDCD39BDCD3
          9ADBD299DAD197D8CF95D8CF94D7CE93D6CD92D5CC91D4CB90D5CB90D3CA92D0
          CA96D1CD95CECD93CCCB93CECA90D3CC84D3C577D3BA69D5B14EC49924A3701E
          A06B33B27E1792601B8F6021815987C4A887AE99B5D5C4E4FBEDEFFAF0FDFFFB
          F9F8F4FFFCFBFFFDFDFEFEFEFFFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FDFFFEFBFFFEF9FEFDF2FAF9F2FEFE879998B0C8C6C9
          ECE88DBEB68DCAC05FAC9E70CCB97CE5D053C9B050D0B354D6B85AD5B95BD0B5
          5CC9AF5FC4AB68C1AD6CBDAA68AF9E60A4935896886DA89A92C8BBBCECE0DBFF
          FCE1FFFED6F5EEC5E4DBABD3C8BEEADDC0F1E3AEE3D5A5E3D3ADF3E2A6F6E591
          EBD87DE1CF73E2CE6AE1CC5EDDC752D8C146D2BA3CCBB436C8B030C3AD35C8B2
          3DCEB845D4BE4ED9C457DDC965E3D06EE6D477E7D684E9DA91EDE0A0F2E6AAF3
          E9B0F3EAB3F2E9B4F0E6BDF1E7BDF1E7BAF3EAB1F5EAAFFFF291F0DC5ECBB156
          CEAC6BEAC331B285128E6004754968C8A3B1FFE2BCFEE5C0F7E6CBF7F0C9F1EF
          C6EEECC6EEECC6F1EEC6F3F0C2F2ECBEF1EABFF3ECBDF3ECBAF3EAB9F5EBB8F5
          EBB4F3E9B0EFE5ADECE2ADE9E1AAE5DDA4E0D8A0DCD49EDAD29FDBD39FDBD39C
          DBD29AD9D098D9D097D8CF96D7CE93D6CD92D5CC91D4CB91D4CB8ECEC897D5CF
          96D1CD8DC8C48ECCC693D8CD86D8C56CCEB06ADCB43AB88711935C23A76B2EA9
          710C804B2C9564297C558DC2A78AAA99DCF5E7F2FFF7F7FFF8FEFFFBFFFFFEFB
          F6F7FFFDFDFEFDFFFFFEFFFDFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFF
          FFFFFF000000F8FDFBFBFFFEFBFFFFFAFFFFF6FFFF6D7D7CBFD7D5D2F5F197CA
          C280BFB580CFC16CC8B554BDA859CEB557D2B655D0B461D4B959C7AD58C3A965
          CBB270D2BC6DCCB764C1AC60BBA658B19E61B5A364B2A160A596659F9485B4AB
          B8DFD7E2FFFBE3FFFCC5E9DDAED4C8B9E4D7C3F4E6B6EDDEA5E3D59FE6D69DEE
          DF8DEBDA7DE6D36FE2CE65E1CB5ADEC751D8C245D4BD35CEB730D0B832D0B836
          D2BA3BD3BC42D5BF4AD7C253D8C460DDCA6EE1D082E9DA92F1E39EF4E8A6F4E9
          A8F1E7ABEEE5B9F5EBBBF4EBBAF6EEB1F6ECB1FFF59BF6E762CEB848BFA268E9
          C44ED2A92DB08500794D3DA78297F2D1B8FFEAC4FFF0C9F8F0CCF3F1CBF0EEC9
          F0EEC9F1EFC8F3F0C5F3EDC2F2ECC2F5EEC0F4EDBDF4EBBBF4EBB9F5EBB7F4EA
          B3F0E6B1EEE4B2EBE3B0E6DFA9E2DAA6DFD7A5DED6A2DDD5A1DCD4A0DCD49EDA
          D29BDAD19AD9D097D8CF96D7CE93D6CD92D5CC91D4CB8FCFC994D4CE93D1CB8C
          CAC48DCEC590D8CB82DAC26BD3B05CD6A827A974189E6228AB6C229A5F0F7A42
          34936039825A7EAA93D6F0E2E5F9EDF6FFFBFAFFFBF6F4F3FFFEFFFEF9FAFFFC
          FEFEFDFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFF00
          0000FBFFFEFBFFFEFBFFFFFBFFFFF6FEFE616F6EB7CDCBD4F5F197C8C084C3B9
          83D0C26EC8B55FC4AF66D4BC5CCFB455C8AD5AC7AD62CAB165CDB463CBB25EC8
          B15CC8B15ACAB258CAB25ED0B957C6B050BCA650B39F55AD9D5AA7995C9E925B
          988A89BEB1BAEBDDD6FFF9C9FAECB5E8DAB5EADCBAF0E3B1EEE09ADCD093DED0
          8CE1D28BE9D889EFDD82F1DD76E9D665E4CF50DFC946DEC743DBC441D7C03ED4
          BD3FD2BC42D1BB45D0BB53D6C258D5C261D4C36CD7C77BDDCF8AE6D998F0E3A3
          F5E9AFF8EEB2F7EDB5FBF4ACF9F1ABFFF79DFEF071DDCA53CBB24DD2B160EAC1
          43CBA11B9B7220936C6DD2B2A5FCE2C4FFF7C5F4ECCFF4F2D3F5F4D0F5F3CCF4
          EFCAF3EEC8F4EEC7F5EFC5F6EEC2F5EDC0F5ECBDF4EBBBF5EAB8F4E9B5F1E6B3
          EFE5B1E7E0B1E5DEAFE3DCADE1DAABE1DAA8E1D9A6DFD7A2DDD5A0DBD39FDBD3
          9BDAD198D9D097D8CF95D6CD94D5CC94D5CC90D3CA91D2C992D1C891D0C78FD3
          C889D7C67BD8BD6BD8B240BD8B13985F29B1711EA05F0E814211753B3387514F
          8E669EC5B0EDFFFBF1FFFCEFFAF7F5FAF8FFFFFFEFEAEBFFFEFFFFFBFFFEFDFF
          FDFFFFFDFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFF000000FDFF
          FEF8FBF9F8FAFAFBFDFDF7FBFC808A8AAFC1C0D8F7F490BFB79BD7CD60AB9D66
          BCAA83E2CE66CBB560CBB163D0B662CDB36BD3BA66D1B75AC7AD5ECCB466D8C0
          5BD3BA43C2A832B49B42C7AD54D6BD53D2B944BBA638A793399F8D43A28E489C
          8A4C988664AE9C90D6C5A9EADAA9E7D7B0EBDDC1FCEEA8E4D9A8E6DAA5EADDA4
          EFE19EF1E297F0E08EEBDC80E8D773EBD96BEBD867EAD660E5D159DFCB56DCC8
          53DCC756DCC856DBC759D9C65AD7C461D7C567D9C873DECE7AE3D484E6D89AF2
          E59AEDE4A4F7EF9FF5EDA1FCF39BFFF67BEDDC66E2CA39C2A259E7C252DEB53B
          C1971D96704CB79683E0C5B7FEEDC5F4ECD2F4F3D5F7F6D4F6F5CFF4F0CBF3EE
          CBF4EFCBF7F1C6F5EDC2F3EBBFF2EABEF3EABCF4E9B8F2E7B6F0E5B4EEE3B2E6
          DFB1E4DDB0E3DCB0E3DCAFE3DCACE2DBAAE0D9A5DED6A4DDD5A1DCD49FDBD39B
          DAD19AD9D096D7CE95D6CD94D5CC91D4CB8ED1C88FD0C792D4C992D7CA84D6C0
          6FCFB15BCBA129A8740D96582DB5730A8B4600702D1473363C885276B087D3F7
          E6E1F7F2F0FFFBEFFAF8FBFFFFFFFEFFF7F4F6FFFDFFFDFCFFFCFDFFFBFFFFFD
          FFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFF000000F8F9F7FEFFFD
          FFFFFFFFFFFFFAF9FBD7DCDD576766E8FFFFD5FFF89DD4CB97DDD074C6B45CB6
          A36BCAB562C4AC6BD1B860CDB353C1A75AC7AD6AD8BE62D2BA48BDA446C1A756
          D9BE55E0C543D4B82FC5A821BB9E20B79D1FB69C20B29924AF9427A78E31A78E
          2E9E862A927B3996815EB09D86CDBD9BDCCDBBF5EABEF6EBBBF3E8AFE9DEA0DE
          D298DACE9ADFD49BE7DB92E8DC8FEBDE8DEEE086EBDC7CE7D773E5D470E8D670
          EDDA6AE8D568E8D568E8D56AE8D56AE7D46AE4D26BE3D16DE0CF7FE8DB7EE0D4
          8CECE28EEEE78FF4EC92FDF47DF4E56EEFDA3BC7A83DCFAC5CEBC44ED8AF33AF
          8B40AF8F5EBFA49FEBD9CBFAF2D6F6F5D5F5F4D1F3F2CDF2EECBF3EECAF3EEC9
          F5EFC3F2EAC0F1E9BCEFE7BAEFE6B8F0E5B5EFE4B3EDE2B3EBE0B5E8E1B5E5DF
          B2E2DCAFE2DBAFE2DBAEE2DBACE0D9A9DFD8A5DED6A2DDD5A0DCD49CDBD29AD9
          D099D8CF95D6CD95D6CD8FD3C891D5CA91D3C88DD1C690D7C785D7C062C3A339
          AC801EA168139E5B19A35C00773003702C1D78395DA46CB1E5BDE4FFF5E6FBF8
          E4F2F0F4FEFEFBFFFFF4F3F7FFFDFFFAF6FBFDFCFFFCFDFFFBFFFFFDFFFFFFFF
          FFFFFFFEFFFFFCFFFEFEFFFFFFFFFFFFFFFFFF000000FEFCFBFFFFFEFFFFFFF5
          F3F3FCFBFDFBFFFFA5B1B1647977B4D4CFDCFFFFCCFFF7ADEBDF9FE4D584CDBD
          77C3B171C6B268CAB268D3B966CEB55AC5AB5DC9B265D7BF5ED6BD47CAAF39C7
          AA2EC7A823C3A516BF9F0EBB9B0AB99809B8970DB8981AB89A1EB49626B4972E
          B3982EA98F289880319480439C894D9C8E77BFB2A9EBDFC4FFF8C3FFF5B5F3E7
          ABE9DDA6E5DB9CDED39EE3D8A0E7DD9BE7DB91E3D78BE3D589E8DA89EFDE85EE
          DF7DEDDB75E8D770E6D36FE7D571ECD876F0DE7CF4E275E8D76DDCCE7BE7DA81
          EDE185F3E78AFFF07CF9E672F6DF4AD6B92AB99864F4D153DDBB45C7A63CB396
          3FAC9284DECBC3FFF9C8FAF6C6F3F0C8F0EECAF1EFCBF2F0CAF1EFC9F0EEC3EF
          E9BFEDE7B9ECE5B8ECE5B5ECE3B5ECE3B3EAE1B1E8DFB9ECE4B7E8E0B2E3DBAF
          E0D8AFE0D8AFDFD9AFDFD9AFDFD9AADDD6A8DCD5A5DBD4A1DAD2A0D9D19CD7CF
          9AD6CE97D6CD90D1C894D7CE90D4C986CFBF87D9C380DDBE52BE941A93601B9D
          601BA25E0488420066220F72342879427CBE8BE0FFEADCF6E8F3FFFFF4FEFEF1
          F9F9EFF3F4FFFEFFFAF9FDFFFEFFFDFCFFFCFEFFFDFFFFFDFFFFFFFFFFFFFFFE
          FFFFFEFFFFFEFFFFFFFFFFFFFFFFFF000000FFFEFFFFFEFEFFFDFDFFFEFEFFFF
          FFF7F9F9E9EFEED9E6E47889868DA29FC1DCD8D4F4EFDEFFF9DCFFFBBEE5DDAC
          E1D479C8B569C4AD69C7AF6CCEB667CDB458C5AB50C7AB50D0B32FBB9C19B08F
          0BAE8E10BC9A0DC19E01BB9700B89302BC9813C2A113BC9C13B79813B69718B4
          961AB0931DAA8F23A88E2BA58D25947E298E79429C8964B6A489D2C2AAEFE0C6
          FFFABFFBF0B9F3E8AEE7DEA8E2D7A8E1D8A8E4D9A7E6DCA3E8DB92DACE95E4D6
          95ECDE8EECDB85EBDA81ECD97DEBD975E9D676EFDB77F2DE7BF4E07AF3DE75F1
          DB70EED86FEFD66EF0D767EED43EC7AB3AC2A861E9CF6CF2DB4CCFBA3CBCA953
          C9B792F2E7A6F7EEB5FBF5C0F9F6CBF7F6CFF5F5CEEFF2C9EAEDC2E8EABEEAEB
          BAEBE9B4E9E6B0E6E1AFE5E0B1E7E0B4EBE2B2EADDB4EBDCB3E9DCB3E8DBB6E5
          DCB6E2DBB7DFDAB6DED9B5DCDAB9E0DEB5DDDBADD8D5AEDDDAB3E5E1A7DBD492
          C8C198CFCC96D4CE8CD4C784DAC26FD5B241B286229F672BAE6F1A9D5A00742F
          067838005E2416683778BD92B5EDCAE4FFF2EBFCF3F5FAF9F6FBFAF7F9F9F8FA
          FAFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFCFEFE
          F2F7F6EAF0EFF3FBFABFCAC88C99977E8C8AABBCB9E3F6F3EBFEFBD4F5EEC8FF
          F4B5FDE999E6D17ACCB669C1AA61C1A950BBA13AAF9439B99C31BD9E24BD9C12
          B79403B28D00B69008C39C12CCA801B49306B59409B8970FBE9D12C1A015C0A0
          17BB9C19B7992CBFA32CB49A28A48C2A9983379A864BA4915EAE9D6AB3A399D9
          CDB1EBE0C6FEF3CAFFF5BDF1E7B1E5DBB2E4DAB5E9DFB4ECE1AAE8DC9BE1D490
          DFD190E5D68FEDDC87EAD879E2CF73E6D274EBD679F0DB7CF4DC7BF3DB78F3D9
          75F2D873F2D86BEBD256DAC345CBB547D0BA58E2D05AE8D544D4C231B8A853C5
          B781E5D9A8FDF5B4FAF4B9EDEDBFEBECC5EAEEC2E7EBBCE5E8B8E5E8B4E8E8B3
          E9E9B4EBE8B3EAE7B3E9E4B3E7E0B1E7DAB2E7D9B4E6DAB5E5D9B8E3DAB9DFD9
          BADDD9B9DBDABBDDDCBADCDBB2D9D7ABD3D1A5D2CFA5D5CFA5D9D2A4DAD39AD4
          CF95D9CE86D7C46ECEB04BBB9127A36D1A9D5E24A963088540017431005E2411
          643013552C9BD2B1D4FFE7E3FFF0F1FBF5FBFBFBFBFBFBF9F9F9FBFBFBFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFCFDFFFDFEFFFFFFFFFFFFFFFFFFFBFDFDF6FBFAF2
          F8F7F8FFFFF0FBF9ECF7F5DBE8E6A5B2B0707E7C82908EA5BCB7B4DCD1C2F3E5
          CFFFF6C6FFF2B1F2E291DBC966BBA7409F8A40AC9533AB9228AD9226B69927C0
          A121C2A216BB9A0AB39211BC9C0FBC9C10BD9D10BF9E10BF9E10BD9D12BB9B14
          B79821BD9F2CBFA331B89E2EAD943AAC954DB6A158BBA75DB7A4459284579D90
          6FB4A78ED0C4ADEBDFBFFBF0C6FFF5C5FFF4ACE6DBADEBDFAAECE0A2E8DB97E4
          D695E6D797EADB94EDDD8DECDD88ECDA82E8D67FE6D17BE4CF7BE7D17CEBD57C
          F0D96FE8D368E7D14DD3BD36BFA942D0BD5DF2DE5AF1DE47D4C343BDAD68D1C4
          8DE8DFA5F3ECB1F0EEB7EDEDBCECEEBDEDEFB6E7E9B0E6E7ABE5E4ACE6E5B1EA
          E7B5ECE9B5EBE6B5E8E1BAE6DFBDE6DEBDE6DFBEE4DEC0E3DFC0E0DFBFDFDEBD
          DFDFBBDDDDB7DDDDB6E1DEB1E0DDA5D9D299D2C99BD8CEA3E5D992DDCD91E4CE
          7BD8BB51BA9535AA7932AD731D9D5C007833067A370062231B713B2F774971A7
          84D9FFE7E4FFF1EBFFF4F6FDFAFDFDFDFDFDFDFBFBFBFCFCFCFFFFFFFFFFFFFE
          FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFAFBFFFEFEFFFEFEFFFFFFFDFDFDFBFBFBF9FBFBF8FDFCE7ED
          ECF8FFFFF3FBFAF8FFFFF6FFFFF3FEFCDFECEAAFBEBA8198907C978D8BAAA1B2
          D6CAD0FAEFD2FFF7C1FEF0B3FAE97FD3C162C1AC47B39D3AB0972CAC9320A88C
          20AD9226B99D1BB99B1ABE9F1AC0A119BFA016BF9F15BE9E13B99A10B49519B9
          9B23BDA02DBEA235BDA342C2A951CBB357CCB55BC7B16CC8B76CBFB061B2A352
          A193509B8D5EA6997CC1B493D5C9C2FFF6C4FFF8BDFFF3AAEFE297DCCF8FD5C8
          95DBCE9BE6D892E2D593E8DA98EDDF9AF2E298F1E18FEEDA86E9D57DE6D17EEF
          DB71EAD55ADBC640C9B435C5B240D7C356F0DD6CFFEE64E4D360D1C369CFC489
          E4DBA6F3EFADF2EFACECECB1EFEFAFEDEDA9EAE8A3E5E3A2E4DFA8E5E1ADE9E3
          B3EBE6BAEAE4C0E5E1C4E5E1C6E5E4C5E4E3C5E4E3C4E2E3C2E1E2BDE1E1B6DC
          DCB6E1DEB3E6DFADE6DDA4E2D69ADFD09AE3D39BEDD781DCC26DD2B25BC69F40
          B2832AA06B29A166168E4D00642100662700571C145C2D649B74DBFFE7E7FFEF
          EBFFF2EDFAF2F9FEFCFFFFFFFEFEFEFCFCFCFCFCFCFFFFFFFFFFFFFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFCFEFEFDFFFFFBFFFFF2F7F6
          DFE4E3F3F9F8F5FBFAE8EEEDF4FCFBF8FEFDFDFFFEEAEEE9BFC6C3909C96707F
          7B758D85A5C7C0D6FFF8CDFFFABAFDEEA1EEE086DFCC6CCFBD58C1AC46B5A136
          B0981FAA8F1DB39620B89B1EBA9C1FBD9F21C1A31FC2A31BBE9F1FBFA11FBB9D
          25BDA034C7AB3FCEB343CEB345CCB24FCBB34DB8A55CBFAD66C9B76ACAB968C4
          B35FB7A759AC9D57A6984D988A67ADA08CD1C4B3F5E9C9FFFDCBFFFDBEFAEFB1
          EFE3A3E5DA9FE3D89DE1D69AE0D396E1D393E2D48EE3D48AE6D58AF0DE79EAD6
          6CE7D359DFCB3DCBB826BDA935D2BE5AF2DF72FAE86CE9D668DACC72DCCF81E2
          D88CE5DC90E4DF94E6E19EEEE99EEEE99FECE8A0EAE4A2E8E2A7E7E1ADE9E3B8
          EBE4C0E2E1C8E2E2C6E2E3C5E1E2C3E1E2C1E0E1BEE0E0B8E0DFB3E0DDB1E5DE
          A7E3D99CDFD097E3D19BEDD796ECD486E6C85DCAA33CB28238AF7C39B17A1A92
          5702753605733312753700561C2068341B532AB8E1C2EFFFF4E1EFE3FBFFFCF6
          F8F8FDFDFDFFFFFFFFFFFFFCFCFCFCFCFCFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFE
          FEFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAFAFCFCFCFEFEEDEFEFFDFFFFFDFFFFEF
          F1F1EBEDEDFDFFFFFBFFFFF8F8F8FFF7F7FFFBFBFFFCFCFDF9F8F1F2F0D3DAD7
          98A7A362797473948DA2CDC4CBFFF5CCFFFEBEFFF6ABF8EA91E2D36DCBBA51C4
          B045C5AC38BAA125AC921EA98E23B29729BCA02AC0A326BEA121B99C2AC0A33C
          CFB347D8BC45D4B948D5BA55DAC062D9C45DCCB852C1AD56C2AF61CCB968CEBC
          60C3B15AB6A557AF9F5BAC9D60AD9F6DB5A87EC0B493D1C5A6E2D7B5F1E7BEFA
          F2B5F4EBABEAE1A1E3D899DDD294DCCF8EDBCD86DBCC80DECD7AE3D075E8D56A
          E8D552DAC837C7B429C0AD2FC4B05AE7D276FBE77FFFEE6EE8D862D4C76AD8CC
          77E0D779DED682E5DD8AEAE094EFE69AF1E79EEDE4A0E9DFA4E7DEAEE7DFBFE6
          E4C6E4E5C5E4E5C3E5E5C2E4E4BDE3E3B9E4E1B2E5DEB0E7DEAEEEE2A7EEDD99
          E9D291EAD08DEBCC74D7B752BF9837B37F30B1762FAE7126A163138746077331
          05662805591E1C642F2E673A91BB98EAFFEEF2FFF3F3F7F2FFFEFFFFFAFFFFFC
          FEFFFFFFFFFFFFFCFCFCFCFCFCFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FDFDFDFEFEFE
          FEFEFEFDFDFDFCFCFCFBFBFBFBFBFBFBFBFBFFFFFFF4F4F4F5F5F5FDFDFDFFFF
          FFFFFFFFF4F4F4FBF6F7FFFDFFFFFDFFFFF3F5F3E8EAF6EEEFFFFBFCFAFCFCEB
          F3F2C5D3D195AAA764827D61857F8FB9B2C1F0E8D1FFFCC2FFF695EADB87EAD8
          74DAC859C4B148B7A342B7A23CB8A236B59F37BBA43BC1AA43CBB346D0B847CF
          B741CBB344CCB449CFB84DCBB559D2BD5ED7C25BD2BD52C7B24CBFAB52C3AF5C
          C8B567CDBB66C6B563BCAC5CAFA056A39559A1946BB0A37EC0B592D5CC9EE1D8
          AFF2E9BDFFF6BEFFF8B1F9ED9BE6D888D9CA83DBCB7FDFCE7AE2D172E2D067E1
          CF5ADAC944C9B930BAA845D2BD5AE9D26EF9E46DF6E164E8D761E3D264E3D467
          E2D465DBCE6DDFD278E1D682E6DA8BE7DC92E8DC99E8DDA3E6DDB9ECE8C0EBE8
          BDEAE7BBEAE7B9E8E5B5E9E2B0E9E0AAEADEA3E9D89DECD795ECD288E6C779E0
          BB66D2A849B98F2DA67428AD6F2EB77323A4610A833F0C783617773714662B0B
          4F1A42794A66916CEDFFF0E4F6E5F5FCF5FBF9F9FEF6FDFBF2FCFEFBFDFEFEFE
          FEFEFEFBFBFBFCFCFCFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFF8F6F6FFFFFFFBF9F9FAF8F8FFFFFF
          F8F6F6FFFEFFFDF5F6FFF4F6FFFAFCFFFEFFFFFEFFFAF4F5FBF6F7FFFFFFFBFF
          FFF1F9F8EAF7F5D8E9E6A0B5B267807C69848087ADA7AFE7DCB2F7EAB8FFF3AC
          F9EB9BECDD83DBCB64C4B34BB19F47B29F56C7B362D7C25DD4BF55CEB955D1BB
          59D5BF58D6C059D5BF57D3BD55D1BB55D1BB56D2BC54D0BA53CCB752C9B460D3
          BF5FCBB85EC7B466C9B76BC7B661B9A957AA9B52A29545978B51A39769B8AD83
          D3C69BEADDAAF9EBB0FFF1AFFFF198EDDE8EE7D780E0CF79DCCC74DECD6FDCCC
          63D4C651CDBD43CFB82FC3AB3DD0BA63F6E076FFF365F5E258E5D45AE6D552D9
          C953D5C458D2C263D5C473DCCD82E5D58EEBDC97ECDEA9EEE4AEEDE4ACEDE4AB
          EDE2A7EBE0A4EADD9FEADA9AECD693E9D181DFC06ED2AF5DC99F4CBD913DB382
          34B07C33B4792CB5711CA45C06833D006E2A03632305551A1F612D5488596891
          6BE3FFE3E9FEE8E9F5E9FDFFFEF4F0F5FFFAFFFFFBFFFDF9FEFDFDFDFDFDFDFB
          FBFBFBFBFBFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFFFDFFFFFDFFFFFDFFFAF9FBFDFFFF
          FDFFFFFBFFFFFAFFFFF6FEFED3DDDDA9BAB77B9791789D9587B0A8A6D3CAC5F7
          EDCEFFFBBEFEF2A9EFE28DDACC88DBCC7DD5C56AC8B761C1B062C6B466CCBA63
          CEBB5CCDB958CFBA58CFBA55CEB952CEB851CFB952D0BA54D2BC54D0BA55CEB9
          56CBB654C7B359C5B25BC6B35DC3B15AC0AF56BDAE54BBAC4CB1A23C9F8F3193
          8346A49378D4C3A5FFECA8FFEEAFFFF5ABFFF18BE4D485DDCF82DCCF77D1C477
          E0D153D6C139CBB22BC1A92FC8AF44DDC658F4DC67FFEB6BFFEE5BEEDA56E3D0
          52D6C552D0BD55CBB957CAB75FCBB968CEBC75D3C27DD6C681DBC883DFCC81DD
          CA76D5C068CBB15EC5A664CDAC5AC7A046B98E36AF7D37B37F3EBF863EC08332
          B87600853F0078311488430A6E2D1363281E5E2A80B1839ABF99A9C5A7DEF4DC
          F4FFF7F6FFF9F6FAFBF8F6FCF9F3FEFFFCFFFFFDFFFEFEFEFEFEFEFDFDFDFDFD
          FDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFF9FE
          FFF5FFFFF7FFFFF7FFFFF9FEFFFAFEFFFEFDFFFEFDFFFFFEFFFFFDFFFAF7F9F6
          F3F5FCF9FBFFFEFFFCFBFDEFF1F2E1E9E8CFDDD9B2C1BD8CA09B788F8A84A39C
          ACD1C9CEF9F0D6FFFEC7FFF4B5F3E7ACEEE2A0E8DB90DDCF87D4C67DD2C370D4
          C26AD5C267D3C05ECFBB57CAB653CAB554CDB855D1BB53CFB950CCB64DC9B351
          CDB75CD5C063DAC55FD4BF54CBB655D0BC48C5B13EB9A53DB49F3AAD9932A18B
          28947E258A7445A7916CC9B494EDD9BAFFFCB1FFF2A8F5E78CD8CC82DDCE5DD6
          C149D5BD3ECDB62FC5AD2AC3AC2FCDB540DDC850EBD663FAE665F6E068F3DE6B
          F1DB69EAD560DEC857D3BD56CEB651C6AD4EC0A848BBA043B69B43B69B46BA9D
          47BF9D48C09D3CB68E40BC9048C8974DD19C46CB922FB87A16A060078F4D0C8D
          48067D390C74351A6E374B8D5A99C79CB4D5B29BB395E8FCE5F6FFF5F2FFF5E8
          F3F0F1F6F9FAFDFFFFFBFFFCF9FFFFFEFFFEFEFEFEFEFEFDFDFDFDFDFDFEFEFE
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF2FFFFEEFFFF
          F0FFFFF2FFFFF3FFFFF7FFFFFAFEFFFCFEFFFCFBFDFEFBFDFFFBFDFFFAFCFEF9
          FBFFFBFDFFFEFFFFFEFFFFFEFFFFFFFFF8F8F8EFF1F1E0E5E4C3CBCA9AA7A579
          8C897A918DADCBC6D6FAF4D4FDF6C7F6EEC2F5EDB6E9E199D6CC7AC9BB6CC5B5
          67C3B26BC9B872D5C372D8C667D3C05CCDB959CEB955CCB74EC7B249C7B14DCC
          B654D3BD54D3BD4CD0B943CCB63AC8B136C2AB32BCA42CB39926A98E28A58B31
          A88C4AB89E2E947B15735B5EB39F88D4C2C2FFF9B1F3E787D6C875E2CC66E6CD
          5AE0C946D2BA2FC3AB26BFA62EC7B03AD2BB3ED1BB43D4BE51DCC75EE7D162E9
          D35AE2CA51D9C14BD4B83EC7A83CC5A53AC1A139C19F39C19F39C19D3BC19D3A
          C1994FD7AD44CE9F3BC69331BD871CAA6F049354008948048C4C047F41077037
          29834E64AA7B95C79FE5FFE49BB097CEDAC6F4FFF1F4FFF5F5FFFBF3FEFCEEF7
          FAF6FAFFFDFDFFFCFAFFFFFEFFFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFF0FFFFECFFFFEEFFFFF0
          FFFFF3FFFFF7FFFFF9FEFFFCFEFFFBFAFCFEFBFDFFFEFFFFFEFFFFFEFFF8F3F5
          F7F2F4FEF9FBFCF6F7FFF7F8FFFAFBFFFEFFFFFEFFFFFFFFFCFCFCF4F9F8DFE7
          E6A0ADAB798A878FA4A1B7D2CECCEAE5D6F6F1DAFFFDC5FFF6B9FEF1A9EFE28F
          D7CA75C2B469BCAD6EC6B675D3C26DD1BF6ED9C669DAC65AD1BC4ECAB44BCAB4
          4ACCB544CCB43CCEB626BDA318AF951BB39628BEA02DC2A12BBA9A29B2921697
          7844BA9D39A28728866D20735D84CFBAC3FFF4AAF4E28EEDD980EDD775EAD566
          E4CE56DDC749D5BE3DCCB638C7B138C5B03CC8B146CFB952DCC459E5CD5AE9CE
          59EACE59EDCF54E9C756ECC858EECA5AF0CC59EDC952E6C049DCB642D6AE20B2
          881AAE8017AA7812A5710B9D6605995D099D611BA56B12865139996A71C095A8
          E2BFD3F9DDB9CEB898A292FAFFF5EEF6ECE7F1EBF3FEFCF4FFFFF2FCFCF5FAFB
          FCFDFFF9F8FAFFFFFFFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFFFFFFFDFFFFFFFFFFFBFFFFF3FFFEF2FFFEF2FFFEF3FFFEF7FF
          FEF9FFFEFAFFFEFCFEFEFFFFFFFDFDFDFFFDFDFFFDFDFEFCFCF8F6F6F9F9F9FF
          FFFFFDFBFBFFFFFFFFFEFFFFFEFFFAF5F6F6F1F2FBF6F7FFFEFEF7F7F7EEF0F0
          EAF0EFD7E2E0A7B4B27889867F928FA1BAB6B8DFD7BAE7DEC6F3EACCFEF4CAFE
          F4B6F0E59CDACE83C9BC71BEB073C8B96ECEBD63CCB95BCCB85BD2BD57D3BD4B
          CFB829BBA226BFA526C2A41BBA9A0CAD8D08AA8718B8942FCAA52ABC9922AA88
          2CA78742B09334957B358B7378C5B0C0FFF699EAD790E9D588E9D57FEBD576EB
          D669E5CF5AD9C44ECFBA45C6B13FC0AB3BBCA737BDA635BFA730C1A52CC4A72D
          C8A930CCA92DC9A628C4A124C09D22BC991DB79418B28F14AF8A25BE971FB68E
          0EA578009163008D5C0199640EA67120AB7845B58B86E0BCABF1D3C0F2DAD2ED
          DD94A094E7E9E3F6F5F1FDFFFEEEF4F3E9F3F3F1FCFAF3FBFAFAFFFEFFFFFEFA
          F8F7FFFFFFFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFBFFFFFDFFFFFBFFFFF9FFFEF9FFFEF9FFFEFAFFFEFAFFFEFCFEFE
          FEFEFEFEFEFEFFFFFFFBFBFBFCFAFAFEFEFEFBFDFDF7F9F9F6FBFAF9FEFDF5FB
          FAF1F6F5EBF0EFF2F4F4FFFFFFFFFFFFFCF7F8F0EBECFFFBFCFFFFFFFBFBFBEE
          F0F0F5FBFAF8FFFFDFEAE8ADBBB994AAA593AAA59DB7B1B6D2CCD2F1EADCFEF7
          CEF7EFBCEBE2ACE4D99DDFD384D1C36DC5B565C8B666D1BE5BCCB842C0AA39C5
          AD1DB5980BA7880EB08D19C19D1EC9A317C29B11BB9114B88F21BA9334C09B2C
          AA872595771D81654AA58BB0FFE9A3E8D4A3E9D89CECDB91EBD883E7D578E4D1
          72E2D06FE3D06BDFCC61D7C456CFBA4DCCB641C9AF32C6A82AC5A628C7A529C8
          A625C4A222BF9D1EBB991BB79818B49515B29012AF8D029E7C0FAB881BB68F1E
          BA9126C1952DC89B2AC49528B58A5ECCAA86DAC1B7F8E3D4FFF195ACA4D1D8D5
          FCF9FBFCF7F9FDFEFFF3F8FBEFF9F9F1FCFAF2F9F6F9FAF6FFFFFBFFFFFCFFFF
          FEFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFBFFFFFBFF
          FFFAFFFFFBFFFFFBFFFFFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
          FEFDFEFAF9FDFBFAFDFEFCFDFFFEFBFFFEF5FCF9EEF7F4E9F4F2EEFCFAEFFFFE
          F4FFFFF6FFFFFAFFFFFAFEFFFBFDFEFEFDFFFFFCFEFEFBFDFEFDFFFCFEFFF6F8
          F9F0F4F5F7FCFDF8FFFFEAF3F0DCE5E2C0C9C69FA8A58C979499A8A4BFD3CEDE
          F8F2DEFFFBD5FFFBBEFAEFA0E8DB8BDECF7AD8C762C6B442B39F23A88E1EAF93
          22BB9C23C5A21BC39E09B99100AF8600AA7E13C49915BD921EBA912AB9923ABA
          972598771A8263A1F8DEAFEBD9B7EDDCB1F0E0A3EEDE95EADB89E9D886E9D983
          EBDA80E8D776E2D06DDECA64DDC856DDC34ADCBE3FDBBC3BDDBA3DDAB83CD8B9
          3DD8B93CD8B93AD6B837D3B52FCCB12BC9AB39D5B736D2B32FCBAC28C5A328C4
          A12CC9A431CFA740CEAB55C3A97DD1BFAFEFE3B6E0D99BADAEFBFEFFE5E1E7FF
          FBFFE7E7EDF4F8FDF8FFFFF6FEFDF8FCF7FBF8F3FFFBF4FFFFF9FFFFFEFEFEFE
          FEFEFEFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFDFFFFFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFC
          FBFFFEFDFDFEFCF9FCFAF6FBF9F6FDFAF5FEFBF2FDFBF0FEFCF1FFFFF3FFFFF3
          FDFDF2FAFAF4F8F9FBFDFEFFFEFFF9F8FAFFFEFFFFFEFFFFFEFFFAFCFDFCFEFF
          FAFEFFF9FBFBFFFFFFFFFFFEFFFDFCFEFFFDF5F6F4D6D9D7A7AEAB808E8A8EA2
          9DADCCC5CCF5EDD0FFFAC5FFF6B0F5E894DFD173CBBB51BAA73EB69E31B29728
          B2931FB4931AB8941AC09B1EC9A212BB941EC49B18B68E19AC8625AD8B209D7D
          006C4D93F4D9B2F2DFB8EDDFB3EEDFAEF1E2AAF5E7A3F2E497E9DC8DE2D497EE
          E08CE7D880E2D275E1CE67E1C959DEC44FDFC24DE1C34FE0C44DDCC148D9BD43
          D5BC40D5BB3CD5BB3AD4BB39D3BA3BD6BB35D0B534CDB339D1B43AD0B238CCAE
          40D2B259DABF65C3B2C0FFFAB9EEE5688B87E8FAFBEEF2F7FFFCFFF9F4FDFAF8
          FEFBFEFFF4F9FAEEF3F2FFFFFEFFFFFBFFFCF5FFFDF9FFFFFEFEFEFEFEFEFEFD
          FDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFBFFFFFBFFFFFAFFFFFBFFFFFBFFFFFDFF
          FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF
          FFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFDFEFFFDFDFAFCFCF8FDFCCCD4D3A6B3B1
          8598958BA29EA9C4C0C6E4DFD4F4EFD0FBF2BDF9EE9CE4D77ACCBA5EBDA94AB3
          9E35AB9225A68B1CA68729BA9A27B99924B3932AB69732B89A1FA18316957634
          A288B5FFF5B2F7E894D7C8AFF1E5AFEFE3B4F4E8B8F5EBB0EDE3A7E9DEA5EADF
          9AE6DA86DDCF77D9C972DCCB70E3D06FE5D267E0CB62DEC85BDAC451D7C14BD7
          C048DAC247DDC547E0C736CFB643D9C140D2BA3DC9B148CEB752D1BB56D2BC56
          BCAAB4F3E9D1FBF486A8A2C2DBD7EFFFFEF6FEFEF0F2F3FDFCFEFCFBFDFDFCFE
          FEFEFEFEFEFEFFFFFFFFFFFEFFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FEFFFDFEFFFBFCFFFAFBFDF8F9F9F7F7F6F6F6F5F5F5EDEFEFF5FAF9F4FAF9D5
          DDDCA5ADAC838E8C87929093A6A3B9DAD3CDFAF1CEFFF9B5F5E997E4D685DECE
          6BD0BB4AB9A338B09733B0962AA78D27A48A32AD9330AB911E977B18846D4BA1
          8FA8F0E3BAFFF2BBFBEFB1EBE0BCF1E7B9ECE4B0E1D9AFE4DBB0E9E0ADECE3A3
          EAE098E7DC8EE6D982E1D379DBCD75DDCC74E0CE72E2D06EE7D366E7D25DE4CE
          52E0C94DDCC54BDAC34FDDC645CCB655D6C155CEBA61D1BF4FBBA983D8CAD6FF
          FDA0BBB7B4CBC7DDF0EDECFAF8F8FFFFF0F5F4FEFEFEFFFDFDFFFDFDFFFEFEFF
          FFFFFFFFFFFDFFFFFBFFFFFAFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
          FFFDFEFFFCFDFFFAFBFCFAFAF9F9F9F8F8F8FDFFFFFBFFFFF6FBFAFAFFFFFAFF
          FFF4FCFBD9E1E0BECCCA788F8A678881719A9299CBC1B6F2E7B4FAEDA4F6E49B
          F5E272D3BF63C8B357BFA84FB7A047AC9643A89242A690439E89438E7E4E9084
          81BFB3CDFFFCC1F9EEABDFD5B2E3DBBAEBE3B6E7DFB3E8DFA9E4DCA0E1D89DE4
          DA9BEADF9AEEE296EEE19EF9EA8FEEDF7BE1D06AD6C45FD3C05AD5C157D8C355
          DBC55BE1CB5ADBC659D4C065D9C667D3C164CAB962C1B2B7FFF7C2ECE58DA4A0
          DCEFECECFDFAF2FFFDF8FEFDF8FAFAFCFCFCFFFDFDFFFCFDFFFEFEFFFFFFFFFF
          FFFDFFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E9E9EEF0F0F4F9F8F8FDFCF6FBFAF3F9F8
          F4FAF9F3FEFCEBFAF6E2F8F3C0DAD485A69F5E877F699B9192CDBFB0F1E2B7FE
          EEACF7E7A4F0DE89D8C568B7A460AF9C5DA9974D94835D9B8F78B2A75D958A53
          877D88BAB0C0EFE6C8F4EDC2EEE7B9E8E0BBECE4B8ECE5B1EAE2AAE9E0A6E9E0
          A0E7DD9AE3D98EDACE8EDED18EE5D78FECDD8BF1E080ECDA70E3D066DAC767DB
          C865D8C577E3D16AD0BF79D6C76EC5B79AEADDCAFFFF8AAEA8C0D3D0EBFCF9EA
          F7F5F8FFFFEEF3F2FFFFFFFDFBFBFFFCFDFFFDFEFFFEFEFFFFFFFFFFFFFDFFFF
          FBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCFCFCFCFCFCFDFDFDFDFD
          FDFBFDFDFCFEFEFCFEFEFDFFFFFDFFFFF8FAFAF6F8F8FCFEFEFBFFFFF7FCFBEF
          F4F3F2F8F7F2FAF9EDFAF8E7F8F5E0F6F1C8E2DC91B0A95C81795C867B89B7AB
          C0EEE2CDFDF1C0F3E5BFF2E4ADE0D282B5A77EADA475A49B92BFB693C0B7729D
          946C958D8BB4AD9BC4BDC6F0E9C8F4EDC9F5EFC0F0EABAEDE6B8ECE5B6ECE5B2
          EBE3AFEBE1A7E6DC9CE1D693DFD38EE0D38AE2D486E3D483E2D37AD9CA81DECF
          86DED07ED0C386D2C696DBD0C0FFF5A7DAD295B0ACF2FFFEEEFBF9EDF5F4F9FF
          FEF3F5F5FFFFFFFFFBFCFFFDFEFFFDFEFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFB
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFAFFFEFCFEFEFBFDFDFAFCFCF9FBFB
          F8FAFAF8FAFAF0F2F2F8FAFAFCFEFEFCFEFEF8FAFAFCFEFEFFFFFFFDFFFFFFFF
          FFF7F9F9F3F5F5FBFFFFFAFFFEF3FCF9EAF5F2ECFAF6E2F4EDA0B5AD6D847C73
          8B8398B3A9BDDBD0D5F5EADDFDF2CAECE5C9EBE4B8DDD595BAB29BC0B88AAFA7
          7498927CA09A658B85799F9996BBB7B0D5D1C4E9E5D0F5F1D2F7F3CCF4EFB2DC
          D5AFDED6ADE2D9ABE4DBA6E5DBA2E6DB9EE6DA9BE5D996E0D49EE6DA8ACEC3A2
          E1D797D0C7C7FCF3B7E6DE87ABA5DDF0EDF6FEFDF6FCFBFBFFFFF5F7F7FFFFFF
          FFFEFFFFFEFFFFFDFEFFFDFEFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFBFFFFFAFFFFFBFFFFFBFFFFFAFFFEF9FEFDFAFCFCFA
          FCFCF9F9F9FEFEFEFFFFFFFDFDFDFBFBFBFAFAFAF8F6F6F0F0F0E8E6E6FFFFFF
          FFFFFFF9F7F7F3F1F1FFFFFFFFFFFEFFFFFEFFFFFEF4F7F5E8EEE9DFE6E1B8C2
          BC7D8B857081788C9F96B0C6C1BDD4CFEAFFFEDAF6F0C5E1DBB6D5CEB0D0CBA6
          C6C1ACCCC79DBDB88AA7A47E9B98879F9D97AFADA5BBB9AAC0BEE4FDF9DCFAF5
          D0F2ECBEE7E0B0DCD5A8D9D1A7DCD3A9E0D7ADE4DBA8DDD49CCDC5BCE8E1B3DC
          D5E1FFFD9EBCB7ADC2BFF6FFFFEBF0EFFAFCFCFFFFFFF7F5F5FFFEFFFFFAFBFF
          FEFFFFFDFEFFFEFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFAFFFEF9FFFEF9FFFEF9FFFEFAFFFEFAFFFEFCFEFEFCFEFEFCFC
          FCFFFFFFFFFFFFFBFBFBFCFAFAFFFEFEFFFFFFFFFFFFFFFFFFF8F8F8F7F5F5FF
          FAFBFFFEFFFFFCFDFFF8F8FFF7F7F5EBEBFFFEFEFFFFFCFAF7F3FEFFFBFAFEF9
          DAE2DBC1CBC57C8A8675848097A8A4A9BDB8DFF5F0ECFFFED7F0ECC8E3DFB8D1
          CDBBD4D0C2D8D6CFE1E0D7E7E6CEDCDBB5BFBF9AA4A47A878594A5A2BACDCAD8
          EFEBDFFDF8DBFDF7D1F5EFCAF0EAB9DFD9A7CBC5BADAD5C4E2DDD3EAE6E2F5F2
          95A6A3F3FEFCE4E9E8F0F0F0FAFAFAFFFFFFFFFEFFFDF8F9FFFBFCFFFEFFFFFD
          FEFFFEFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFAFFFFF8FFFFFAFFFFFAFFFFFAFFFFFBFFFFFDFFFFFDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFBFFFFFBFFFFFCFEFFFFFDFFFFFC
          FDFFFBFCFFF9FBFFF9FBFFFBFBFFFBFBFFFBFBFFFCFBFEFDF9FCFDF9FAFEF9F8
          FEF9F8FFFCF0F9F6D3DEDBA4B2AE839490889C97ABBEBBC7DCD9EBFEFBDAEDEA
          DEECEBE7F3F3D6DEDEB0B5B6A7A9AAB7B9BAF6FBFAEAF0EFC5CDCC96A3A18C9A
          98A6B9B6C6DBD8D3EAE6ECFFFFDCF3EFE2F5F2F3FFFFDAE7E5B2BAB9C8CECDFB
          FFFFF8F8F8FBF9F9FDFBFBFFFDFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFF
          FFF8FFFFFAFFFFFAFFFFFAFFFFFBFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFEFFFFFEFFFFFFFFFAFFFFF7FFFFFAFEFFFCFEFFFFFDFDFFFCFD
          FFFBFCFFFBFCFFFCFCFFFCFCFFFDFCFFFDFCFFFEFAFDFEFAFBFFFAFBFFFAFBFE
          FCF7FCFAF1F8F5E8F1EEDBE6E3C4D2CEA2AFAD8492906C7A78889593939D9D8E
          9394A1A3A4D0CFD1ECE9EBEAE7E9FCFAFAFFFFFFFDFFFFF9FEFDEFF5F4DAE5E3
          B4C1BF919F9D828F8DBDCAC8D2DDDBAFB5B4A7ACABD8DADAFAFAFAF5F3F3FBF9
          F9FCFAFAFFFBFCFFFDFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFAFFFF
          FAFFFFFAFFFFFBFFFFFBFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF9FEFFF7FFFFF7FFFFF9FEFFFBFDFEFDFCFEFFFDFDFF
          FDFDFFFEFEFFFEFEFFFEFDFFFEFDFEFFFDFCFFFDFCFFFDFCFFFDF7FAF8FAFDFB
          FBFEFCFBFFFEFAFFFEF8FFFEF8FFFFF4FCFBF8FFFFF8FFFFFAFFFFF2F4F5F1F0
          F2FFFEFFFFFEFFFFFDFFF9F4F5FAF8F8FBF9F9F7F7F7F4F6F6F5FAF9F7FDFCF4
          FCFBFAFFFFD4DAD9C3C8C7E5E7E7FFFFFFFFFFFFFEFCFCFFFFFFFEFCFCFEFCFC
          FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFAFFFFFAFFFFFA
          FFFFFBFFFFFBFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9FEFFF7FFFFF9FEFFF9FEFFFAFEFFFAFEFFFCFEFEFCFEFEFDFF
          FFFDFFFFFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFAFDFBFFFFFEFDFFFEF3
          F6F4E9ECEAE9ECEAF1F6F5FBFFFFF5FAF9EAEFEEF0F2F3FFFEFFFFFEFFFBF8FA
          F8F5F7FFFEFFF9F7F7FFFDFDFFFFFFFFFFFFFCFEFEF2F4F4EFF4F3F3F8F7EEF3
          F2FBFFFFFDFFFFF9FBFBECECECEFEDEDFAF8F8FFFDFDFFFEFEFFFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFBFFFFFBFFFFFBFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFEFFFCFDFFFAFEFFFAFEFFFAFEFFFAFEFFFAFEFFFAFEFFFBFFFFFBFFFF
          FBFFFFFBFFFFFDFFFEFDFFFEFDFFFEFDFFFEF8FBF9F9FCFAFDFEFCFFFFFEFFFF
          FEFFFFFEFFFFFFFFFDFDFFFFFFFEFEFEFDFCFEFDFCFEFCFBFDFCFEFFFBFDFEFA
          FCFDFFFFFFF7F7F7F1F1F1F4F6F6FDFFFFFDFFFFFBFFFFFBFFFFFBFFFFF0F5F4
          EFF1F1FDFFFFFDFFFFFCFCFCFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFF
          FFFDFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFBFFFFFBFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFFFFFEFFFFFEFFFCFEFFFAFEFFF9FEFFF9FEFFFAFFFFFAFFFFFAFFFFFB
          FFFFFDFFFEFFFFFEFFFFFEFFFFFEFDFFFEFDFFFEF8FBF9FAFBF9FCFAF9FBF7F6
          FAF5F6F9F4F5FFFBFCFBF9F9FBFAFCFAF9FBF7F9FAF6FAFBF3F8F9F0F4F5FDFF
          FFFDFFFFFDFFFFFBFFFFFDFFFFFAFFFEF4F9F8F1F6F5F7FCFBFBFFFFFAFFFEF8
          FDFCF8FAFAF9FBFBF9FBFBF6F8F8FDFFFFFCFEFEFCFEFEFCFEFEFCFEFEFCFEFE
          FDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFCFFFFFCFF
          FFFDFFFFFDFFFEFDFFFCFEFFFAFEFFF8FDFEF7FFFEF9FFFEF9FFFEFAFFFEFEFF
          FDFFFEFDFFFEFDFFFEFDF4F7F5F5FAF8FCFFFDFFFFFEFFFFFEFFFCFBFFFCFDFF
          FEFFF8F2F3F5F0F1F8F5F7FDFFFFFBFFFFF6FEFEF3FDFDF8FFFFF2F8F7FAFFFE
          FAFFFEF7FDFCF2F7F6F3F9F8FAFFFFFAFFFFF5FBFAF7FDFCF9FFFEFAFFFFFAFF
          FEF9FEFDF9FEFDFBFFFFFAFFFEF9FEFDF8FDFCF8FDFCF9FEFDFAFFFEFBFFFFFB
          FFFFFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
          FFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFCFFFFFCFFFFFCFFFF
          FDFFFFFDFFFCFEFFF9FDFEF8FDFEF7FFFEF7FFFEFAFFFEFCFEFEFEFFFDFFFEFD
          FFFEFDFFFEFDFDFFFEF8FFFCF9FCFAFEFFFDFFFEFDFFFBFAFFFAFBFFFEFFFFFE
          FFFFFEFFFFFEFFF8FAFBF2F7F8F3FDFDF6FFFFF4FEFEF8FFFFFAFFFFF9FFFEF6
          FCFBF9FFFEFAFFFFF8FEFDEEF4F3F0F6F5F8FEFDFAFFFFF6FCFBF4FAF9F7FDFC
          F9FFFEF4FAF9F9FEFDF8FDFCF8FDFCF7FCFBF8FDFCF9FEFDFBFFFFFBFFFFFBFF
          FFFBFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object DBGrid5: TDBGrid
        Left = 3
        Top = 3
        Width = 430
        Height = 161
        BorderStyle = bsNone
        Color = clBtnHighlight
        DataSource = DSresumen
        FixedColor = clNavy
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid5DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'productoid'
            Title.Caption = 'Productoid'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desproducto'
            Title.Caption = 'Descripci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cantidad'
            Title.Caption = 'Cantidad'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end>
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 171
        Width = 1003
        Height = 198
        BorderStyle = bsNone
        Color = clBtnHighlight
        DataSource = DSproductos_resumen
        FixedColor = clNavy
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DONACIONID'
            Title.Caption = 'Donacionid'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGOID'
            Title.Caption = 'Codigo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'istbproducto'
            Title.Caption = 'Etiqueta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 319
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nombre'
            Title.Caption = 'Paciente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 222
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Tipo Sangre'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCE'
            Title.Caption = 'Fecha Vence'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Estatus'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end>
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 621
    Width = 1020
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Registros '
        Width = 200
      end
      item
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end>
  end
  object Qdonaciones: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'DonacionID,MuestraNo,Fecha,PacienteID,NOMBRE,TipoDonante,'
      
        'TipoSangre,DonanteActivo,RH,ISTBDonacion,IDENTIFICACION,Donacion' +
        'Status,'
      'fecha_entrada,horaentrada,userid,USUARIOMOD, FECHAMODIFICACION,'
      'ISNULL(Colecta_movil,'#39'OFICINAS BANCO DE SANGRE'#39') AS Colecta,'
      'case sexo when 1 then '#39'M'#39
      #9'             when 0 then '#39'F'#39
      #9'     end as sexo, edad'
      'FROM V_DONACION_DONANTE')
    Left = 600
    Top = 344
    object QdonacionesDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object QdonacionesMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object QdonacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QdonacionesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object QdonacionesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object QdonacionesTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object QdonacionesTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object QdonacionesDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object QdonacionesRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object QdonacionesISTBDonacion: TStringField
      FieldName = 'ISTBDonacion'
      ReadOnly = True
      Size = 15
    end
    object QdonacionesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object QdonacionesDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object Qdonacionesfecha_entrada: TDateTimeField
      FieldName = 'fecha_entrada'
    end
    object Qdonacioneshoraentrada: TStringField
      FieldName = 'horaentrada'
    end
    object Qdonacionesuserid: TStringField
      FieldName = 'userid'
      Size = 10
    end
    object QdonacionesUSUARIOMOD: TStringField
      FieldName = 'USUARIOMOD'
    end
    object QdonacionesFECHAMODIFICACION: TDateTimeField
      FieldName = 'FECHAMODIFICACION'
    end
    object Qdonacionessexo: TStringField
      FieldName = 'sexo'
      ReadOnly = True
      Size = 1
    end
    object Qdonacionesedad: TIntegerField
      FieldName = 'edad'
      ReadOnly = True
    end
    object QdonacionesColecta: TStringField
      FieldName = 'Colecta'
      ReadOnly = True
      Size = 60
    end
  end
  object DSdonaciones: TDataSource
    DataSet = Qdonaciones
    Left = 552
    Top = 344
  end
  object Qproductos: TADOQuery
    Active = True
    Connection = DM.Database
    CursorType = ctStatic
    AfterScroll = QproductosAfterScroll
    Parameters = <>
    SQL.Strings = (
      ''
      'SELECT   *  FROM V_ETIQUETAS')
    Left = 336
    Top = 296
    object QproductosDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object QproductosMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object QproductosFecha: TWideStringField
      FieldName = 'Fecha'
      ReadOnly = True
      Size = 92
    end
    object Qproductosfjfecha: TStringField
      FieldName = 'fjfecha'
      ReadOnly = True
      Size = 10
    end
    object QproductosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object QproductosVENCE: TWideStringField
      FieldName = 'VENCE'
      ReadOnly = True
      Size = 98
    end
    object Qproductosfjvence: TStringField
      FieldName = 'fjvence'
      ReadOnly = True
      Size = 8000
    end
    object QproductosTipoFundaDes: TWideStringField
      FieldName = 'TipoFundaDes'
      Size = 50
    end
    object QproductosTipo: TWideStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 21
    end
    object QproductosTS: TWideStringField
      FieldName = 'TS'
      ReadOnly = True
      Size = 4000
    end
    object QproductosCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object QproductosProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object QproductosProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object QproductosMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object QproductosTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object QproductosRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object QproductosReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object QproductosDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object QproductosCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object QproductosCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object QproductosDu: TWideStringField
      FieldName = 'Du'
      FixedChar = True
      Size = 10
    end
    object QproductosISTBDonacion: TStringField
      FieldName = 'ISTBDonacion'
      ReadOnly = True
      Size = 15
    end
    object QproductosCheckDigit: TStringField
      FieldName = 'CheckDigit'
      FixedChar = True
      Size = 2
    end
    object QproductosCheckChar: TStringField
      FieldName = 'CheckChar'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QproductosTemperatura: TStringField
      FieldName = 'Temperatura'
      Size = 10
    end
    object QproductosCodeBar: TWideStringField
      FieldName = 'CodeBar'
      Size = 50
    end
    object QproductosISTB128CodeBar: TWideStringField
      FieldName = 'ISTB128CodeBar'
      Size = 50
    end
    object QproductosISTBProducto: TWideStringField
      FieldName = 'ISTBProducto'
      Size = 100
    end
    object QproductosISTBAOBCODE: TWideStringField
      FieldName = 'ISTBAOBCODE'
      Size = 255
    end
    object QproductosBSCode: TWideStringField
      FieldName = 'BSCode'
      Size = 255
    end
    object QproductosISTBTipo: TWideStringField
      FieldName = 'ISTBTipo'
      Size = 255
    end
    object QproductosISTBRH: TWideStringField
      FieldName = 'ISTBRH'
      Size = 255
    end
    object QproductosISBT128DivCode: TWideStringField
      FieldName = 'ISBT128DivCode'
      ReadOnly = True
      Size = 56
    end
    object QproductosBarra: TWideStringField
      FieldName = 'Barra'
      ReadOnly = True
      Size = 56
    end
    object QproductosVolumen_Actual: TIntegerField
      FieldName = 'Volumen_Actual'
    end
    object QproductosDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
      ReadOnly = True
      Size = 28
    end
    object QproductosFECHA_DONACION: TDateTimeField
      FieldName = 'FECHA_DONACION'
    end
    object QproductosFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
    object QproductosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 82
    end
    object QproductosSEX: TStringField
      FieldName = 'SEX'
      ReadOnly = True
      Size = 9
    end
    object QproductosUltimaDonacionId: TStringField
      FieldName = 'UltimaDonacionId'
    end
    object QproductosPRODUCTO: TWideStringField
      FieldName = 'PRODUCTO'
      FixedChar = True
      Size = 10
    end
    object QproductosReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object QproductosDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object QproductosStatus: TWideStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 10
    end
    object QproductosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 1
    end
    object QproductosCOMENTARIO_SALIDA: TMemoField
      FieldName = 'COMENTARIO_SALIDA'
      BlobType = ftMemo
    end
    object QproductosFECHA_SALIDA: TDateTimeField
      FieldName = 'FECHA_SALIDA'
    end
    object QproductosCaja: TBooleanField
      FieldName = 'Caja'
    end
    object QproductosUSUARIO_SALIDA: TStringField
      FieldName = 'USUARIO_SALIDA'
      Size = 30
    end
  end
  object DSproductos: TDataSource
    DataSet = Qproductos
    Left = 624
    Top = 392
  end
  object Qsalida: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRODUCTO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '050003527-CRI'
      end>
    SQL.Strings = (
      ''
      '  SELECT   COMENTARIO_SALIDA,FECHA_SALIDA,USUARIO_SALIDA'
      '  FROM BSINVENTARIO'
      '  WHERE CODIGOID =:PRODUCTO')
    Left = 496
    Top = 424
    object QsalidaCOMENTARIO_SALIDA: TMemoField
      FieldName = 'COMENTARIO_SALIDA'
      BlobType = ftMemo
    end
    object QsalidaFECHA_SALIDA: TDateTimeField
      FieldName = 'FECHA_SALIDA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QsalidaUSUARIO_SALIDA: TStringField
      FieldName = 'USUARIO_SALIDA'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = Qsalida
    Left = 456
    Top = 288
  end
  object Qmovimientos: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DONACION'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'D4601 10 004713'
      end>
    SQL.Strings = (
      ''
      'SELECT * FROM dbo.MOVIMIENTOS_PRODUCTOS'
      'WHERE ISTBDONACION =:DONACION')
    Left = 816
    Top = 416
    object QmovimientosISTBDONACION: TStringField
      FieldName = 'ISTBDONACION'
      Size = 50
    end
    object QmovimientosMOVIMIENTO: TStringField
      FieldName = 'MOVIMIENTO'
      Size = 50
    end
    object QmovimientosFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QmovimientosHORA: TDateTimeField
      FieldName = 'HORA'
      DisplayFormat = 'hh:mm'
    end
    object QmovimientosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object QmovimientosNOMBRE_EQUIPO: TStringField
      FieldName = 'NOMBRE_EQUIPO'
      Size = 60
    end
    object QmovimientosDIRECCION_IP: TStringField
      FieldName = 'DIRECCION_IP'
      Size = 50
    end
    object QmovimientosCODIGOID: TStringField
      FieldName = 'CODIGOID'
    end
  end
  object Qhistorial: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRODUCTO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '2010050004875-PG'
      end>
    SQL.Strings = (
      
        'SELECT HISTCONS,CODIGOID,FECHA,OPERACION,USERID,NOTA,RECEPTORID,' +
        'RECEPTOR'
      'FROM dbo.ViewHistoriaProducto'
      'WHERE CODIGOID =:PRODUCTO '
      'ORDER BY HISTCONS')
    Left = 584
    Top = 288
  end
  object DSmovimientos: TDataSource
    DataSet = Qmovimientos
    Left = 280
    Top = 336
  end
  object DShistorial: TDataSource
    DataSet = Qhistorial
    Left = 232
    Top = 296
  end
  object Qresumen: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select productoid,Desproducto =(select top 1 productodes from bs' +
        'productos where productoid = a.productoid), count(productoid) as' +
        ' cantidad '
      'from bsinventario a'
      'Where isnull(status,'#39'A'#39')  = '#39'A'#39
      'and caja = 0'
      'and reservado = 0'
      'group by productoid')
    Left = 728
    Top = 416
  end
  object DSresumen: TDataSource
    DataSet = Qresumen
    Left = 656
    Top = 480
  end
  object Qproductos_resumen: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'SELECT DONACIONID,MUESTRANOAS,VENCE,TIPO,CODIGOID,'
      
        '       PRODUCTOID,PRODUCTODES,STATUS,RESERVADO,CAJA,ISTBDONACION' +
        ','
      '      NOMBRE,ISTBPRODUCTO'
      'FROM V_ETIQUETAS')
    Left = 272
    Top = 392
  end
  object DSproductos_resumen: TDataSource
    DataSet = Qproductos_resumen
    Left = 384
    Top = 344
  end
  object Qproductos_cobrados: TADOQuery
    Connection = DM.Database
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'donacion'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '050004357'
      end>
    SQL.Strings = (
      ''
      'SELECT * FROM V_PRODUCTOS_COBRADOS'
      
        'WHERE Cast(NOTA as VARCHAR(60)) = '#39'Envio desde modulo de despach' +
        'o.'#39
      'and donacionid =:donacion')
    Left = 56
    Top = 344
  end
  object DSproductos_cobrados: TDataSource
    DataSet = Qproductos_cobrados
    Left = 96
    Top = 296
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DSproductos
    UserName = 'BDEPipeline1'
    Left = 440
    Top = 72
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'DonacionID'
      FieldName = 'DonacionID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'MuestraNoAS'
      FieldName = 'MuestraNoAS'
      FieldLength = 11
      DisplayWidth = 11
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 92
      DisplayWidth = 92
      Position = 2
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'fjfecha'
      FieldName = 'fjfecha'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'VENCE'
      FieldName = 'VENCE'
      FieldLength = 98
      DisplayWidth = 98
      Position = 5
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'fjvence'
      FieldName = 'fjvence'
      FieldLength = 8000
      DisplayWidth = 8000
      Position = 6
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'TipoFundaDes'
      FieldName = 'TipoFundaDes'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 21
      DisplayWidth = 21
      Position = 8
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'TS'
      FieldName = 'TS'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 9
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'CodigoId'
      FieldName = 'CodigoId'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppBDEPipeline1ppField12: TppField
      FieldAlias = 'ProductoID'
      FieldName = 'ProductoID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object ppBDEPipeline1ppField13: TppField
      FieldAlias = 'ProductoDes'
      FieldName = 'ProductoDes'
      FieldLength = 30
      DisplayWidth = 30
      Position = 12
    end
    object ppBDEPipeline1ppField14: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppBDEPipeline1ppField15: TppField
      FieldAlias = 'TipoSangre'
      FieldName = 'TipoSangre'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
    object ppBDEPipeline1ppField16: TppField
      FieldAlias = 'RH'
      FieldName = 'RH'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppBDEPipeline1ppField17: TppField
      FieldAlias = 'ReceptorId'
      FieldName = 'ReceptorId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object ppBDEPipeline1ppField18: TppField
      FieldAlias = 'DoctorId'
      FieldName = 'DoctorId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object ppBDEPipeline1ppField19: TppField
      FieldAlias = 'Cruce'
      FieldName = 'Cruce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 18
    end
    object ppBDEPipeline1ppField20: TppField
      FieldAlias = 'CrucePacienteId'
      FieldName = 'CrucePacienteId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 19
    end
    object ppBDEPipeline1ppField21: TppField
      FieldAlias = 'Du'
      FieldName = 'Du'
      FieldLength = 10
      DisplayWidth = 10
      Position = 20
    end
    object ppBDEPipeline1ppField22: TppField
      FieldAlias = 'ISTBDonacion'
      FieldName = 'ISTBDonacion'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object ppBDEPipeline1ppField23: TppField
      FieldAlias = 'CheckDigit'
      FieldName = 'CheckDigit'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppBDEPipeline1ppField24: TppField
      FieldAlias = 'CheckChar'
      FieldName = 'CheckChar'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppBDEPipeline1ppField25: TppField
      FieldAlias = 'Temperatura'
      FieldName = 'Temperatura'
      FieldLength = 10
      DisplayWidth = 10
      Position = 24
    end
    object ppBDEPipeline1ppField26: TppField
      FieldAlias = 'CodeBar'
      FieldName = 'CodeBar'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object ppBDEPipeline1ppField27: TppField
      FieldAlias = 'ISTB128CodeBar'
      FieldName = 'ISTB128CodeBar'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object ppBDEPipeline1ppField28: TppField
      FieldAlias = 'ISTBProducto'
      FieldName = 'ISTBProducto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 27
    end
    object ppBDEPipeline1ppField29: TppField
      FieldAlias = 'ISTBAOBCODE'
      FieldName = 'ISTBAOBCODE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 28
    end
    object ppBDEPipeline1ppField30: TppField
      FieldAlias = 'BSCode'
      FieldName = 'BSCode'
      FieldLength = 255
      DisplayWidth = 255
      Position = 29
    end
    object ppBDEPipeline1ppField31: TppField
      FieldAlias = 'ISTBTipo'
      FieldName = 'ISTBTipo'
      FieldLength = 255
      DisplayWidth = 255
      Position = 30
    end
    object ppBDEPipeline1ppField32: TppField
      FieldAlias = 'ISTBRH'
      FieldName = 'ISTBRH'
      FieldLength = 255
      DisplayWidth = 255
      Position = 31
    end
    object ppBDEPipeline1ppField33: TppField
      FieldAlias = 'ISBT128DivCode'
      FieldName = 'ISBT128DivCode'
      FieldLength = 56
      DisplayWidth = 56
      Position = 32
    end
    object ppBDEPipeline1ppField34: TppField
      FieldAlias = 'Barra'
      FieldName = 'Barra'
      FieldLength = 56
      DisplayWidth = 56
      Position = 33
    end
    object ppBDEPipeline1ppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volumen_Actual'
      FieldName = 'Volumen_Actual'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppBDEPipeline1ppField36: TppField
      FieldAlias = 'DonacionTipo'
      FieldName = 'DonacionTipo'
      FieldLength = 28
      DisplayWidth = 28
      Position = 35
    end
    object ppBDEPipeline1ppField37: TppField
      FieldAlias = 'FECHA_DONACION'
      FieldName = 'FECHA_DONACION'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 36
    end
    object ppBDEPipeline1ppField38: TppField
      FieldAlias = 'FechaUltimaDon'
      FieldName = 'FechaUltimaDon'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 37
    end
    object ppBDEPipeline1ppField39: TppField
      FieldAlias = 'NOMBRE'
      FieldName = 'NOMBRE'
      FieldLength = 82
      DisplayWidth = 82
      Position = 38
    end
    object ppBDEPipeline1ppField40: TppField
      FieldAlias = 'SEX'
      FieldName = 'SEX'
      FieldLength = 9
      DisplayWidth = 9
      Position = 39
    end
    object ppBDEPipeline1ppField41: TppField
      FieldAlias = 'UltimaDonacionId'
      FieldName = 'UltimaDonacionId'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppBDEPipeline1ppField42: TppField
      FieldAlias = 'PRODUCTO'
      FieldName = 'PRODUCTO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 41
    end
    object ppBDEPipeline1ppField43: TppField
      FieldAlias = 'Reservado'
      FieldName = 'Reservado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 42
    end
    object ppBDEPipeline1ppField44: TppField
      FieldAlias = 'Disponible'
      FieldName = 'Disponible'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 43
    end
    object ppBDEPipeline1ppField45: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 10
      DisplayWidth = 10
      Position = 44
    end
    object ppBDEPipeline1ppField46: TppField
      FieldAlias = 'ESTADO'
      FieldName = 'ESTADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 45
    end
    object ppBDEPipeline1ppField47: TppField
      FieldAlias = 'COMENTARIO_SALIDA'
      FieldName = 'COMENTARIO_SALIDA'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField48: TppField
      FieldAlias = 'FECHA_SALIDA'
      FieldName = 'FECHA_SALIDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 47
    end
    object ppBDEPipeline1ppField49: TppField
      FieldAlias = 'Caja'
      FieldName = 'Caja'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 48
    end
    object ppBDEPipeline1ppField50: TppField
      FieldAlias = 'USUARIO_SALIDA'
      FieldName = 'USUARIO_SALIDA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 49
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 584
    Top = 72
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 94456
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 168805
        mmTop = 5556
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 170392
        mmTop = 10319
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 183092
        mmTop = 5821
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 183092
        mmTop = 10319
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 170392
        mmTop = 15875
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 183092
        mmTop = 14817
        mmWidth = 10583
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D6167654F3D0000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC000110800B1022703012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2BCBFE2478E65825
          1E1CD0E6717F23049E68CE0C79E88A7FBC7232474E9D4F1E9D1AEC8D57716C0C
          64F5352A49B69743AAB612A51A50AB3D39EF65E4ADAFCFA0EA28A2A8E50A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A2AA5CDFC714E6D23789AF9A169618247D9E6
          63DF078CE3270719E9585A5F88B5BD55261168FA7C53DBBF973DBCDA8BAC9137
          6C810918239041208E8693691B4284E71725B2F34BF33A8A2B1BED5E24FF00A0
          4697FF0083293FF8C51F6AF127FD0234BFFC1949FF00C628B87B09775F7AFF00
          33668AC6FB57893FE811A5FF00E0CA4FFE3147DABC49FF00408D2FFF0006527F
          F18A2E1EC25DD7DEBFCCD9A2B1BED5E24FFA04697FF83293FF008C51F6AF127F
          D0234BFF00C1949FFC628B87B09775F7AFF3366B8EF883E328FC2FA398ADDC1D
          52E548B75C6760EEE7D876F53EC0D49AFF008A754F0DE96F7FA8E9BA62C40ED5
          55D49CBBB1E8AA3C8E4D780EB5ACDE6BFAB4FA8DF3869A53D070A83B281D801F
          E7358D5ABCAACB73DBC9B279622A7B4ABF02F34EEFB69F8963C36CD71E32D21A
          7632349A8425D9CE4B1320C939EB5F51D7C9DA65DB586AD6778B8DD6F3A4A327
          032AC0FA1F4F4AFA63ED5E24FF00A04697FF0083293FF8C54E1DE8CECE26A329
          54A6D5AD67D52FCCD9A2B1BED5E24FFA04697FF83293FF008C51F6AF127FD023
          4BFF00C1949FFC62BA2E7CC7B09775F7AFF33668AC6FB57893FE811A5FFE0CA4
          FF00E3157749BEFED4D1AC750F2FCAFB55BC73797BB76DDCA0E33C6719A2E4CA
          94A2B99DADEA9FE45CA28A299985145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451401C8EB5A645AA78E6CA2777
          8A58F4D9A58268FEF4520962C30FCC8C1E08241E0D46E2EE7D5911C4365E27B7
          889866C116F7F167953DC819191F7909046475D29BFE4A1D9FFD82A7FF00D1B1
          5696A9A5C5AA40AACEF0CF136F82E23E1E17FEF0FE441E08241E0D45B73BFDB7
          2A8465B5BEED5FE1DD1168FACC5AAC72A189EDAF2DDB65CDACB8DF1376FAA9EA
          187047E2069D71AC9797B7C23768ACBC516519314FB4F93790E46411DD09C647
          542723DF7B46D663D5A2911E26B6BDB7609756921CBC2DFD54F50C3823F101A6
          635A8F2FBD1DBF2FF80FA3F93D77D4A28AC7D5AEF504D4AC2CAC26B584DC2CAC
          D25C40D281B42E0001D7D4F7ED4DBB18C21CEEC6C550D6759B2D074C9750BF98
          470463F163D9547726AA9B5F119E0EAFA601EABA6B83F86673FCAB94F127C36D
          47C4F7493DF78A246D80848CDA0D89FEEA8718FAF24F1E953272B688E9C3D1C3
          CAA255AA251EB64EFF0091E4DE2BF155EF8B35637775FBB8532B040A72B12FF5
          27B9EFF4000C1AF50BCF829A9C7FF1E5AADA4FFF005D91A2FE5BAB86D73C33AC
          7872654D52C9E10C70920C323FD18719F6EB5C5384D6B23F41C16330338AA586
          92D365B7E66457D5DA3DF7F69E8B637FB76FDA6DD26DBE9B941C7EB5F28D7BA7
          C1FD77EDFE1C974A95B32D83FC9EF1B9247E4770FA62B4C3CAD2B1E5F1361DCF
          0F1AABECBFC1FF00C1B1E8F45145761F0C21E86B23C27FF227687FF5E107FE8B
          5AD73D0D64784FFE44ED0FFEBC20FF00D16B4BA9B47F832F55F933628A28A662
          1451450014514500145145001451450014514500145145001451450014514500
          1451450014514500145145001451450014514500145145001451450014514500
          1451450014514500145145001451450014514500145145001451450014514500
          145145001451450073F37FC943B3FF00B054FF00FA362AE82B9F9BFE4A1D9FFD
          82A7FF00D1B15741497537ADF0C3D3F5650D574A8755B608EEF0CF1B6F82E223
          8785FA6E53FA11D08241AE702DDEA370AAE63D3FC57629F24A57F7579177FF00
          7A262464754623DB3D9550D5B4A8755B608EEF0CF1B6F82E2238785FA6E53FA1
          1D08241A4D0E8D6E5F765B7E5FE69F5445A2EB31EAD04A1A26B6BCB77F2EEAD6
          439685F19C67BA9EA187047E22B9D3E2BD2F56F883A6699A7CBF6936F1CE6495
          0831862A31B4F72003C8E3E6EBD45797F8D3C6973ABDC0B588C71C90ABDB5CDD
          DA4842DEA83C640EA9C64039FBC71D793E147FC8FF0069FF005CA5FF00D00D63
          EDAF25147D0472454B0D53135347CAECBB69DFF2FC4F50F89FAF6A5E1EF0E5B5
          DE9773F679DEED6366D8AD9528E7186047502BC913E2478BA372EBAD4993FDE8
          A323F22B8AF49F8D1FF22859FF00D7FA7FE8B92BC32B3AD2929E8CF4720C250A
          98352A904DDDEE933D0348F8BBE22B2B853A818750809F995A358DC0FF0064A8
          03F306BD6F44D7B44F1B6912342893C390B3DADCA0254F51B9790471907A71EA
          0E3E64AEC3E185EC969E3DD3D164758E7DF148ABD1C142403FF0200FE1453AB2
          BD9EA5E6B9361DD1956A2B965157D36D35D8B5F11FC0E9E16BC8AF2C379D36E5
          88556E7C97EBB33DC6338EFC1F4C9A1F0EB5DFEC2F18DAC92305B7B9FF00469B
          3D831183ED860A73E99AF5EF8A7123FC3CD459D03346D132123EE9F314647E04
          8FC6BE76A551724EE8BCA6ACB30CBE54EB6BBC6FF2DFD753EBBAE7EFBC6FE1CD
          36F65B3BCD5628AE223B5D0AB641FC05278235BFEDFF0008D8DE3BEE9C279539
          2727CC5E093F5E1BF1AF0BF885FF0023EEAFFF005D87FE822BA2A54E58A923E6
          B2DCAE389C54F0F59B5CA9EDDD3B1ED87E22F84F07FE2750FF00DF0FFE159BE1
          CF1E7862CFC31A4DADC6AF0C7343670C722146F958200474F5AE4EC3E0C35EE9
          F6D77FDBC13CF8964DBF63CEDDC01C677FBD58FF00851EDFF4308FFC02FF00EC
          EA79AAEF63A9E1B278A7075A5BF67D2FFDDF33B7FF00858BE12FFA0D43FF007C
          3FF855DD2FC5DA0EB579F64D3B518EE27DA5B62AB0381D4F22BCEFFE147B7FD0
          C23FF00BFF00B3ADFF0007FC333E14D77FB48EAC2EBF74D1F97F66D9D71CE771
          F4A71954BEA8E6C461F2A8D293A559B974567FE477CEEB1C6CEE70AA0927D057
          33FF000B17C25FF41A87FEF87FF0AE8350FF009075D7FD727FE46BE5BD134DFE
          D8D6ECB4DF37C9FB4CAB1799B776DC9EB8C8CD156A38B49750CA72DA38C8549D
          6934A36DBE7FE47D09FF000B17C25FF41A87FEF87FF0A3FE162F84BFE8350FFD
          F0FF00E15C47FC28F6FF00A1847FE017FF006747FC28F6FF00A1847FE017FF00
          674B9AAF636FAAE4DFF3FE5F73FF00E44EDFFE162F84BFE8350FFDF0FF00E15B
          9A66A965ACD92DE69F70B3DBB1203A82012383D6BCB3FE147B7FD0C23FF00BFF
          00B3AF43F097878F85F408B4B375F69D8ECDE6797B33939E993FCEAE0E6DFBC8
          E3C6D0CBE14EF86A8E52BECD74FB90FD5BC57A1E8574B6BA9EA11DB4CC824546
          56395248CF03D41FCAA87FC2C5F097FD06A1FF00BE1FFC2BCCBE347FC8E369FF
          0060F4FF00D19252785FE159F127876D7561AC8B7F3F7FEEBECDBF6ED72BD778
          F4CF4ACDD49F338C51E852CAB051C2431388A8E3CDF9EBE4FB1E9DFF000B17C2
          5FF41A87FEF87FF0A3FE162F84BFE8350FFDF0FF00E15C47FC28F6FF00A1847F
          E017FF006747FC28F6FF00A1847FE017FF00674F9AAF633FAAE4DFF3FE5F73FF
          00E44EF2DBC79E18BCBB86D6DF578649A6758E3408DF3313803A7A9AE8EBCB34
          9F83A74BD66C750FEDD127D96E239F67D931BB6B06C677F19C57A9D690727F12
          3CCC753C253925859B92EB7FF8647317FF0010BC2FA65F4D6577AA08EE216292
          208246DA7D32148AAFFF000B43C1DFF418FF00C969BFF88AF11F1B7FC8EFACFF
          00D7DBFF003AEEE0F82667B68A61E20C79881B1F63E9919FEFD62AA54936A28F
          6E79565B428D3A988A925CCAFF0082BED17DCEFECFC7BE16BE2043ADDAAE7FE7
          B1317FE8605744AEAEA195832919041C822BC3754F835ADDAA33E9F796D7A00F
          B87313B7D01C8FCC8AE5F44F12EB9E0FD4C2452CF12C527EFECA5242B72320A9
          E878C671914FDB4A2FDF467FD8986C4C1CB035B99AE8FF00A56FB8FA6E8ACED0
          B59B5D7F46B6D4ED09F2A65CED6EAA47054FB8208AD1AE84EE7CE4E12849C64A
          CD183A8F8D3C3DA4DFCB637DA9C505CC58DF1B2B1232011D07A11557FE162F84
          BFE8350FFDF0FF00E15E35F13FFE4A2EABFF006CBFF4525745A4FC1D3AA68F65
          A87F6E88BED56E936CFB26EDBB941C677F38CD73FB49B93515B1F49FD9380A58
          6A75B1151C7992FCAFD99E87FF000B17C25FF41A87FEF87FF0A3FE162F84BFE8
          350FFDF0FF00E15C47FC28F6FF00A1847FE017FF006747FC28F6FF00A1847FE0
          17FF00674F9AAF632FAAE4DFF3FE5F73FF00E44F41D3BC69E1ED5AFE2B1B1D52
          29EE65CEC8D558138049EA3D01ADEAF38F0BFC2A3E1BF11DA6ADFDB22E3ECFBF
          F75F65D9BB7232F5DE71F7B3D2BD1EB583935EF23CAC6D3C342A25869B946DBB
          EFF7232F56F11E8FA1796352D420B6690808AEDF31C9C67039C7BF415A608232
          0E41AF93B5191E6D4EEA491D9DDA562598E49393D4D7AC7C29F1B3CDB7C3BA94
          C59957FD0E473C903FE5993EC391EC08F415942BF34ACCF5F1D904B0F8655A9C
          B99ADFD3CBD3A9EB5451456E7CE05626A9E2ED0745BCFB26A3A8C76F3ED0FB19
          589C1E87815B75E05F183FE478FF00B758FF0099ACEA4DC23747A794E0A18DC4
          7B29B6959BD0F78B5B986F6D21BAB77124332092371FC4A4641FCAA5AC7F097F
          C89BA27FD7841FFA2C56C55A774705582854945746C28CD73FE2AF18699E13B1
          F36EDFCCB971FB9B643F3C87FA0F527F53C578A6BDF123C45AF4DB63BA7B1B7C
          FCB0DA31527EAC396EBF4F6A89D58C343D1C064F88C62E68E91EEFF4EE7BE6A1
          ADE95A5606A1A8DADA923216695549FA02726B01FE27783E372A758048FEEDBC
          A47E616BC834BF86FE29D6009BEC0D6D1B93992F1BCB3F52A7E6FC715D2DA7C1
          2BF75FF4CD66DE16F48616907EA56B3F6951ED13D0796657474AF88BBF2FF866
          7AB689AFE9BE22B37BBD2EE3CF812431336C64C3000E30C01E84556D53C5FA0E
          8B79F64D47518EDE7DA1F632B1383D0F02A9F827C22DE0FD36E2CCDF9BB59A6F
          341F2BCB0A70074DC7D057947C5FFF0091E0FF00D7AC7FD6AE73946177B9C782
          C061F178D951849F26AD3EBF97E87BAD85FDB6A76515E59CA25B794651C02030
          CE3BD59AE5FE1D7FC881A47FD726FF00D0DABA8AD22EEAE79988A6A9559535D1
          B5F730AAF7D7B069D61717B72DB60B78DA490E33850326AC57987C65D745B691
          6DA2C52112DD3F9B2807FE59AF407EAD83FF000034A72E58DCD3038578AC4468
          AEAFF0EA741A27C49D035ED5A1D36D0DCADC4D9D9E6C41549009C6727B035D7D
          7C956B713D8DDC1750318E685D648DB1D083906BEA4D0B56875DD0ECF5387016
          E230C541CED6E8CBF81047E159D1AAE7A33D4CEB2A8609C674AFCAF4D7BFFC1F
          D0D1A28A2B63C10A28A2800A28A2800A28A28039F9BFE4A1D9FF00D82A7FFD1B
          157415CFCDFF00250ECFFEC153FF00E8D8ABA0A4BA9BD6F861E9FAB0AF3CF8B5
          E246D27404D32DA4DB737E4ABE3AAC43EF7D33903DC6EAF43AF0ED5E1B5F197C
          47D74EA3733C361A55ACAC4C40160B0E010323FBC59AA2AB6A365D4EFC9E8C27
          88F6B57E186AFF0045F79E6B5DAFC28FF91FED3FEB94BFFA01AE2ABB5F851FF2
          3FDA7FD7297FF4035C54FE347DD669FEE557FC2FF23BEF8D1FF22859FF00D7FA
          7FE8B92BC32BDCFE347FC8A167FF005FE9FF00A2E4AF0CABAFF19C1C39FEE2BD
          585773F09B4DB9BBF1BDBDE4484C1648EF33E381B9195467D493D3D01F4ACAF0
          DF81F5BF12CB1B5B5B34366C7E6BB986D403D47F7BA741F8E2BDBF4FB2D07E1D
          F86F125C2C3083996793EFCCFF0041C93E8076FC4D3A54DB7CCF62739CCE9C29
          4B0D4BDE9CB4B2D6D7FD7C8CDF8B57F15AF81A7B6623CCBB9638D077E18393FF
          008EFEA2BE7EAE9BC6FE2D97C5BAD79E15A3B28014B6898F207763DB71C0CFD0
          0E719AE66A6ACF9A5747564B8296130AA13F89BBBF2FEAC7AC7C14D5425CEA7A
          4C92B66455B8850FDDC8F95CFD4E53F2F6AE37E217FC8FBABFFD761FFA08AA5E
          13D5BFB13C55A6EA0582C71CC04848E88DF2B7FE3A4D69FC4B8D63F887AAAA0C
          02D1B7E263427F534DCAF4ADD99953C3FB2CD65516D385FE69A4FF0043DFF41F
          F91774CFFAF48BFF004015A15CB69BE32F0BDB6976907F6DD9AF970A260CBC8C
          281567FE138F0BFF00D076CBFEFE8AEC5256DCF85A986AEE6DF23FB99D0515CF
          FF00C271E17FFA0ED97FDFD156F4FF0013689AADD7D9AC353B6B99F696D91BE4
          E07534F997733961AB455E50697A32EEA1FF0020DBAFFAE2FF00C8D7CD5E09FF
          0091DF46FF00AFB4FE75F4D4A8B242F1B8CAB29047A8AF9A7C07179DE3AD1D73
          8C5C06CE3D013FD2B0ADF144FA1C85FF00B2E27D3F491F4CD14515D07CC05145
          1401E15F1A3FE471B4FF00B07A7FE8C92BD17E177FC93BD2FEB2FF00E8D7AF3F
          F8D48A3C4D61263E66B3009F60ED8FE66BA9F879E2AD074DF0369D697BAB5AC1
          709E6EF8E47C15CC8C47E8457341DAABB9F578B84AA64D454137AF4FFB78F47A
          2B9FFF0084E3C2FF00F41DB2FF00BFA28FF84E3C2FFF0041DB2FFBFA2B7E65DC
          F9CFAAD7FE47F733A0A2B0E0F18F872EAE22B78359B392695C2222C992CC4E00
          1F8D6E534D3D8CA74E74DDA69AF53E64F1CA347E38D6558609BA66FC0F23F435
          F49E9FFF0020DB5FFAE49FC857CE5F10FF00E47ED5FF00EBB0FF00D0457D216F
          1F936D1440E42205CFAE056147E291F499EBBE170DFE1FD224B5E33F1AF4EB78
          6FF4BD4234559EE1248E520E3704DBB4E3FE04467E95ECD5E03F153C516DE20D
          760B5B19165B5B156512AF477623760F71F2819FAF6C55576B93539387A9D496
          3A3286CAF7FBBFCCEB3E09DC48DA3EA96C48F2E3B8591463BB2E0FFE822BD4AB
          8AF861E1E9F41F0A86BB88C57579279EE8C30C8B80154FBE0671D46EC1E95DAD
          5D34D412671E6B521531B5250DAE7CE5F13FFE4A2EABFF006CBFF45257BAF84F
          FE44ED13FEBC20FF00D16B5E21F155153E205F15182E91337B9D807F202BD4FC
          35E31F0E5AF85B48B79F59B38E68ACA147469002AC10020FE358D3695495CF6F
          34A73A997619422DE8B65E47694573FF00F09C785FFE83B65FF7F451FF0009C7
          85FF00E83B65FF007F456FCCBB9F39F55AFF00C8FEE67414563D978AB41D4AF2
          3B4B2D5AD67B8933B2347C96C0C9FD01AD8A69A7B194E9CE0ED3567E67CCBE1E
          B78AEFC7B656F3C6B2432DEEC746190CA5B041ABBE38F085CF83F5A12DBF99F6
          095F7DACE09CA1EBB49ECC3B7A8E7D71068005AFC4BB18DDB3B35311E40EA7CC
          C57D03AFE8767E22D1E7D3AF5331C83E5603E68DBB30F71FFD6EF5CB0A7CF17D
          CFB5C7E632C162A949EB071575F3DFD51CEFC3AF1A0F146966DEEDD46A96A009
          40E3CD5E81C0FD0E3A1F4C815DAD7CCB736DACF803C54BCF95756EDBE37C7C93
          274CFBA919047D47515F40F85FC4769E28D162D42D72A7EE4D11EB1B8032BEFD
          783E86B5A552FEECB747879C65D1A2D62286B4E5DBA7FC0EDF71B35E05F183FE
          478FFB758FF99AF7DAF02F8C1FF23C7FDBAC7FD68AFF00017C37FEFBF27FA1EC
          BE12FF00913744FF00AF083FF458A5F136BD0786F40BAD4A62A4C6B88909C799
          21FBABF9FE4327B52784C63C1DA27FD7841FFA2D6BCCFE35EA8ED7BA6E92ACC1
          123372EBD9892557F11B5BFEFAAA94B96173970B8458BCC3D93DAEEFE88F3E45
          D57C61E2403735CEA17B2753C0FF00EB2803F002BDF3C21E05D37C296EAE8827
          D4197F7974E39F70BFDD1FA9EF5C8FC17D1234B2BDD6E45CCB23FD9A2CF65182
          C7F1240FF80D7ABD67461A733DCEFCF73193A8F094B4847476EBFF0001760A28
          A2BA0F9B0AF01F8BFF00F23C1FFAF58FFAD7BF5783FC65454F19DBB28C17B146
          6F73BDC7F202B1AFF01EF70DBFF6EF933D43E1D7FC881A47FD726FFD0DABA8AE
          77C068B1F817470A300DB83F89E4FEA6BA2AD23F0A3CAC63BE22A3FEF3FCC64D
          2C7042F34AEA91C6A59D98E0281C926BE6ED427B9F1EF8F8F901BFD32711C208
          FF005710E0123D946E3F8D7AB7C59D7974BF0A9D3E3722E7503E58C75118C173
          FC971FED5737F0634166B8BCD7A65F9157ECD06475270588FA0C0CFB9AC6A7BF
          3503DDCA92C1E0EA63A5BBD23FD7AFE4C77C5CF0C4569A6695A858C1B61B48C5
          9C98C9C20FF579FA7CC33EE297E0BEBA035F68734BD71716EA7F2719FF00BE4E
          3FDE35EA1ACE9706B5A35DE9B703F77711942719DA7B30F70707F0AF9AACEE2F
          7C25E29494AEDBBD3EE0ABAE78383865CFA1191F434AA7B935237CBA5FDA397C
          F0927EF4755F9AFC74F467D494557B1BC8351B0B7BDB67DF04F1AC91B6319523
          22AC5749F26D34ECC28A28A04145145001451450073F37FC943B3FFB054FFF00
          A362AE82B9F9BFE4A1D9FF00D82A7FFD1B15741497537ADF0C3D3F56213804D7
          CFBE1796493C23E37BF1FF001F4D0C2A5F273B6476DE3F115F419E95F3CF84B5
          6B2F0E4FE24D235B3225B5C5B4903AA265DA45254281D8FCCDC9380475AC6AEE
          AFE67B39326E8D6E5577783B774A5767155DAFC28FF91FED3FEB94BFFA01AE2A
          BB5F851FF23FDA7FD7297FF4035CB4FE347D8667FEE557FC2FF23BEF8D1FF228
          59FF00D7FA7FE8B92BC7344D4C68FAC5BDFB5A4176B1365A09D032B8FC7A1F43
          D8E2BD8FE347FC8A167FF5FE9FFA2E4AF0CAD2B3B4EE79DC3F08CF2FE596CDB3
          EABD1758B1D7B4B8750D3E5124120FC50F7561D88AF20F8ADE16D56DB507D6FE
          D33DEE9D2363F78C49B524FDDC76427A11F43CE09E63C1DE33BEF08DF978819A
          CE53FBEB62D80DEE3D1BDEBE83D3B51D33C51A28B8B629736770851D1C03DB95
          61EBEA2B64D568D9EE78956856C9714AB457341FE5DBC9FE7F7A3E57A2BBAF1F
          FC3F9BC333B5FD82B4BA4C8DD7A9B724F0ADEA3D1BF03CE33C2D724A2E2ECCFB
          3C362696269AAB49DD3FEAC15D77C4EFF9287AA7FDB2FF00D149585A059FF68F
          88B4DB32BB84D731A30C762C33FA66B6FE263AC9F10F552A72018C7E222407F5
          14D7C0FD4C2524F1D08F684BF171FF00237A0F833ABCF6F1CCBA9D880EA18021
          F8C8CFA53FFE14A6B1FF00414B1FC9FF00C2BD8B49904DA3D8CAA080F6F1B0CF
          BA8AB95D7EC207C64B8831E9B5CCBEE4788FFC294D63FE82963F93FF0085749E
          07F86FA8785BC43FDA3737B6B347E4B47B63DD9C9C7A8F6AF4AA29AA304EE8C2
          B6778CAD4DD39C959F9211BEE9FA57CA1A6595E6A5A8C167A7A17BB94E235570
          A49C7A9200AFABDBEE9FA57CD3F0FDD63F1E68E58E079F8FC48207EB515D5DC5
          1E9F0ED474E8E226B7493FB948D1FF00857DE3BFF9F09FFF000323FF00E2E8FF
          00857DE3BFF9F09FFF000323FF00E2EBE86A29FB08F7673FFAC789FE487DCFFC
          CF9E7FE15F78EFFE7C27FF00C0C8FF00F8BAF64F02E9F7FA5783AC2CB538DA3B
          C8FCCF3159C39199188E4120F045745455C29283BA38B1D9B55C65354E718A49
          DF45FF0004F11F8D5FF23169DFF5E9FF00B39ACCF0F7C2FD4BC45A15B6AB6F7F
          691453EEDA9206DC36B15E703DAB47E353A9F12E9E99F9859E48F62EDFE06BD0
          7E17FF00C93BD2FF00EDB7FE8D7AC7954AAB4CF7658CAD83CA28D4A2ECDBB7E6
          701FF0A5358FFA0A58FE4FFE147FC294D63FE82963F93FF857B7515A7B081E4F
          FAC38FFE65F723C7F46F843AAE99AEE9F7F26A364E96D731CCCAA1B242B0240E
          3DABD828A2B48C1476383198EAD8C929567768F9ABE21FFC8FBABFFD751FFA08
          AFA4F911FCA0138E0138AF9ABC7EEB278F3586539027DBF88001FD457D236921
          9ACE095B1B9E35638F7158D1F8A47B59EAFF0065C2FF0087F489E0FE36F1F788
          EFEEAE7499E13A54484C72DB46C4BB71D19FB83ED8041EF5D07C32F015A4D0DB
          788EF6E22BA39DD6F0479223607ABFFB408E9D075E6BA7F881E048FC53682EEC
          C2C7AA40BF231E04CBFDC63FC8F6FC78F27F0678BEF7C17AC3C73C723593BECB
          BB661865238DC01E8C3D3BF43D8887EED4BCF5476D19AC5E5CE9E06D09AF892E
          BF3DF5EFF23E8FA2ABD8DEDB6A3650DE5A4CB35BCCA19245E84558AEB3E35A69
          D99F3D7C57FF0091FEEFFEB945FF00A00ABBA6FC22D5753D2ED2FE3D46CD23B9
          85265560D90194100F1EF543E2B3AB7C40BD00E4AC7103EC7603FD457B7F84FF
          00E44ED13FEBC20FFD16B5C918294E573EC7158EAF83CBF0F2A2ED74BA791E53
          FF000A5358FF00A0A58FE4FF00E147FC294D63FE82963F93FF00857B7515AFB0
          81E47FAC38FF00E65F723CB3C23F0BB52F0EF8A2CF55B8BFB4962837EE48F76E
          3B91978C8F7AF53A28AD2305156479D8BC655C5CD54ACEEED63E6AB0FF0092A1
          6BFF0061A4FF00D1C2BE95AF9AAC3FE4A85AFF00D8693FF470AFA56B1A1D4F6B
          88FE2A3FE1395F1D783A2F16E90235658AFADF2D6D2B74C9EAADEC703E8403EC
          7C5BC2FE21BFF037895FCE8E41187F26F6DBB900FE5B87241FA8CE0D7D275E67
          F14BC0EDAAC0DAEE9B183790478B8894732A0FE21EAC07E607B005D583F8E3B9
          9E4F8F824F0589D69CBF07FD7DCF53D0F4FD42D754B082FACA659ADE65DE8EBD
          C7F43D88EC6BC2FE2FFF00C8F1FF006EB1FF005A5F871E3B6F0F5DAE977EF9D2
          E77E1D8FFC7BB1FE2FF74F71F8FAE5FF001911478CADDD7FE5A58C6C4E7AFCEE
          3F90151526A74EE77E5B809E0734E496CD3B3EEBFCFB9EC5E14FF913B43FFB07
          C1FF00A2D6BC83E33FFC8E56BFF5E09FFA324AF5EF099CF83B44FF00AF083FF4
          5AD705F1A34679AC2C7588973F676304D819F95B9527D00208FAB0AD2AABD33C
          FCA6AC69E69EF757246EFC2696393C056CA806E8E69564E7BEECFF00222BB8AF
          17F837E224B6BDB9D0676C0B93E75B9FF6C0F987E2A01FF809F5AF68AAA4EF04
          71E73425471B514BABBAF98514515A1E605784FC68FF0091C6D7FEBC13FF0046
          495EED5E11F1998378CAD802095B040707A1DF25635FE03DEE1CFF007E5E8CF5
          7F037FC88FA37FD7AA57407A573BE037593C0BA3953902DC0FC4707F5154BE24
          7880683E11B808D8B9BC06DA2C1C11B81DCDEBC0CF3EA455A6942E79D3A12AD8
          C9528EEE4D7E278CF8F7C423C49E2BB9B989B75AC3FB8B73EA8A4FCDF8924FD0
          8AF44F0FFC49F09E83A0D969710BE2B6F1852C201F337566FBDDC927F1AE27E1
          EF8262F175DDDB5EC9345656EA0168480CCE7A004823A039FC3D6BD07FE14BF8
          73FE7F755FFBFB1FFF00115CF4D547EFAEA7D4663532D846383ACE56876F4EBE
          7FE64FFF000B87C31FDDBEFF00BF23FF008AAF2DF1FEB1A3EBFE201A9E93E72F
          9B1813ACB1ED3BC700F53D4607E1EF5E97FF000A5FC39FF3FBAAFF00DFD8FF00
          F88AADA87C18D2174EB86D3EF2FCDE08C9844D22142F8E01C20E0FD6AA71AB25
          667360B1594E16B2A94A524F6D7617E0E6BCB75A34FA2CAE7CEB4632440E3989
          8F38FA3673FEF0AF4EAF97FC2BAE4BE18F13DADF90C1237D93C78E4A1E1863D4
          751EE057D3D1C892C49246C191D432B03C107A1ABA12BC6DD8E0E20C1FB0C57B
          48FC33D7E7D7FCFE63A8A28AD8F0828A28A0028A28A00E7E6FF928767FF60A9F
          FF0046C55D0573F37FC943B3FF00B054FF00FA362AE8292EA6F5BE187A7EAC2B
          E78F8A1A23691E33B8995316F7DFE9119038DC7EF8FAEEC9FA30AFA1EB8AF899
          E1893C45E1BF32D63DF7D644CB12819675C7CC83DCE01F72A077ACEB479A27A1
          92631617169C9FBB2D1FF5EA7CF35DAFC28FF91FED3FEB94BFFA01AE2ABBBF84
          71ABF8EA36209296F230F63C0FEA6B929FC68FB8CD1FFB155FF0B3B8F8D1FF00
          22859FFD7FA7FE8B92BC32BDD3E340FF008A3ECCFF00D3FA7FE8B92BC2EAEBFC
          670F0E7FB8AF5615BDE14F15DFF84F54FB55A1F3217C09EDD9B0B2AFF423B1ED
          EE0907068AC5369DD1ECD5A50AD074EA2BA67D43A5EA9A578C7C3E67842CF697
          0A639A271CA9C728C3B1E7F911D8D789F8F7C0537852E05D5A979B4B95B6A3B7
          2D1B7F75BFA1AC7F0AF8A6FBC29AB2DDDA92F0B713DB96C2CABFD08EC7B7D320
          FBDDD788340D53C1EDA95C62E34DB94D8612B97763C79617FBF9E303BF39EF5D
          578D58EBBA3E4254B1192E253A5795393DBF4F5EDDCF25F847A49BFF0018FDB1
          95BCAB089A4CE320BB7CAA0FE058FF00C06B1FE217FC8FBABFFD761FFA08AF6C
          F03785A2F0D69531F20437179279B247BF79897F823DDFC5B413CFA935E4BE3A
          F0EEB777E36D527B6D1F509A179415923B576561B4742060D4CE0E34D23B3058
          F862334A952F68A8D95FD57EB73DCF41FF0091774CFF00AF48BFF4015A15F3BC
          571F11A085228A3F10A468A15544128000E83A5116A5F116E2149A16F1049148
          A191D2290AB03C82081C8AD1575D99E5CF209CA4E5ED63F79F44515F3D7DB3E2
          57F77C47FF007E25FF000AE87C0D73E3793C6360BAC0D6BEC07CCF37ED314823
          FF0056D8C9231D71F8D3559376B18D6C8E54A9CAA7B58BB26F73D72FC91A7DC9
          070444C411F435F357827FE477D1BFEBED3F9D7D2B7CA5EC2E55412C6260001C
          93835F3EF843C39AE5B78C3499EE345D462852E919E492D5D55467A924715359
          7BD13A7239C6386C4293B5D7E8CFA2A8A28AE83E6428A28A00F0AF8D1FF238DA
          7FD83D3FF46495E8BF0BBFE49DE97F597FF46BD711F16F45D5752F15DACD63A6
          5EDD44B628A5E0819D41DF21C640EBC8FCEB99B25F881A6DA25A595B6BF05BA6
          76C71DBCA1464E4F18F526B939B92A3763ECDE1A38CCAE9518CD26B5D5FAFF00
          99F46D15F3D7DB3E257F77C47FF7E25FF0A3ED9F12BFBBE23FFBF12FF8569EDD
          76679BFEAFCFFE7F43EF3E85A2BC134BBCF888756B31703C41E419D3CCDF0CA1
          76EE19CF1D315EF5DAB484F9BA1E6E3F00F0728A7352BF63E63F1B7FC8EFACFF
          00D7DBFF003AFA574FFF00906DAFFD714FE42BE7DF17F8735DB9F186AD3DBE8B
          A8CB0BDD3B2491DABB2B0CF5040E6BE83B152B616CAC0861128208E41C0ACA8A
          F7A47AF9E4E32C361D45DECBF444F5E69F12BE1FAEAD0CBADE9517FA7C6B99A1
          41FEB940392001CBFF003C7AD7A5D15B4A2A4ACCF0B098BA985AAAAD37AAFC7C
          8F9DBC05E39B8F0B5FADBDC3B3E93337EFA3C64C67FBEBFA67D47BE2BE83B5BA
          82F2DA3B9B6956586550C9221C8607B8AF26F89DE0048E39BC43A4438032F790
          20E31DE403F9FE7EB5A5F0934BF1158D8C935F398749954B416D28F9CB123E70
          3F8548CFD7AE3B9C69B9465C8CF77348617198758EA4D465B35DDFF9FE68F3FF
          0089FF00F251755FFB65FF00A292BDD7C27FF227689FF5E107FE8B5AF1BF88BE
          1FD6AFBC79A9DC5A6917F7103F95B658AD9DD5B1120382063A8354A097E225AD
          BC56F045E218E18902222C1280AA06001C7A54465C936EC7762308B1B80A108D
          48A714B77E47D13457CF5F6CF895FDDF11FF00DF897FC28FB67C4AFEEF88FF00
          EFC4BFE15A7B75D99E67FABF3FF9FD0FBCFA168AF14F085D78EDFC59A72EA835
          CFB1190F9BF688A4098C1EA48C75AF6BAD213E6573CBC7609E12A2839295D5F4
          3E63D0D8BFC41D359892C75588924F24F9A2BE9CAF9D744F0E6BB178E34EB893
          45D45214D4A27691AD5C28512024938C631DEBE8AACE82D19EBF11CE329D2E57
          7F7428A28ADCF9B3C23E27F828E8B7EDAC5844069D72FF00BC441C4321F6ECA7
          B7A1E38E2B85BDD46E7508ED12E642FF0065805BC44F242066207E1B881EC00A
          FAA6FAC6DB52B19ACEF2159ADE65292237423FA7D6BE7FD57E1B6B96FE279B4B
          D3ACA6B9B7FBF0DCB6026C3D37374047208EA71C0E457255A4D3BC7A9F6D92E6
          D4EAD3F6788694A1B37DBFCFF33DC3C25FF226E89FF5E107FE8B157B51B0B7D5
          34EB8B0BA4DD05C466371DF04751EFE951687652699E1FD3AC2664696DADA385
          CA1CA92AA01C67B7157EBA92D2C7C7D59FEFA538BEADAFBCF9A3C4FE17D4FC17
          AD286671107DF69769C6EC1C8208E8C38E3FA60D7A0F847E2EC33AA5A789310C
          A000B788BF2BFF00BEA3A1F71C7B0AF4CD474DB3D5AC64B3BFB749EDE4186471
          FA8F43EE39AF2DF107C190CED3E8178A80927ECD744E07B2B819F6C11F8D73BA
          7283BC0FA3866583CC292A58F5692DA4BFAD3F23D56D6F2DAFA059ED2E22B885
          BEEC9138753F88A9EBE6C93C31E32F0DDC178AC752B77C1CCB6659863DDA3271
          F8D491FC45F18D9AF93FDAF3023B4B0A337E6CA4D3F6F6F89193E1D7535C3558
          C97F5DAE7D1F5E03F17FFE4783FF005EB1FF005AED7E16789F5BF12CBAA1D5AF
          FED096EB108D7C944C16DD939503FBB5CCFC53D0F57D43C6267B2D2AFAE61FB3
          46BE6436EEEB9E78C81455973D3BA2B28A0F05993A555ABA5F2D6CFAD8F47F87
          7FF220691FF5C9BFF436AF20F899E223AF78AE48617DD69639822C1E19B3F3B7
          E278F70A2BD53C3F0EB1A7FC2DB786CACDC6AC96CCB14330F2D95CB1C121BD33
          9C1EB5E5BF0F7C2F737DE39862BEB59614D3C8B89D2442A411F70104776C1C77
          00D2A97718C17535CB7D8D2C46231936BDC6ECBE7BFE8BD4F64F04F87D7C37E1
          6B4B264DB70C3CDB83EB230191F870BFF01AE868A2BA12B2B23E62AD59559BA9
          3DDBB8514514CCCF9F3E2A682BA3F8B9EE61522DF50537038E0499F9C7E786FF
          008157A37C27D7BFB57C282C6572D73A71111CF398CE4A1FC815FF0080D5AF89
          BE1FFEDCF08CF2C51EEBBB2FDFC58EA40FBE3F15C9C7720579F7C28D3B5F87C4
          31EA36D6720D324431DC4B27CAACA7A15CFDE2180E9EE38CD7359C2AE9D4FAC7
          569E3B28FDE492953EFE5B7DEB4F53DD28A28AE93E4C28A28A0028A28A00E7E6
          FF00928767FF0060A9FF00F46C55D0573F37FC943B3FFB054FFF00A362AE8292
          EA6F5BE187A7EAC28A28A660792FC49F874D3BBEB5A15AB34CC4B5DDBC7CEEEF
          BD47AFA81D7AE3AE7C7ABEBBAE4FC49F0F342F11969A480DADD9C9FB45B00A58
          FF00B43A373F8FBD73D4A177789F5195F107B082A389574B67D57AF73E70A2BB
          FD57E11788ACA56FB0F91A843FC2C8E237C7BAB1C0FC09AE667F09788ED99D65
          D0F511B3EF32DB3B28FC40C57338496E8FAAA398616B2BD3A89FCFF431A8AD8B
          7F0A7886E99043A1EA0C1FEEB1B670BF9918AE9F49F843E22BD957EDFE469F0F
          F133B891F1ECAA707F12285093D90EB66185A2AF52A25F3D7EEDCE0554B30550
          4B1380077AF4FF0005785755B097CD9CBC5AA5BB2DEDAE95743114E9B705B39C
          07F9B00E3287191CD7A1786BC01A1F8676CB6F01B8BC1FF2F3718671FEEF65EF
          D39F526B6B55D2A1D56D9519DE19A33BE0B888E1E17FEF29FD08E84641AE8850
          B6ACF96CC388235FF75495A2F76FFCBB7E3E81A46AD6DAC59F9F06E4656292C3
          20DB242E3AA30EC47FF5C706AFD718AB7F25FBED115AF892DD433E3E58752887
          009FE5DCA13DC1E7A3D27568756B56923578A68DBCB9E09061E171D5587F5E84
          608ADD33E76B51E5F7A3B7E5FF0003B3FD4BE7A1AC8F09FF00C89DA27FD7841F
          FA2D6B5CF43591E13FF913B43FFAF083FF0045AD3EA4C7F832F55F933628A28A
          66250D6B568342D1EE753B9491E1B750CCB10058E481C6481DFD6B8B8FE31F87
          59E3DF67A9C51BB63CC785368F53C393C7B66B6FE22FFC881ABFFD725FFD0D6B
          CB2EAF7C4B3FC2FB4B1FEC451A381B8DEA90EC555F39DA0E579EE7B563526D3B
          23DDCB30342BD1E6A8B572E5F8AD656E9DDF91EEF6F3C5756D15C4122C90CA81
          D1D4E432919047E15256178327B19FC21A59D3A5792D92058D5A45DAD95E0EE1
          CE0E41EE7DB35BB5AA77573C6AB0E4A928766D0515E4FE33D50DA6BD7C63F1F4
          B632A0062B08EDDDD54851F2B32703273D41201E6BB0F87FE20B9F1278521BCB
          DC1BA47686570301C8FE2C0E9C119F7CF4A9534E5CA75D6CBEA53C3AC45EE9DB
          A35BABF54AFF002B9D4514579A788EFF00C4579F11D3C3DA56AE6C60B8B40CCC
          5036C1C9665E33BB03D47D45394B94C70D86788938A695936DBECBD2E7A5D15E
          69A0EA3AFF0087FE21C7E17D5B526D4EDEEE132C334830CB85639EE7F8186327
          B1AF4BA232E60C4E19D092574D3574D754C28AE3BE22F8B2E3C2DA1C6D64AA6F
          6E9CC71330C840064B63B9E981EFDF18AA5A6785FC650DD595F5DF8B6477322B
          5D5A98F2813AB2A9E467B7DD1FA5273D6C91A43077A2AB549A8A77B5EFADB7D9
          33BEA28AE67C79E2693C2DE1992F6040D73248B0C1B86543104E4FD0293F5C55
          3692BB39A8D29D6A8A9C377A1D3515E49A95AF8DFC3DE1D4F134BE2592699364
          93D93C79450C40C7A1C646700639C1E2BD3745D49758D12CB5154D82E6159766
          73B491C8CF7C1E2A632BBB58E8C460DD182A9192946ED5D5F75D3548BD451455
          9C614515C078FF00C4FAA5A6A9A6F87342758B50BF20B4EC3EE296DA31C1C721
          B271C01C52949455D9BE1B0F3C45454E1F8EC92DD9BDE22F14C7E1FD4F45B06B
          569E4D52E042AC1F688FE64524F073F7C71ED5D0D78BEBFA26B1A378BFC20BAA
          6BB26AAB2DF298CC8854C64491EE1D4E41CAFE5D2BDA2A6126DBB9D38CC352A3
          4A94A9BBF32776AFAEB6EA14561F8BB5EFF846BC3577A9AC624963016246E85D
          8E067DB9C9FA57987F6A6B8BA18D7FFE13FB36D43609FF00B33CD8F18EBB719C
          6EC7F0EDEBC75A25351760C2E5D3C4439EE92BD95EFABF927F7BD0F6BA2B23C2
          DAD7FC243E1AB1D50A0469D0EF51D030255B1ED90715AF549DD5CE2A909539B8
          4B75A0514514C830BC51E2BD3BC27629737E5D9A56DB1431005DCF7C6481819E
          4D667873E20D9F88B57FECC5D36FAD6E0C4651E720DBB78E4F391D4638C553F8
          97E19D4F5BB7D3B50D202C975A6C8CE212065C1DA7233C120A0E0F5CFE064F08
          F8F6DF5EBF1A66A564D61AE46ACA6374C06EEC173C83C64A9F4EA7159393E7B3
          3D6861A93C17B58479A5ADF5F87B69D55BA9DC514561F8BE5F27C3772DFDB234
          8395FF004BDBB8A8C8C803A9246700735A376573CCA70E79A877FEBA6A6E515E
          37E1DF16DDD9F8CF4ED3E1F13C9AF69F78DE5CBE6DBB46D1B1C818DFCF5C1E0F
          3CF1D2BD929426A5B1D38CC14F092519F5575BAFC1A4C28C0AC5F16DDCF61E13
          D52EED65314F15BB3238EAA477AF3948BC6B7BE0C1E2A5F14481A284CAB6A918
          0A634EA58F42DC13820E7D7D14A7676B1586C0BAF0E7735157E5D6FBFC933D83
          14561F83F5A97C43E14B0D52740934C84385E85958A923EA573F8D6E55277573
          92A539539B84B74EDF70526D018B60648C6715E476775E29F19C9AD6A769E22F
          ECC82C646582D538180091BC8230381F31CF7E30315D17C29D4AF757F0DDD5DD
          FDF5CDD4DF6C743E73060BF2AB7CBC640F9BA67031C62A2352EED63BEBE5B2A3
          4A53734DC6C9A57D2FAF6B1DDD1457966A575E27D67E276A7E1ED335B92C6CE3
          892466081BCB5D919257A1C9661DC7535529729CD85C33C4392E65151576DDF6
          D3B5FB9EA74566681A75E697A4C76B7DA8CBA85C2B316B89060B649C71938E31
          DCD691E0552309A519349DD7714804608C8A40001800002BC760F11EA3E31BEB
          CBA6F185B7876C227296D0348AAEE3D48DC0F4C7392339C5757F0E3C4B7DADC1
          A969FA8CF15D5CE9B284FB5C441599096C1E383F74F3C6411DF24E71A89BB1E8
          57CAEAD0A6E726AF1B5D6BA5FE567E766771451456879A145145001451450073
          F37FC943B3FF00B054FF00FA362AE82B96D4F50B2D37C7B6535FDE5BDAC4DA64
          C81E7942296F36238C93D783F9568FFC259E1CFF00A0FE97FF008191FF008D4A
          69367554A539460E316F4FD59B14563FFC259E1CFF00A0FE95FF008191FF008D
          1FF0967873FE83FA5FFE0647FE34F99197B0ABFCAFEE3628AC7FF84B3C39FF00
          41FD2BFF000323FF001A3FE12CF0E7FD07F4AFFC0C8FFC68E641EC2AFF002BFB
          8D8A2B1FFE12CF0E7FD07F4BFF00C0C8FF00C68FF84B3C39FF0041FD2BFF0003
          23FF001A39907B0ABFCAFEE3628AC7FF0084B3C39FF41FD2FF00F0323FF1A3FE
          12CF0E7FD07F4AFF00C0C8FF00C68E641EC2AFF2BFB8D8A2B1FF00E12CF0E7FD
          07F4BFFC0C8FFC68FF0084B3C39FF41FD2BFF0323FF1A39907B0ABFCAFEE27D6
          7488B57B311991A1B88CF996F729F7E1907461FD4771915CF62EF50BC0730D87
          8AEC5318C9F26F21CFE6D193FF000246FF00C7B6BFE12CF0E7FD07F4AFFC0C8F
          FC6B3759D4FC2FABC11FFC547A6DBDDC0DE65B5D47791EF85FD473C83D0A9E08
          E0D4BB1D341558FBB28BB7A6DFE69F546C693ABC7AA5B3E636B7BB88ECB9B590
          8DF0BFA1C763D41E84608A87C27FF227687FF5E107FE8B5AE6ECB508FC4570D2
          E9F7B651F8A34F4DAED049BE0BA8B3D0919CC67FEFA463FF007D755E1EB59AC7
          C35A5DA5C26C9E0B48A291320ED654008C8E0F2284EEC55E9AA5071D9B6B4F93
          FBD6BA334A8A28AB388E7FC6F6373A9783752B3B385A6B896301235EAC77035C
          15BFFC2709E0C8FC316DE18F2C342F03DCC932F28D9CF19001C123A9AF5DA2A2
          50BBBDCEFC3E39D1A7ECF91495F995EFBEDD1A303C1BA049E1AF0C5AE9B34AB2
          CC9B9E465FBBB98E481EC338CF7C678E95BE68A2A92B2B2392AD49559BA93DDB
          BB3C8F48B7F15784EFB58B1B5F0D7DBEE6F66668751DE00C1CE0B139C8EF8247
          24D747F0B74ED4B48F0EDD586A7652DB4B15DB15DE061D4AAF239E79079E9D2B
          B9A2A234ECEF73B71198CABD3941C1272B5DEB7BAF9D82B859B46D45BE2F5B6A
          E2D5CD82D998CCF9180DB5863D7B8AEEA8AB6AE7251AF2A3CDCBD535F79C36A7
          A36A337C5ED1B578ED5DAC20B368E49C11856DB2F1EBFC4BF9D7734514256B8E
          B579555152FB2ADF9FF99C67C48F0ADD789F4487FB3C837B6927991A16DBBC11
          8201E80F4209F4F7AA7A6F8A7C69757365673F849A1612A8BAB977C214CE18A8
          3800E391F31AEFE8A970D6E99B431B6A2A8CE0A495ED7BE97DF66BF1015CC78F
          7C35278A3C31259DBB0175148278031C066008C1FA8247D715D3D154D26ACCE7
          A356546A46A4375A9E49A9DD78E3C47E1E8FC36FE1B7B791F625C5E492615C29
          073E839009C139E702BD3746D39748D16CB4E46DE2DA158B77F7881C9FC4F357
          A8A98C6CEF737C4633DB41538C54629B7657DDF5D5B0A28A2ACE30AF3BF883E1
          CD626D6B4CF13683109EF2C4057873C95562C081C6472C08073C8C57A2515328
          F32B1D185C4CB0F51548ABF93D9A7BA3C9B51FF84A7C57E23F0DDEDC78626B0B
          7D3EED59D9A40C482E858907040017D3D6BD668A288C6D765E2715EDE318A8A8
          A8DEC95FABBF56CC1F18E82FE24F0C5DE99148B1CCE15A267CE03290467D8E31
          ED9AF3BD3E2D5ECAC20D326F86563737B1288BED6F147B5F1C02C76904E3A9DD
          D79AF62A294A177734C3E3E5469BA4E2A4AF7EAACFE4D7DC41676B6F65691DBD
          ADB456D0AFDD86240AAB93938038EA4D4F4515670B6DBBB0A28A2811CCF8BF53
          F11E96B653683A5ADFA6F6FB521EA178C00339E727919C62B95D2748D7FC4BF1
          06D7C4BAA692349B5B44DAB1B37CF2101B19EE4E5BAE00C0C57A85150E17776C
          EEA38DF6349C2105769AE6D6F67BF5B7E015C2FC4BD0F51D5AC34EB8D3ED45EF
          D8AE7CD96D0F4957E9DFA631D7E635DD515525CCAC6186AF2C3D55563BA3C8F5
          17F15EB9E24F0F6A92785E6B2B1B0B95510AB0771961B891F29030A3190071D7
          9AF5CA28A518D8D3138AF6EA31515151D15AFDEFD5B317C5B693DFF84F54B4B5
          88CB3CB6ECA883AB13DAB1B4CD26FE1F84CFA5496CCB7C74F9E2109233B98360
          7A7715D9D1438DDDC9A78A9429AA6968A4A5F34735F0FF004EBBD2BC11A7595F
          40D05CC5E66F8DB19199188E9EC4574B4514D2B2B1956AAEAD495496F26DFDE7
          836B1E11D6352F14EB93AE8B3DCA4978E15AD2EA28D42E49F9861B92361E7073
          D464F1E89F0CF59B1D47C3EF6765A6FD80D8BF97245BF7E49E776E2064920FE5
          556FBE14699757F73776FAA6A56CD72E5E5559430624E4F2464F39EA4D74FE1D
          F0D69DE17D38D9E9C8E159B7C9248DB9E46E9927FA0005650838CAE7B58FC7D0
          AF8554EF76AD6D1AB596B7BB6BD2C6C570DA5E8DA8C1F17B59D5E4B575B09ECD
          638E724619B1171EBFC2DF95773456AD5EC78F46BCA92925F695BF27FA0521E9
          4B453313C66CFC3FA9F83AF6F2CA6F06DB788ECDE4DF6F706256703DC956238C
          7CB81CE719AF46F085B18F49FB44DA05A68D77331F321B78D172A09D99DBD4E0
          F7EF9E066BA0A2A23051D8EFC56613C4C6D38ABF5777ADBCAF6FC028A28AB380
          28A28A0028A28A008A5B682720CB0C7211D37A838A67F67D97FCFA41FF007EC5
          58A281F335D4AFFD9F65FF003E907FDFB147F67D97FCFA41FF007EC558A281F3
          4BB95FFB3ECBFE7D20FF00BF628FECFB2FF9F483FEFD8AB14501CD2EE57FECFB
          2FF9F483FEFD8A3FB3ECBFE7D20FFBF62AC5140734BB95FF00B3ECBFE7D20FFB
          F628FECFB2FF009F483FEFD8AB14501CD2EE57FECFB2FF009F483FEFD8A3FB3E
          CBFE7D20FF00BF62AC5140734BB95FFB3ECBFE7D20FF00BF628FECFB2FF9F483
          FEFD8AB14501CD2EE431DA5B44E1E3B78918775400D4D451409B6F70A28A2810
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          51451400514514005145140051451400514514005145140051451401FFD9}
        mmHeight = 23019
        mmLeft = 4763
        mmTop = 0
        mmWidth = 68527
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LISTADO DE MOVIMIENTOS POR PRODUCTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 21431
        mmWidth = 67469
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 32808
        mmLeft = 3704
        mmTop = 33073
        mmWidth = 197644
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ISBT CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3629
        mmLeft = 7144
        mmTop = 37306
        mmWidth = 20645
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Donante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3629
        mmLeft = 7408
        mmTop = 43392
        mmWidth = 13138
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha Donaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3629
        mmLeft = 6879
        mmTop = 49477
        mmWidth = 26276
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha Creaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3629
        mmLeft = 6879
        mmTop = 56092
        mmWidth = 26276
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Usuario Crea.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3629
        mmLeft = 109009
        mmTop = 37306
        mmWidth = 24399
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora Creaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3629
        mmLeft = 109273
        mmTop = 43392
        mmWidth = 24399
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ISTBDONACION'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3387
        mmLeft = 35190
        mmTop = 38100
        mmWidth = 28575
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NOMBRE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3629
        mmLeft = 35190
        mmTop = 43392
        mmWidth = 71702
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FECHA_DONACION'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3387
        mmLeft = 35190
        mmTop = 49477
        mmWidth = 19050
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FECHA_DONACION'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3387
        mmLeft = 35190
        mmTop = 56092
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tipo Donante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3629
        mmLeft = 67998
        mmTop = 56356
        mmWidth = 22522
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DonacionTipo'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 91811
        mmTop = 56621
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OTROS DATOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 69586
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DATOS GENERALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 27517
        mmWidth = 28046
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 6085
        mmTop = 79904
        mmWidth = 195263
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppBDEPipeline2: TppBDEPipeline
    DataSource = DSdonaciones
    UserName = 'BDEPipeline2'
    Left = 536
    Top = 120
  end
  object qOTROS_DATOS: TADOQuery
    Connection = DM.Database
    Parameters = <
      item
        Name = 'MUESTRA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select * from V_RESUMEN_PRODUCTO'
      'WHERE MUESTRANO =:MUESTRA')
    Left = 288
    Top = 48
  end
  object ReporteDonaciones: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 672
    Top = 112
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline2'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43656
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 223044
        mmTop = 5292
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 224632
        mmTop = 8996
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 236273
        mmTop = 5556
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 236273
        mmTop = 8996
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 220663
        mmTop = 12435
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 236273
        mmTop = 12435
        mmWidth = 10583
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D6167654F3D0000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC000110800B1022703012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2BCBFE2478E65825
          1E1CD0E6717F23049E68CE0C79E88A7FBC7232474E9D4F1E9D1AEC8D57716C0C
          64F5352A49B69743AAB612A51A50AB3D39EF65E4ADAFCFA0EA28A2A8E50A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A2AA5CDFC714E6D23789AF9A169618247D9E6
          63DF078CE3270719E9585A5F88B5BD55261168FA7C53DBBF973DBCDA8BAC9137
          6C810918239041208E8693691B4284E71725B2F34BF33A8A2B1BED5E24FF00A0
          4697FF0083293FF8C51F6AF127FD0234BFFC1949FF00C628B87B09775F7AFF00
          33668AC6FB57893FE811A5FF00E0CA4FFE3147DABC49FF00408D2FFF0006527F
          F18A2E1EC25DD7DEBFCCD9A2B1BED5E24FFA04697FF83293FF008C51F6AF127F
          D0234BFF00C1949FFC628B87B09775F7AFF3366B8EF883E328FC2FA398ADDC1D
          52E548B75C6760EEE7D876F53EC0D49AFF008A754F0DE96F7FA8E9BA62C40ED5
          55D49CBBB1E8AA3C8E4D780EB5ACDE6BFAB4FA8DF3869A53D070A83B281D801F
          E7358D5ABCAACB73DBC9B279622A7B4ABF02F34EEFB69F8963C36CD71E32D21A
          7632349A8425D9CE4B1320C939EB5F51D7C9DA65DB586AD6778B8DD6F3A4A327
          032AC0FA1F4F4AFA63ED5E24FF00A04697FF0083293FF8C54E1DE8CECE26A329
          54A6D5AD67D52FCCD9A2B1BED5E24FFA04697FF83293FF008C51F6AF127FD023
          4BFF00C1949FFC62BA2E7CC7B09775F7AFF33668AC6FB57893FE811A5FFE0CA4
          FF00E3157749BEFED4D1AC750F2FCAFB55BC73797BB76DDCA0E33C6719A2E4CA
          94A2B99DADEA9FE45CA28A299985145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451401C8EB5A645AA78E6CA2777
          8A58F4D9A58268FEF4520962C30FCC8C1E08241E0D46E2EE7D5911C4365E27B7
          889866C116F7F167953DC819191F7909046475D29BFE4A1D9FFD82A7FF00D1B1
          5696A9A5C5AA40AACEF0CF136F82E23E1E17FEF0FE441E08241E0D45B73BFDB7
          2A8465B5BEED5FE1DD1168FACC5AAC72A189EDAF2DDB65CDACB8DF1376FAA9EA
          187047E2069D71AC9797B7C23768ACBC516519314FB4F93790E46411DD09C647
          542723DF7B46D663D5A2911E26B6BDB7609756921CBC2DFD54F50C3823F101A6
          635A8F2FBD1DBF2FF80FA3F93D77D4A28AC7D5AEF504D4AC2CAC26B584DC2CAC
          D25C40D281B42E0001D7D4F7ED4DBB18C21CEEC6C550D6759B2D074C9750BF98
          470463F163D9547726AA9B5F119E0EAFA601EABA6B83F86673FCAB94F127C36D
          47C4F7493DF78A246D80848CDA0D89FEEA8718FAF24F1E953272B688E9C3D1C3
          CAA255AA251EB64EFF0091E4DE2BF155EF8B35637775FBB8532B040A72B12FF5
          27B9EFF4000C1AF50BCF829A9C7FF1E5AADA4FFF005D91A2FE5BAB86D73C33AC
          7872654D52C9E10C70920C323FD18719F6EB5C5384D6B23F41C16330338AA586
          92D365B7E66457D5DA3DF7F69E8B637FB76FDA6DD26DBE9B941C7EB5F28D7BA7
          C1FD77EDFE1C974A95B32D83FC9EF1B9247E4770FA62B4C3CAD2B1E5F1361DCF
          0F1AABECBFC1FF00C1B1E8F45145761F0C21E86B23C27FF227687FF5E107FE8B
          5AD73D0D64784FFE44ED0FFEBC20FF00D16B4BA9B47F832F55F933628A28A662
          1451450014514500145145001451450014514500145145001451450014514500
          1451450014514500145145001451450014514500145145001451450014514500
          1451450014514500145145001451450014514500145145001451450014514500
          145145001451450073F37FC943B3FF00B054FF00FA362AE82B9F9BFE4A1D9FFD
          82A7FF00D1B15741497537ADF0C3D3F5650D574A8755B608EEF0CF1B6F82E223
          8785FA6E53FA11D08241AE702DDEA370AAE63D3FC57629F24A57F7579177FF00
          7A262464754623DB3D9550D5B4A8755B608EEF0CF1B6F82E2238785FA6E53FA1
          1D08241A4D0E8D6E5F765B7E5FE69F5445A2EB31EAD04A1A26B6BCB77F2EEAD6
          439685F19C67BA9EA187047E22B9D3E2BD2F56F883A6699A7CBF6936F1CE6495
          0831862A31B4F72003C8E3E6EBD45797F8D3C6973ABDC0B588C71C90ABDB5CDD
          DA4842DEA83C640EA9C64039FBC71D793E147FC8FF0069FF005CA5FF00D00D63
          EDAF25147D0472454B0D53135347CAECBB69DFF2FC4F50F89FAF6A5E1EF0E5B5
          DE9773F679DEED6366D8AD9528E7186047502BC913E2478BA372EBAD4993FDE8
          A323F22B8AF49F8D1FF22859FF00D7FA7FE8B92BC32B3AD2929E8CF4720C250A
          98352A904DDDEE933D0348F8BBE22B2B853A818750809F995A358DC0FF0064A8
          03F306BD6F44D7B44F1B6912342893C390B3DADCA0254F51B9790471907A71EA
          0E3E64AEC3E185EC969E3DD3D164758E7DF148ABD1C142403FF0200FE1453AB2
          BD9EA5E6B9361DD1956A2B965157D36D35D8B5F11FC0E9E16BC8AF2C379D36E5
          88556E7C97EBB33DC6338EFC1F4C9A1F0EB5DFEC2F18DAC92305B7B9FF00469B
          3D831183ED860A73E99AF5EF8A7123FC3CD459D03346D132123EE9F314647E04
          8FC6BE76A551724EE8BCA6ACB30CBE54EB6BBC6FF2DFD753EBBAE7EFBC6FE1CD
          36F65B3BCD5628AE223B5D0AB641FC05278235BFEDFF0008D8DE3BEE9C279539
          2727CC5E093F5E1BF1AF0BF885FF0023EEAFFF005D87FE822BA2A54E58A923E6
          B2DCAE389C54F0F59B5CA9EDDD3B1ED87E22F84F07FE2750FF00DF0FFE159BE1
          CF1E7862CFC31A4DADC6AF0C7343670C722146F958200474F5AE4EC3E0C35EE9
          F6D77FDBC13CF8964DBF63CEDDC01C677FBD58FF00851EDFF4308FFC02FF00EC
          EA79AAEF63A9E1B278A7075A5BF67D2FFDDF33B7FF00858BE12FFA0D43FF007C
          3FF855DD2FC5DA0EB579F64D3B518EE27DA5B62AB0381D4F22BCEFFE147B7FD0
          C23FF00BFF00B3ADFF0007FC333E14D77FB48EAC2EBF74D1F97F66D9D71CE771
          F4A71954BEA8E6C461F2A8D293A559B974567FE477CEEB1C6CEE70AA0927D057
          33FF000B17C25FF41A87FEF87FF0AE8350FF009075D7FD727FE46BE5BD134DFE
          D8D6ECB4DF37C9FB4CAB1799B776DC9EB8C8CD156A38B49750CA72DA38C8549D
          6934A36DBE7FE47D09FF000B17C25FF41A87FEF87FF0A3FE162F84BFE8350FFD
          F0FF00E15C47FC28F6FF00A1847FE017FF006747FC28F6FF00A1847FE017FF00
          674B9AAF636FAAE4DFF3FE5F73FF00E44EDFFE162F84BFE8350FFDF0FF00E15B
          9A66A965ACD92DE69F70B3DBB1203A82012383D6BCB3FE147B7FD0C23FF00BFF
          00B3AF43F097878F85F408B4B375F69D8ECDE6797B33939E993FCEAE0E6DFBC8
          E3C6D0CBE14EF86A8E52BECD74FB90FD5BC57A1E8574B6BA9EA11DB4CC824546
          56395248CF03D41FCAA87FC2C5F097FD06A1FF00BE1FFC2BCCBE347FC8E369FF
          0060F4FF00D19252785FE159F127876D7561AC8B7F3F7FEEBECDBF6ED72BD778
          F4CF4ACDD49F338C51E852CAB051C2431388A8E3CDF9EBE4FB1E9DFF000B17C2
          5FF41A87FEF87FF0A3FE162F84BFE8350FFDF0FF00E15C47FC28F6FF00A1847F
          E017FF006747FC28F6FF00A1847FE017FF00674F9AAF633FAAE4DFF3FE5F73FF
          00E44EF2DBC79E18BCBB86D6DF578649A6758E3408DF3313803A7A9AE8EBCB34
          9F83A74BD66C750FEDD127D96E239F67D931BB6B06C677F19C57A9D690727F12
          3CCC753C253925859B92EB7FF8647317FF0010BC2FA65F4D6577AA08EE216292
          208246DA7D32148AAFFF000B43C1DFF418FF00C969BFF88AF11F1B7FC8EFACFF
          00D7DBFF003AEEE0F82667B68A61E20C79881B1F63E9919FEFD62AA54936A28F
          6E79565B428D3A988A925CCAFF0082BED17DCEFECFC7BE16BE2043ADDAAE7FE7
          B1317FE8605744AEAEA195832919041C822BC3754F835ADDAA33E9F796D7A00F
          B87313B7D01C8FCC8AE5F44F12EB9E0FD4C2452CF12C527EFECA5242B72320A9
          E878C671914FDB4A2FDF467FD8986C4C1CB035B99AE8FF00A56FB8FA6E8ACED0
          B59B5D7F46B6D4ED09F2A65CED6EAA47054FB8208AD1AE84EE7CE4E12849C64A
          CD183A8F8D3C3DA4DFCB637DA9C505CC58DF1B2B1232011D07A11557FE162F84
          BFE8350FFDF0FF00E15E35F13FFE4A2EABFF006CBFF4525745A4FC1D3AA68F65
          A87F6E88BED56E936CFB26EDBB941C677F38CD73FB49B93515B1F49FD9380A58
          6A75B1151C7992FCAFD99E87FF000B17C25FF41A87FEF87FF0A3FE162F84BFE8
          350FFDF0FF00E15C47FC28F6FF00A1847FE017FF006747FC28F6FF00A1847FE0
          17FF00674F9AAF632FAAE4DFF3FE5F73FF00E44F41D3BC69E1ED5AFE2B1B1D52
          29EE65CEC8D558138049EA3D01ADEAF38F0BFC2A3E1BF11DA6ADFDB22E3ECFBF
          F75F65D9BB7232F5DE71F7B3D2BD1EB583935EF23CAC6D3C342A25869B946DBB
          EFF7232F56F11E8FA1796352D420B6690808AEDF31C9C67039C7BF415A608232
          0E41AF93B5191E6D4EEA491D9DDA562598E49393D4D7AC7C29F1B3CDB7C3BA94
          C59957FD0E473C903FE5993EC391EC08F415942BF34ACCF5F1D904B0F8655A9C
          B99ADFD3CBD3A9EB5451456E7CE05626A9E2ED0745BCFB26A3A8C76F3ED0FB19
          589C1E87815B75E05F183FE478FF00B758FF0099ACEA4DC23747A794E0A18DC4
          7B29B6959BD0F78B5B986F6D21BAB77124332092371FC4A4641FCAA5AC7F097F
          C89BA27FD7841FFA2C56C55A774705582854945746C28CD73FE2AF18699E13B1
          F36EDFCCB971FB9B643F3C87FA0F527F53C578A6BDF123C45AF4DB63BA7B1B7C
          FCB0DA31527EAC396EBF4F6A89D58C343D1C064F88C62E68E91EEFF4EE7BE6A1
          ADE95A5606A1A8DADA923216695549FA02726B01FE27783E372A758048FEEDBC
          A47E616BC834BF86FE29D6009BEC0D6D1B93992F1BCB3F52A7E6FC715D2DA7C1
          2BF75FF4CD66DE16F48616907EA56B3F6951ED13D0796657474AF88BBF2FF866
          7AB689AFE9BE22B37BBD2EE3CF812431336C64C3000E30C01E84556D53C5FA0E
          8B79F64D47518EDE7DA1F632B1383D0F02A9F827C22DE0FD36E2CCDF9BB59A6F
          341F2BCB0A70074DC7D057947C5FFF0091E0FF00D7AC7FD6AE73946177B9C782
          C061F178D951849F26AD3EBF97E87BAD85FDB6A76515E59CA25B794651C02030
          CE3BD59AE5FE1D7FC881A47FD726FF00D0DABA8AD22EEAE79988A6A9559535D1
          B5F730AAF7D7B069D61717B72DB60B78DA490E33850326AC57987C65D745B691
          6DA2C52112DD3F9B2807FE59AF407EAD83FF000034A72E58DCD3038578AC4468
          AEAFF0EA741A27C49D035ED5A1D36D0DCADC4D9D9E6C41549009C6727B035D7D
          7C956B713D8DDC1750318E685D648DB1D083906BEA4D0B56875DD0ECF5387016
          E230C541CED6E8CBF81047E159D1AAE7A33D4CEB2A8609C674AFCAF4D7BFFC1F
          D0D1A28A2B63C10A28A2800A28A2800A28A28039F9BFE4A1D9FF00D82A7FFD1B
          157415CFCDFF00250ECFFEC153FF00E8D8ABA0A4BA9BD6F861E9FAB0AF3CF8B5
          E246D27404D32DA4DB737E4ABE3AAC43EF7D33903DC6EAF43AF0ED5E1B5F197C
          47D74EA3733C361A55ACAC4C40160B0E010323FBC59AA2AB6A365D4EFC9E8C27
          88F6B57E186AFF0045F79E6B5DAFC28FF91FED3FEB94BFFA01AE2ABB5F851FF2
          3FDA7FD7297FF4035C54FE347DD669FEE557FC2FF23BEF8D1FF22859FF00D7FA
          7FE8B92BC32BDCFE347FC8A167FF005FE9FF00A2E4AF0CABAFF19C1C39FEE2BD
          585773F09B4DB9BBF1BDBDE4484C1648EF33E381B9195467D493D3D01F4ACAF0
          DF81F5BF12CB1B5B5B34366C7E6BB986D403D47F7BA741F8E2BDBF4FB2D07E1D
          F86F125C2C3083996793EFCCFF0041C93E8076FC4D3A54DB7CCF62739CCE9C29
          4B0D4BDE9CB4B2D6D7FD7C8CDF8B57F15AF81A7B6623CCBB9638D077E18393FF
          008EFEA2BE7EAE9BC6FE2D97C5BAD79E15A3B28014B6898F207763DB71C0CFD0
          0E719AE66A6ACF9A5747564B8296130AA13F89BBBF2FEAC7AC7C14D5425CEA7A
          4C92B66455B8850FDDC8F95CFD4E53F2F6AE37E217FC8FBABFFD761FFA08AA5E
          13D5BFB13C55A6EA0582C71CC04848E88DF2B7FE3A4D69FC4B8D63F887AAAA0C
          02D1B7E263427F534DCAF4ADD99953C3FB2CD65516D385FE69A4FF0043DFF41F
          F91774CFFAF48BFF004015A15CB69BE32F0BDB6976907F6DD9AF970A260CBC8C
          281567FE138F0BFF00D076CBFEFE8AEC5256DCF85A986AEE6DF23FB99D0515CF
          FF00C271E17FFA0ED97FDFD156F4FF0013689AADD7D9AC353B6B99F696D91BE4
          E07534F997733961AB455E50697A32EEA1FF0020DBAFFAE2FF00C8D7CD5E09FF
          0091DF46FF00AFB4FE75F4D4A8B242F1B8CAB29047A8AF9A7C07179DE3AD1D73
          8C5C06CE3D013FD2B0ADF144FA1C85FF00B2E27D3F491F4CD14515D07CC05145
          1401E15F1A3FE471B4FF00B07A7FE8C92BD17E177FC93BD2FEB2FF00E8D7AF3F
          F8D48A3C4D61263E66B3009F60ED8FE66BA9F879E2AD074DF0369D697BAB5AC1
          709E6EF8E47C15CC8C47E8457341DAABB9F578B84AA64D454137AF4FFB78F47A
          2B9FFF0084E3C2FF00F41DB2FF00BFA28FF84E3C2FFF0041DB2FFBFA2B7E65DC
          F9CFAAD7FE47F733A0A2B0E0F18F872EAE22B78359B392695C2222C992CC4E00
          1F8D6E534D3D8CA74E74DDA69AF53E64F1CA347E38D6558609BA66FC0F23F435
          F49E9FFF0020DB5FFAE49FC857CE5F10FF00E47ED5FF00EBB0FF00D0457D216F
          1F936D1440E42205CFAE056147E291F499EBBE170DFE1FD224B5E33F1AF4EB78
          6FF4BD4234559EE1248E520E3704DBB4E3FE04467E95ECD5E03F153C516DE20D
          760B5B19165B5B156512AF477623760F71F2819FAF6C55576B93539387A9D496
          3A3286CAF7FBBFCCEB3E09DC48DA3EA96C48F2E3B8591463BB2E0FFE822BD4AB
          8AF861E1E9F41F0A86BB88C57579279EE8C30C8B80154FBE0671D46EC1E95DAD
          5D34D412671E6B521531B5250DAE7CE5F13FFE4A2EABFF006CBFF45257BAF84F
          FE44ED13FEBC20FF00D16B5E21F155153E205F15182E91337B9D807F202BD4FC
          35E31F0E5AF85B48B79F59B38E68ACA147469002AC10020FE358D3695495CF6F
          34A73A997619422DE8B65E47694573FF00F09C785FFE83B65FF7F451FF0009C7
          85FF00E83B65FF007F456FCCBB9F39F55AFF00C8FEE67414563D978AB41D4AF2
          3B4B2D5AD67B8933B2347C96C0C9FD01AD8A69A7B194E9CE0ED3567E67CCBE1E
          B78AEFC7B656F3C6B2432DEEC746190CA5B041ABBE38F085CF83F5A12DBF99F6
          095F7DACE09CA1EBB49ECC3B7A8E7D71068005AFC4BB18DDB3B35311E40EA7CC
          C57D03AFE8767E22D1E7D3AF5331C83E5603E68DBB30F71FFD6EF5CB0A7CF17D
          CFB5C7E632C162A949EB071575F3DFD51CEFC3AF1A0F146966DEEDD46A96A009
          40E3CD5E81C0FD0E3A1F4C815DAD7CCB736DACF803C54BCF95756EDBE37C7C93
          274CFBA919047D47515F40F85FC4769E28D162D42D72A7EE4D11EB1B8032BEFD
          783E86B5A552FEECB747879C65D1A2D62286B4E5DBA7FC0EDF71B35E05F183FE
          478FFB758FF99AF7DAF02F8C1FF23C7FDBAC7FD68AFF00017C37FEFBF27FA1EC
          BE12FF00913744FF00AF083FF458A5F136BD0786F40BAD4A62A4C6B88909C799
          21FBABF9FE4327B52784C63C1DA27FD7841FFA2D6BCCFE35EA8ED7BA6E92ACC1
          123372EBD9892557F11B5BFEFAAA94B96173970B8458BCC3D93DAEEFE88F3E45
          D57C61E2403735CEA17B2753C0FF00EB2803F002BDF3C21E05D37C296EAE8827
          D4197F7974E39F70BFDD1FA9EF5C8FC17D1234B2BDD6E45CCB23FD9A2CF65182
          C7F1240FF80D7ABD67461A733DCEFCF73193A8F094B4847476EBFF0001760A28
          A2BA0F9B0AF01F8BFF00F23C1FFAF58FFAD7BF5783FC65454F19DBB28C17B146
          6F73BDC7F202B1AFF01EF70DBFF6EF933D43E1D7FC881A47FD726FFD0DABA8AE
          77C068B1F817470A300DB83F89E4FEA6BA2AD23F0A3CAC63BE22A3FEF3FCC64D
          2C7042F34AEA91C6A59D98E0281C926BE6ED427B9F1EF8F8F901BFD32711C208
          FF005710E0123D946E3F8D7AB7C59D7974BF0A9D3E3722E7503E58C75118C173
          FC971FED5737F0634166B8BCD7A65F9157ECD06475270588FA0C0CFB9AC6A7BF
          3503DDCA92C1E0EA63A5BBD23FD7AFE4C77C5CF0C4569A6695A858C1B61B48C5
          9C98C9C20FF579FA7CC33EE297E0BEBA035F68734BD71716EA7F2719FF00BE4E
          3FDE35EA1ACE9706B5A35DE9B703F77711942719DA7B30F70707F0AF9AACEE2F
          7C25E29494AEDBBD3EE0ABAE78383865CFA1191F434AA7B935237CBA5FDA397C
          F0927EF4755F9AFC74F467D494557B1BC8351B0B7BDB67DF04F1AC91B6319523
          22AC5749F26D34ECC28A28A04145145001451450073F37FC943B3FFB054FFF00
          A362AE82B9F9BFE4A1D9FF00D82A7FFD1B15741497537ADF0C3D3F56213804D7
          CFBE1796493C23E37BF1FF001F4D0C2A5F273B6476DE3F115F419E95F3CF84B5
          6B2F0E4FE24D235B3225B5C5B4903AA265DA45254281D8FCCDC9380475AC6AEE
          AFE67B39326E8D6E5577783B774A5767155DAFC28FF91FED3FEB94BFFA01AE2A
          BB5F851FF23FDA7FD7297FF4035CB4FE347D8667FEE557FC2FF23BEF8D1FF228
          59FF00D7FA7FE8B92BC7344D4C68FAC5BDFB5A4176B1365A09D032B8FC7A1F43
          D8E2BD8FE347FC8A167FF5FE9FFA2E4AF0CAD2B3B4EE79DC3F08CF2FE596CDB3
          EABD1758B1D7B4B8750D3E5124120FC50F7561D88AF20F8ADE16D56DB507D6FE
          D33DEE9D2363F78C49B524FDDC76427A11F43CE09E63C1DE33BEF08DF978819A
          CE53FBEB62D80DEE3D1BDEBE83D3B51D33C51A28B8B629736770851D1C03DB95
          61EBEA2B64D568D9EE78956856C9714AB457341FE5DBC9FE7F7A3E57A2BBAF1F
          FC3F9BC333B5FD82B4BA4C8DD7A9B724F0ADEA3D1BF03CE33C2D724A2E2ECCFB
          3C362696269AAB49DD3FEAC15D77C4EFF9287AA7FDB2FF00D149585A059FF68F
          88B4DB32BB84D731A30C762C33FA66B6FE263AC9F10F552A72018C7E222407F5
          14D7C0FD4C2524F1D08F684BF171FF00237A0F833ABCF6F1CCBA9D880EA18021
          F8C8CFA53FFE14A6B1FF00414B1FC9FF00C2BD8B49904DA3D8CAA080F6F1B0CF
          BA8AB95D7EC207C64B8831E9B5CCBEE4788FFC294D63FE82963F93FF0085749E
          07F86FA8785BC43FDA3737B6B347E4B47B63DD9C9C7A8F6AF4AA29AA304EE8C2
          B6778CAD4DD39C959F9211BEE9FA57CA1A6595E6A5A8C167A7A17BB94E235570
          A49C7A9200AFABDBEE9FA57CD3F0FDD63F1E68E58E079F8FC48207EB515D5DC5
          1E9F0ED474E8E226B7493FB948D1FF00857DE3BFF9F09FFF000323FF00E2E8FF
          00857DE3BFF9F09FFF000323FF00E2EBE86A29FB08F7673FFAC789FE487DCFFC
          CF9E7FE15F78EFFE7C27FF00C0C8FF00F8BAF64F02E9F7FA5783AC2CB538DA3B
          C8FCCF3159C39199188E4120F045745455C29283BA38B1D9B55C65354E718A49
          DF45FF0004F11F8D5FF23169DFF5E9FF00B39ACCF0F7C2FD4BC45A15B6AB6F7F
          691453EEDA9206DC36B15E703DAB47E353A9F12E9E99F9859E48F62EDFE06BD0
          7E17FF00C93BD2FF00EDB7FE8D7AC7954AAB4CF7658CAD83CA28D4A2ECDBB7E6
          701FF0A5358FFA0A58FE4FFE147FC294D63FE82963F93FF857B7515A7B081E4F
          FAC38FFE65F723C7F46F843AAE99AEE9F7F26A364E96D731CCCAA1B242B0240E
          3DABD828A2B48C1476383198EAD8C929567768F9ABE21FFC8FBABFFD751FFA08
          AFA4F911FCA0138E0138AF9ABC7EEB278F3586539027DBF88001FD457D236921
          9ACE095B1B9E35638F7158D1F8A47B59EAFF0065C2FF0087F489E0FE36F1F788
          EFEEAE7499E13A54484C72DB46C4BB71D19FB83ED8041EF5D07C32F015A4D0DB
          788EF6E22BA39DD6F0479223607ABFFB408E9D075E6BA7F881E048FC53682EEC
          C2C7AA40BF231E04CBFDC63FC8F6FC78F27F0678BEF7C17AC3C73C723593BECB
          BB661865238DC01E8C3D3BF43D8887EED4BCF5476D19AC5E5CE9E06D09AF892E
          BF3DF5EFF23E8FA2ABD8DEDB6A3650DE5A4CB35BCCA19245E84558AEB3E35A69
          D99F3D7C57FF0091FEEFFEB945FF00A00ABBA6FC22D5753D2ED2FE3D46CD23B9
          85265560D90194100F1EF543E2B3AB7C40BD00E4AC7103EC7603FD457B7F84FF
          00E44ED13FEBC20FFD16B5C918294E573EC7158EAF83CBF0F2A2ED74BA791E53
          FF000A5358FF00A0A58FE4FF00E147FC294D63FE82963F93FF00857B7515AFB0
          81E47FAC38FF00E65F723CB3C23F0BB52F0EF8A2CF55B8BFB4962837EE48F76E
          3B91978C8F7AF53A28AD2305156479D8BC655C5CD54ACEEED63E6AB0FF0092A1
          6BFF0061A4FF00D1C2BE95AF9AAC3FE4A85AFF00D8693FF470AFA56B1A1D4F6B
          88FE2A3FE1395F1D783A2F16E90235658AFADF2D6D2B74C9EAADEC703E8403EC
          7C5BC2FE21BFF037895FCE8E41187F26F6DBB900FE5B87241FA8CE0D7D275E67
          F14BC0EDAAC0DAEE9B183790478B8894732A0FE21EAC07E607B005D583F8E3B9
          9E4F8F824F0589D69CBF07FD7DCF53D0F4FD42D754B082FACA659ADE65DE8EBD
          C7F43D88EC6BC2FE2FFF00C8F1FF006EB1FF005A5F871E3B6F0F5DAE977EF9D2
          E77E1D8FFC7BB1FE2FF74F71F8FAE5FF001911478CADDD7FE5A58C6C4E7AFCEE
          3F90151526A74EE77E5B809E0734E496CD3B3EEBFCFB9EC5E14FF913B43FFB07
          C1FF00A2D6BC83E33FFC8E56BFF5E09FFA324AF5EF099CF83B44FF00AF083FF4
          5AD705F1A34679AC2C7588973F676304D819F95B9527D00208FAB0AD2AABD33C
          FCA6AC69E69EF757246EFC2696393C056CA806E8E69564E7BEECFF00222BB8AF
          17F837E224B6BDB9D0676C0B93E75B9FF6C0F987E2A01FF809F5AF68AAA4EF04
          71E73425471B514BABBAF98514515A1E605784FC68FF0091C6D7FEBC13FF0046
          495EED5E11F1998378CAD802095B040707A1DF25635FE03DEE1CFF007E5E8CF5
          7F037FC88FA37FD7AA57407A573BE037593C0BA3953902DC0FC4707F5154BE24
          7880683E11B808D8B9BC06DA2C1C11B81DCDEBC0CF3EA455A6942E79D3A12AD8
          C9528EEE4D7E278CF8F7C423C49E2BB9B989B75AC3FB8B73EA8A4FCDF8924FD0
          8AF44F0FFC49F09E83A0D969710BE2B6F1852C201F337566FBDDC927F1AE27E1
          EF8262F175DDDB5EC9345656EA0168480CCE7A004823A039FC3D6BD07FE14BF8
          73FE7F755FFBFB1FFF00115CF4D547EFAEA7D4663532D846383ACE56876F4EBE
          7FE64FFF000B87C31FDDBEFF00BF23FF008AAF2DF1FEB1A3EBFE201A9E93E72F
          9B1813ACB1ED3BC700F53D4607E1EF5E97FF000A5FC39FF3FBAAFF00DFD8FF00
          F88AADA87C18D2174EB86D3EF2FCDE08C9844D22142F8E01C20E0FD6AA71AB25
          667360B1594E16B2A94A524F6D7617E0E6BCB75A34FA2CAE7CEB4632440E3989
          8F38FA3673FEF0AF4EAF97FC2BAE4BE18F13DADF90C1237D93C78E4A1E1863D4
          751EE057D3D1C892C49246C191D432B03C107A1ABA12BC6DD8E0E20C1FB0C57B
          48FC33D7E7D7FCFE63A8A28AD8F0828A28A0028A28A00E7E6FF928767FF60A9F
          FF0046C55D0573F37FC943B3FF00B054FF00FA362AE8292EA6F5BE187A7EAC2B
          E78F8A1A23691E33B8995316F7DFE9119038DC7EF8FAEEC9FA30AFA1EB8AF899
          E1893C45E1BF32D63DF7D644CB12819675C7CC83DCE01F72A077ACEB479A27A1
          92631617169C9FBB2D1FF5EA7CF35DAFC28FF91FED3FEB94BFFA01AE2ABBBF84
          71ABF8EA36209296F230F63C0FEA6B929FC68FB8CD1FFB155FF0B3B8F8D1FF00
          22859FFD7FA7FE8B92BC32BDD3E340FF008A3ECCFF00D3FA7FE8B92BC2EAEBFC
          670F0E7FB8AF5615BDE14F15DFF84F54FB55A1F3217C09EDD9B0B2AFF423B1ED
          EE0907068AC5369DD1ECD5A50AD074EA2BA67D43A5EA9A578C7C3E67842CF697
          0A639A271CA9C728C3B1E7F911D8D789F8F7C0537852E05D5A979B4B95B6A3B7
          2D1B7F75BFA1AC7F0AF8A6FBC29AB2DDDA92F0B713DB96C2CABFD08EC7B7D320
          FBDDD788340D53C1EDA95C62E34DB94D8612B97763C79617FBF9E303BF39EF5D
          578D58EBBA3E4254B1192E253A5795393DBF4F5EDDCF25F847A49BFF0018FDB1
          95BCAB089A4CE320BB7CAA0FE058FF00C06B1FE217FC8FBABFFD761FFA08AF6C
          F03785A2F0D69531F20437179279B247BF79897F823DDFC5B413CFA935E4BE3A
          F0EEB777E36D527B6D1F509A179415923B576561B4742060D4CE0E34D23B3058
          F862334A952F68A8D95FD57EB73DCF41FF0091774CFF00AF48BFF4015A15F3BC
          571F11A085228A3F10A468A15544128000E83A5116A5F116E2149A16F1049148
          A191D2290AB03C82081C8AD1575D99E5CF209CA4E5ED63F79F44515F3D7DB3E2
          57F77C47FF007E25FF000AE87C0D73E3793C6360BAC0D6BEC07CCF37ED314823
          FF0056D8C9231D71F8D3559376B18D6C8E54A9CAA7B58BB26F73D72FC91A7DC9
          070444C411F435F357827FE477D1BFEBED3F9D7D2B7CA5EC2E55412C6260001C
          93835F3EF843C39AE5B78C3499EE345D462852E919E492D5D55467A924715359
          7BD13A7239C6386C4293B5D7E8CFA2A8A28AE83E6428A28A00F0AF8D1FF238DA
          7FD83D3FF46495E8BF0BBFE49DE97F597FF46BD711F16F45D5752F15DACD63A6
          5EDD44B628A5E0819D41DF21C640EBC8FCEB99B25F881A6DA25A595B6BF05BA6
          76C71DBCA1464E4F18F526B939B92A3763ECDE1A38CCAE9518CD26B5D5FAFF00
          99F46D15F3D7DB3E257F77C47FF7E25FF0A3ED9F12BFBBE23FFBF12FF8569EDD
          76679BFEAFCFFE7F43EF3E85A2BC134BBCF888756B31703C41E419D3CCDF0CA1
          76EE19CF1D315EF5DAB484F9BA1E6E3F00F0728A7352BF63E63F1B7FC8EFACFF
          00D7DBFF003AFA574FFF00906DAFFD714FE42BE7DF17F8735DB9F186AD3DBE8B
          A8CB0BDD3B2491DABB2B0CF5040E6BE83B152B616CAC0861128208E41C0ACA8A
          F7A47AF9E4E32C361D45DECBF444F5E69F12BE1FAEAD0CBADE9517FA7C6B99A1
          41FEB940392001CBFF003C7AD7A5D15B4A2A4ACCF0B098BA985AAAAD37AAFC7C
          8F9DBC05E39B8F0B5FADBDC3B3E93337EFA3C64C67FBEBFA67D47BE2BE83B5BA
          82F2DA3B9B6956586550C9221C8607B8AF26F89DE0048E39BC43A4438032F790
          20E31DE403F9FE7EB5A5F0934BF1158D8C935F398749954B416D28F9CB123E70
          3F8548CFD7AE3B9C69B9465C8CF77348617198758EA4D465B35DDFF9FE68F3FF
          0089FF00F251755FFB65FF00A292BDD7C27FF227689FF5E107FE8B5AF1BF88BE
          1FD6AFBC79A9DC5A6917F7103F95B658AD9DD5B1120382063A8354A097E225AD
          BC56F045E218E18902222C1280AA06001C7A54465C936EC7762308B1B80A108D
          48A714B77E47D13457CF5F6CF895FDDF11FF00DF897FC28FB67C4AFEEF88FF00
          EFC4BFE15A7B75D99E67FABF3FF9FD0FBCFA168AF14F085D78EDFC59A72EA835
          CFB1190F9BF688A4098C1EA48C75AF6BAD213E6573CBC7609E12A2839295D5F4
          3E63D0D8BFC41D359892C75588924F24F9A2BE9CAF9D744F0E6BB178E34EB893
          45D45214D4A27691AD5C28512024938C631DEBE8AACE82D19EBF11CE329D2E57
          7F7428A28ADCF9B3C23E27F828E8B7EDAC5844069D72FF00BC441C4321F6ECA7
          B7A1E38E2B85BDD46E7508ED12E642FF0065805BC44F242066207E1B881EC00A
          FAA6FAC6DB52B19ACEF2159ADE65292237423FA7D6BE7FD57E1B6B96FE279B4B
          D3ACA6B9B7FBF0DCB6026C3D37374047208EA71C0E457255A4D3BC7A9F6D92E6
          D4EAD3F6788694A1B37DBFCFF33DC3C25FF226E89FF5E107FE8B157B51B0B7D5
          34EB8B0BA4DD05C466371DF04751EFE951687652699E1FD3AC2664696DADA385
          CA1CA92AA01C67B7157EBA92D2C7C7D59FEFA538BEADAFBCF9A3C4FE17D4FC17
          AD286671107DF69769C6EC1C8208E8C38E3FA60D7A0F847E2EC33AA5A789310C
          A000B788BF2BFF00BEA3A1F71C7B0AF4CD474DB3D5AC64B3BFB749EDE4186471
          FA8F43EE39AF2DF107C190CED3E8178A80927ECD744E07B2B819F6C11F8D73BA
          7283BC0FA3866583CC292A58F5692DA4BFAD3F23D56D6F2DAFA059ED2E22B885
          BEEC9138753F88A9EBE6C93C31E32F0DDC178AC752B77C1CCB6659863DDA3271
          F8D491FC45F18D9AF93FDAF3023B4B0A337E6CA4D3F6F6F89193E1D7535C3558
          C97F5DAE7D1F5E03F17FFE4783FF005EB1FF005AED7E16789F5BF12CBAA1D5AF
          FED096EB108D7C944C16DD939503FBB5CCFC53D0F57D43C6267B2D2AFAE61FB3
          46BE6436EEEB9E78C81455973D3BA2B28A0F05993A555ABA5F2D6CFAD8F47F87
          7FF220691FF5C9BFF436AF20F899E223AF78AE48617DD69639822C1E19B3F3B7
          E278F70A2BD53C3F0EB1A7FC2DB786CACDC6AC96CCB14330F2D95CB1C121BD33
          9C1EB5E5BF0F7C2F737DE39862BEB59614D3C8B89D2442A411F70104776C1C77
          00D2A97718C17535CB7D8D2C46231936BDC6ECBE7BFE8BD4F64F04F87D7C37E1
          6B4B264DB70C3CDB83EB230191F870BFF01AE868A2BA12B2B23E62AD59559BA9
          3DDBB8514514CCCF9F3E2A682BA3F8B9EE61522DF50537038E0499F9C7E786FF
          008157A37C27D7BFB57C282C6572D73A71111CF398CE4A1FC815FF0080D5AF89
          BE1FFEDCF08CF2C51EEBBB2FDFC58EA40FBE3F15C9C7720579F7C28D3B5F87C4
          31EA36D6720D324431DC4B27CAACA7A15CFDE2180E9EE38CD7359C2AE9D4FAC7
          569E3B28FDE492953EFE5B7DEB4F53DD28A28AE93E4C28A28A0028A28A00E7E6
          FF00928767FF0060A9FF00F46C55D0573F37FC943B3FFB054FFF00A362AE8292
          EA6F5BE187A7EAC28A28A660792FC49F874D3BBEB5A15AB34CC4B5DDBC7CEEEF
          BD47AFA81D7AE3AE7C7ABEBBAE4FC49F0F342F11969A480DADD9C9FB45B00A58
          FF00B43A373F8FBD73D4A177789F5195F107B082A389574B67D57AF73E70A2BB
          FD57E11788ACA56FB0F91A843FC2C8E237C7BAB1C0FC09AE667F09788ED99D65
          D0F511B3EF32DB3B28FC40C57338496E8FAAA398616B2BD3A89FCFF431A8AD8B
          7F0A7886E99043A1EA0C1FEEB1B670BF9918AE9F49F843E22BD957EDFE469F0F
          F133B891F1ECAA707F12285093D90EB66185A2AF52A25F3D7EEDCE0554B30550
          4B1380077AF4FF0005785755B097CD9CBC5AA5BB2DEDAE95743114E9B705B39C
          07F9B00E3287191CD7A1786BC01A1F8676CB6F01B8BC1FF2F3718671FEEF65EF
          D39F526B6B55D2A1D56D9519DE19A33BE0B888E1E17FEF29FD08E84641AE8850
          B6ACF96CC388235FF75495A2F76FFCBB7E3E81A46AD6DAC59F9F06E4656292C3
          20DB242E3AA30EC47FF5C706AFD718AB7F25FBED115AF892DD433E3E58752887
          009FE5DCA13DC1E7A3D27568756B56923578A68DBCB9E09061E171D5587F5E84
          608ADD33E76B51E5F7A3B7E5FF0003B3FD4BE7A1AC8F09FF00C89DA27FD7841F
          FA2D6B5CF43591E13FF913B43FFAF083FF0045AD3EA4C7F832F55F933628A28A
          66250D6B568342D1EE753B9491E1B750CCB10058E481C6481DFD6B8B8FE31F87
          59E3DF67A9C51BB63CC785368F53C393C7B66B6FE22FFC881ABFFD725FFD0D6B
          CB2EAF7C4B3FC2FB4B1FEC451A381B8DEA90EC555F39DA0E579EE7B563526D3B
          23DDCB30342BD1E6A8B572E5F8AD656E9DDF91EEF6F3C5756D15C4122C90CA81
          D1D4E432919047E15256178327B19FC21A59D3A5792D92058D5A45DAD95E0EE1
          CE0E41EE7DB35BB5AA77573C6AB0E4A928766D0515E4FE33D50DA6BD7C63F1F4
          B632A0062B08EDDDD54851F2B32703273D41201E6BB0F87FE20B9F1278521BCB
          DC1BA47686570301C8FE2C0E9C119F7CF4A9534E5CA75D6CBEA53C3AC45EE9DB
          A35BABF54AFF002B9D4514579A788EFF00C4579F11D3C3DA56AE6C60B8B40CCC
          5036C1C9665E33BB03D47D45394B94C70D86788938A695936DBECBD2E7A5D15E
          69A0EA3AFF0087FE21C7E17D5B526D4EDEEE132C334830CB85639EE7F8186327
          B1AF4BA232E60C4E19D092574D3574D754C28AE3BE22F8B2E3C2DA1C6D64AA6F
          6E9CC71330C840064B63B9E981EFDF18AA5A6785FC650DD595F5DF8B6477322B
          5D5A98F2813AB2A9E467B7DD1FA5273D6C91A43077A2AB549A8A77B5EFADB7D9
          33BEA28AE67C79E2693C2DE1992F6040D73248B0C1B86543104E4FD0293F5C55
          3692BB39A8D29D6A8A9C377A1D3515E49A95AF8DFC3DE1D4F134BE2592699364
          93D93C79450C40C7A1C646700639C1E2BD3745D49758D12CB5154D82E6159766
          73B491C8CF7C1E2A632BBB58E8C460DD182A9192946ED5D5F75D3548BD451455
          9C614515C078FF00C4FAA5A6A9A6F87342758B50BF20B4EC3EE296DA31C1C721
          B271C01C52949455D9BE1B0F3C45454E1F8EC92DD9BDE22F14C7E1FD4F45B06B
          569E4D52E042AC1F688FE64524F073F7C71ED5D0D78BEBFA26B1A378BFC20BAA
          6BB26AAB2DF298CC8854C64491EE1D4E41CAFE5D2BDA2A6126DBB9D38CC352A3
          4A94A9BBF32776AFAEB6EA14561F8BB5EFF846BC3577A9AC624963016246E85D
          8E067DB9C9FA57987F6A6B8BA18D7FFE13FB36D43609FF00B33CD8F18EBB719C
          6EC7F0EDEBC75A25351760C2E5D3C4439EE92BD95EFABF927F7BD0F6BA2B23C2
          DAD7FC243E1AB1D50A0469D0EF51D030255B1ED90715AF549DD5CE2A909539B8
          4B75A0514514C830BC51E2BD3BC27629737E5D9A56DB1431005DCF7C6481819E
          4D667873E20D9F88B57FECC5D36FAD6E0C4651E720DBB78E4F391D4638C553F8
          97E19D4F5BB7D3B50D202C975A6C8CE212065C1DA7233C120A0E0F5CFE064F08
          F8F6DF5EBF1A66A564D61AE46ACA6374C06EEC173C83C64A9F4EA7159393E7B3
          3D6861A93C17B58479A5ADF5F87B69D55BA9DC514561F8BE5F27C3772DFDB234
          8395FF004BDBB8A8C8C803A9246700735A376573CCA70E79A877FEBA6A6E515E
          37E1DF16DDD9F8CF4ED3E1F13C9AF69F78DE5CBE6DBB46D1B1C818DFCF5C1E0F
          3CF1D2BD929426A5B1D38CC14F092519F5575BAFC1A4C28C0AC5F16DDCF61E13
          D52EED65314F15BB3238EAA477AF3948BC6B7BE0C1E2A5F14481A284CAB6A918
          0A634EA58F42DC13820E7D7D14A7676B1586C0BAF0E7735157E5D6FBFC933D83
          14561F83F5A97C43E14B0D52740934C84385E85958A923EA573F8D6E55277573
          92A539539B84B74EDF70526D018B60648C6715E476775E29F19C9AD6A769E22F
          ECC82C646582D538180091BC8230381F31CF7E30315D17C29D4AF757F0DDD5DD
          FDF5CDD4DF6C743E73060BF2AB7CBC640F9BA67031C62A2352EED63BEBE5B2A3
          4A53734DC6C9A57D2FAF6B1DDD1457966A575E27D67E276A7E1ED335B92C6CE3
          892466081BCB5D919257A1C9661DC7535529729CD85C33C4392E65151576DDF6
          D3B5FB9EA74566681A75E697A4C76B7DA8CBA85C2B316B89060B649C71938E31
          DCD691E0552309A519349DD7714804608C8A40001800002BC760F11EA3E31BEB
          CBA6F185B7876C227296D0348AAEE3D48DC0F4C7392339C5757F0E3C4B7DADC1
          A969FA8CF15D5CE9B284FB5C441599096C1E383F74F3C6411DF24E71A89BB1E8
          57CAEAD0A6E726AF1B5D6BA5FE567E766771451456879A145145001451450073
          F37FC943B3FF00B054FF00FA362AE82B96D4F50B2D37C7B6535FDE5BDAC4DA64
          C81E7942296F36238C93D783F9568FFC259E1CFF00A0FE97FF008191FF008D4A
          69367554A539460E316F4FD59B14563FFC259E1CFF00A0FE95FF008191FF008D
          1FF0967873FE83FA5FFE0647FE34F99197B0ABFCAFEE3628AC7FF84B3C39FF00
          41FD2BFF000323FF001A3FE12CF0E7FD07F4AFFC0C8FFC68E641EC2AFF002BFB
          8D8A2B1FFE12CF0E7FD07F4BFF00C0C8FF00C68FF84B3C39FF0041FD2BFF0003
          23FF001A39907B0ABFCAFEE3628AC7FF0084B3C39FF41FD2FF00F0323FF1A3FE
          12CF0E7FD07F4AFF00C0C8FF00C68E641EC2AFF2BFB8D8A2B1FF00E12CF0E7FD
          07F4BFFC0C8FFC68FF0084B3C39FF41FD2BFF0323FF1A39907B0ABFCAFEE27D6
          7488B57B311991A1B88CF996F729F7E1907461FD4771915CF62EF50BC0730D87
          8AEC5318C9F26F21CFE6D193FF000246FF00C7B6BFE12CF0E7FD07F4AFFC0C8F
          FC6B3759D4FC2FABC11FFC547A6DBDDC0DE65B5D47791EF85FD473C83D0A9E08
          E0D4BB1D341558FBB28BB7A6DFE69F546C693ABC7AA5B3E636B7BB88ECB9B590
          8DF0BFA1C763D41E84608A87C27FF227687FF5E107FE8B5AE6ECB508FC4570D2
          E9F7B651F8A34F4DAED049BE0BA8B3D0919CC67FEFA463FF007D755E1EB59AC7
          C35A5DA5C26C9E0B48A291320ED654008C8E0F2284EEC55E9AA5071D9B6B4F93
          FBD6BA334A8A28AB388E7FC6F6373A9783752B3B385A6B896301235EAC77035C
          15BFFC2709E0C8FC316DE18F2C342F03DCC932F28D9CF19001C123A9AF5DA2A2
          50BBBDCEFC3E39D1A7ECF91495F995EFBEDD1A303C1BA049E1AF0C5AE9B34AB2
          CC9B9E465FBBB98E481EC338CF7C678E95BE68A2A92B2B2392AD49559BA93DDB
          BB3C8F48B7F15784EFB58B1B5F0D7DBEE6F66668751DE00C1CE0B139C8EF8247
          24D747F0B74ED4B48F0EDD586A7652DB4B15DB15DE061D4AAF239E79079E9D2B
          B9A2A234ECEF73B71198CABD3941C1272B5DEB7BAF9D82B859B46D45BE2F5B6A
          E2D5CD82D998CCF9180DB5863D7B8AEEA8AB6AE7251AF2A3CDCBD535F79C36A7
          A36A337C5ED1B578ED5DAC20B368E49C11856DB2F1EBFC4BF9D7734514256B8E
          B579555152FB2ADF9FF99C67C48F0ADD789F4487FB3C837B6927991A16DBBC11
          8201E80F4209F4F7AA7A6F8A7C69757365673F849A1612A8BAB977C214CE18A8
          3800E391F31AEFE8A970D6E99B431B6A2A8CE0A495ED7BE97DF66BF1015CC78F
          7C35278A3C31259DBB0175148278031C066008C1FA8247D715D3D154D26ACCE7
          A356546A46A4375A9E49A9DD78E3C47E1E8FC36FE1B7B791F625C5E492615C29
          073E839009C139E702BD3746D39748D16CB4E46DE2DA158B77F7881C9FC4F357
          A8A98C6CEF737C4633DB41538C54629B7657DDF5D5B0A28A2ACE30AF3BF883E1
          CD626D6B4CF13683109EF2C4057873C95562C081C6472C08073C8C57A2515328
          F32B1D185C4CB0F51548ABF93D9A7BA3C9B51FF84A7C57E23F0DDEDC78626B0B
          7D3EED59D9A40C482E858907040017D3D6BD668A288C6D765E2715EDE318A8A8
          A8DEC95FABBF56CC1F18E82FE24F0C5DE99148B1CCE15A267CE03290467D8E31
          ED9AF3BD3E2D5ECAC20D326F86563737B1288BED6F147B5F1C02C76904E3A9DD
          D79AF62A294A177734C3E3E5469BA4E2A4AF7EAACFE4D7DC41676B6F65691DBD
          ADB456D0AFDD86240AAB93938038EA4D4F4515670B6DBBB0A28A2811CCF8BF53
          F11E96B653683A5ADFA6F6FB521EA178C00339E727919C62B95D2748D7FC4BF1
          06D7C4BAA692349B5B44DAB1B37CF2101B19EE4E5BAE00C0C57A85150E17776C
          EEA38DF6349C2105769AE6D6F67BF5B7E015C2FC4BD0F51D5AC34EB8D3ED45EF
          D8AE7CD96D0F4957E9DFA631D7E635DD515525CCAC6186AF2C3D55563BA3C8F5
          17F15EB9E24F0F6A92785E6B2B1B0B95510AB0771961B891F29030A3190071D7
          9AF5CA28A518D8D3138AF6EA31515151D15AFDEFD5B317C5B693DFF84F54B4B5
          88CB3CB6ECA883AB13DAB1B4CD26FE1F84CFA5496CCB7C74F9E2109233B98360
          7A7715D9D1438DDDC9A78A9429AA6968A4A5F34735F0FF004EBBD2BC11A7595F
          40D05CC5E66F8DB19199188E9EC4574B4514D2B2B1956AAEAD495496F26DFDE7
          836B1E11D6352F14EB93AE8B3DCA4978E15AD2EA28D42E49F9861B92361E7073
          D464F1E89F0CF59B1D47C3EF6765A6FD80D8BF97245BF7E49E776E2064920FE5
          556FBE14699757F73776FAA6A56CD72E5E5559430624E4F2464F39EA4D74FE1D
          F0D69DE17D38D9E9C8E159B7C9248DB9E46E9927FA0005650838CAE7B58FC7D0
          AF8554EF76AD6D1AB596B7BB6BD2C6C570DA5E8DA8C1F17B59D5E4B575B09ECD
          638E724619B1171EBFC2DF95773456AD5EC78F46BCA92925F695BF27FA0521E9
          4B453313C66CFC3FA9F83AF6F2CA6F06DB788ECDE4DF6F706256703DC956238C
          7CB81CE719AF46F085B18F49FB44DA05A68D77331F321B78D172A09D99DBD4E0
          F7EF9E066BA0A2A23051D8EFC56613C4C6D38ABF5777ADBCAF6FC028A28AB380
          28A28A0028A28A008A5B682720CB0C7211D37A838A67F67D97FCFA41FF007EC5
          58A281F335D4AFFD9F65FF003E907FDFB147F67D97FCFA41FF007EC558A281F3
          4BB95FFB3ECBFE7D20FF00BF628FECFB2FF9F483FEFD8AB14501CD2EE57FECFB
          2FF9F483FEFD8A3FB3ECBFE7D20FFBF62AC5140734BB95FF00B3ECBFE7D20FFB
          F628FECFB2FF009F483FEFD8AB14501CD2EE57FECFB2FF009F483FEFD8A3FB3E
          CBFE7D20FF00BF62AC5140734BB95FFB3ECBFE7D20FF00BF628FECFB2FF9F483
          FEFD8AB14501CD2EE431DA5B44E1E3B78918775400D4D451409B6F70A28A2810
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          51451400514514005145140051451400514514005145140051451401FFD9}
        mmHeight = 29369
        mmLeft = 4763
        mmTop = 0
        mmWidth = 68792
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LISTADO DE DONANTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 28310
        mmWidth = 48260
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 8731
        mmLeft = 2381
        mmTop = 34925
        mmWidth = 262996
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LUGAR DONACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 37306
        mmWidth = 35560
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 53446
        mmTop = 37306
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 76200
        mmTop = 37306
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'INDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 37306
        mmWidth = 35560
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 210344
        mmTop = 37306
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 233628
        mmTop = 37306
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 247915
        mmTop = 37306
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 37306
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SEXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 197644
        mmTop = 37306
        mmWidth = 10160
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Colecta'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 0
        mmWidth = 45773
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PacienteID'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 53446
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NOMBRE'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 76200
        mmTop = 0
        mmWidth = 64029
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'IDENTIFICACION'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 265
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 210344
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TipoSangre'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 233628
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RH'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 247915
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Colecta'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 794
        mmWidth = 44450
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'edad'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 181240
        mmTop = 265
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'sexo'
        DataPipeline = ppBDEPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 197909
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
  end
end