object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 494
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 56
    Top = 48
    Width = 409
    Height = 353
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 0
    WantTabs = True
  end
  object Button1: TButton
    Left = 390
    Top = 407
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object btnSave: TButton
    Left = 176
    Top = 461
    Width = 75
    Height = 25
    Caption = 'btnSave'
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object btnLoad: TButton
    Left = 280
    Top = 461
    Width = 75
    Height = 25
    Caption = 'btnLoad'
    TabOrder = 3
    OnClick = btnLoadClick
  end
end
