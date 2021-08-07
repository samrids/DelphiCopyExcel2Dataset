object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi : How to Copy Excel To Dataset in Delphi'
  ClientHeight = 510
  ClientWidth = 836
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 836
    Height = 41
    Align = alTop
    Caption = 'Delphi : How to Copy Excel To Dataset in Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 836
    Height = 428
    Align = alClient
    DataSource = DataSource1
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 469
    Width = 836
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 216
    ExplicitTop = 217
    ExplicitWidth = 185
    object BtnPaste: TButton
      Left = 14
      Top = 6
      Width = 75
      Height = 25
      Action = Paste_Action
      TabOrder = 0
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 416
    Top = 264
    object FDMemTable1Batch_No: TStringField
      FieldName = 'Batch_No'
      Size = 14
    end
    object FDMemTable1Batch_Date: TDateField
      FieldName = 'Batch_Date'
    end
    object FDMemTable1Color: TStringField
      FieldName = 'Color'
    end
    object FDMemTable1Quantity: TIntegerField
      FieldName = 'Quantity'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 536
    Top = 264
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 256
    object Paste1: TMenuItem
      Action = Paste_Action
    end
  end
  object ActionList1: TActionList
    Left = 448
    Top = 200
    object Paste_Action: TAction
      Caption = 'Paste'
      ShortCut = 16470
      OnExecute = Paste_ActionExecute
    end
  end
end
