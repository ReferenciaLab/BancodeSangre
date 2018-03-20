object frmAutorizacion: TfrmAutorizacion
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Comentario de Autorizaci'#243'n'
  ClientHeight = 293
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 264
    Width = 430
    Height = 29
    Align = alBottom
    TabOrder = 1
    object cxButton22: TcxButton
      Left = 320
      Top = 4
      Width = 100
      Height = 21
      Cursor = crHandPoint
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 0
      OnClick = cxButton22Click
    end
    object cxButton1: TcxButton
      Left = 214
      Top = 4
      Width = 100
      Height = 21
      Cursor = crHandPoint
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 1
      OnClick = cxButton1Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 41
    Width = 430
    Height = 223
    Align = alClient
    TabOrder = 2
  end
end
