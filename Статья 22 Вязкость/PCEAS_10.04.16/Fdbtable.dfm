object Form4: TForm4
  Left = 206
  Top = 207
  Width = 775
  Height = 562
  Caption = #1058#1072#1073#1083#1080#1094#1099' '#1073#1072#1079' '#1076#1072#1085#1085#1099#1093
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 759
    Height = 505
    ActivePage = TabSheet4
    Align = alClient
    TabIndex = 3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090#1099
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 481
        Align = alClient
        DataSource = DataSource1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        PopupMenu = PopupMenu1
        TabOrder = 0
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
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Formula'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Literature'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MolMassa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Teplota'
            Title.Caption = #1053' '#1087#1083#1072#1074#1083', '#1044#1078'/'#1084#1086#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Koef_teplota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Temperature'
            Title.Caption = #1058' '#1087#1083#1072#1074#1083', '#1057
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'H_kipen'
            Title.Caption = 'H '#1080#1089#1087', '#1044#1078'/'#1084#1086#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Koef_kipen'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_Kelvin'
            Title.Caption = 'T '#1082#1080#1087', '#1057
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_kipen'
            Title.Caption = 'P '#1082#1080#1087', '#1082#1055#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_fp'
            Title.Caption = 'T '#1074#1089#1087', K'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_kr'
            Title.Caption = 'P_kr, '#1082#1055#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V_kr'
            Title.Caption = 'V_kr, '#1084'^3/'#1084#1086#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_kr'
            Title.Caption = 'T_kr, '#1050
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Z_kr'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P0'
            Title.Caption = 'P0, '#1082#1055#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T0'
            Title.Caption = 'T0, '#1050
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_tr'
            Title.Caption = 'P_tr, '#1082#1055#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_tr'
            Title.Caption = 'T_tr, '#1050
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'H_tr'
            Title.Caption = 'H_tr, '#1044#1078'/'#1084#1086#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V_tr'
            Title.Caption = 'V_tr, '#1084'^3/'#1084#1086#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_atm'
            Title.Caption = 'P_atm, '#1082#1055#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_atm'
            Title.Caption = 'T_atm, '#1050
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_Simona'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V_ls'
            Title.Caption = 'V_ls, '#1084'^3/'#1084#1086#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ro_l'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ro_s'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ro_g'
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
          end
          item
            Expanded = False
            FieldName = 'A_lg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_lg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_lg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_lg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'A_sg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_sg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_sg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_sg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cp_mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'A_Cp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_Cp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_Cp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_Cp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'H_teplota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'A_V'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_V'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_V'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1074#1103#1079#1080
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 481
        Align = alClient
        DataSource = DataSource2
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        PopupMenu = PopupMenu2
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Id_Names'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'names1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Id_Named'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'names2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Information'
            Width = 162
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TC_cmecu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pl_cmecu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ro1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ro2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ro3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1_0'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2_0'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P3_0'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VE1_0'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VE2_0'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VE3_0'
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
            FieldName = 'A1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'A2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'A3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'H'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ge'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ve'
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
            FieldName = 'X1_az'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2_az'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X3_az'
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
          end
          item
            Expanded = False
            FieldName = 'T_az'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 481
        Align = alClient
        DataSource = DataSource3
        PopupMenu = PopupMenu3
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'X1mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X1mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T1C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T2C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T1K'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T2K'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y1mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y2mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y1mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y2mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Gamma1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Gamma2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LnGamma1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LnGamma2'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1083#1086#1090#1085#1086#1089#1090#1100' '#1089#1084#1077#1089#1080
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 751
        Height = 477
        Align = alClient
        DataSource = DataSource4
        PopupMenu = PopupMenu4
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid3KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'X1mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X1mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ro12'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VE'
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1044#1072#1074#1083#1077#1085#1080#1077
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 751
        Height = 477
        Align = alClient
        DataSource = DataSource5
        PopupMenu = PopupMenu5
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid3KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'P'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X1mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y1mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y2mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X1mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y1mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y2mas'
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1058#1077#1087#1083#1086#1090#1072' '#1080#1089#1087#1072#1088#1077#1085#1080#1103
      ImageIndex = 5
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 751
        Height = 477
        Align = alClient
        DataSource = DataSource6
        PopupMenu = PopupMenu6
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid3KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'H_isp'
            Title.Caption = 'H'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_K'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_lg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_sg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_ls'
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1058#1077#1087#1083#1086#1077#1084#1082#1086#1089#1090#1100
      ImageIndex = 6
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 751
        Height = 477
        Align = alClient
        DataSource = DataSource7
        PopupMenu = PopupMenu7
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid3KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Cp_mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_K'
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1058#1077#1087#1083#1086#1090#1072' '#1089#1084#1077#1096#1077#1085#1080#1103
      ImageIndex = 7
      object DBGrid8: TDBGrid
        Left = 0
        Top = 0
        Width = 751
        Height = 477
        Align = alClient
        DataSource = DataSource8
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu8
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid3KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'X1mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X1mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'X2mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y1mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y2mas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y1mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Y2mol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HE'
            Visible = True
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'PTV'
      ImageIndex = 8
      object DBGrid9: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 481
        Align = alClient
        DataSource = DataSource9
        PopupMenu = popupmenu9
        TabOrder = 0
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid9DblClick
        OnKeyDown = DBGrid3KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'V'
            Title.Caption = 'V_'#1089#1084'^3/'#1084#1086#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_MPa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_K'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_mm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_atm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_C'
            Visible = True
          end>
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 505
    Width = 759
    Height = 19
    Panels = <
      item
        Text = 
          #1044#1083#1103' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072' '#1074#1099#1079#1086#1074#1080#1090#1077' '#1082#1086#1085#1090#1077#1082#1089#1090#1085#1086#1077' '#1084#1077#1085#1102' '#1087#1088#1072#1074#1086#1081' '#1082#1085#1086#1087#1082#1086 +
          #1081' '#1084#1099#1096#1080
        Width = 410
      end
      item
        Text = 'F2->Save; F3-> '#1053#1045' '#1087#1088#1080' '#1079#1072#1076#1072#1085#1085#1086#1081' '#1058'; F4->'#1056' '#1080' VE '#1087#1088#1080' '#1079#1072#1076#1072#1085#1085#1086#1081' '#1058
        Width = 250
      end>
    SimplePanel = False
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 128
    Top = 216
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 128
    Top = 280
  end
  object Table3: TTable
    DatabaseName = '.\db'
    IndexName = 'Id_experiments'
    MasterFields = 'Id'
    MasterSource = DataSource2
    TableName = 'Temperature.db'
    Left = 88
    Top = 280
    object Table3Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table3Id_experiments: TIntegerField
      FieldName = 'Id_experiments'
    end
    object Table3X1mas: TFloatField
      FieldName = 'X1mas'
    end
    object Table3X2mas: TFloatField
      FieldName = 'X2mas'
    end
    object Table3X1mol: TFloatField
      FieldName = 'X1mol'
    end
    object Table3X2mol: TFloatField
      FieldName = 'X2mol'
    end
    object Table3T1C: TFloatField
      FieldName = 'T1C'
    end
    object Table3T2C: TFloatField
      FieldName = 'T2C'
    end
    object Table3T1K: TFloatField
      FieldName = 'T1K'
    end
    object Table3T2K: TFloatField
      FieldName = 'T2K'
    end
    object Table3Y1mas: TFloatField
      FieldName = 'Y1mas'
    end
    object Table3Y2mas: TFloatField
      FieldName = 'Y2mas'
    end
    object Table3Y1mol: TFloatField
      FieldName = 'Y1mol'
    end
    object Table3Y2mol: TFloatField
      FieldName = 'Y2mol'
    end
    object Table3Gamma1: TFloatField
      FieldName = 'Gamma1'
    end
    object Table3Gamma2: TFloatField
      FieldName = 'Gamma2'
    end
    object Table3LnGamma1: TFloatField
      FieldName = 'LnGamma1'
    end
    object Table3LnGamma2: TFloatField
      FieldName = 'LnGamma2'
    end
  end
  object Table2: TTable
    DatabaseName = '.\DB'
    IndexName = 'Id_Name'
    MasterFields = 'Id'
    MasterSource = DataSource1
    TableName = 'Experiments.DB'
    Left = 88
    Top = 248
    object Table2Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table2Id_Name: TIntegerField
      FieldName = 'Id_Name'
    end
    object Table2Data: TDateField
      FieldName = 'Data'
    end
    object Table2Id_Names: TIntegerField
      FieldName = 'Id_Names'
    end
    object Table2names1: TStringField
      FieldKind = fkLookup
      FieldName = 'names1'
      LookupDataSet = Table10
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'Id_Names'
      Size = 25
      Lookup = True
    end
    object Table2Id_Named: TIntegerField
      FieldName = 'Id_Named'
    end
    object Table2names2: TStringField
      FieldKind = fkLookup
      FieldName = 'names2'
      LookupDataSet = Table10
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'Id_Named'
      Size = 25
      Lookup = True
    end
    object Table2Information: TStringField
      FieldName = 'Information'
      Size = 50
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
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 128
    Top = 248
  end
  object Table4: TTable
    DatabaseName = '.\db'
    IndexName = 'Id_experiments'
    MasterFields = 'Id'
    MasterSource = DataSource2
    TableName = 'Plotnost.DB'
    Left = 88
    Top = 312
    object Table4Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table4Id_experiments: TIntegerField
      FieldName = 'Id_experiments'
    end
    object Table4X1mas: TFloatField
      FieldName = 'X1mas'
    end
    object Table4X2mas: TFloatField
      FieldName = 'X2mas'
    end
    object Table4X1mol: TFloatField
      FieldName = 'X1mol'
    end
    object Table4X2mol: TFloatField
      FieldName = 'X2mol'
    end
    object Table4Ro12: TFloatField
      FieldName = 'Ro12'
    end
    object Table4VE: TFloatField
      FieldName = 'VE'
      DisplayFormat = '#.#####'
    end
  end
  object DataSource4: TDataSource
    DataSet = Table4
    Left = 128
    Top = 312
  end
  object Table1: TTable
    DatabaseName = '.\db'
    IndexFieldNames = 'Id'
    TableName = 'Ingradients.DB'
    Left = 88
    Top = 216
    object Table1Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table1Name: TStringField
      FieldName = 'Name'
      Size = 25
    end
    object Table1Formula: TStringField
      FieldName = 'Formula'
      Size = 15
    end
    object Table1Literature: TStringField
      FieldName = 'Literature'
      Size = 50
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
    object Table1H_kipen: TFloatField
      FieldName = 'H_kipen'
    end
    object Table1T_Kelvin: TFloatField
      FieldName = 'T_Kelvin'
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
    object Table1P_kipen: TFloatField
      FieldName = 'P_kipen'
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
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 216
    object N12365: TMenuItem
      Caption = '*'#1056#1072#1089#1095#1077#1090' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1086#1074' '#1076#1072#1074#1083#1077#1085#1080#1103
      Visible = False
    end
    object CpABTCT2DT32: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1090#1077#1087#1083#1086#1077#1084#1082#1086#1089#1090#1080' Cp=A+B*T+C*T^2+D*T^3 (1)'
      OnClick = CpABTCT2DT32Click
    end
    object CpABTCT23: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1090#1077#1087#1083#1086#1077#1084#1082#1086#1089#1090#1080' Cp=A+B*T+C/T^2 (2)'
      OnClick = CpABTCT23Click
    end
    object CpABTCT24: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1090#1077#1087#1083#1086#1077#1084#1082#1086#1089#1090#1080' Cp=A+B/T+C/T^2 (3)'
      OnClick = CpABTCT24Click
    end
    object const1: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1090#1077#1087#1083#1086#1090#1099' '#1089#1084#1077#1096#1077#1085#1080#1103' '#1087#1088#1080' T=const (1)'
      OnClick = const1Click
    end
    object const21: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1090#1077#1087#1083#1086#1090#1099' '#1089#1084#1077#1096#1077#1085#1080#1103' '#1087#1088#1080' T=const (2)'
      OnClick = const21Click
    end
    object const31: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1090#1077#1087#1083#1086#1090#1099' '#1089#1084#1077#1096#1077#1085#1080#1103' '#1087#1088#1080' T=const (3)'
      OnClick = const31Click
    end
    object popup18: TMenuItem
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'  '#1075#1086#1084#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1075#1086' '#1088#1103#1076#1072
      OnClick = popup18Click
    end
  end
  object DataSource5: TDataSource
    DataSet = Table5
    Left = 232
    Top = 216
  end
  object Table5: TTable
    DatabaseName = '.\db'
    IndexName = 'Id_experiments'
    MasterFields = 'Id'
    MasterSource = DataSource2
    TableName = 'Pressure.DB'
    Left = 201
    Top = 216
    object Table5Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table5Id_experiments: TIntegerField
      FieldName = 'Id_experiments'
    end
    object Table5P: TFloatField
      FieldName = 'P'
    end
    object Table5X1mol: TFloatField
      FieldName = 'X1mol'
    end
    object Table5X2mol: TFloatField
      FieldName = 'X2mol'
    end
    object Table5Y1mol: TFloatField
      FieldName = 'Y1mol'
    end
    object Table5Y2mol: TFloatField
      FieldName = 'Y2mol'
    end
    object Table5X1mas: TFloatField
      FieldName = 'X1mas'
    end
    object Table5X2mas: TFloatField
      FieldName = 'X2mas'
    end
    object Table5Y1mas: TFloatField
      FieldName = 'Y1mas'
    end
    object Table5Y2mas: TFloatField
      FieldName = 'Y2mas'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 160
    Top = 248
    object N2: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1076#1072#1074#1083#1077#1085#1080#1103' '#1087#1086' '#1091#1088#1072#1074#1085#1077#1085#1080#1102' '#1040#1085#1090#1091#1072#1085#1072' ln P'
      OnClick = N2Click
    end
    object log101: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1076#1072#1074#1083#1077#1085#1080#1103' '#1087#1086' '#1091#1088#1072#1074#1085#1077#1085#1080#1102' '#1040#1085#1090#1091#1072#1085#1072' lg P'
      OnClick = log101Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 160
    Top = 280
    object MenuItem1: TMenuItem
      Caption = 
        #1056#1072#1089#1095#1077#1090' '#1101#1074#1090#1077#1082#1090#1080#1095#1077#1089#1082#1080#1093' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1090#1086#1095#1077#1082' '#1087#1077#1088#1077#1089#1077#1095#1077#1085#1080#1103' '#1082#1088#1080#1074#1099#1093' '#1083#1080#1082#1074#1080#1076#1091 +
        #1089#1072
      OnClick = MenuItem1Click
    end
    object N4: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1083#1086#1075#1072#1088#1080#1092#1084#1086#1074' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1090#1074#1077#1088#1076#1086#1077
      OnClick = N4Click
    end
    object N8: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1083#1086#1075#1072#1088#1080#1092#1084#1086#1074' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1087#1072#1088
      OnClick = N8Click
    end
    object muneN7: TMenuItem
      Caption = #1058#1077#1087#1083#1086#1090#1072' '#1087#1083#1072#1074#1083#1077#1085#1080#1103
      OnClick = Form1muneN7Click
    end
    object N7: TMenuItem
      Caption = #1048#1079#1073#1099#1090#1086#1095#1085#1072#1103' '#1069#1085#1077#1088#1075#1080#1103' '#1043#1080#1073#1073#1089#1072
      OnClick = N7Click
    end
    object menux1: TMenuItem
      Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1082#1088#1080#1074#1086#1081' T(x) '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1090#1074#1077#1088#1076#1086#1077
      OnClick = menux1Click
    end
    object menux2: TMenuItem
      Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1082#1088#1080#1074#1086#1081' T(x) '#1078#1080#1076#1082#1086#1089#1090#1100'-'#1087#1072#1088
      OnClick = menux2Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 160
    Top = 312
    object MenuItem2: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1080#1079#1073#1099#1090#1086#1095#1085#1086#1075#1086' '#1086#1073#1098#1077#1084#1072' '#1087#1086' '#1087#1083#1086#1090#1085#1086#1089#1090#1103#1084
      OnClick = MenuItem2Click
    end
    object N6: TMenuItem
      Caption = #1044#1072#1074#1083#1077#1085#1080#1077' '#1089#1084#1077#1089#1080' '#1087#1086' '#1080#1079#1073#1099#1090#1086#1095#1085#1086#1084#1091' '#1086#1073#1098#1077#1084#1091
      OnClick = N6Click
    end
    object P2P11: TMenuItem
      Caption = #1044#1072#1074#1083#1077#1085#1080#1077' '#1089#1084#1077#1089#1080' '#1087#1086' '#1087#1077#1088#1077#1089#1077#1095#1077#1085#1080#1102' P2/P1'
      OnClick = P2P11Click
    end
  end
  object PopupMenu5: TPopupMenu
    Left = 263
    Top = 216
    object N123: TMenuItem
      Caption = #1043#1088#1072#1092#1080#1082' '#1056'('#1093')'
      OnClick = N123Click
    end
    object MenuItem3: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090' '#1084#1086#1076#1077#1083#1080#1088#1091#1102#1097#1077#1081' '#1082#1088#1080#1074#1086#1081' P(x)'
      OnClick = MenuItem3Click
    end
  end
  object Table6: TTable
    DatabaseName = '.\db'
    IndexName = 'Id_ingradient'
    MasterFields = 'Id'
    MasterSource = DataSource1
    TableName = 'Teplota.DB'
    Left = 200
    Top = 248
    object Table6Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table6Id_ingradient: TIntegerField
      FieldName = 'Id_ingradient'
    end
    object Table6H_isp: TFloatField
      FieldName = 'H_isp'
    end
    object Table6T_K: TFloatField
      FieldName = 'T_K'
    end
    object Table6P_lg: TFloatField
      FieldName = 'P_lg'
    end
    object Table6P_sg: TFloatField
      FieldName = 'P_sg'
    end
    object Table6P_ls: TFloatField
      FieldName = 'P_ls'
    end
  end
  object DataSource6: TDataSource
    DataSet = Table6
    Left = 232
    Top = 248
  end
  object PopupMenu6: TPopupMenu
    Left = 264
    Top = 248
    object N3: TMenuItem
      Caption = 
        #1056#1072#1089#1095#1077#1090' '#1076#1072#1074#1083#1077#1085#1080#1103' '#1087#1086' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080' '#1090#1077#1087#1083#1086#1090#1099' '#1080#1089#1087#1072#1088#1077#1085#1080#1103' '#1086#1090' '#1072#1073#1089#1086#1083#1102#1090#1085#1086#1081' '#1090 +
        #1077#1084#1087#1077#1088#1072#1090#1091#1088#1099
      OnClick = N3Click
    end
    object menuHTsl: TMenuItem
      Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1091#1088#1072#1074#1085#1077#1085#1080#1103' '#1053'('#1058') '#1078'-'#1090
      Visible = False
      OnClick = menuHTslClick
    end
  end
  object Table7: TTable
    DatabaseName = '.\db'
    IndexName = 'Id_ingredient'
    MasterFields = 'Id'
    MasterSource = DataSource1
    TableName = 'Teploemkost.db'
    Left = 200
    Top = 280
    object Table7Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table7Id_ingredient: TIntegerField
      FieldName = 'Id_ingredient'
    end
    object Table7Cp_mol: TFloatField
      FieldName = 'Cp_mol'
    end
    object Table7T_K: TFloatField
      FieldName = 'T_K'
    end
  end
  object DataSource7: TDataSource
    DataSet = Table7
    Left = 232
    Top = 280
  end
  object PopupMenu7: TPopupMenu
    Left = 264
    Top = 280
    object CpABTCT2DT31: TMenuItem
      Caption = 'Cp=A+B*T+C*T^2+D*T^3'
      OnClick = CpABTCT2DT31Click
    end
    object CpABTCT21: TMenuItem
      Caption = 'Cp=A+B*T+C/T^2'
      OnClick = CpABTCT21Click
    end
    object CpABTCT22: TMenuItem
      Caption = 'Cp=A+B/T+C/T^2'
      OnClick = CpABTCT22Click
    end
  end
  object Table8: TTable
    DatabaseName = '.\db'
    IndexName = 'Id_experiments'
    MasterFields = 'Id'
    MasterSource = DataSource2
    TableName = 'TeplotaSm.DB'
    Left = 200
    Top = 312
    object Table8Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table8Id_experiments: TIntegerField
      FieldName = 'Id_experiments'
    end
    object Table8X1mas: TFloatField
      FieldName = 'X1mas'
    end
    object Table8X2mas: TFloatField
      FieldName = 'X2mas'
    end
    object Table8X1mol: TFloatField
      FieldName = 'X1mol'
    end
    object Table8X2mol: TFloatField
      FieldName = 'X2mol'
    end
    object Table8Y1mas: TFloatField
      FieldName = 'Y1mas'
    end
    object Table8Y2mas: TFloatField
      FieldName = 'Y2mas'
    end
    object Table8Y1mol: TFloatField
      FieldName = 'Y1mol'
    end
    object Table8Y2mol: TFloatField
      FieldName = 'Y2mol'
    end
    object Table8HE: TFloatField
      FieldName = 'HE'
    end
  end
  object DataSource8: TDataSource
    DataSet = Table8
    Left = 232
    Top = 312
  end
  object PopupMenu8: TPopupMenu
    Left = 264
    Top = 312
    object N5: TMenuItem
      Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1088#1103#1076#1072' '#1056#1077#1076#1083#1080#1093#1072'-'#1050#1080#1089#1090#1077#1088#1072
      OnClick = N5Click
    end
  end
  object Table10: TTable
    DatabaseName = '.\db'
    IndexFieldNames = 'Id'
    TableName = 'Ingradients.DB'
    Left = 88
    Top = 160
    object AutoIncField1: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'Name'
      Size = 25
    end
    object StringField2: TStringField
      FieldName = 'Formula'
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'Literature'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'Teplota'
    end
    object FloatField2: TFloatField
      FieldName = 'Temperature'
    end
    object FloatField3: TFloatField
      FieldName = 'MolMassa'
    end
    object FloatField4: TFloatField
      FieldName = 'H_teplota'
    end
    object FloatField5: TFloatField
      FieldName = 'H_kipen'
    end
    object FloatField6: TFloatField
      FieldName = 'T_Kelvin'
    end
  end
  object Table9: TTable
    DatabaseName = '.\db'
    IndexName = 'Id_ingredient'
    MasterFields = 'Id'
    MasterSource = DataSource1
    TableName = 'PTV.DB'
    Left = 200
    Top = 344
    object Table9Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Table9Id_ingredient: TIntegerField
      FieldName = 'Id_ingredient'
    end
    object Table9P_MPa: TFloatField
      FieldName = 'P_MPa'
    end
    object Table9T_K: TFloatField
      FieldName = 'T_K'
    end
    object Table9V: TFloatField
      FieldName = 'V'
    end
    object Table9P_mm: TFloatField
      FieldName = 'P_mm'
    end
    object Table9P_atm: TFloatField
      FieldName = 'P_atm'
    end
    object Table9T_C: TFloatField
      FieldName = 'T_C'
    end
  end
  object DataSource9: TDataSource
    DataSet = Table9
    Left = 232
    Top = 344
  end
  object popupmenu9: TPopupMenu
    Left = 264
    Top = 344
    object PVT1: TMenuItem
      Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1091#1088#1072#1074#1085#1077#1085#1080#1103'  PV(T)'
      OnClick = PVT1Click
    end
    object dV1: TMenuItem
      Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100' dV '#1087#1086' '#1079#1072#1076#1072#1085#1085#1099#1084' '#1058' '#1080' '#1056
      OnClick = dV1Click
    end
    object MenuItem9: TMenuItem
      Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1091#1088#1072#1074#1085#1077#1085#1080#1103' '#1057#1080#1084#1086#1085#1072' '#1080' '#1056'0'
      OnClick = MenuItem9Click
    end
    object menuPTHlg: TMenuItem
      Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1091#1088#1072#1074#1085#1077#1085#1080#1103' '#1056'('#1058') '#1080' '#1053'('#1058') '#1078'-'#1087
      OnClick = menuPTHlgClick
    end
    object menuPTHsl: TMenuItem
      Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1091#1088#1072#1074#1085#1077#1085#1080#1103' '#1053'('#1058') '#1078'-'#1090
      OnClick = menuPTHslClick
    end
  end
end
