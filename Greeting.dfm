object Choice: TChoice
  Left = 0
  Top = 0
  Caption = #1048#1059#1096#1085#1099#1081' '#1087#1077#1081#1085#1090
  ClientHeight = 291
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 208
    Top = 48
    Width = 208
    Height = 30
    Caption = #1042#1089#1077#1093' '#1087#1088#1080#1074#1077#1090#1089#1090#1074#1091#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Part_1_Button: TButton
    Left = 280
    Top = 104
    Width = 75
    Height = 30
    Caption = #1063#1072#1089#1090#1100' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Part_1_ButtonClick
  end
  object Part_2_Button: TButton
    Left = 280
    Top = 168
    Width = 75
    Height = 30
    Caption = #1063#1072#1089#1090#1100' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Part_2_ButtonClick
  end
  object CloseButton: TButton
    Left = 280
    Top = 232
    Width = 75
    Height = 30
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = CloseButtonClick
  end
end
