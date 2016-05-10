unit Grafik;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, ComCtrls,
  ExtDlgs, Menus, CheckLst;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Chart1: TChart;
    TabSheet2: TTabSheet;
    Chart2: TChart;
    Series2: TLineSeries;
    Series4: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    TabSheet3: TTabSheet;
    Chart3: TChart;
    LineSeries1: TLineSeries;
    TabSheet4: TTabSheet;
    Chart4: TChart;
    TabSheet5: TTabSheet;
    Chart5: TChart;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    Series10: TLineSeries;
    TabSheet6: TTabSheet;
    Chart6: TChart;
    LineSeries4: TLineSeries;
    LineSeries5: TLineSeries;
    Series11: TLineSeries;
    TabSheet7: TTabSheet;
    Chart7: TChart;
    TabSheet8: TTabSheet;
    Chart8: TChart;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    TabSheet9: TTabSheet;
    Chart9: TChart;
    LineSeries6: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    TabSheet10: TTabSheet;
    Chart10: TChart;
    LineSeries7: TLineSeries;
    LineSeries9: TLineSeries;
    Series15: TLineSeries;
    StatusBar1: TStatusBar;
    SavePictureDialog1: TSavePictureDialog;
    Series1: TLineSeries;
    Series3: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series19: TLineSeries;
    Series26: TLineSeries;
    Series27: TLineSeries;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Y1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Series28: TLineSeries;
    N6: TMenuItem;
    N7: TMenuItem;
    Series29: TLineSeries;
    Series30: TLineSeries;
    Series31: TLineSeries;
    Series32: TLineSeries;
    Series33: TLineSeries;
    Series34: TLineSeries;
    Series35: TLineSeries;
    Series36: TLineSeries;
    Series37: TLineSeries;
    Series38: TLineSeries;
    Series39: TLineSeries;
    Series40: TLineSeries;
    Series41: TLineSeries;
    Series42: TLineSeries;
    Series43: TLineSeries;
    Series44: TLineSeries;
    LineSeries8: TLineSeries;
    Series5: TLineSeries;
    Series45: TLineSeries;
    Series46: TLineSeries;
    Series47: TLineSeries;
    Series48: TLineSeries;
    Series49: TLineSeries;
    Series50: TLineSeries;
    Series51: TLineSeries;
    Series52: TLineSeries;
    Series53: TLineSeries;
    Series54: TLineSeries;
    Series16: TLineSeries;
    CheckListBox10: TCheckListBox;
    CheckListBox1: TCheckListBox;
    CheckListBox2: TCheckListBox;
    CheckListBox3: TCheckListBox;
    CheckListBox4: TCheckListBox;
    CheckListBox5: TCheckListBox;
    CheckListBox6: TCheckListBox;
    CheckListBox7: TCheckListBox;
    CheckListBox8: TCheckListBox;
    CheckListBox9: TCheckListBox;
    Series55: TLineSeries;
    Series56: TLineSeries;
    Series57: TLineSeries;
    Series58: TLineSeries;
    Series59: TLineSeries;
    Series60: TLineSeries;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    Chart11: TChart;
    LineSeries10: TLineSeries;
    LineSeries11: TLineSeries;
    LineSeries12: TLineSeries;
    LineSeries13: TLineSeries;
    LineSeries14: TLineSeries;
    LineSeries15: TLineSeries;
    LineSeries16: TLineSeries;
    LineSeries17: TLineSeries;
    LineSeries18: TLineSeries;
    CheckListBox11: TCheckListBox;
    PopupMenu2: TPopupMenu;
    Chart12: TChart;
    LineSeries19: TLineSeries;
    LineSeries20: TLineSeries;
    LineSeries21: TLineSeries;
    LineSeries22: TLineSeries;
    LineSeries23: TLineSeries;
    LineSeries24: TLineSeries;
    LineSeries25: TLineSeries;
    LineSeries26: TLineSeries;
    LineSeries27: TLineSeries;
    CheckListBox12: TCheckListBox;
    Series61: TLineSeries;
    Series62: TLineSeries;
    N8: TMenuItem;
    ColorDialog1: TColorDialog;
    Series63: TLineSeries;
    Series64: TLineSeries;
    Series65: TLineSeries;
    Series66: TLineSeries;
    Series67: TLineSeries;
    Series68: TLineSeries;
    Series69: TLineSeries;
    Series70: TLineSeries;
    Series71: TLineSeries;
    Series72: TLineSeries;
    Series73: TLineSeries;
    Series74: TLineSeries;
    Series75: TLineSeries;
    Series76: TLineSeries;
    Series77: TLineSeries;
    Series78: TLineSeries;
    Series79: TLineSeries;
    Series80: TLineSeries;
    Series81: TLineSeries;
    Series82: TLineSeries;
    Series83: TLineSeries;
    Series84: TLineSeries;
    Series85: TLineSeries;
    Series86: TLineSeries;
    Series87: TLineSeries;
    Series88: TLineSeries;
    Series89: TLineSeries;
    Series90: TLineSeries;
    Series91: TLineSeries;
    Series92: TLineSeries;
    Series93: TLineSeries;
    Series94: TLineSeries;
    procedure Chart6DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure m1Click(Sender: TObject);
    procedure m2Click(Sender: TObject);
    procedure m3Click(Sender: TObject);
    procedure Chart10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure CheckListBox10Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure N8Click(Sender: TObject);
     procedure Chartclear(Sender: Tchart);
    procedure Chart7ClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const seriescount=20;
