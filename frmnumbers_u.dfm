object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 316
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Btnread: TButton
    Left = 56
    Top = 32
    Width = 75
    Height = 25
    Caption = 'read in '
    TabOrder = 0
    OnClick = BtnreadClick
  end
  object Btndesplay: TButton
    Left = 56
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Display '
    TabOrder = 1
    OnClick = BtndesplayClick
  end
  object Btnaveriege: TButton
    Left = 56
    Top = 94
    Width = 75
    Height = 25
    Caption = 'averige '
    TabOrder = 2
    OnClick = BtnaveriegeClick
  end
  object Btnsort: TButton
    Left = 56
    Top = 125
    Width = 75
    Height = 25
    Caption = 'sort '
    TabOrder = 3
    OnClick = BtnsortClick
  end
  object Btnodd: TButton
    Left = 56
    Top = 156
    Width = 75
    Height = 25
    Caption = 'odd numbers '
    TabOrder = 4
    OnClick = BtnoddClick
  end
  object memout: TMemo
    Left = 312
    Top = 59
    Width = 297
    Height = 249
    TabOrder = 5
  end
  object Pnlaverage: TPanel
    Left = 312
    Top = 8
    Width = 297
    Height = 41
    TabOrder = 6
  end
end
