object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 291
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Edit1: TEdit
    Left = 136
    Top = 48
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object Button1: TButton
    Left = 128
    Top = 136
    Width = 41
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button2: TButton
    Left = 128
    Top = 89
    Width = 41
    Height = 25
    Caption = 'C'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 223
    Top = 136
    Width = 42
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button4: TButton
    Left = 223
    Top = 89
    Width = 42
    Height = 25
    Caption = '='
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button5: TButton
    Left = 128
    Top = 184
    Width = 41
    Height = 25
    Caption = '*'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 223
    Top = 184
    Width = 42
    Height = 25
    Caption = '/'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 160
    Top = 223
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 7
    OnClick = Button7Click
  end
end
