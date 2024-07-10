object frmLearnerManagement: TfrmLearnerManagement
  Left = 0
  Top = 0
  Caption = 'LittleLinq | Learner Management'
  ClientHeight = 321
  ClientWidth = 873
  Color = 10710434
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLearnerManagement: TPanel
    Left = 8
    Top = 8
    Width = 857
    Height = 305
    Color = 14203563
    ParentBackground = False
    TabOrder = 0
    object dbgLearners: TDBGrid
      Left = 256
      Top = 8
      Width = 592
      Height = 289
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object pnlHeader: TPanel
      Left = 8
      Top = 8
      Width = 242
      Height = 57
      TabOrder = 1
      object lblLearnerManagement: TLabel
        Left = 24
        Top = 17
        Width = 190
        Height = 24
        Caption = 'Learner Management'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnlFooter: TPanel
      Left = 8
      Top = 80
      Width = 242
      Height = 217
      TabOrder = 2
      object btnAddLearner: TButton
        Left = 16
        Top = 16
        Width = 81
        Height = 33
        Caption = 'Add Learner'
        TabOrder = 0
      end
      object Button1: TButton
        Left = 16
        Top = 57
        Width = 81
        Height = 33
        Caption = 'Add Learner'
        TabOrder = 1
      end
      object Button2: TButton
        Left = 16
        Top = 96
        Width = 81
        Height = 33
        Caption = 'Add Learner'
        TabOrder = 2
      end
      object Button3: TButton
        Left = 16
        Top = 135
        Width = 81
        Height = 33
        Caption = 'Add Learner'
        TabOrder = 3
      end
    end
  end
end
