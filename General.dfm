object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1088#1099#1085#1082#1072
  ClientHeight = 291
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Name: TLabel
    Left = 64
    Top = 101
    Width = 121
    Height = 18
    Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1088#1099#1085#1082#1072
    Color = clBtnText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object AddButton: TButton
    Left = 456
    Top = 40
    Width = 107
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = AddButtonClick
  end
  object DeleteButton: TButton
    Left = 456
    Top = 96
    Width = 107
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = DeleteButtonClick
  end
  object OtherButton: TButton
    Left = 456
    Top = 152
    Width = 107
    Height = 33
    Caption = #1055#1088#1086#1095#1080#1077' '#1092#1091#1085#1082#1094#1080#1080
    TabOrder = 2
    OnClick = OtherButtonClick
  end
  object ExitButton: TButton
    Left = 456
    Top = 208
    Width = 107
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = ExitButtonClick
  end
end
