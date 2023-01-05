object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Simple Calculator'
  ClientHeight = 290
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bevResult: TBevel
    Left = 13
    Top = 40
    Width = 281
    Height = 26
  end
  object btnSum: TSpeedButton
    Left = 13
    Top = 72
    Width = 25
    Height = 22
    Caption = '+'
    OnClick = btnSumClick
  end
  object btnSubtract: TSpeedButton
    Left = 77
    Top = 72
    Width = 25
    Height = 22
    Caption = '-'
    OnClick = btnSubtractClick
  end
  object btnMultiply: TSpeedButton
    Left = 141
    Top = 72
    Width = 25
    Height = 22
    Caption = 'x'
    OnClick = btnMultiplyClick
  end
  object btnDivide: TSpeedButton
    Left = 205
    Top = 72
    Width = 25
    Height = 22
    Caption = '/'
    OnClick = btnDivideClick
  end
  object labResult: TLabel
    Left = 13
    Top = 43
    Width = 268
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btnEqual: TSpeedButton
    Left = 269
    Top = 72
    Width = 25
    Height = 22
    Caption = '='
    OnClick = btnEqualClick
  end
  object labOp: TLabel
    Left = 140
    Top = 16
    Width = 25
    Height = 21
    Alignment = taCenter
    AutoSize = False
  end
  object edtOp1: TEdit
    Left = 13
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtOp2: TEdit
    Left = 173
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
end
