object AddForm: TAddForm
  Left = 0
  Top = 0
  Caption = 'AddForm'
  ClientHeight = 297
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object NameLabel: TLabel
    Left = 69
    Top = 38
    Width = 100
    Height = 18
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SupplierLabel: TLabel
    Left = 69
    Top = 88
    Width = 77
    Height = 18
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object QuantityLabel: TLabel
    Left = 69
    Top = 136
    Width = 105
    Height = 18
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'('#1082#1075')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PriceLabel: TLabel
    Left = 69
    Top = 184
    Width = 64
    Height = 18
    Caption = #1062#1077#1085#1072' ('#1082#1075')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object NameEdit: TEdit
    Left = 200
    Top = 37
    Width = 145
    Height = 24
    TabOrder = 0
  end
  object SupplierEdit: TEdit
    Left = 200
    Top = 85
    Width = 145
    Height = 24
    TabOrder = 1
  end
  object QuantityEdit: TEdit
    Left = 200
    Top = 133
    Width = 145
    Height = 24
    TabOrder = 2
  end
  object PriceEdit: TEdit
    Left = 200
    Top = 181
    Width = 145
    Height = 24
    TabOrder = 3
  end
  object AddButton: TButton
    AlignWithMargins = True
    Left = 99
    Top = 242
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = AddButtonClick
  end
  object ExitButton: TButton
    Left = 240
    Top = 242
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
    OnClick = ExitButtonClick
  end
end
