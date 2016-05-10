unit Tablica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Menus, math,ComCtrls, comobj, OleServer, Excel2000,myfunct;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    VD: TStringGrid;
    TabSheet3: TTabSheet;
    RG: TStringGrid;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    RT: TStringGrid;
    UR: TStringGrid;
    TabSheet6: TTabSheet;
    GS: TStringGrid;
    TabSheet7: TTabSheet;
    SG: TStringGrid;
    TabSheet8: TTabSheet;
    GE: TStringGrid;
    TabSheet9: TTabSheet;
    GH: TStringGrid;
    TabSheet10: TTabSheet;
    GV: TStringGrid;
    StatusBar1: TStatusBar;
    GR: TStringGrid;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    DknT1: TMenuItem;
    AknT1: TMenuItem;
    Dkn1: TMenuItem;
    TabSheet11: TTabSheet;
    CU: TStringGrid;
    TabSheet12: TTabSheet;
    TS: TStringGrid;
    TabSheet13: TTabSheet;
    TGE: TStringGrid;
    TabSheet14: TTabSheet;
    StS: TStringGrid;
    TabSheet15: TTabSheet;
    PS: TStringGrid;
    TabSheet16: TTabSheet;
    TF: TStringGrid;
    procedure Clear1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure RTClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure GRMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AknT1Click(Sender: TObject);
    procedure DknT1Click(Sender: TObject);
    procedure Dkn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  //myReal=Real;
  //masd=array of myreal;
var
  Form3: TForm3;
   i,j:integer;
   f:tobject;
implementation

uses Grafik,Fdbtable, Main;

{$R *.DFM}

procedure TForm3.Clear1Click(Sender: TObject);
var
    i,j:integer;
begin
   for j:=1 to TStringGrid(Sender).rowcount-1 do
        for i:=1 to  TStringGrid(Sender).colcount-1 do
         TStringGrid(Sender).cells[i,j]:='';
end;

procedure TForm3.Save1Click(Sender: TObject);
var
    f:textfile;
    i,j:integer;
    WorkBook, Sheet,excel: Variant;
    w:myreal;
begin
  SaveDialog1.FileName:='matr_'+ TStringGrid(Sender).Name;
  SaveDialog1.DefaultExt:='txt';
if SaveDialog1.Execute then
begin
     case SaveDialog1.FilterIndex of
     1: begin
     SaveDialog1.DefaultExt:='txt';
     assignfile(f,SaveDialog1.FileName);rewrite(f);
     for j:=0 to  TStringGrid(Sender).rowcount-1 do  begin
        for i:=0 to  TStringGrid(Sender).colcount-1 do
        write(f, TStringGrid(Sender).cells[i,j],' ');
     writeln(f);
     end;
     closefile(f);
     end;
     2:begin
     SaveDialog1.DefaultExt:='xls';
     Excel:=CreateOleObject('Excel.Application');
     WorkBook:=Excel.WorkBooks.add;
     sheet:= Workbook.sheets[1];
     for j:=0 to  TStringGrid(Sender).rowcount-1 do
        for i:=0 to  TStringGrid(Sender).colcount-1 do
        try
        w:=strtofloat(TStringGrid(Sender).cells[i,j]);
        sheet.Cells[j+1,i+1].value:=floattostr(w);
        except
          sheet.Cells[j+1,i+1].value:=TStringGrid(Sender).cells[i,j];
        end;
     WorkBook.saveas(SaveDialog1.FileName);
     WorkBook.close;
     end;
     end;
end;
end;

procedure TForm3.RTClick(Sender: TObject);
var a:TStringGrid;
   i,j:integer;
begin
a:=(sender as TStringGrid);
  for i:=0 to  a.ColCount -1 do
     for j:=0 to a.RowCount-1 do
     a.Cells[i,j]:='';
end;

procedure TForm3.N1Click(Sender: TObject);
begin
   Save1Click(f);
end;

procedure TForm3.N2Click(Sender: TObject);
begin
    RTClick(f);
end;

procedure TForm3.GRMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if mbRight in [button] then f:=sender;
end;

