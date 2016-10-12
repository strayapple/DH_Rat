object FormHome: TFormHome
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FormHome'
  ClientHeight = 243
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mmOutput: TMemo
    Left = 8
    Top = 8
    Width = 216
    Height = 209
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object csServer: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = csServerConnect
    OnRead = csServerRead
    Left = 144
    Top = 144
  end
  object tmRemoteCapture: TTimer
    Enabled = False
    OnTimer = tmRemoteCaptureTimer
    Left = 128
    Top = 56
  end
  object csRemoteServer: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnRead = csServerRead
    Left = 48
    Top = 144
  end
  object csRemoteCapture: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    Left = 32
    Top = 32
  end
end
