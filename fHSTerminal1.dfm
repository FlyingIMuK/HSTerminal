object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 353
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    611
    353)
  PixelsPerInch = 96
  TextHeight = 13
  object btnConnect: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    OnClick = btnConnectClick
  end
  object ComTerminal1: TComTerminal
    Left = 24
    Top = 38
    Width = 577
    Height = 307
    Color = clBlack
    ComPort = ComPort1
    Emulation = teVT100orANSI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Fixedsys'
    Font.Style = []
    ScrollBars = ssBoth
    TabOrder = 1
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object Button1: TButton
    Left = 184
    Top = 7
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object sleCommand: TEdit
    Left = 280
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ComPort1: TComPort
    BaudRate = br115200
    Port = 'COM23'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = False
    Left = 40
    Top = 64
  end
  object ComDataPacket1: TComDataPacket
    ComPort = ComPort1
    Left = 40
    Top = 120
  end
end
