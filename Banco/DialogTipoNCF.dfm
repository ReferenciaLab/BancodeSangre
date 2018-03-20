inherited frmDialogTipoNCF: TfrmDialogTipoNCF
  Caption = 'Tipo de Comprobante fiscal'
  ClientHeight = 112
  ExplicitWidth = 431
  ExplicitHeight = 144
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Height = 112
    inherited btCancelar: TcxButton
      Left = 339
      Top = 76
      TabOrder = 2
      ExplicitLeft = 339
      ExplicitTop = 76
    end
    inherited btAceptar: TcxButton
      Left = 258
      Top = 76
      TabOrder = 1
      ExplicitLeft = 258
      ExplicitTop = 76
    end
    object cxComboBox1: TcxComboBox [2]
      Left = 49
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Text = 'cxComboBox1'
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Seleccione un tipo'
        object lcDialogItem1: TdxLayoutItem
          Caption = 'Tipo'
          Control = cxComboBox1
          ControlOptions.ShowBorder = False
        end
      end
      inherited lcDialogGroup2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
      end
    end
  end
  object qrNCF: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from BSNCF '
      '')
    Left = 160
    Top = 72
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
end
