object Form1: TForm1
  Left = 177
  Top = 13
  AutoScroll = False
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 488
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 0
    Top = 64
    Width = 36
    Height = 13
    Caption = 'X_point'
  end
  object Label7: TLabel
    Left = 248
    Top = 0
    Width = 267
    Height = 13
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1074#1077#1097#1077#1089#1090#1074#1072#1093' '#1080' '#1074#1099#1073#1086#1088' 1-'#1086#1081' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1099
  end
  object Label8: TLabel
    Left = 112
    Top = 32
    Width = 3
    Height = 13
  end
  object Label9: TLabel
    Left = 248
    Top = 128
    Width = 78
    Height = 13
    Caption = #1057#1074#1103#1079#1080' '#1074#1077#1097#1077#1089#1090#1074
  end
  object Label3: TLabel
    Left = 248
    Top = 296
    Width = 102
    Height = 13
    Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090#1099' '#1089#1084#1077#1089#1080':'
  end
  object Label5: TLabel
    Left = 8
    Top = 328
    Width = 64
    Height = 13
    Caption = 'X1,'#1101#1092#1092'.'#1084#1086#1083'.'
  end
  object Label6: TLabel
    Left = 8
    Top = 352
    Width = 37
    Height = 13
    Caption = 'T(x1), K'
  end
  object Label10: TLabel
    Left = 8
    Top = 376
    Width = 44
    Height = 13
    Caption = 'Lambda1'
  end
  object Label11: TLabel
    Left = 8
    Top = 400
    Width = 44
    Height = 13
    Caption = 'Lambda2'
  end
  object Label12: TLabel
    Left = 8
    Top = 424
    Width = 13
    Height = 13
    Caption = 'K1'
  end
  object Label13: TLabel
    Left = 8
    Top = 448
    Width = 13
    Height = 13
    Caption = 'K2'
  end
  object Label14: TLabel
    Left = 8
    Top = 296
    Width = 196
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077' '#1101#1074#1090#1077#1082#1090#1080#1082#1080'/'#1072#1079#1077#1086#1090#1088#1086#1087#1072
  end
  object Label1: TLabel
    Left = 0
    Top = 16
    Width = 39
    Height = 13
    Caption = 'X_begin'
  end
  object Label2: TLabel
    Left = 0
    Top = 40
    Width = 31
    Height = 13
    Caption = 'X_end'
  end
  object Label15: TLabel
    Left = 136
    Top = 16
    Width = 49
    Height = 13
    Caption = 'T_begin,C'
  end
  object Label16: TLabel
    Left = 136
    Top = 40
    Width = 41
    Height = 13
    Caption = 'T_end,C'
  end
  object Label17: TLabel
    Left = 136
    Top = 64
    Width = 36
    Height = 13
    Caption = 'T_point'
  end
  object Label18: TLabel
    Left = 152
    Top = 88
    Width = 89
    Height = 13
    Caption = 'P_begin,'#1084#1084'.'#1088#1090'.'#1089#1090'.'
  end
  object Label19: TLabel
    Left = 160
    Top = 128
    Width = 81
    Height = 13
    Caption = 'P_end,'#1084#1084'.'#1088#1090'.'#1089#1090'.'
  end
  object Label20: TLabel
    Left = 152
    Top = 168
    Width = 36
    Height = 13
    Caption = 'P_point'
  end
  object Fn: TSpinEdit
    Left = 48
    Top = 64
    Width = 73
    Height = 22
    MaxValue = 1000
    MinValue = 1
    TabOrder = 0
    Value = 100
  end
  object DBGrid3: TDBGrid
    Left = 248
    Top = 16
    Width = 505
    Height = 105
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid3KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Title.Caption = #1053#1086#1084#1077#1088' '#1082#1086#1084'-'#1090#1099
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MolMassa'
        Title.Caption = #1052#1086#1083#1103#1088#1085#1072#1103' '#1084#1072#1089#1089#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Teplota'
        Title.Caption = #1058#1077#1087#1083#1086#1090#1072' '#1087#1083#1072#1074#1083#1077#1085#1080#1103' '#1044#1078'/'#1084#1086#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Temperature'
        Title.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1087#1083#1072#1074#1083#1077#1085#1080#1103' '#1057
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'H_kipen'
        Title.Caption = #1058#1077#1087#1083#1086#1090#1072' '#1080#1089#1087#1072#1088#1077#1085#1080#1103' '#1044#1078'/'#1084#1086#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_Kelvin'
        Title.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1082#1080#1087#1077#1085#1080#1103' '#1074' '#1057
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'A_ant'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_ant'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C_ant'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 248
    Top = 144
    Width = 513
    Height = 145
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id_Name'
        Title.Caption = #1053#1086#1084#1077#1088' 1-'#1081' '#1082#1086#1084#1087'-'#1090#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id_Names'
        Title.Caption = #1053#1086#1084#1077#1088' 2-'#1081' '#1082#1086#1084#1087'-'#1090#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id_Named'
        Title.Caption = #1053#1086#1084#1077#1088' 3-'#1081' '#1082#1086#1084#1087'-'#1090#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pl_cmecu'
        Title.Caption = 'P '#1089#1084#1077#1089#1080', '#1084#1084'.'#1088#1090'.'#1089#1090'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TC_cmecu'
        Title.Caption = 'T '#1089#1084#1077#1089#1080', '#1057
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda12'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda13'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda32'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K12'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K13'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K23'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda1_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda2_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda3_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda12_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda13_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lambda23_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K1_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K2_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K3_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K12_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K13_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K23_az'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tau1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tau2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tau3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R3'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 232
    Width = 137
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1076#1080#1072#1075#1088#1072#1084#1084#1099
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 264
    Width = 169
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1091' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074
    TabOrder = 4
    OnClick = Button2Click
  end
  object MR: TStringGrid
    Left = 248
    Top = 312
    Width = 513
    Height = 129
    ColCount = 10
    DefaultColWidth = 30
    RowCount = 4
    TabOrder = 5
    OnDblClick = MRDblClick
    ColWidths = (
      30
      115
      127
      130
      114
      133
      137
      139
      132
      133)
  end
  object Button3: TButton
    Left = 8
    Top = 200
    Width = 137
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1041#1044
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 320
    Width = 97
    Height = 21
    TabOrder = 7
  end
  object Edit2: TEdit
    Left = 80
    Top = 344
    Width = 97
    Height = 21
    TabOrder = 8
  end
  object Edit3: TEdit
    Tag = 1
    Left = 80
    Top = 367
    Width = 97
    Height = 21
    TabOrder = 9
  end
  object Edit4: TEdit
    Left = 80
    Top = 392
    Width = 97
    Height = 21
    TabOrder = 10
  end
  object Edit5: TEdit
    Left = 80
    Top = 416
    Width = 97
    Height = 21
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 80
    Top = 444
    Width = 97
    Height = 21
    TabOrder = 12
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 469
    Width = 772
    Height = 19
    Panels = <
      item
        Text = 
          'Ctrl+F - '#1087#1086#1080#1089#1082' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1099' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102'; F3 - '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1087#1086#1080#1089#1082'; Ct' +
          'rl+Q - '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1086#1088#1103#1076#1086#1082'.'
        Width = 50
      end>
    SimplePanel = False
  end
  object EdtA: TEdit
    Left = 48
    Top = 16
    Width = 65
    Height = 21
    TabOrder = 14
    Text = '0'
  end
  object EdtB: TEdit
    Left = 48
    Top = 40
    Width = 65
    Height = 21
    TabOrder = 15
    Text = '1'
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 88
    Width = 145
    Height = 105
    Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1077' Lambda12'
    ItemIndex = 0
    Items.Strings = (
      '1 '#1089#1088#1077#1076#1085#1077#1077' '#1087#1086' '#1093
      '2 '#1089#1088#1077#1076#1085#1077#1077' '#1089' '#1091#1095#1077#1090#1086#1084' '#1101#1085#1077#1088#1075#1080#1080
      '3 '#1089#1088#1077#1076#1085#1077#1077' '#1075#1072#1088#1084#1086#1085#1080#1095#1077#1089#1082#1086#1077' '#1074#1079#1074#1077#1096#1077#1085#1085#1086#1077
      '4 '#1089#1088#1077#1076#1085#1077#1077' '#1072#1088#1080#1092#1084#1077#1090#1080#1095#1077#1089#1082#1086#1077' '#1074#1079#1074#1077#1096#1077#1085#1085#1086#1077)
    TabOrder = 16
  end
  object Edit7: TEdit
    Left = 184
    Top = -16
    Width = 49
    Height = 21
    TabOrder = 17
    Text = '-100'
  end
  object Edit8: TEdit
    Left = 192
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 18
    Text = '100'
  end
  object SpinEdit1: TSpinEdit
    Left = 192
    Top = 64
    Width = 49
    Height = 22
    MaxValue = 1000
    MinValue = 1
    TabOrder = 19
    Value = 100
  end
  object Edit9: TEdit
    Left = 168
    Top = 104
    Width = 49
    Height = 21
    TabOrder = 20
    Text = '1'
  end
  object Edit10: TEdit
    Left = 168
    Top = 144
    Width = 49
    Height = 21
    TabOrder = 21
    Text = '1000'
  end
  object SpinEdit2: TSpinEdit
    Left = 192
    Top = 168
    Width = 49
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 22
    Value = 100
  end
  object MainMenu1: TMainMenu
    Left = 696
    Top = 8
    object mainN3: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077
      object menuN7: TMenuItem
        Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1089#1074#1103#1079#1100
        OnClick = menuN7Click
      end
      object menuM2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = menuM2Click
      end
    end
    object mainN1: TMenuItem
      Caption = #1047#1072#1076#1072#1095#1080' '#1076#1083#1103' '#1084#1085#1086#1075#1086#1082#1086#1084#1087#1086#1085#1077#1085#1090#1085#1099#1093' '#1089#1080#1089#1090#1077#1084
      object menuN2_1: TMenuItem
        Caption = 'T-'#1088#1072' '#1087#1083#1072#1074#1083#1077#1085#1080#1103' '#1087#1086' '#1084#1086#1076#1077#1083#1080
        OnClick = menuN2_1Click
      end
      object menuN2_2: TMenuItem
        Caption = #1058#1086#1095#1082#1072' '#1101#1074#1090#1077#1082#1090#1080#1082#1080' '#1089#1080#1089#1090#1077#1084#1099
        OnClick = menuN2_2Click
      end
      object menuN2_3: TMenuItem
        Caption = #1058#1077#1088#1084#1086#1076#1080#1085#1072#1084#1080#1095#1077#1089#1082#1086#1077' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077' '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1090#1074#1077#1088#1076#1086#1077
        OnClick = menuN2_3Click
      end
      object menuN2_4: TMenuItem
        Caption = #1058'-'#1088#1072' '#1092#1072#1079#1086#1074#1086#1075#1086' '#1088#1072#1074#1085#1086#1074#1077#1089#1080#1103' '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1090#1074#1077#1088#1076#1086#1077' ('#1083#1080#1082#1074#1080#1076#1091#1089')'
        OnClick = menuN2_4Click
      end
      object menuN2_5: TMenuItem
        Caption = #1058'-'#1088#1072' '#1092#1072#1079#1086#1074#1086#1075#1086' '#1088#1072#1074#1085#1086#1074#1077#1089#1080#1103' '#1090#1074#1077#1088#1076#1086#1077'-'#1090#1074#1077#1088#1076#1086#1077' ('#1089#1086#1083#1080#1076#1091#1089')'
        OnClick = menuN2_5Click
      end
      object menuN01: TMenuItem
        Caption = '-----------------------------------------------------'
        Enabled = False
      end
      object menuN2_6: TMenuItem
        Caption = 'T-'#1088#1072' '#1082#1080#1087#1077#1085#1080#1103' '#1087#1086' '#1084#1086#1076#1077#1083#1080
        OnClick = menuN2_6Click
      end
      object menuN2_7: TMenuItem
        Caption = #1058#1086#1095#1082#1072' '#1072#1079#1077#1086#1090#1088#1086#1087#1080#1080' '#1089#1080#1089#1090#1077#1084#1099
        OnClick = menuN2_7Click
      end
      object menuN2_8: TMenuItem
        Caption = #1058#1077#1088#1084#1086#1076#1080#1085#1072#1084#1080#1095#1077#1089#1082#1086#1077' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077' '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1087#1072#1088
        OnClick = menuN2_8Click
      end
      object menuN2_9: TMenuItem
        Caption = 
          #1058'-'#1088#1072' '#1092#1072#1079#1086#1074#1086#1075#1086' '#1088#1072#1074#1085#1086#1074#1077#1089#1080#1103' '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1087#1072#1088' ('#1082#1088#1080#1074#1072#1103' '#1080#1089#1087#1072#1088#1077#1085#1080#1103') '#1087#1086' '#1076#1072#1085#1085 +
          #1099#1084' '#1086' '#1076#1072#1074#1083#1077#1085#1080#1080
        OnClick = menuN2_9Click
      end
      object menuN2_10: TMenuItem
        Caption = #1058'-'#1088#1072' '#1092#1072#1079#1086#1074#1086#1075#1086' '#1088#1072#1074#1085#1086#1074#1077#1089#1080#1103' '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1087#1072#1088' ('#1082#1088#1080#1074#1072#1103' '#1080#1089#1087#1072#1088#1077#1085#1080#1103')'
        OnClick = menuN2_10Click
      end
      object menuN2_11: TMenuItem
        Caption = #1058'-'#1088#1072' '#1092#1072#1079#1086#1074#1086#1075#1086' '#1088#1072#1074#1085#1086#1074#1077#1089#1080#1103' '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1087#1072#1088' ('#1082#1088#1080#1074#1072#1103' '#1082#1080#1087#1077#1085#1080#1103') '
        OnClick = menuN2_11Click
      end
      object menuN02: TMenuItem
        Caption = '---------------------------------------------------'
        Enabled = False
      end
      object menuN2_12: TMenuItem
        Caption = #1056#1072#1089#1095#1077#1090' '#1088#1072#1089#1090#1074#1086#1088#1080#1084#1086#1089#1090#1080
        OnClick = menuN2_12Click
      end
      object menuN2_13: TMenuItem
        Caption = #1047#1072#1074#1080#1089#1080#1084#1086#1089#1090#1100' Y(x)'
        OnClick = menuN2_13Click
      end
      object menuN2_14: TMenuItem
        Caption = #1056#1072#1089#1095#1077#1090' '#1082#1086#1101#1092#1092'. '#1072#1089#1089#1086#1094#1080#1072#1094#1080#1080' s1/s2 '#1074' '#1090#1074#1077#1088#1076#1086#1084' '#1090#1077#1083#1077
        OnClick = menuN2_14Click
      end
      object menuN2_15: TMenuItem
        Caption = #1056#1072#1089#1095#1077#1090' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1099' '#1074#1089#1087#1099#1096#1082#1080' '#1046'-'#1058
        OnClick = menuN2_15Click
      end
      object menuN2_16: TMenuItem
        Caption = #1056#1072#1089#1095#1077#1090' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1099'  '#1074#1089#1087#1099#1096#1082#1080' '#1087#1086' '#1046'-'#1055
        OnClick = menuN2_16Click
      end
    end
    object mainN2: TMenuItem
      Caption = #1047#1072#1076#1072#1095#1080' '#1076#1083#1103' '#1086#1076#1085#1086#1081' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1099
      object popupN2: TMenuItem
        Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1080' '#1076#1072#1074#1083#1077#1085#1080#1077
        OnClick = popupN2Click
      end
      object popupn3: TMenuItem
        Caption = #1069#1085#1090#1072#1083#1100#1087#1080#1103' '#1087#1083#1072#1074#1083#1077#1085#1080#1103' '#1080' '#1080#1089#1087#1072#1088#1077#1085#1080#1103' '#1086#1090' Cn '#1087#1086' '#1084#1086#1076#1077#1083#1080
        OnClick = popupn3Click
      end
      object popupn4: TMenuItem
        Caption = #1069#1085#1090#1072#1083#1100#1087#1080#1103' '#1087#1083#1072#1074#1083#1077#1085#1080#1103' '#1080' '#1080#1089#1087#1072#1088#1077#1085#1080#1103' '#1086#1090' '#1056' '
        OnClick = popupn4Click
      end
      object popupn5: TMenuItem
        Caption = #1069#1085#1090#1072#1083#1100#1087#1080#1103' '#1087#1083#1072#1074#1083#1077#1085#1080#1103' '#1080' '#1080#1089#1087#1072#1088#1077#1085#1080#1103' '#1086#1090' '#1058
        OnClick = popupn5Click
      end
    end
    object Mn_servis: TMenuItem
      Caption = 'Other'
      object Mn_calc: TMenuItem
        Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
        OnClick = Mn_calcClick
      end
      object Mn_about: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = Mn_aboutClick
      end
      object Mn_help: TMenuItem
        Caption = #1055#1086#1084#1086#1097#1100
        OnClick = Mn_helpClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 424
    Top = 72
  end
  object Table1: TTable
    DatabaseName = '.\DB'
    IndexFieldNames = 'Id'
    TableName = 'Ingradients.DB'
    Left = 384
    Top = 72
    object Table1Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table1Name: TStringField
      FieldName = 'Name'
      Size = 25
    end
    object Table1Teplota: TFloatField
      FieldName = 'Teplota'
    end
    object Table1Temperature: TFloatField
      FieldName = 'Temperature'
    end
    object Table1MolMassa: TFloatField
      FieldName = 'MolMassa'
    end
    object Table1H_teplota: TFloatField
      FieldName = 'H_teplota'
    end
    object Table1P_kipen: TFloatField
      FieldName = 'P_kipen'
    end
    object Table1T_Kelvin: TFloatField
      FieldName = 'T_Kelvin'
    end
    object Table1A_ant: TFloatField
      FieldName = 'A_ant'
    end
    object Table1B_ant: TFloatField
      FieldName = 'B_ant'
    end
    object Table1C_ant: TFloatField
      FieldName = 'C_ant'
    end
    object Table1A_lg: TFloatField
      FieldName = 'A_lg'
    end
    object Table1B_lg: TFloatField
      FieldName = 'B_lg'
    end
    object Table1C_lg: TFloatField
      FieldName = 'C_lg'
    end
    object Table1D_lg: TFloatField
      FieldName = 'D_lg'
    end
    object Table1A_sg: TFloatField
      FieldName = 'A_sg'
    end
    object Table1B_sg: TFloatField
      FieldName = 'B_sg'
    end
    object Table1C_sg: TFloatField
      FieldName = 'C_sg'
    end
    object Table1D_sg: TFloatField
      FieldName = 'D_sg'
    end
    object Table1P_kr: TFloatField
      FieldName = 'P_kr'
    end
    object Table1V_kr: TFloatField
      FieldName = 'V_kr'
    end
    object Table1T_kr: TFloatField
      FieldName = 'T_kr'
    end
    object Table1Z_kr: TFloatField
      FieldName = 'Z_kr'
    end
    object Table1P0: TFloatField
      FieldName = 'P0'
    end
    object Table1T0: TFloatField
      FieldName = 'T0'
    end
    object Table1P_tr: TFloatField
      FieldName = 'P_tr'
    end
    object Table1T_tr: TFloatField
      FieldName = 'T_tr'
    end
    object Table1P_atm: TFloatField
      FieldName = 'P_atm'
    end
    object Table1T_atm: TFloatField
      FieldName = 'T_atm'
    end
    object Table1H_kipen: TFloatField
      FieldName = 'H_kipen'
    end
    object Table1Cp_mol: TFloatField
      FieldName = 'Cp_mol'
    end
    object Table1A_Cp: TFloatField
      FieldName = 'A_Cp'
    end
    object Table1B_Cp: TFloatField
      FieldName = 'B_Cp'
    end
    object Table1C_Cp: TFloatField
      FieldName = 'C_Cp'
    end
    object Table1D_Cp: TFloatField
      FieldName = 'D_Cp'
    end
    object Table1Formula: TStringField
      FieldName = 'Formula'
      Size = 15
    end
    object Table1Literature: TStringField
      FieldName = 'Literature'
      Size = 50
    end
    object Table1Koef_teplota: TSmallintField
      FieldName = 'Koef_teplota'
    end
    object Table1Koef_kipen: TSmallintField
      FieldName = 'Koef_kipen'
    end
    object Table1T_fp: TFloatField
      FieldName = 'T_fp'
    end
    object Table1C_Simona: TFloatField
      FieldName = 'C_Simona'
    end
    object Table1V_ls: TFloatField
      FieldName = 'V_ls'
    end
    object Table1Ro_l: TFloatField
      FieldName = 'Ro_l'
    end
    object Table1Ro_s: TFloatField
      FieldName = 'Ro_s'
    end
    object Table1Ro_g: TFloatField
      FieldName = 'Ro_g'
    end
    object Table1H_tr: TFloatField
      FieldName = 'H_tr'
    end
    object Table1V_tr: TFloatField
      FieldName = 'V_tr'
    end
    object Table1A_V: TFloatField
      FieldName = 'A_V'
    end
    object Table1B_V: TFloatField
      FieldName = 'B_V'
    end
    object Table1C_V: TFloatField
      FieldName = 'C_V'
    end
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 392
    Top = 232
  end
  object Table2: TTable
    BeforePost = Table2BeforePost
    DatabaseName = '.\DB'
    IndexFieldNames = 'Id_Name'
    MasterFields = 'Id'
    MasterSource = DataSource1
    TableName = 'Experiments.DB'
    Left = 360
    Top = 232
    object Table2Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table2Id_Name: TIntegerField
      FieldName = 'Id_Name'
    end
    object Table2Id_Names: TIntegerField
      FieldName = 'Id_Names'
    end
    object Table2Id_Named: TIntegerField
      FieldName = 'Id_Named'
    end
    object Table2Data: TDateField
      FieldName = 'Data'
    end
    object Table2TC_cmecu: TFloatField
      FieldName = 'TC_cmecu'
    end
    object Table2Pl_cmecu: TFloatField
      FieldName = 'Pl_cmecu'
    end
    object Table2Ro1: TFloatField
      FieldName = 'Ro1'
    end
    object Table2Ro2: TFloatField
      FieldName = 'Ro2'
    end
    object Table2Ro3: TFloatField
      FieldName = 'Ro3'
    end
    object Table2P1_0: TFloatField
      FieldName = 'P1_0'
    end
    object Table2P2_0: TFloatField
      FieldName = 'P2_0'
    end
    object Table2P3_0: TFloatField
      FieldName = 'P3_0'
    end
    object Table2VE1_0: TFloatField
      FieldName = 'VE1_0'
    end
    object Table2VE2_0: TFloatField
      FieldName = 'VE2_0'
    end
    object Table2VE3_0: TFloatField
      FieldName = 'VE3_0'
    end
    object Table2Lambda1: TFloatField
      FieldName = 'Lambda1'
    end
    object Table2Lambda2: TFloatField
      FieldName = 'Lambda2'
    end
    object Table2Lambda3: TFloatField
      FieldName = 'Lambda3'
    end
    object Table2Lambda12: TFloatField
      FieldName = 'Lambda12'
    end
    object Table2Lambda13: TFloatField
      FieldName = 'Lambda13'
    end
    object Table2Lambda32: TFloatField
      FieldName = 'Lambda32'
    end
    object Table2A1: TFloatField
      FieldName = 'A1'
    end
    object Table2A2: TFloatField
      FieldName = 'A2'
    end
    object Table2A3: TFloatField
      FieldName = 'A3'
    end
    object Table2X1: TFloatField
      FieldName = 'X1'
    end
    object Table2X2: TFloatField
      FieldName = 'X2'
    end
    object Table2X3: TFloatField
      FieldName = 'X3'
    end
    object Table2T: TFloatField
      FieldName = 'T'
    end
    object Table2H: TFloatField
      FieldName = 'H'
    end
    object Table2P: TFloatField
      FieldName = 'P'
    end
    object Table2Ge: TFloatField
      FieldName = 'Ge'
    end
    object Table2Ve: TFloatField
      FieldName = 'Ve'
    end
    object Table2K1: TFloatField
      FieldName = 'K1'
    end
    object Table2K2: TFloatField
      FieldName = 'K2'
    end
    object Table2K3: TFloatField
      FieldName = 'K3'
    end
    object Table2K12: TFloatField
      FieldName = 'K12'
    end
    object Table2K13: TFloatField
      FieldName = 'K13'
    end
    object Table2K23: TFloatField
      FieldName = 'K23'
    end
    object Table2Lambda1_az: TFloatField
      FieldName = 'Lambda1_az'
    end
    object Table2Lambda2_az: TFloatField
      FieldName = 'Lambda2_az'
    end
    object Table2Lambda3_az: TFloatField
      FieldName = 'Lambda3_az'
    end
    object Table2Lambda12_az: TFloatField
      FieldName = 'Lambda12_az'
    end
    object Table2Lambda13_az: TFloatField
      FieldName = 'Lambda13_az'
    end
    object Table2Lambda23_az: TFloatField
      FieldName = 'Lambda23_az'
    end
    object Table2K1_az: TFloatField
      FieldName = 'K1_az'
    end
    object Table2K2_az: TFloatField
      FieldName = 'K2_az'
    end
    object Table2K3_az: TFloatField
      FieldName = 'K3_az'
    end
    object Table2K12_az: TFloatField
      FieldName = 'K12_az'
    end
    object Table2K13_az: TFloatField
      FieldName = 'K13_az'
    end
    object Table2K23_az: TFloatField
      FieldName = 'K23_az'
    end
    object Table2X1_az: TFloatField
      FieldName = 'X1_az'
    end
    object Table2X2_az: TFloatField
      FieldName = 'X2_az'
    end
    object Table2X3_az: TFloatField
      FieldName = 'X3_az'
    end
    object Table2Tau1: TFloatField
      FieldName = 'Tau1'
    end
    object Table2Tau2: TFloatField
      FieldName = 'Tau2'
    end
    object Table2Tau3: TFloatField
      FieldName = 'Tau3'
    end
    object Table2R1: TFloatField
      FieldName = 'R1'
    end
    object Table2R2: TFloatField
      FieldName = 'R2'
    end
    object Table2R3: TFloatField
      FieldName = 'R3'
    end
    object Table2T_az: TFloatField
      FieldName = 'T_az'
    end
    object Table2Information: TStringField
      FieldName = 'Information'
      Size = 50
    end
  end
end