procedure TForm3.AknT1Click(Sender: TObject);
var k,i,n,j,l:integer;
r1,z1,h,s,w,g1,g2,g3,g4,g5,g7,y1,y2:Myreal;
a_,b_,z:array[1..4]of masd;
begin
//расчет состава спирта в паре в зависимости от состава в жидкости
//по экспериментальным данным
{
30	-4.27892	1.07908	        -0.910077
40	-4.04033	1.02268	        -0.846031
50	-3.99934	0.984874	-1.51447
60	-3.78182	1.199577	-1.270295
70	-3.74297	0.956313	-1.452082
80	-3.69866	1.040218	-1.393357
t	A1	A2	A3
}
 k:=ur.RowCount;
 setlength(a_[1],k); setlength(a_[2],k); setlength(a_[3],k);
 setlength(b_[1],k); setlength(b_[2],k); setlength(b_[3],k);
 setlength(z[1],k);
for i:=1 to k-1 do begin
  z[1,i]:=1000/(strtofloat(ur.cells[0,i])+kelvin);
  a_[1,i]:=strtofloat(ur.cells[1,i]);
  a_[2,i]:=strtofloat(ur.cells[2,i]);
  a_[3,i]:=strtofloat(ur.cells[3,i]);
end;
{
 z[1,1]:=1000/(30+kelvin);
 z[1,2]:=1000/(40+kelvin);
 z[1,3]:=1000/(50+kelvin);
 z[1,4]:=1000/(60+kelvin);
 z[1,5]:=1000/(70+kelvin);
 z[1,6]:=1000/(80+kelvin);

 a_[1,1]:=-4.27892;
 a_[1,2]:=-4.04033;
 a_[1,3]:=-3.99934;
 a_[1,4]:=-3.78182;
 a_[1,5]:=-3.74297;
 a_[1,6]:=-3.69866;

 a_[2,1]:=1.07908;
 a_[2,2]:=1.02268;
 a_[2,3]:=0.984874;
 a_[2,4]:=1.199577;
 a_[2,5]:=0.956313;
 a_[2,6]:=1.040218;

 a_[3,1]:= -0.910077;
 a_[3,2]:=-0.846031;
 a_[3,3]:=-1.51447;
 a_[3,4]:=-1.270295;
 a_[3,5]:=-1.452082;
 a_[3,6]:=-1.393357;
 }

 polynrecurs(z[1],a_[1],6,6,b_[1],r1);
 polynrecurs(z[1],a_[2],6,6,b_[2],r1);
 polynrecurs(z[1],a_[3],6,6,b_[3],r1);
{ k:=100;
 form2.Chart7.Series[0].Clear;

 for i:=0 to k do begin
 s:=i/k;
 w:=s*(1-s)*(a_[1,6]+a_[2,6]*(2*s-1)+a_[3,6]*sqr(2*s-1));
 form2.Chart7.Series[0].addxy(s,w);
 end;
 }
 {
 p_1:=0.103;//P0
 p_2:=0.0133;//P
 h:=(p_2-p_1)/ln(10)/R/z1;
 }
 t0:=strtofloat(inputbox('¬вод данных','¬ведите температуру в C',floattostr(0.5)))+kelvin; z1:=315.75;//Tsr
 p_1:=p_antuan(t0,fdbtable.a10,fdbtable.b10,fdbtable.c10);
 p_2:=p_antuan(t0,fdbtable.a20,fdbtable.b20,fdbtable.c20);

 form2.Chart2.Series[6].Clear;form2.Chart2.Series[6].tag:=7;
 form2.Chart9.Series[0].Clear;form2.Chart9.Series[0].tag:=1;
 form2.Chart9.Series[1].Clear;form2.Chart9.Series[1].tag:=2;
 form2.Chart9.Series[2].Clear; form2.Chart9.Series[2].tag:=3;
 n:=high(fdbtable.xm[1]);
 for i:=1 to n do begin
 s:=fdbtable.xm[1,i];
 g1:=math.Log10(fdbtable.g[1,i]/fdbtable.g[2,i]);
 g2:=0;
 for j:=1 to 3 do begin
 g4:=0; w:=1;
  for l:=1 to k-1 do begin
     try
     g4:=g4+b_[j,l]/w*math.power((2*s-1),j-2)*(2*(j+1)*s*(1-s)-1);
     except
     g4:=0;
     end;
     w:=w*z1/1000;
  end;
  g2:=g2+g4;
 end;
 g2:=g2*h+g1;
 form2.Chart2.Series[6].addxy(s,g2);
 g3:=math.power(10,g2);
 g5:=s/(1-s)*p_1/p_2*g3;
 y1:=g5/(1+g5);
 y2:=1-y1;
 g7:=fx1_(y1);//T(y1)
 form2.Chart9.Series[0].addxy(s,s);
 form2.Chart9.Series[1].addxy(s,y1);
 end;

