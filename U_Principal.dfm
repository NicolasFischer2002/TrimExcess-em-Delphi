object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TrimExcess'
  ClientHeight = 219
  ClientWidth = 294
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
  object Lbl_Estado: TLabel
    Left = 79
    Top = 121
    Width = 132
    Height = 22
    Caption = 'Carregue a lista'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Btn_TrimExcessExemplo: TButton
    Left = 8
    Top = 154
    Width = 273
    Height = 57
    Cursor = crHandPoint
    Caption = 'TrimExcess Exemplo comentado'
    TabOrder = 0
    OnClick = Btn_TrimExcessExemploClick
  end
  object Btn_CarregarLista: TButton
    Left = 8
    Top = 8
    Width = 273
    Height = 49
    Caption = 'Carregar Lista'
    TabOrder = 1
    OnClick = Btn_CarregarListaClick
  end
  object Btn_TrimExcess: TButton
    Left = 8
    Top = 63
    Width = 273
    Height = 49
    Caption = 'TrimExcess'
    TabOrder = 2
    OnClick = Btn_TrimExcessClick
  end
end