var
  Form2: TForm2;
  m:array[0..seriescount]of TMenuItem;
  f:Tobject;
  T:TCheckListBox;
  CL:Tchecklistbox;
  C:Tchart;
implementation
{$R *.dfm}

procedure TForm2.Chart6DblClick(Sender: TObject);
begin
SavePictureDialog1.FileName:='Grafik'+inttostr((sender as Tchart).tag);
SavePictureDialog1.DefaultExt:='bmp';
if SavePictureDialog1.Execute then
 (sender as Tchart).SaveToBitmapFile(SavePictureDialog1.FileName);
end;

procedure TForm2.N1Click(Sender: TObject);
var tl:string;
begin
tl:=inputbox('Изменение параметров диаграммы',n1.Caption,(f as TChart).Title.Text[0]);
(f as TChart).Title.Text.Clear;
(f as TChart).Title.Text.Add(tl);
end;

procedure TForm2.N2Click(Sender: TObject);
var tl:string;
begin
tl:=inputbox('Изменение параметров диаграммы',n2.Caption,(f as TChart).BottomAxis.Title.Caption);
(f as TChart).BottomAxis.Title.Caption:=tl;
end;

procedure TForm2.Y1Click(Sender: TObject);
var tl:string;
begin
tl:=inputbox('Изменение параметров диаграммы',y1.Caption,(f as TChart).leftAxis.Title.Caption);
(f as TChart).leftAxis.Title.Caption:=tl;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
    if (f as TChart).Legend.Visible then
(f as TChart).Legend.Visible:=false else
(f as TChart).Legend.Visible:=true;
end;

procedure TForm2.N4Click(Sender: TObject);
var i:integer;
begin
for i:=0 to seriescount do begin m[i].Caption:='';m[i].Visible:=false; end;
   with (f as TChart) do begin
      for i:=0 to SeriesCount-1 do
      begin
         m[i].Caption:=Series[i].Title;
         m[i].Visible:=true;
         if  Series[i].Active then m[i].Checked:=true;
         m[i].Tag:=i;
         m[i].OnClick:= m1Click;
      end;
   end;
   popupmenu2.Popup(popupmenu1.PopupPoint.X,popupmenu1.PopupPoint.Y);
end;
procedure TForm2.m1Click(Sender: TObject);
var i:integer;
begin
  i:=(sender as tmenuitem).Tag;
  if m[i].Checked then  begin
   m[i].Checked:=false;
   (f as TChart).Series[i].Active:=false;
   end else begin
   m[i].Checked:=true;
   (f as TChart).Series[i].Active:=true;
   end;

end;
procedure TForm2.Chart10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if mbRight in [button] then f:=sender;
end;

