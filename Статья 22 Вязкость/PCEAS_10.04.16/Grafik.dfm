object Form2: TForm2
  Left = 130
  Top = 51
  Width = 871
  Height = 542
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1099
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 863
    Height = 489
    ActivePage = TabSheet2
    Align = alClient
    MultiLine = True
    TabIndex = 3
    TabOrder = 0
    OnMouseDown = Chart10MouseDown
    object TabSheet6: TTabSheet
      Tag = 6
      Caption = #1055#1077#1088#1074#1086#1085#1072#1095#1072#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 5
      OnShow = TabSheet1Show
      object Chart6: TChart
        Tag = 6
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.ExactDateTime = False
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1052#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = #1058', K'
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        RightAxis.ExactDateTime = False
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object LineSeries4: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries5: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psTriangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series11: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 10485760
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series78: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clYellow
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series79: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4194432
          LinePen.Color = 4194432
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series80: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGray
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series81: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clFuchsia
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series82: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clTeal
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series83: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clNavy
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series84: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clMaroon
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox6: TCheckListBox
        Tag = 6
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet1: TTabSheet
      Tag = 1
      Caption = #1069#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090
      OnShow = TabSheet1Show
      object Chart1: TChart
        Tag = 1
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.ExactDateTime = False
        BottomAxis.Grid.Visible = False
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1093'1, '#1084#1086#1083'. '#1076'.'
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.ExactDateTime = False
        LeftAxis.Grid.Visible = False
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.LabelStyle = talValue
        LeftAxis.Title.Angle = 0
        LeftAxis.Title.Caption = 'T, K'
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        Legend.Visible = False
        RightAxis.Grid.Visible = False
        RightAxis.Visible = False
        TopAxis.Title.Font.Charset = DEFAULT_CHARSET
        TopAxis.Title.Font.Color = clBlack
        TopAxis.Title.Font.Height = -19
        TopAxis.Title.Font.Name = 'Arial'
        TopAxis.Title.Font.Style = []
        TopAxis.Visible = False
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object Series1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series3: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          LinePen.Visible = False
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series8: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clNavy
          LineBrush = bsClear
          LinePen.Width = 2
          Pointer.Brush.Color = 4210816
          Pointer.HorizSize = 2
          Pointer.InflateMargins = False
          Pointer.Pen.Color = clMaroon
          Pointer.Pen.Width = 2
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series9: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clOlive
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series19: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clMaroon
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series32: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16711808
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series33: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227327
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series34: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 14622876
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series41: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series42: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clTeal
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series43: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clFuchsia
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series48: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clPurple
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series49: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 9803008
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series50: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 15275585
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series51: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 1789668
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series61: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 630559
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series77: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clMaroon
          LinePen.Width = 2
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 3
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox1: TCheckListBox
        Tag = 1
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet10: TTabSheet
      Tag = 10
      Caption = #1058#1077#1086#1088#1080#1103
      ImageIndex = 9
      OnShow = TabSheet1Show
      object Chart10: TChart
        Tag = 10
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = 'T, '#1050
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.GridCentered = True
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'P, '#1082#1055#1072
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object LineSeries7: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series15: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clNavy
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries9: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          SeriesColor = 11910173
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series63: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series64: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227327
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series65: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series88: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clYellow
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series89: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 8421440
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series90: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clFuchsia
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series91: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clTeal
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox10: TCheckListBox
        Tag = 10
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet2: TTabSheet
      Tag = 2
      Caption = #1051#1086#1075#1072#1088#1080#1092#1084#1099' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' Gamma'
      ImageIndex = 1
      OnShow = TabSheet1Show
      object Chart2: TChart
        Tag = 2
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.ExactDateTime = False
        BottomAxis.Increment = 0.1
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Maximum = 1
        BottomAxis.Title.Caption = #1093'1, '#1084#1086#1083'. '#1076'.'
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'Lg Gamma'
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        Legend.Visible = False
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object Series2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series4: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series6: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clMaroon
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series7: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clFuchsia
          LinePen.Width = 2
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 3
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series24: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16744448
          LinePen.Width = 2
          Pointer.HorizSize = 3
          Pointer.InflateMargins = False
          Pointer.Style = psCircle
          Pointer.VertSize = 3
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series29: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clPurple
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series31: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4259584
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series52: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227327
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series53: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series54: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clOlive
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series66: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clYellow
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series67: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGray
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series68: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clTeal
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox2: TCheckListBox
        Tag = 2
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet3: TTabSheet
      Tag = 3
      Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1087#1083#1072#1074#1083#1077#1085#1080#1103' T'
      ImageIndex = 2
      OnShow = TabSheet1Show
      object Chart3: TChart
        Tag = 3
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.ExactDateTime = False
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1052#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'T, K'
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object Series25: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series45: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 10485760
          LinePen.Width = 2
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 3
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series46: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clPurple
          LinePen.Width = 2
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 3
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series47: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series16: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 10485760
          LinePen.Color = -1
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series73: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 33023
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series74: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227200
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series75: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clFuchsia
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series76: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox3: TCheckListBox
        Tag = 3
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet4: TTabSheet
      Tag = 4
      Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1082#1080#1087#1077#1085#1080#1103' '#1058
      ImageIndex = 3
      OnShow = TabSheet1Show
      object Chart4: TChart
        Tag = 4
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.ExactDateTime = False
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1052#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'T, K'
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object LineSeries8: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series5: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16384
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series26: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series27: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series35: TLineSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = 16744448
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series36: TLineSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = clGray
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series37: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16711808
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series44: TLineSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = 4227327
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox4: TCheckListBox
        Tag = 4
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet5: TTabSheet
      Tag = 5
      Caption = #1048#1079#1073#1099#1090#1086#1095#1085#1072#1103' '#1101#1085#1077#1088#1075#1080#1103' G'
      ImageIndex = 4
      OnShow = TabSheet1Show
      object Chart5: TChart
        Tag = 5
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.ExactDateTime = False
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1052#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'G, '#1044#1078'/'#1084#1086#1083#1100
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object LineSeries2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries3: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16384
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series10: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16711808
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series55: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clMaroon
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series56: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series57: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227072
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series58: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series59: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clOlive
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series60: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227327
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox5: TCheckListBox
        Tag = 5
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet7: TTabSheet
      Tag = 7
      Caption = #1048#1079#1073#1099#1090#1086#1095#1085#1099#1081' '#1084#1086#1083#1100#1085#1099#1081' '#1086#1073#1098#1077#1084' V'
      ImageIndex = 6
      OnShow = TabSheet1Show
      object Chart7: TChart
        Tag = 7
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1052#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'V, '#1084'^3'
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object Series12: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          LinePen.Visible = False
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series20: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clLime
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series17: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 8388672
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series13: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series22: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16711808
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series23: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series92: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clOlive
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series93: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16512
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series94: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 33023
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox7: TCheckListBox
        Tag = 7
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet8: TTabSheet
      Tag = 8
      Caption = #1044#1072#1074#1083#1077#1085#1080#1077' '#1056
      ImageIndex = 7
      OnShow = TabSheet1Show
      object Chart8: TChart
        Tag = 8
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.ExactDateTime = False
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1052#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.GridCentered = True
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'P, k'#1055#1072
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object Series14: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          SeriesColor = 8388672
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series21: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          SeriesColor = 11910173
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series18: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 8453888
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series38: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series39: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series40: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227327
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series70: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clYellow
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series85: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series86: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 8421440
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series87: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clFuchsia
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox8: TCheckListBox
        Tag = 8
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet9: TTabSheet
      Tag = 9
      Caption = #1057#1086#1089#1090#1072#1074' '#1082#1086#1084#1087#1086#1085#1077#1085#1090' x, y'
      ImageIndex = 8
      OnShow = TabSheet1Show
      object Chart9: TChart
        Tag = 9
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = 'X, '#1084#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072' '#1074' '#1078#1080#1076#1082#1086#1089#1090#1080
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'Y, '#1084#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072' '#1074' '#1087#1072#1088#1077
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object LineSeries6: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series28: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series30: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series62: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 12615680
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series69: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clYellow
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series71: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGray
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object Series72: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clFuchsia
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox9: TCheckListBox
        Tag = 9
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet11: TTabSheet
      Tag = 11
      Caption = #1069#1085#1090#1072#1083#1100#1087#1080#1103' H'
      ImageIndex = 10
      OnShow = TabSheet1Show
      object Chart11: TChart
        Tag = 11
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          'TChart')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1052#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'H, '#1044#1078'/'#1084#1086#1083#1100
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object LineSeries10: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries11: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16384
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries12: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16711808
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries13: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clMaroon
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries14: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries15: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227072
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries16: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 8421440
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries17: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clOlive
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries18: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227327
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox11: TCheckListBox
        Tag = 11
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
    object TabSheet12: TTabSheet
      Tag = 12
      Caption = #1069#1085#1090#1088#1086#1087#1080#1103' S'
      ImageIndex = 11
      OnShow = TabSheet1Show
      object Chart12: TChart
        Tag = 12
        Left = 0
        Top = 0
        Width = 734
        Height = 443
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -19
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        OnClickSeries = Chart7ClickSeries
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clBlack
        BottomAxis.LabelsFont.Height = -19
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.Title.Caption = #1052#1086#1083#1100#1085#1072#1103' '#1076#1086#1083#1103' 1-'#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clBlack
        BottomAxis.Title.Font.Height = -19
        BottomAxis.Title.Font.Name = 'Arial'
        BottomAxis.Title.Font.Style = []
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clBlack
        LeftAxis.LabelsFont.Height = -19
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.Title.Caption = 'S, '#1044#1078' / '#1050
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -19
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -19
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = []
        View3D = False
        Align = alClient
        Color = clWhite
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = Chart6DblClick
        OnMouseDown = Chart10MouseDown
        object LineSeries19: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries20: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16384
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries21: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 16711808
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries22: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clMaroon
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries23: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries24: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227072
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries25: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries26: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clOlive
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
        object LineSeries27: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = 4227327
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object CheckListBox12: TCheckListBox
        Tag = 12
        Left = 734
        Top = 0
        Width = 121
        Height = 443
        Align = alRight
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
        TabOrder = 1
        OnClick = CheckListBox10Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 489
    Width = 863
    Height = 19
    Panels = <
      item
        Text = #1044#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' '#1076#1074#1072#1078#1076#1099' '#1085#1072#1078#1084#1080#1090#1077' '#1083#1077#1074#1091#1102' '#1082#1085#1086#1087#1082#1091' '#1084#1099#1096#1080
        Width = 50
      end>
    SimplePanel = False
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 24
    Top = 440
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 440
    object N1: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1075#1086#1083#1086#1074#1086#1082' '#1076#1080#1072#1075#1088#1072#1084#1084#1099
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1086#1076#1087#1080#1089#1100' '#1087#1086' '#1086#1089#1080' '#1061
      OnClick = N2Click
    end
    object Y1: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1086#1076#1087#1080#1089#1100' '#1087#1086' '#1086#1089#1080' Y'
      OnClick = Y1Click
    end
    object N3: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1082#1088#1099#1090#1100' '#1083#1077#1075#1077#1085#1076#1091
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1082#1088#1099#1090#1100' '#1088#1103#1076' '#1076#1072#1085#1085#1099#1093
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1088#1103#1076#1072
      OnClick = N5Click
    end
    object N8: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1094#1074#1077#1090' '#1083#1080#1085#1080#1080' '#1088#1103#1076#1072
      OnClick = N8Click
    end
    object N6: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082' ...'
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = N7Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 88
    Top = 440
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Options = [cdFullOpen, cdPreventFullOpen, cdShowHelp, cdSolidColor, cdAnyColor]
    Left = 120
    Top = 440
  end
end