end;

procedure TForm3.DknT1Click(Sender: TObject);
var k,i,n,j,l:integer;
r1,z1,h,x1,x2,p0,y1_,y2_,w1,w2,g1,g2,g3,g4,g5,g7,y1,y2:Myreal;
a_,b_,z:array[1..4]of masd;
begin
 k:=ur.RowCount;
 setlength(a_[1],k); setlength(a_[2],k); setlength(a_[3],k);
 setlength(b_[1],k); setlength(b_[2],k); setlength(b_[3],k);
 setlength(z[1],k);

for i:=1 to k-1 do begin
  z[1,i]:=(1000/(strtofloat(ur.cells[0,i])+kelvin)-1000/(t0+Kelvin));
  a_[1,i]:=strtofloat(ur.cells[1,i]);
  a_[2,i]:=strtofloat(ur.cells[2,i]);
  a_[3,i]:=strtofloat(ur.cells[3,i]);
end;
 polynrecurs(z[1],a_[1],k-1,6,b_[1],r1);
 polynrecurs(z[1],a_[2],k-1,6,b_[2],r1);
 polynrecurs(z[1],a_[3],k-1,6,b_[3],r1);

 z1:=303.15;//Tsr=30 C
 t0:=strtofloat(inputbox('¬вод данных','¬ведите температуру в C',floattostr(0.5)))+kelvin;
 h:=1/ln(10)/R;
 p_1:=p_antuan(t0+kelvin,a10,b10,c10);
 p_2:=p_antuan(t0+kelvin,a20,b20,c20);
 p0:=p_1/p_2;
 n:=gr.RowCount-1;
  form2.Chart2.Series[6].clear; form2.Chart2.Series[6].tag:=7;
  form2.Chart9.Series[0].clear; form2.Chart9.Series[0].tag:=1;
  form2.Chart9.Series[1].clear; form2.Chart9.Series[1].tag:=2;
 for i:=1 to n do begin
 x1:=strtofloat(gr.Cells[1,i]);
 x2:=1-x1;
 y1:=strtofloat(gr.Cells[2,i]);
 y2:=1-y1;
 g2:=y1/y2*x2/x1/p0;
 g1:=math.Log10(g2);

 g2:=0;
 for j:=1 to 3 do begin
 g4:=0; w1:=1/t0/1000;w2:=1/z1/1000;
  for l:=1 to k-1 do begin
     try
     g4:=g4+b_[j,l]/l*(w1-w2)*math.power((2*x1-1),j-2)*(2*(j+1)*x1*x2-1);
     except
     g4:=0;
     end;
     w1:=w1/t0/1000;w2:=w2/z1/1000;
  end;
  g2:=g2+g4;
 end;
 g2:=g2*h+g1;

 form2.Chart2.Series[6].addxy(x1,g2);
 g3:=math.power(10,g2);
 g5:=x1/x2*p0*g3;
 y1_:=g5/(1+g5);
 y2_:=1-y1_;
 form2.Chart9.Series[0].addxy(x1,x1);
 form2.Chart9.Series[1].addxy(x1,y1_);
 end;

end;

procedure TForm3.Dkn1Click(Sender: TObject);
 var k,i,n,j:integer;