procedure TForm2.N5Click(Sender: TObject);
var i:integer;
begin
for i:=0 to seriescount do begin m[i].Caption:='';m[i].Visible:=false; end;
   with (f as TChart) do begin
      for i:=0 to SeriesCount-1 do
      begin
         m[i].Visible:=true;
         m[i].Caption:=Series[i].Title;
         m[i].OnClick:= m2Click;
      end;
   end;
   popupmenu2.Popup(popupmenu1.PopupPoint.X,popupmenu1.PopupPoint.Y);
end;
procedure TForm2.m2Click(Sender: TObject);
var i:integer;
   tl:string;
begin
  i:=(sender as tmenuitem).Tag;
  tl:=inputbox('Введите название ряда','',(f as tchart).Series[i].Title);
  (f as tchart).Series[i].Title:=tl;
end;
procedure TForm2.FormCreate(Sender: TObject);
var i:integer;
begin
for i:=0 to seriescount do begin
 m[i]:= TMenuItem.Create(PopupMenu2);
 PopupMenu2.Items.Add(m[i]);
 m[i].Tag:=i;
end;
end;

procedure TForm2.N6Click(Sender: TObject);
begin
     Chart6DblClick(f);
end;

procedure TForm2.N7Click(Sender: TObject);
var i:integer;
begin
  Chartclear(f as Tchart);
end;
 procedure TForm2.Chartclear(Sender: Tchart);
var i:integer;
begin
 with sender do
  for i:=0 to SeriesCount-1 do  begin
      series[i].Clear;
      series[i].tag:=0;
      series[i].title:='';
      end;
 end;
procedure TForm2.CheckListBox10Click(Sender: TObject);
var k:integer;
begin
   T:=Sender as TCheckListBox;
   k:=T.ItemIndex;
   if T.Checked[k] then C.Series[k].Active:=true
      else C.Series[k].Active:=false;
end;

procedure TForm2.TabSheet1Show(Sender: TObject);
var i,g:integer;
begin

   g:=(Sender as TTabSheet).Tag;
   case g of
   1: begin C:=Chart1; CL:=CheckListBox1; end;
   2: begin C:=Chart2; CL:=CheckListBox2; end;
   3: begin C:=Chart3; CL:=CheckListBox3; end;
   4: begin C:=Chart4; CL:=CheckListBox4; end;
   5: begin C:=Chart5; CL:=CheckListBox5; end;
   6: begin C:=Chart6; CL:=CheckListBox6; end;
   7: begin C:=Chart7; CL:=CheckListBox7; end;
   8: begin C:=Chart8;  CL:=CheckListBox8; end;
   9: begin C:=Chart9;  CL:=CheckListBox9; end;
   10: begin C:=Chart10; CL:=CheckListBox10;end;
   11: begin C:=Chart11; CL:=CheckListBox11;end;
   12: begin C:=Chart12; CL:=CheckListBox12;end;
   end;

   for i:=0 to c.SeriesCount-1 do begin
   if c.Series[i].Tag=0 then begin
   c.Series[i].Active:=false; cl.Checked[i]:=false end
   else begin c.Series[i].Active:=true;cl.Checked[i]:=true end;
   cl.Items[i]:= C.Series[i].Title;
   end;
end;

procedure TForm2.N8Click(Sender: TObject);
var i:integer;
begin
for i:=0 to seriescount do begin m[i].Caption:='';m[i].Visible:=false; end;
   with (f as TChart) do begin
      for i:=0 to SeriesCount-1 do
      begin
         m[i].Visible:=true;
         m[i].Caption:=Series[i].Title;
         m[i].OnClick:= m3Click;
      end;
   end;
   popupmenu2.Popup(popupmenu1.PopupPoint.X,popupmenu1.PopupPoint.Y);
end;
procedure TForm2.m3Click(Sender: TObject);
var i:integer;
begin
  i:=(sender as tmenuitem).Tag;
  colordialog1.color:=(f as tchart).Series[i].SeriesColor;
  colordialog1.Execute;
  (f as tchart).Series[i].SeriesColor:=colordialog1.color;
end;
procedure TForm2.Chart7ClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 (* if button in [mbLeft] then

     if  Tlineseries(Series).pointer.visible then
       Tlineseries(Series).pointer.visible:=false
     else
      Tlineseries(Series).pointer.visible:=true;   *)
end;

end.
