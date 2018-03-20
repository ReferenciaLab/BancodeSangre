inherited frmDialogEditarEmpresa: TfrmDialogEditarEmpresa
  Caption = 'Datos de la Empresa'
  ClientHeight = 274
  ClientWidth = 531
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 537
  ExplicitHeight = 306
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 531
    Height = 274
    ExplicitWidth = 531
    ExplicitHeight = 274
    inherited btCancelar: TcxButton
      Left = 445
      Top = 238
      ModalResult = 0
      TabOrder = 9
      OnClick = btCancelarClick
      ExplicitLeft = 445
      ExplicitTop = 238
    end
    inherited btAceptar: TcxButton
      Left = 364
      Top = 238
      ModalResult = 0
      TabOrder = 8
      OnClick = btAceptarClick
      ExplicitLeft = 364
      ExplicitTop = 238
    end
    object DBEdit1: TDBEdit [2]
      Left = 86
      Top = 69
      Width = 130
      Height = 17
      TabStop = False
      BorderStyle = bsNone
      DataField = 'Codigo'
      DataSource = dsEmpresa
      TabOrder = 1
    end
    object DBEdit2: TDBEdit [3]
      Left = 86
      Top = 119
      Width = 408
      Height = 17
      BorderStyle = bsNone
      DataField = 'Nombre'
      DataSource = dsEmpresa
      TabOrder = 3
    end
    object DBEdit3: TDBEdit [4]
      Left = 86
      Top = 94
      Width = 200
      Height = 17
      BorderStyle = bsNone
      DataField = 'RNC'
      DataSource = dsEmpresa
      TabOrder = 2
    end
    object DBEdit4: TDBEdit [5]
      Left = 86
      Top = 144
      Width = 200
      Height = 17
      BorderStyle = bsNone
      DataField = 'Telefono'
      DataSource = dsEmpresa
      TabOrder = 4
    end
    object DBEdit5: TDBEdit [6]
      Left = 295
      Top = 144
      Width = 200
      Height = 17
      BorderStyle = bsNone
      DataField = 'Telefono1'
      DataSource = dsEmpresa
      TabOrder = 5
    end
    object DBEdit6: TDBEdit [7]
      Left = 86
      Top = 169
      Width = 200
      Height = 17
      BorderStyle = bsNone
      DataField = 'FAX'
      DataSource = dsEmpresa
      TabOrder = 6
    end
    object Edit1: TEdit [8]
      Left = 52
      Top = 37
      Width = 200
      Height = 17
      BorderStyle = bsNone
      TabOrder = 0
      OnChange = Edit1Change
      OnExit = Edit1Exit
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [9]
      Left = 85
      Top = 193
      DataBinding.DataField = 'NCFTipo'
      DataBinding.DataSource = dsEmpresa
      Properties.KeyFieldNames = 'Tipo'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsTipoNCF
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 7
      Width = 145
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'RNC'
          Control = Edit1
        end
        object lcDialogGroup4: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          object lcDialogItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Codigo'
            Control = DBEdit1
          end
          object lcDialogItem6: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'RNC'
            Visible = False
            Control = DBEdit3
          end
          object lcDialogItem4: TdxLayoutItem
            Caption = 'Nombre'
            Control = DBEdit2
          end
          object lcDialogGroup3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object lcDialogItem8: TdxLayoutItem
              Caption = 'Telefono'
              Control = DBEdit4
            end
            object lcDialogItem10: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Control = DBEdit5
            end
          end
          object lcDialogItem12: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'FAX'
            Control = DBEdit6
          end
          object lcDialogItem3: TdxLayoutItem
            Caption = 'Tipo NCF'
            Control = cxDBLookupComboBox1
            ControlOptions.ShowBorder = False
          end
        end
      end
      inherited lcDialogGroup2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
      end
    end
  end
  object dsEmpresa: TDataSource
    DataSet = DMB.qrEmpresas
    Left = 456
    Top = 40
  end
  object qrNCF: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from BSNCF '
      '')
    Left = 376
    Top = 32
    object qrNCFTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrNCFConsecutivo: TIntegerField
      FieldName = 'Consecutivo'
    end
    object qrNCFInicial: TIntegerField
      FieldName = 'Inicial'
    end
    object qrNCFFinal: TIntegerField
      FieldName = 'Final'
    end
    object qrNCFDiario: TBooleanField
      FieldName = 'Diario'
    end
    object qrNCFFijo: TStringField
      FieldName = 'Fijo'
      FixedChar = True
      Size = 11
    end
    object qrNCFDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object dsTipoNCF: TDataSource
    DataSet = qrNCF
    Left = 376
    Top = 64
  end
end