r1,z1,hh1,hh2,h1_,h2_,x1:Myreal;
d_:masd;
a_,b_,z:array[1..4]of masd;
begin
//расчет теплоты смешени€ от температуры
//по экспериментальным данным
{ этиловый спирт-вода
  T0	D1	D2	D3
25	-1548.055909	3041.539036	-4391.185309
50	-392.9534749	2025.419742	-3401.081183
58	-29.466621	1726.550048	-2918.448163
70	576.7003514	1226.110527	-2291.953395
90	1603.62072	768.8255951	-1886.739135
110	2415.181369	364.2387366	-1107.430437
}
k:=ur.RowCount;
 setlength(a_[1],k); setlength(a_[2],k); setlength(a_[3],k);
 setlength(b_[1],k); setlength(b_[2],k); setlength(b_[3],k);
 setlength(d_,4);
 setlength(z[1],k);
t0:=strtofloat(inputbox('¬вод данных','¬ведите температуру в C',floattostr(0.5)))+kelvin;
for i:=1 to k-1 do begin
  z[1,i]:=(1000/(strtofloat(ur.cells[0,i])+kelvin));
  a_[1,i]:=strtofloat(ur.cells[1,i]);
  a_[2,i]:=strtofloat(ur.cells[2,i]);
  a_[3,i]:=strtofloat(ur.cells[3,i]);
end;
 form3.rt.RowCount:=9;
 form3.rt.colCount:=4;
 polynrecurs(z[1],a_[1],k-1,4,b_[1],r1);form3.RT.cells[1,5]:=floattostr(r1);
 polynrecurs(z[1],a_[2],k-1,4,b_[2],r1);form3.RT.cells[2,5]:=floattostr(r1);
 polynrecurs(z[1],a_[3],k-1,4,b_[3],r1);form3.RT.cells[3,5]:=floattostr(r1);
 for i:=1 to 3 do form3.RT.cells[i,0]:=inttostr(i);
 for j:=1 to 4 do form3.RT.cells[0,j]:=inttostr(j);
 form3.RT.cells[0,5]:='R';
 form3.RT.cells[0,6]:='Dn(T)';
 for i:=1 to 3 do begin
 for j:=1 to 4 do
 form3.RT.cells[i,j]:=floattostr(b_[i,j]);
 end;
 z1:=1000/t0;
 for i:=1 to 3 do begin
 d_[i]:=fr3(z1,b_[i],4);
 form3.RT.cells[i,6]:=floattostr(d_[i]);
 end;
 h1_:=d_[1]-d_[2]+d_[3];//энтальпии смешени при бесконечном разбавлении
 h2_:=d_[1]+d_[2]+d_[3];
  form3.rt.cells[0,7]:='H1_E';
  form3.rt.cells[1,7]:=floattostr(h1_);
  form3.rt.cells[0,8]:='H2_E';
  form3.rt.cells[1,8]:=floattostr(h2_);

 n:=form1.Fn.value;
 h:=1/n;
  form2.Chart11.Series[1].clear;
  form2.Chart11.Series[0].clear;

 //парциальна€ избыточна€ энтальпи€
 for i:=1 to n-1 do begin
 x1:=i*h;
 hh1:=sqr(1-x1)*(d_[1]+d_[2]*(4*x1-1)+d_[3]*(6*x1-1)*(2*x1-1));
 hh2:=sqr(x1)*(d_[1]+d_[2]*(4*x1-3)+d_[3]*(6*x1-5)*(2*x1-1));
 form3.GH.cells[1,i]:=floattostr(x1);
 form3.GH.cells[2,i]:=floattostr(1-x1);
 form3.GH.cells[3,i]:=floattostr(hh1);
 form3.GH.cells[4,i]:=floattostr(hh2);
 form2.Chart11.Series[0].Addxy(x1,hh1);
 form2.Chart11.Series[1].Addxy(x1,hh2);
 end;
form3.GH.RowCount:=n;
form3.Gh.ColCount:=5;
form3.PageControl1.ActivePageIndex:=4;
form3.Show;
form2.PageControl1.ActivePageIndex:=11;
form2.Show;
end;

end.
