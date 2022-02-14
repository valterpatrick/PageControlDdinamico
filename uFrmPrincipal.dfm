object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmPrincipal'
  ClientHeight = 507
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnPageControl: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 726
    Height = 439
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object PnControles: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 448
    Width = 726
    Height = 56
    Align = alBottom
    TabOrder = 1
    object BtnCriarPageControl: TBitBtn
      Left = 16
      Top = 16
      Width = 125
      Height = 25
      Caption = 'BtnCriarPageControl'
      TabOrder = 0
      OnClick = BtnCriarPageControlClick
    end
    object BtnCriaAbaDinamica: TBitBtn
      Left = 147
      Top = 16
      Width = 125
      Height = 25
      Caption = 'BtnCriaAbaDinamica'
      TabOrder = 1
      OnClick = BtnCriaAbaDinamicaClick
    end
    object BtnExcPriAbaDinamica: TBitBtn
      Left = 278
      Top = 16
      Width = 125
      Height = 25
      Caption = 'BtnExcPriAbaDinamica'
      TabOrder = 2
      OnClick = BtnExcPriAbaDinamicaClick
    end
  end
end
