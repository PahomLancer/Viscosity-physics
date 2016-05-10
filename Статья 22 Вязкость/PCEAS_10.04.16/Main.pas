unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Spin, ExtCtrls, Grids, Db, DBTables, DBCtrls, shellapi,
  DBGrids,math,myfunct, ComCtrls;
type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    mainN1: TMenuItem;
    menuN2_6: TMenuItem;
    mainN3: TMenuItem;
    menuN2_1: TMenuItem;
    menuN7: TMenuItem;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Fn: TSpinEdit;
    DataSource1: TDataSource;
    Table1: TTable;
    Table1Id: TAutoIncField;
    Table1Name: TStringField;
    Table1Teplota: TFloatField;
    Table1Temperature: TFloatField;
    Table1MolMassa: TFloatField;
    DataSource2: TDataSource;
    DBGrid3: TDBGrid;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    Table2: TTable;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    menuN2_2: TMenuItem;
    MR: TStringGrid;
    menuM2: TMenuItem;
    Button3: TButton;
    Table1H_teplota: TFloatField;
    Table1P_kipen: TFloatField;
    Table1T_Kelvin: TFloatField;
    Table1A_ant: TFloatField;
    Table1B_ant: TFloatField;
    Table1C_ant: TFloatField;
    Table1A_lg: TFloatField;
    Table1B_lg: TFloatField;
    Table1C_lg: TFloatField;
    Table1D_lg: TFloatField;
    Table1A_sg: TFloatField;
    Table1B_sg: TFloatField;
    Table1C_sg: TFloatField;
    Table1D_sg: TFloatField;
    Table1P_kr: TFloatField;
    Table1V_kr: TFloatField;
    Table1T_kr: TFloatField;
    Table1Z_kr: TFloatField;
    Table1P0: TFloatField;
    Table1T0: TFloatField;
    Table1P_tr: TFloatField;
    Table1T_tr: TFloatField;
    Table1P_atm: TFloatField;
    Table1T_atm: TFloatField;
    menuN2_12: TMenuItem;
    menuN2_3: TMenuItem;
    menuN2_4: TMenuItem;
    menuN2_7: TMenuItem;
    menuN2_5: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    StatusBar1: TStatusBar;
    Mn_help: TMenuItem;
    Mn_about: TMenuItem;
    Mn_calc: TMenuItem;
    Table1H_kipen: TFloatField;
    Table1Cp_mol: TFloatField;
    Table1A_Cp: TFloatField;
    Table1B_Cp: TFloatField;
    Table1C_Cp: TFloatField;
    Table1D_Cp: TFloatField;
    menuN2_8: TMenuItem;
    menuN01: TMenuItem;
    menuN02: TMenuItem;
    menuN2_10: TMenuItem;
    Label14: TLabel;
    EdtA: TEdit;
    EdtB: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    menuN2_15: TMenuItem;
    Table2Id: TAutoIncField;
    Table2Id_Name: TIntegerField;
    Table2Id_Names: TIntegerField;
    Table2Id_Named: TIntegerField;
    Table2Data: TDateField;
    Table2TC_cmecu: TFloatField;
    Table2Pl_cmecu: TFloatField;
    Table2Ro1: TFloatField;
    Table2Ro2: TFloatField;
    Table2Ro3: TFloatField;
    Table2P1_0: TFloatField;
    Table2P2_0: TFloatField;
    Table2P3_0: TFloatField;
    Table2VE1_0: TFloatField;
    Table2VE2_0: TFloatField;
    Table2VE3_0: TFloatField;
    Table2Lambda1: TFloatField;
    Table2Lambda2: TFloatField;
    Table2Lambda3: TFloatField;
    Table2Lambda12: TFloatField;
    Table2Lambda13: TFloatField;
    Table2Lambda32: TFloatField;
    Table2A1: TFloatField;
    Table2A2: TFloatField;
    Table2A3: TFloatField;
    Table2X1: TFloatField;
    Table2X2: TFloatField;
    Table2X3: TFloatField;
    Table2T: TFloatField;
    Table2H: TFloatField;
    Table2P: TFloatField;
    Table2Ge: TFloatField;
    Table2Ve: TFloatField;
    Table2K1: TFloatField;
    Table2K2: TFloatField;
    Table2K3: TFloatField;
    Table2K12: TFloatField;
    Table2K13: TFloatField;
    Table2K23: TFloatField;
    Table2Lambda1_az: TFloatField;
    Table2Lambda2_az: TFloatField;
    Table2Lambda3_az: TFloatField;
    Table2Lambda12_az: TFloatField;
    Table2Lambda13_az: TFloatField;
    Table2Lambda23_az: TFloatField;
    Table2K1_az: TFloatField;
    Table2K2_az: TFloatField;
    Table2K3_az: TFloatField;
    Table2K12_az: TFloatField;
    Table2K13_az: TFloatField;
    Table2K23_az: TFloatField;
    Table2X1_az: TFloatField;
    Table2X2_az: TFloatField;
    Table2X3_az: TFloatField;
    RadioGroup1: TRadioGroup;
    Table2Tau1: TFloatField;
    Table2Tau2: TFloatField;
    Table2Tau3: TFloatField;
    menuN2_13: TMenuItem;
    Table1Formula: TStringField;
    Table1Literature: TStringField;
    Table1Koef_teplota: TSmallintField;
    Table1Koef_kipen: TSmallintField;
    Table2R1: TFloatField;
    Table2R2: TFloatField;
    Table2R3: TFloatField;
    menuN2_14: TMenuItem;
    Table2T_az: TFloatField;
    Table1T_fp: TFloatField;
    Table2Information: TStringField;
    mainN2: TMenuItem;
    popupN2: TMenuItem;
    Table1C_Simona: TFloatField;
    Table1V_ls: TFloatField;
    Table1Ro_l: TFloatField;
    Table1Ro_s: TFloatField;
    Table1Ro_g: TFloatField;
    Table1H_tr: TFloatField;
    Table1V_tr: TFloatField;
    popupn3: TMenuItem;
    Table1A_V: TFloatField;
    Table1B_V: TFloatField;
    Table1C_V: TFloatField;
    popupn4: TMenuItem;
    menuN2_11: TMenuItem;
    menuN2_9: TMenuItem;
    Label15: TLabel;
    Label16: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    SpinEdit1: TSpinEdit;
    Label17: TLabel;
    popupn5: TMenuItem;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    SpinEdit2: TSpinEdit;
    menuN2_16: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure menuN7Click(Sender: TObject);
    procedure menuN2_6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure menuN2_1Click(Sender: TObject);
    procedure menuN2_2Click(Sender: TObject);
    procedure menuM2Click(Sender: TObject);
    procedure menuN6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MRDblClick(Sender: TObject);
    procedure Table2BeforePost(DataSet: TDataSet);
    procedure menuN2_12Click(Sender: TObject);
    procedure menuN2_3Click(Sender: TObject);
    procedure menuN2_4Click(Sender: TObject);
    procedure menuN2_7Click(Sender: TObject);
    procedure menuN2_5Click(Sender: TObject);
    procedure menuN15Click(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Mn_calcClick(Sender: TObject);
    procedure Mn_aboutClick(Sender: TObject);
    procedure menuN2_8Click(Sender: TObject);
    procedure menuN2_10Click(Sender: TObject);
    procedure Mn_helpClick(Sender: TObject);
    procedure menuN2_15Click(Sender: TObject);
    procedure menuN2_13Click(Sender: TObject);
    procedure menuN2_14Click(Sender: TObject);
    procedure popupN2Click(Sender: TObject);
    procedure popupn3Click(Sender: TObject);
    procedure popupn4Click(Sender: TObject);
    procedure menuN2_11Click(Sender: TObject);
    procedure menuN2_9Click(Sender: TObject);
    procedure popupn5Click(Sender: TObject);
    procedure menuN2_16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VV,flagCtrl:Boolean;
  Data1:TDateTime;
  a_vv1,a_vv2,a_vv3,b_vv1,b_vv2,b_vv3,c_vv1,c_vv2,c_vv3,
  a,b,h,M1,M2,T3,M3,lm1,lm2,lm:MyReal;
  x12,x13,x23,T12,T13,T23:myreal;
  N,N1,N2,N3,IE,I1,I2,I3,k,k1,k2,koefHt1,KoefHt2,
  KoefHt3,KoefHk1,KoefHk2,KoefHk3:integer;
  a0,b0,x1,x2,x3,x20,x10,p1_0,p2_0,p3_0,
  GB1,GB2,GB,mu1,mu2,mu3,Hp1,Hp2,Hp3,Tp1,Tp2,Tp3,
  A1_ant,B1_ant,C1_ant,A2_ant,B2_ant,C2_ant,
  A3_ant,B3_ant,C3_ant, t_tr1,t_tr2,t_tr3,
  p_tr1,p_tr2,p_tr3,
  t_kr1,t_kr2,t_kr3,h_tr1,h_tr2,h_tr3,z_kr1,z_kr2,z_kr3,
  cc1,cc2,cc3,p_cmecu,p0_1,p0_2,p0_3,t0_1,t0_2,t0_3,p_cmec,
  vv1,vv2,vv3,HK1,HK2,Hk3,TK1,TK2,Tk3:MyReal;
   l1l2:array[1..2,0..256]of integer;
 //=((1,1,2,1,3,2,3,1),(4,3,5,2,5,3,4,1));
   name1,name2,name3,s:string;
  y,Z,X,Xm,XmS,T,Tl:array[1..4]of masD;

implementation
uses grafik, tablica, Fdbtable, fabout,teplota;
{$R *.DFM}
function poisk_temp(t12:myreal; t:masd;n:integer):integer;
var i:integer;
begin
result:=0;
for i:=1 to n do
 if abs(t12-t[i])<=1.e-6 then begin result:=i;exit end;
end;
procedure schet(k21,k22,k11,k12:integer;h_2,h_1,t_2,t_1,x_2,x_1:myreal;i:integer);
var t12,x1,x2,hh,x1_2:myreal;
begin
if i=0 then exit;
   inc(k);
    h20:=h_2;h10:=h_1;
    t20:=t_2;t10:=t_1;
    x20:=x_2;x10:=x_1;
    //x1:=methodnuton(eps,fx1,dfdx1);
    x1:=methodhord(eps,1-eps,fx1);
    x2:=(1-x1);
    t12:=fx2(x2);
    hh:=h10*x1+h20*x2;
    x1_2:=x1*(x10-x20)+x20; x2:=1-x1_2;
    //hh:=h10*x1_2+h20*x2;
    l1l2[2,k-1]:=(k22+k12);
    l1l2[1,k-1]:=(k11+k21);
    //hh:=h1*x1_2*l1l2[1,k-1]+h2*x2*l1l2[2,k-1];
    form3.GE.cells[0,k]:=inttostr(l1l2[2,k-1])+'*k2-'+inttostr(l1l2[1,k-1])+'*k1';//'Решение методом Ньютона';
    form3.GE.cells[1,k]:=floattostr(x1_2);
    form3.GE.cells[2,k]:=floattostr(x2);
    form3.GE.cells[3,k]:=floattostr(t12);
    form3.GE.cells[4,k]:=floattostr(t12-Kelvin);
    form3.GE.cells[5,k]:=floattostr(hh);
    form3.GE.cells[6,k]:=inttostr(l1l2[1,k-1]);
    form3.GE.cells[7,k]:=inttostr(l1l2[2,k-1]);
    form3.GE.rowcount:=k+1;
   //form2.Chart3.Series[1].Addxy(x1_2,t12);
    schet(k21+k11,k22+k12,k11,k12,hh,h_1,t12,t_1,x1_2,x_1,i-1);
    schet(k21,k22,k21+k11,k22+k12,h_2,hh,t_2,t12,x_2,x1_2,i-1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  mainN1.enabled:=false;
  MR.Cells[0,0]:='#';
  MR.Cells[0,1]:='1';
  MR.Cells[0,2]:='2';
  MR.Cells[0,3]:='3';
  MR.Cells[1,0]:='Компонента';
  MR.Cells[3,0]:='Теплота плавления';
  MR.Cells[4,0]:='Температура плавления';
  MR.Cells[2,0]:='Молярная масса';
  MR.Cells[5,0]:='Теплота испарения';
  MR.Cells[6,0]:='Температура кипения';
  MR.Cells[7,0]:='А_Антуана';
  MR.Cells[8,0]:='В_Антуана';
  MR.Cells[9,0]:='С_Антуана';
  Table1.Open;
  Table2.Open;
  s:='';
end;

procedure TForm1.menuN7Click(Sender: TObject);
var i,j:integer;
pp,hk1_1,hk1_2,rr,stept,tp1_,tp2_,tp3_,tk1_,tk2_,tk3_:myreal;
old2,old1:string;
begin
if not menun7.Checked then begin
//clear table and chart
form3.RTClick(form3.rt);
form3.RTClick(form3.CU);
form3.RTClick(form3.VD);
form3.RTClick(form3.RG);
form3.RTClick(form3.UR);
form3.RTClick(form3.GS);
form3.RTClick(form3.SG);
form3.RTClick(form3.GE);
form3.RTClick(form3.GH);
form3.RTClick(form3.GV);
form3.RTClick(form3.GR);
form3.RTClick(form3.TGE);
form3.RTClick(form3.TS);
form3.RTClick(form3.TF);
form3.RTClick(form3.PS);
form3.RTClick(form3.STS);
form2.Chartclear(form2.Chart1);
form2.Chartclear(form2.Chart2);
form2.Chartclear(form2.Chart3);
form2.Chartclear(form2.Chart4);
form2.Chartclear(form2.Chart5);
form2.Chartclear(form2.Chart6);
form2.Chartclear(form2.Chart7);
form2.Chartclear(form2.Chart8);
form2.Chartclear(form2.Chart9);
form2.Chartclear(form2.Chart10);
form2.Chartclear(form2.Chart11);
form2.Chartclear(form2.Chart12);

a:=strtofloat(edtA.text);
b:=strtofloat(edtB.text);
N:=Fn.Value;
H:=(b-a)/N;
old2:=table2.Bookmark;
old1:=table1.Bookmark;
IE:=Table2Id.Value;
p_cmecu:=Table2pl_cmecu.Value;
I1:=Table2Id_Name.Value;
I2:=Table2Id_Names.Value;
I3:=Table2Id_Named.Value;
P1_0:=table2p1_0.value;
P2_0:=table2p2_0.value;
//P3_0:=table2p3_0.value;
Data1:=Table2Data.Value;
k:=0;

//1-я компонента
KoefHt1:=Table1Koef_teplota.value;
koefhk1:=Table1Koef_kipen.Value;
Hp1:=Table1Teplota.Value*koefht1;
Hk1:=Table1H_kipen.Value*koefHk1;
Tp1:=Table1Temperature.Value+Kelvin;
Tk1:=Table1T_Kelvin.Value+Kelvin;
cc1:=Table1C_Simona.value;
vv1:=Table1V_ls.value;
p_tr1:=Table1p_tr.Value;
t_tr1:=Table1T_tr.Value;
t_kr1:=Table1T_kr.Value;
z_kr1:=Table1z_kr.Value;
h_tr1:=Table1H_tr.Value;

H1:=hp1;
T1:=tp1;
P0_1:=table1p0.Value;//кПа
T0_1:=table1t0.Value;//K
a1_ant:=Table1A_ant.Value;
b1_ant:=Table1B_ant.Value;
c1_ant:=Table1C_ant.Value;
M1:=Table1MolMassa.Value;
name1:=Table1Name.Value;
MR.Cells[1,1]:=name1;
MR.Cells[2,1]:=floattostr(m1);
MR.Cells[3,1]:=floattostr(hp1);
MR.Cells[4,1]:=floattostr(tp1);
MR.Cells[5,1]:=floattostr(hk1);
MR.Cells[6,1]:=floattostr(tk1);
MR.Cells[7,1]:=floattostr(a1_ANT);
MR.Cells[8,1]:=floattostr(b1_ant);
MR.Cells[9,1]:=floattostr(c1_ant);

//2-я компонента
table1.Locate('id',i2,[]);
table2.Locate('id_name',i2,[]);
if i3=0 then
while not (table2.Eof) and not((table2id_named.Value=0)and(table2id_names.Value=i1))
 do table2.Next
else
while not (table2.Eof) and not((table2id_named.Value=i1)and(table2id_names.Value=i3))
do table2.Next;
//
KoefHt2:=Table1Koef_teplota.value;
koefhk2:=Table1Koef_kipen.Value;
Hp2:=Table1Teplota.Value*koefht2;
Hk2:=Table1H_kipen.Value*koefHk2;
Tp2:=Table1Temperature.Value+Kelvin;
Tk2:=Table1T_Kelvin.Value+Kelvin;
cc2:=Table1C_Simona.value;
vv2:=Table1V_ls.value;
p_tr2:=Table1P_tr.Value;
t_tr2:=Table1T_tr.Value;
t_kr2:=Table1T_kr.Value;
z_kr2:=Table1z_kr.Value;
h_tr2:=Table1H_tr.Value;

H2:=hp2;
T2:=tp2;
a2_ant:=Table1A_ant.Value;
b2_ant:=Table1B_ant.Value;
c2_ant:=Table1C_ant.Value;
P0_2:=table1p0.Value;//кПа
T0_2:=table1t0.Value;//K
M2:=Table1MolMassa.Value;
name2:=Table1Name.Value;
MR.Cells[1,2]:=name2;
MR.Cells[2,2]:=floattostr(m2);
MR.Cells[3,2]:=floattostr(hp2);
MR.Cells[4,2]:=floattostr(tp2);
MR.Cells[5,2]:=floattostr(hk2);
MR.Cells[6,2]:=floattostr(tk2);
MR.Cells[7,2]:=floattostr(a2_ant);
MR.Cells[8,2]:=floattostr(b2_ant);
MR.Cells[9,2]:=floattostr(c2_ant);

//3-я компонента
if i3<>0 then begin

table1.Locate('id',i3,[]);
table2.Locate('id_name',i3,[]);
while not table2.Eof and not ((table2id_names.Value=i1)and(table2id_named.Value=i2))
 do table2.Next;

KoefHt3:=Table1Koef_teplota.value;
koefhk3:=Table1Koef_kipen.Value;
Hp3:=Table1Teplota.Value*koefht3;
Hk3:=Table1H_kipen.Value*koefHk3;
Tp3:=Table1Temperature.Value+Kelvin;
Tk3:=Table1T_Kelvin.Value+Kelvin;
cc3:=Table1C_Simona.value;
vv3:=Table1V_ls.value;
p_tr3:=Table1p_tr.Value;
t_tr3:=Table1T_tr.Value;
t_kr3:=Table1T_kr.Value;
z_kr3:=Table1z_kr.Value;
h_tr3:=Table1H_tr.Value;

H3:=hp3;
T3:=tp3;
a3_ant:=Table1A_ant.Value;
b3_ant:=Table1B_ant.Value;
c3_ant:=Table1C_ant.Value;
P0_3:=table1p0.Value;//кПа
T0_3:=table1t0.Value;//K
M3:=Table1MolMassa.Value;
name3:=Table1Name.Value;
MR.Cells[1,3]:=name3;
MR.Cells[2,3]:=floattostr(m3);
MR.Cells[3,3]:=floattostr(hp3);
MR.Cells[4,3]:=floattostr(tp3);
MR.Cells[5,3]:=floattostr(hk3);
MR.Cells[6,3]:=floattostr(tk3);
MR.Cells[7,3]:=floattostr(a3_ant);
MR.Cells[8,3]:=floattostr(b3_ant);
MR.Cells[9,3]:=floattostr(c3_ant);
end;
if not((p_cmecu=0)or(P_cmecu=760))then
begin
p_cmec:=p_cmecu*Pascual/1000;
//вариант 1
tk1_:=t_antuan(p_cmecu,a1_ant,b1_ant,c1_ant);
try
//hk1:=KoefHk1*h_tr1*power((t_kr1-tk1)/(t_kr1-t_tr1),sqr(z_kr1)*(tk1-t_tr1)/(t_kr1-t_tr1)+z_kr1); //h_исп по эмпирической формуле
 hk1:=KoefHk1*hk1*power((t_kr1-tk1_)/(t_kr1-tk1),sqr(z_kr1)*(tk1_-tk1)/(t_kr1-tk1)+z_kr1); //h_исп по эмпирической формуле

 except
 end;
{//вариант 2
tk1:=t_tr1;
hk1:=KoefHk1*h_tr1;
if p_cmec>p_tr1 then begin
try
pp:=ln(p_cmec)-ln(p_tr1);
rr:=0; stept:=0.1;
repeat
tk1:=tk1+stept;
hk1:=KoefHk1*h_tr1/r/sqr(tk1)*power((t_kr1-tk1)/(t_kr1-t_tr1),sqr(z_kr1)*(tk1-t_tr1)/(t_kr1-t_tr1)+z_kr1); //h_исп по эмпирической формуле
hk1_2:=KoefHk1*h_tr1/r/sqr(tk1+stept/2)*power((t_kr1-(tk1+stept/2))/(t_kr1-t_tr1),sqr(z_kr1)*(tk1+stept/2-t_tr1)/(t_kr1-t_tr1)+z_kr1); //h_исп по эмпирической формуле
hk1_1:=KoefHk1*h_tr1/r/sqr(tk1+stept)*power((t_kr1-(tk1+stept))/(t_kr1-t_tr1),sqr(z_kr1)*(tk1+stept-t_tr1)/(t_kr1-t_tr1)+z_kr1); //h_исп по эмпирической формуле
//rr:=rr+stept/6*(hk1+4*hk1_2+hk1_1);
rr:=rr+stept/2*(hk1+hk1_1);
until rr>=pp;
except
showmessage('tk1='+floattostr(tk1)+' hk1='+floattostr(hk1)+
' rr='+floattostr(rr)+' pp='+floattostr(pp));
end;
end else
begin
try
pp:=-ln(p_cmec)+ln(p_tr1);
rr:=0; stept:=0.1;
repeat
tk1:=tk1-stept;
hk1:=KoefHk1*h_tr1/r/sqr(tk1)*power((t_kr1-tk1)/(t_kr1-t_tr1),sqr(z_kr1)*(tk1-t_tr1)/(t_kr1-t_tr1)+z_kr1); //h_исп по эмпирической формуле
hk1_2:=KoefHk1*h_tr1/r/sqr(tk1-stept/2)*power((t_kr1-(tk1-stept/2))/(t_kr1-t_tr1),sqr(z_kr1)*(tk1-stept/2-t_tr1)/(t_kr1-t_tr1)+z_kr1); //h_исп по эмпирической формуле
hk1_1:=KoefHk1*h_tr1/r/sqr(tk1-stept)*power((t_kr1-(tk1-stept))/(t_kr1-t_tr1),sqr(z_kr1)*(tk1-stept-t_tr1)/(t_kr1-t_tr1)+z_kr1); //h_исп по эмпирической формуле
//rr:=rr+stept/6*(hk1+4*hk1_2+hk1_1);
rr:=rr+stept/2*(hk1+hk1_1);
until rr<=pp;
except
showmessage('tk1='+floattostr(tk1)+' hk1='+floattostr(hk1)+
' rr='+floattostr(rr)+' pp='+floattostr(pp));
end;
end;
 }
 tk2_:=t_antuan(p_cmecu,a2_ant,b2_ant,c2_ant);
try
//hk2:=KoefHk2*h_tr2*power((t_kr2-tk2)/(t_kr2-t_tr2),sqr(z_kr2)*(tk2-t_tr2)/(t_kr2-t_tr2)+z_kr2); //h_исп по эмпирической формуле
 hk1:=KoefHk2*hk2*power((t_kr2-tk2_)/(t_kr2-tk2),sqr(z_kr2)*(tk2_-tk2)/(t_kr2-tk2)+z_kr2); //h_исп по эмпирической формуле

except
end;
tk1:=tk1_;
tk2:=tk2_;

//p_atm:=760*pascual/1000;
//cc1:=hp1/tp1/r/koefht1;
tp1_:=t0_1*power(-p_cmec/p0_1+1,1/cc1); //ур-ние Симона
//hp1:=cc1*tp1_*r*koefht1;
//hp1:=-tp1_*cc1*p0_1/tp1*power(tp1/t0_1,cc1)*vv1*koefht1;
//hp1:=koefht1*(p_cmec+abs(p0_1))*vv1*cc1*1000;
//{1.}
hp1:=hp1*(1+abs(p0_1)/p_cmec)/(1+abs(p0_1)/p_atm*1000)*p_cmec/p_atm*1000;
//hp1:=hp1*(-p_cmec/p0_1+ 1 );
//hp1:=cc1*(1-p0_1/p_cmec)*p_cmec*vv1;
//hp1:=hp1*koefht1;
//{2.}hp1:=koefHt1*hp1*power((t_kr1-tp1_)/(t_kr1-tp1),sqr(z_kr1)*(tp1_-tp1)/(t_kr1-tp1)+z_kr1); //h_исп по эмпирической формуле
tp1:=tp1_;

//cc2:=hp2/tp2/r/koefht2;
tp2_:=t0_2*power(-p_cmec/p0_2+1,1/cc2);//exp(ln(-p_cmecu/p0_2+1)/cc2);
//hp2:=cc2*tp2_*r*koefht2;
//hp2:=-tp2_*cc2*p0_2/tp2*power(tp2/t0_2,cc2)*vv2*koefht2;
//hp2:=koefht2*vv2*cc2*(p_cmec+abs(p0_2))*1000;
//{1.}
hp2:=hp2*(1+abs(p0_2)/p_cmec)/(1+abs(p0_2)/p_atm*1000)*p_cmec/p_atm*1000;
//hp2:=hp2*(-p_cmec/p0_2+ 1 );
//hp2:=cc2*(1-p0_2/p_cmec)*p_cmec*vv2;
//hp2:=hp2*koefht2;
//{2.}hp2:=KoefHt2*hp2*power((t_kr2-tp2_)/(t_kr2-tp2),sqr(z_kr2)*(tp2_-tp2)/(t_kr2-tp2)+z_kr2);
tp2:=tp2_;
MR.Cells[3,1]:=floattostr(hp1);
MR.Cells[4,1]:=floattostr(tp1);
MR.Cells[5,1]:=floattostr(hk1);
MR.Cells[6,1]:=floattostr(tk1);
MR.Cells[3,2]:=floattostr(hp2);
MR.Cells[4,2]:=floattostr(tp2);
MR.Cells[5,2]:=floattostr(hk2);
MR.Cells[6,2]:=floattostr(tk2);
if (i3<>0) then begin
tk3:=t_antuan(p_cmecu,a3_ant,b3_ant,c3_ant);
hk3:=KoefHk3*h_tr3*power((t_kr3-tk3)/(t_kr3-t_tr3),sqr(z_kr3)*(tk3-t_tr3)/(t_kr3-t_tr3)+z_kr3); //h_исп по эмпирической формуле
tp3_:=t0_3*power(-p_cmec/p0_3+1,1/cc3);//exp(ln(-p_cmecu/p0_2+1)/cc2);
hp3:=hp3*(-p_cmec/p0_3+ 1 );
hp3:=koefht3*(p_cmec+abs(p0_3))*vv3*cc3*1000;
hp3:=cc3*(1-p0_3/p_cmec)*p_cmec*vv3;
hp3:=hp3*koefht3;
tp3:=tp3_;
MR.Cells[3,3]:=floattostr(hp3);
MR.Cells[4,3]:=floattostr(tp3);
MR.Cells[5,3]:=floattostr(hk3);
MR.Cells[6,3]:=floattostr(tk3);
end;
end;
menun7.Checked:=true;
mainN1.Enabled:=true;
menun7.Caption:='Разорвать связь';
end else begin
menun7.Checked:=false;
mainN1.Enabled:=false;
menun7.Caption:='Установить связь';
for i:=1 to 3 do
for j:=1 to 4 do MR.Cells[j,i]:='';
end;
table1.Bookmark:=old1;
table2.Bookmark:=old2;
end;

procedure TForm1.menuN2_6Click(Sender: TObject);
var g12,p_cm, g1,g2,z1,z2,p_1,p_2,lng1,lng2,lgG12,gg,
y1,xm,ym,yv,xv,t12,x0,t0,mint,minx,k1,k2,tau1,tau2:myreal;
   i:integer;
begin
//теоретический расчет температуры кипения раствора
//расчет по формуле T(x)
try
 tau2:=Table2Tau2.Value;
 tau1:=Table2Tau1.Value;
 k1:=Table2K1.Value/tau1;
 k2:=Table2K2.Value/tau2;
  except
 k1:=1;k2:=1;
 tau1:=1;tau2:=1;
 end;
 h1:=hk1*k1;h2:=hk2*k2;  //теплота испарения
 t1:=tk1;t2:=tk2;        //температура кипения
 h10:=h1;h20:=h2;t10:=t1;t20:=t2;
 form2.Chart4.Title.Text.Clear;
 form2.Chart4.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
 form2.Chart4.Series[0].clear;
 form2.Chart4.Series[0].tag:=1;
 form2.Chart4.Series[0].Title:='T(x1)-теор.';
 form2.Chart4.Series[3].clear;
 form2.Chart4.Series[3].tag:=1;
 form2.Chart4.Series[3].Title:='T(y1)-теор.';
  form2.Chart2.Series[0].clear;
  form2.Chart2.Series[0].tag:=1;
  form2.Chart2.Series[0].Title:='lng1';
  form2.Chart2.Series[1].clear;
  form2.Chart2.Series[1].tag:=2;
  form2.Chart2.Series[1].Title:='lng2';
  form2.Chart2.Series[2].clear;
  form2.Chart2.Series[2].tag:=3;
  form2.Chart2.Series[2].Title:='g1';
  form2.Chart2.Series[3].clear;
  form2.Chart2.Series[3].tag:=4;
  form2.Chart2.Series[3].Title:='g2';
  form2.Chart2.Series[4].clear;
  form2.Chart2.Series[4].tag:=5;
  form2.Chart2.Series[4].Title:='lg g1/g2';
  form2.Chart2.Series[5].clear;
  form2.Chart2.Series[5].tag:=6;
  form2.Chart2.Series[5].Title:='g1/g2';

  form3.RG.ColCount:=12;
  form3.RG.RowCount:=n;
  form3.RG.cells[0,0]:='i';
  form3.RG.cells[1,0]:='z1';
  form3.RG.cells[2,0]:='t12';
  form3.RG.cells[3,0]:='lng1';
  form3.RG.cells[4,0]:='lng2';
  form3.RG.cells[5,0]:='g1';
  form3.RG.cells[6,0]:='g2';
  form3.RG.cells[7,0]:='lgG12';
  form3.RG.cells[8,0]:='G12';
  form3.RG.cells[9,0]:='p1';
  form3.RG.cells[10,0]:='p2';
  form3.RG.cells[11,0]:='y1';

 mint:=1.0e+30;
 p_cm:=Table2Pl_cmecu.Value;
 if p_cm=0 then p_cm:=760;
 p_cm:=p_cm*pascual/1000;
 for i:=1 to n-1 do begin
  z1:=i*h;
  z2:=1-z1;
  t12:=fx1_(z1);
  lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
  lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
  g1:=exp(lng1);
  g2:=exp(lng2);
  lgG12:=math.Log10(exp(lng1-lng2));
  g12:=power(10, lgG12);
  p_1:=p_antuan(t12,a1_ant,b1_ant,c1_ant);
  p_2:=p_antuan(t12,a2_ant,b2_ant,c2_ant);
//  y1:=z1*g1*p_1/p_cm;
  y1:=1/(1+g2/g1*z2/z1*p_2/p_1);
  form3.RG.cells[0,i]:=inttostr(i);
  form3.RG.cells[1,i]:=format('%5.4f',[z1]);
  form3.RG.cells[2,i]:=format('%5.4f',[t12]);
  form3.RG.cells[3,i]:=format('%5.6f',[lng1]);
  form3.RG.cells[4,i]:=format('%5.6f',[lng2]);
  form3.RG.cells[5,i]:=format('%5.6f',[g1]);
  form3.RG.cells[6,i]:=format('%5.6f',[g2]);
  form3.RG.cells[7,i]:=format('%5.6f',[lgG12]);
  form3.RG.cells[8,i]:=format('%5.6f',[G12]);
  form3.RG.cells[9,i]:=format('%5.6f',[p_1]);
  form3.RG.cells[10,i]:=format('%5.6f',[p_2]);
  form3.RG.cells[11,i]:=format('%5.6f',[y1]);

  form2.Chart2.Series[0].AddXY(z1,lng1);
  form2.Chart2.Series[1].AddXY(z1,lng2);
  form2.Chart2.Series[2].AddXY(z1,g1);
  form2.Chart2.Series[3].AddXY(z1,g2);
  form2.Chart2.Series[4].AddXY(z1,lgG12);
  form2.Chart2.Series[5].AddXY(z1,G12);

  form2.Chart4.Series[0].AddXY(z1,t12);
  form2.Chart4.Series[3].AddXY(y1,t12);
  if mint>t0 then begin
     mint:=t0;
     minx:=x0;
  end;
 end;
 try
   lm1:=minx/(1-minx);
 except
   lm1:=0;
 end;
 form3.rt.cells[0,1]:='X1,mol';
 form3.rt.cells[0,2]:='X2,mol';
 form3.rt.cells[0,3]:='Lm';
 form3.rt.cells[0,4]:='T,K';
 form3.rt.cells[1,0]:='теор';
 form3.rt.cells[1,1]:=floattostr(minx);
 form3.rt.cells[1,2]:=floattostr(1-minx);
 form3.rt.cells[1,3]:=floattostr(lm1);
 form3.rt.cells[1,4]:=floattostr(mint);
 form3.rt.RowCount:=5; form3.rt.ColCount:=2;
 form3.PageControl1.ActivePage:=form3.TabSheet4;
 form2.PageControl1.ActivePage:=form2.TabSheet4;
 form3.Show;
 form2.Show;

// экспериментальные данные по фазовому равновесию жидкость-пар
// база данных температур
  form4.Table1.Refresh;
  form4.table1.Bookmark:=form1.Table1.Bookmark;
  form4.Table2.Refresh;
  form4.table2.Bookmark:=form1.Table2.Bookmark;
n:=form4.Table3.RecordCount;
if n=0 then exit;
form2.Chart1.Series[0].clear;
form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[0].title:='T(x1_мол)_эксп.';
form2.Series1.pointer.visible:=true;
form2.Chart1.Series[16].clear;
form2.Chart1.Series[16].tag:=17;
form2.Chart1.Series[16].title:='T(y1_мол)_эксп.';
form2.Series50.pointer.visible:=true;
form2.Chart4.Series[1].clear;
form2.Chart4.Series[1].tag:=2;
form2.Chart4.Series[1].title:='T(x1_мол)_эксп.';
form2.Chart4.Series[2].clear;
form2.Chart4.Series[2].tag:=2;
form2.Chart4.Series[2].title:='T(y1_мол)_эксп.';
form3.GR.ColCount:=6;
form3.GR.rowcount:=N+1;
form3.GR.cells[0,0]:='i';
form3.GR.cells[1,0]:='x1 mol';
form3.GR.cells[2,0]:='x1 mas';
form3.GR.cells[3,0]:='y1 mol';
form3.GR.cells[4,0]:='y1 mas';
form3.GR.cells[5,0]:='t12';
with form4 do begin
table3.First;
for i:=1 to N do begin
if ((Table3X1mol.Value<>0)or (Table3X2mol.Value<>0))then
begin
   if (Table3X1mol.Value<>0)then begin
   table3.Edit;
   Table3X2mol.value:=1-Table3X1mol.Value;table3.post;end;
if Table3X2mol.value<>0 then begin
   table3.Edit;
   Table3X1mol.Value:=1-Table3X2mol.value;table3.post; end;
table3.Edit;
Table3X1mas.Value:=Table3X1mol.Value*m1/(Table3X1mol.Value*m1+Table3X2mol.value*m2);
Table3X2mas.value:=Table3X2mol.value*m2/(Table3X1mol.Value*m1+Table3X2mol.value*m2);
table3.post;
end else if ((Table3X1mas.Value<>0)or (Table3X2mas.Value<>0))then
begin
if (Table3X1mas.Value<>0)then begin
   table3.Edit;
   Table3X2mas.value:=1-Table3X1mas.Value;table3.post;end;
if Table3X2mas.value<>0 then begin
   table3.Edit;
   Table3X1mas.Value:=1-Table3X2mas.value;table3.post; end;
table3.Edit;
Table3X1mol.Value:=Table3X1mas.Value/m1/(Table3X1mas.Value/m1+Table3X2mas.value/m2);
Table3X2mol.value:=Table3X2mas.value/m2/(Table3X1mas.Value/m1+Table3X2mas.value/m2);
table3.post;
end;
if (Table3y1mol.Value<>0)or(Table3y2mol.Value<>0) then
begin
   if (Table3y1mol.Value<>0)then begin
   table3.Edit;
   Table3y2mol.value:=1-Table3y1mol.Value;table3.post;end;
   if Table3y2mol.value<>0 then begin
   table3.Edit;
   Table3y1mol.Value:=1-Table3y2mol.value;table3.post; end;
table3.Edit;
Table3y1mas.Value:=Table3y1mol.Value*m1/(Table3y1mol.Value*m1+Table3y2mol.value*m2);
Table3y2mas.value:=Table3y2mol.value*m2/(Table3y1mol.Value*m1+Table3y2mol.value*m2);
table3.post;
end else if (Table3y1mas.Value<>0)or(Table3y2mas.Value<>0)then
begin
  if (Table3y1mas.Value<>0)then begin
   table3.Edit;
   Table3y2mas.value:=1-Table3y1mas.Value;table3.post;end;
  if Table3y2mas.value<>0 then begin
   table3.Edit;
   Table3y1mas.Value:=1-Table3y2mas.value;table3.post; end;
table3.Edit;
Table3y1mol.Value:=Table3y1mas.Value/m1/(Table3y1mas.Value/m1+Table3y2mas.value/m2);
Table3y2mol.value:=Table3y2mas.value/m2/(Table3y1mas.Value/m1+Table3y2mas.value/m2);
table3.post;
end;
table3.Edit;
if (Table3T1C.Value<>0) OR (Table3T1K.Value<>0 )then begin
   if (Table3T1C.Value<>0) then Table3T1K.Value:=Table3t1c.Value+Kelvin
   else Table3T1c.Value:=Table3t1k.Value-Kelvin;
      end;
if (Table3T2C.Value<>0)or(Table3T2K.Value<>0 ) then begin
   if Table3T2c.Value<>0 then Table3T2K.Value:=Table3t2c.Value+Kelvin
   else Table3T2c.Value:=Table3t2k.Value-Kelvin;

   end;
table3.post;
t12:=Table3T1K.Value;
xm:=table3x1mol.value;
ym:=table3y1mol.value;
form2.Chart1.Series[0].AddXY(xm,t12);
form2.Chart1.Series[16].AddXY(ym,t12);
form2.Chart4.Series[1].AddXY(xm,t12);
form2.Chart4.Series[2].AddXY(ym,t12);

form3.GR.cells[0,i]:=format('%d',[i]);
form3.GR.cells[1,i]:=format('%5.4f',[xm]);
form3.GR.cells[2,i]:=format('%5.4f',[table3x1mas.value]);
form3.GR.cells[3,i]:=format('%5.4f',[ym]);
form3.GR.cells[4,i]:=format('%5.4f',[table3y1mas.value]);
form3.GR.cells[5,i]:=format('%5.4f',[t12]);

table3.Next;
end;
end;
end;

procedure TForm1.menuN2_1Click(Sender: TObject);
var x0,t0,mint,minx:myreal;
   i:integer;
begin
//теоретический расчет температуры плавления раствора
//расчет по формуле T(x)
h10:=hp1;h20:=hp2;t10:=tp1;t20:=tp2;
form2.Chart3.Title.Text.Clear;
form2.Chart3.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
form2.Chart3.Series[0].clear;
form2.Chart3.Series[0].tag:=1;
form2.Chart3.Series[0].Title:='T(x1)-теор.';
form2.Chart3.Series[0].Addxy(a,t20);
form2.Chart3.Series[0].Addxy(b,t10);

form3.rg.cells[0,0]:='i';
form3.rg.cells[1,0]:='X1,mol';
form3.rg.cells[2,0]:='T12,K';
form3.RG.ColCount:=3;
form3.RG.RowCount:=n;

mint:=1.0e+30;
for i:=1 to n-1 do begin
  x0:=i*h;
  t0:=fx1_(x0);
 form3.RG.cells[0,i]:=inttostr(i);
 form3.RG.cells[1,i]:=format('%5.4f',[x0]);
 form3.RG.cells[2,i]:=format('%5.4f',[t0]);
 form2.Chart3.Series[0].addxy(x0,t0);
 if mint>t0 then begin
     mint:=t0;
     minx:=x0;
  end;
end;

try
lm1:=minx/(1-minx);
except
  lm1:=0;
end;
 form3.rt.cells[0,1]:='X1,mol';
 form3.rt.cells[0,2]:='X2,mol';
 form3.rt.cells[0,3]:='Lm';
 form3.rt.cells[0,4]:='T,K';
 form3.rt.cells[1,0]:='теор';
 form3.rt.cells[1,1]:=floattostr(minx);
 form3.rt.cells[1,2]:=floattostr(1-minx);
 form3.rt.cells[1,3]:=floattostr(lm1);
 form3.rt.cells[1,4]:=floattostr(mint);
 form3.rt.RowCount:=5; form3.rt.ColCount:=2;
 form3.PageControl1.ActivePage:=form3.TabSheet4;
 form2.PageControl1.ActivePage:=form2.TabSheet3;
 form3.Show;
 form2.Show;
end;

procedure TForm1.menuN2_2Click(Sender: TObject);
label 1;
var s,c,x11,x12,k2_,k1_,k10,k20,k11,k21,
    t120,t121,t122,t123,t124,t125,t126,t127,z3,w,
    x1_13,x3_13,x2_23,x3_23,t2_,H_,x1_12,x2_12,mint,x0,minx,s0,s2,nu,
    hh1,hh2,hh3,hh4,hh5,hh6,hh7,t13,t23,lambda1,lambda2,lambda3,lambda,
    lambda12,lambda11,lambda21,lambda23,lambda32,lambda33,lambda13,s1,
    sz,z1,z2,tz1,q1,q2,ffz1,ffx1,ffq1,lng1,lng2,ge,sq,
    deltaT,l12,g1,g2,logg12,l1,l2:myreal;
    i,j,ks,imax,l,nk,nm:integer;
 minz,minq,maxt,maxq,maxx,maxz,p,x1,x2,t12,hh,r1:Myreal;
 xx:string;
 qr,tr,xr,zr,ar:masD;
 t:mastablerec;
begin
//Точки эвтектики
form3.RTClick(form3.ge);
if i3=0 then
//2
begin
    h1:=hp1;h2:=hp2;
    t1:=tp1;t2:=tp2;
    h10:=h1;h20:=h2;
    t10:=t1;t20:=t2;
    form3.GE.RowCount:=10;
    form3.GE.colCount:=8;
    form3.GE.cells[1,0]:='x1';
    form3.GE.cells[2,0]:='x2';
    form3.GE.cells[3,0]:='T,K';
    form3.GE.cells[4,0]:='T,C';
    form3.GE.cells[5,0]:='H_sr';
   if not point_min(h10,t10,h20,t20,x1,t12) then
     showmessage('Вычисление по формуле не удалось.'+#13+
     'Измените порядок компонент!');
    form3.GE.cells[0,1]:='Разложение в ряд Тейлора в т.x=1';
    form3.GE.cells[1,1]:=floattostr(x1);
    form3.GE.cells[2,1]:=floattostr(1-x1);
    form3.GE.cells[3,1]:=floattostr(t12);
    form3.GE.cells[4,1]:=floattostr(t12-kelvin);
    form3.GE.cells[6,0]:='l1';
    form3.GE.cells[7,0]:='l2';
    form3.GE.cells[6,1]:='1';
    form3.GE.cells[7,1]:='1';
    //получение точек эвтектики до уровня l
    try
    L:=strtoint(inputbox('Ввод данных','Введите количество уровней (1..8)','1'));
    except
    L:=1;
    end;
    if l>8 then exit;
    find_point_min(t,nk,s,lambda1,lambda2,h2,h1,t2,t1,a,b,L,RadioGroup1.ItemIndex,2);
    {
    k:=1;k1:=1;k2:=1;
    l1l2[1,0]:=0;l1l2[2,0]:=1;
    schet(0,1,1,0,h2,h1,t2,t1,0,1,L);
    l1l2[1,k]:=1;l1l2[2,k]:=0;
    form3.GE.cells[6,0]:='l1';
    form3.GE.cells[7,0]:='l2';
    form3.GE.cells[6,1]:='1';
    form3.GE.cells[7,1]:='1';
   //сортировка
    nk:=form3.GE.rowcount-1;
    for i:=2 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i]);
     imax:=i;
    for j:=i+1 to nk do begin
      x2:=strtofloat(form3.Ge.cells[1,j]);
      if x2<x1 then begin imax:=j;x1:=x2;end;
    end;
        xx:=form3.Ge.rows[i].text;
        form3.Ge.rows[i].Text:=form3.Ge.rows[imax].text;
        form3.Ge.rows[imax].text:=xx;
        k:=l1l2[1,imax-1];l1l2[1,imax-1]:=l1l2[1,i-1];l1l2[1,i-1]:=k;
        k:=l1l2[2,imax-1];l1l2[2,imax-1]:=l1l2[2,i-1];l1l2[2,i-1]:=k;
    end;
case RadioGroup1.ItemIndex of
0:begin
//получение средней суммы1
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     form2.Chart3.Series[1].addxy(x1,t12);
     s:=s+x1*l1l2[2,i]/l1l2[1,i];
     p:=p+x1;
   end;
   s:=s/p;
   end;
1:begin
//получение средней суммы2
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     lng1:=-ln(x1)+h10/r/t10*(1-t10/t12);
     lng2:=-ln(1-x1)+h20/r/t20*(1-t20/t12);
     ge:=(x1*lng1+(1-x1)*lng2);
     s:=s+exp(-ge)*l1l2[2,i]/l1l2[1,i];
     p:=p+exp(-ge);
   end;
   s:=s/p;
end;
2:begin
//получение средней суммы3
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     s:=s+x1;
     p:=p+x1*l1l2[2,i]/l1l2[1,i];
   end;
   s:=s/p;
end;
3:begin
//получение средней суммы3
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     s:=s+x1;
     p:=p+x1*l1l2[1,i]/l1l2[2,i];
   end;
   s:=s/p;
end;
end;{case
   find(Lambda1,lambda2,s);
   while lambda2 >10 do lambda2:=lambda2/10;
   while lambda1 >10 do lambda1:=lambda1/10;    }
   table2.Edit;
   Table2Lambda12.Value:=s;
   Table2Lambda2.Value:=lambda2;
   Table2Lambda1.Value:=lambda1;
   table2.Post;
   nm:=form3.RT.rowcount;
   form3.rt.cells[0,nm]:='L1'; form3.rt.cells[1,nm]:=format('%5.8f',[Lambda1]);
   form3.rt.cells[0,nm+1]:='L2'; form3.rt.cells[1,nm+1]:=format('%5.8f',[Lambda2]);
   form3.rt.cells[0,nm+2]:='L12'; form3.rt.cells[1,nm+2]:=format('%5.8f',[s]);
   form3.RT.rowcount:=nm+3;
    Lambda12:=s;
   find_point_lambda(t,nk,s,k1_,k2_,h2,h1,t2,t1);
  { //Получение коэфициента K
   Lambda12:=Table2Lambda12.Value;
   form3.GE.ColCount:=15;
   h10:=h1;h20:=h2;t10:=t1;t20:=t2;
   sz:=0;s:=0;
   for i:=2 to nk do begin
   //эффективные мольные доли
    z1:=strtofloat(form3.GE.Cells[1,i]);
    z2:=strtofloat(form3.GE.Cells[2,i]);
    tz1:=strtofloat(form3.GE.Cells[3,i]);
    try
      k1_:=((h10/t10*z1+h20/t20*lambda12*z2)-(h10*z1+h20*z2*lambda12)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
    except
      k1_:=1;
    end;
    s:=k1_*z1+s;
    sz:=z1+sz;
    form3.GE.cells[14,i]:=floattostr(k1_);
   end;
   k1_:=s/sz; k2_:=k1_/lambda12;}

    form2.Chart3.Series[1].clear;
    form2.Chart3.Series[1].tag:=2;
    form2.Chart3.Series[1].Title:='T(x1)-эвт.';
    form3.GE.rowcount:=nk+1;
    for i:=1 to nk-1 do begin
    form3.GE.cells[0,i+1]:=inttostr(t[i].l1)+'*k1-'+inttostr(t[i].l2)+'*k2';
    form3.GE.cells[1,i+1]:=floattostr(t[i].x1);
    form3.GE.cells[2,i+1]:=floattostr(t[i].x2);
    form3.GE.cells[3,i+1]:=floattostr(t[i].t12);
    form3.GE.cells[4,i+1]:=floattostr(t[i].t12-Kelvin);
    form3.GE.cells[5,i+1]:=floattostr(t[i].h12);
    form3.GE.cells[6,i+1]:=inttostr(t[i].l1);
    form3.GE.cells[7,i+1]:=inttostr(t[i].l2);
    form3.GE.cells[14,i+1]:=floattostr(t[i].mz1);
    form2.Chart3.Series[1].Addxy(t[i].x1,t[i].t12);
    end;
    form2.Chart3.Series[1].Addxy(t[0].x1,t[0].t12);
    form2.Chart3.Series[1].Addxy(t[nk].x1,t[nk].t12);
   nm:=form3.RT.rowcount;
   form3.rt.cells[0,nm]:='K1'; form3.rt.cells[1,nm]:=format('%5.8f',[k1_]);
   form3.rt.cells[0,nm+1]:='K2'; form3.rt.cells[1,nm+1]:=format('%5.8f',[k2_]);
   form3.RT.rowcount:=nm+1;
   table2.Edit;
   Table2Lambda1.Value:=strtofloat(format('%5.8f',[k1_]));
   Table2Lambda2.Value:=strtofloat(format('%5.8f',[k2_]));
   table2.Post;
//Пересчет в эксп. и массовые доли
   form2.Chart3.Title.Text.Clear;
   form2.Chart3.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
   form2.Chart3.Series[2].clear;form2.Chart3.Series[2].tag:=3;form2.Chart3.Series[2].Title:='Т(эфф.)';
   form2.Chart3.Series[3].clear;form2.Chart3.Series[3].tag:=4;form2.Chart3.Series[3].Title:='T(эксп.)';
   form2.Chart3.Series[4].clear;form2.Chart3.Series[4].tag:=5;form2.Chart3.Series[4].Title:='T(масс.)';
 //?   lambda1 или k1  ?
  lambda1:=k1_; lambda2:=k2_;
  h10:=h1/lambda1;h20:=h2/lambda2;t10:=t1;t20:=t2;
  form3.vd.cells[1,0]:='z1';
  form3.vd.cells[2,0]:='z2';
  form3.vd.cells[3,0]:='T(z1),K';
  form3.vd.cells[4,0]:='T(z1),C';
  form3.vd.cells[5,0]:='x1';
  form3.vd.cells[6,0]:='x2';
  form3.vd.cells[7,0]:='q1';
  form3.vd.cells[8,0]:='q2';
  form3.vd.cells[9,0]:='M(z)';
  form3.vd.cells[10,0]:='H0';
  form3.vd.cells[11,0]:='HL';
  form3.vd.RowCount:=n;
  form3.vd.ColCount:=12;
  for i:=1 to n-1 do begin
  z1:=a+i*h;z2:=(b-z1);
  //экспериментальные мольные доли
  x1:=z1/(z1+z2/lambda12);
  x2:=z2/(z2+z1*lambda12);
  //массовые доли
  q1:=x1/(x1+(m2)/(m1)*x2);
  q2:=x2/(x2+(m1)/(m2)*x1);
  Hh :=m1*x1+m2*x2;    //???
  hh1:=z1*h1+z2*h2; //???
  hh2:=z1*h10+z2*h20;
  ffz1:=fx1_(z1);
  form2.Chart3.series[2].AddXY(z1,ffz1);
  form2.Chart3.series[3].AddXY(x1,ffz1);
  form2.Chart3.series[4].AddXY(q1,ffz1);
  form3.vd.cells[1,i]:=floattostr(Z1);
  form3.vd.cells[2,i]:=floattostr(Z2);
  form3.vd.cells[3,i]:=floattostr(ffz1);
  form3.vd.cells[4,i]:=floattostr(ffz1-Kelvin);
  form3.vd.cells[5,i]:=floattostr(x1);
  form3.vd.cells[6,i]:=floattostr(x2);
  form3.vd.cells[7,i]:=floattostr(q1);
  form3.vd.cells[8,i]:=floattostr(q2);
  form3.vd.cells[9,i]:=floattostr(Hh);
  form3.vd.cells[10,i]:=floattostr(hh1);
  form3.vd.cells[11,i]:=floattostr(hh2);
 end;

 try
   form3.GE.cells[1,0]:='z1 эфф.мол.д.';
   form3.GE.cells[2,0]:='z2 эфф.мол.д.';
   form3.GE.cells[8,0]:='x1 эксп.мол.д.';
   form3.GE.cells[9,0]:='x2 эксп.мол.д.';
   form3.GE.cells[10,0]:='H12(x)';
   form3.GE.cells[11,0]:='q1 масс.д.';
   form3.GE.cells[12,0]:='q2 масс.д.';
   form3.GE.cells[13,0]:='T(z1), K';
   form3.GE.cells[14,0]:='M(z)';
   form3.GE.cells[15,0]:='H0(z)';
   form3.GE.cells[16,0]:='HL(z)';
   form3.GE.ColCount:=17;
   nk:= form3.GE.rowcount-1;
   for i:=2 to nk do begin
    z1:=strtofloat(form3.GE.Cells[1,i]);//эффективные мольные доли
    z2:=strtofloat(form3.GE.Cells[2,i]);
    lambda1:= strtoint(form3.GE.Cells[6,i]);
    lambda2:= strtoint(form3.GE.Cells[7,i]);
    lambda12:=lambda1/lambda2;
    x1:=z1/(z1+z2/lambda12); //экспериментальные мольные доли
    x2:=z2/(z2+z1*lambda12);
    q1:=x1/(x1+m2/m1*x2);  //массовые доли
    q2:=x2/(x2+m1/m2*x1);
    Hh:=h1*x1+h2*x2;
    h10:=h1/lambda1;h20:=h2/lambda2;
    form3.GE.cells[8,i]:=floattostr(x1);
    form3.GE.cells[9,i]:=floattostr(x2);
    form3.GE.cells[10,i]:=floattostr(hh);
    form3.GE.cells[11,i]:=floattostr(q1);
    form3.GE.cells[12,i]:=floattostr(q2);
    form3.GE.cells[13,i]:=floattostr(fx2(z2));
    form3.GE.cells[14,i]:=floattostr(m1*x1+m2*x2);
    form3.GE.cells[15,i]:=floattostr(z1*h1+z2*h2);
    form3.GE.cells[16,i]:=floattostr(z1*h10+z2*h20);
   end;
//температура плавления средняя
lambda1:= Table2Lambda1.Value;
lambda2:= Table2Lambda2.Value;
lambda12:=lambda1/lambda2;
h10:=h1/lambda1;
h20:=h2/lambda2;
t10:=t1;t20:=t2;
form2.Chart3.Title.Text.Clear;
form2.Chart3.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
form2.Chart3.Series[5].clear;
form2.Chart3.Series[5].tag:=6;
form2.Chart3.Series[5].Title:='T(x)-средн.';
mint:=1.0e+30;
for i:=1 to n-1 do begin
  x0:=(a+i*h);
  t0:=fx2(x0);
  form2.Chart3.Series[5].addxy(1-x0,t0);//-kelvin
  if mint>t0 then begin
     mint:=t0;
     minx:=1-x0;
  end;
end;
try
lm1:=minx/(1-minx);
except
  lm1:=0;
end;

s:=0; S0:=0;
for i:=2 to nk do begin
 t0:=strtofloat(form3.GE.Cells[3,i]);
 x0:=strtofloat(form3.GE.Cells[2,i]);
 s:=s+sqr(t0-fx2(x0));
 s0:=s0+t0;
end;
 s0:=s0/(nk-1);{y средняя}
 nm:=form3.RT.rowcount;
 form3.rt.cells[0,nm]:='|T-Tэ|';
 form3.rt.cells[1,nm]:= floattostr(sqrt(s));
 s2:=0;s1:=0;
 for i:=2 to nk do begin
 t0:=strtofloat(form3.GE.Cells[3,i]);
 x0:=strtofloat(form3.GE.Cells[2,i]);
 s1:=s1+sqr(fx2(x0)-s0);
 s2:=s2+sqr(t0-s0);
 end;
 try
 nu:=sqrt(s1/s2);
 except
 nu:=1;
 end;
 form3.rt.cells[0,nm+1]:='nu';
 form3.rt.cells[1,nm+1]:= floattostr(sqrt(nu));
 form3.rt.cells[0,nm+2]:='T,K';
 form3.rt.cells[0,nm+3]:='T,C';
 form3.rt.cells[0,nm+4]:='H0';
 form3.rt.cells[0,nm+5]:='HL';
 form3.rt.cells[0,nm+6]:='M(z)';
 form3.rt.cells[0,nm+7]:='z1,эфф.мол.';
 form3.rt.cells[0,nm+8]:='z2,эфф.мол.';
 form3.rt.cells[0,nm+9]:='x1,эксп.мол.';
 form3.rt.cells[0,nm+10]:='x2,эксп.мол.';
 form3.rt.cells[0,nm+11]:='q1,масс.';
 form3.rt.cells[0,nm+12]:='q2,масс.';

 z1:=minx; //эффективные мольные доли
 z2:=1-minx;
 x1:=z1/(z1+z2/lambda12);//экспериментальные мольные доли
 x2:=z2/(z2+z1*lambda12);
 q1:=x1/(x1+(m2)/(m1)*x2);//массовые доли
 q2:=x2/(x2+(m1)/(m2)*x1);
 ffz1:=fx1_(z1);
 form3.rt.cells[1,nm+2]:=floattostr(ffz1);
 form3.rt.cells[1,nm+3]:=floattostr(ffz1-kelvin);
 form3.rt.cells[1,nm+4]:=floattostr(z1*h1+z2*h2);
 form3.rt.cells[1,nm+5]:=floattostr(z1*h10+z2*h20);
 form3.rt.cells[1,nm+6]:=floattostr(x1*m1+m2*x2);
 form3.rt.cells[1,nm+7]:=floattostr(z1);
 form3.rt.cells[1,nm+8]:=floattostr(z2);
 form3.rt.cells[1,nm+9]:=floattostr(x1);
 form3.rt.cells[1,nm+10]:=floattostr(x2);
 form3.rt.cells[1,nm+11]:=floattostr(q1);
 form3.rt.cells[1,nm+12]:=floattostr(q2);
 form3.rt.RowCount:=nm+13;

if nk>2 then begin
 //расчет эвтектики по близким параметрам
 t12:=strtofloat(inputbox('Ввод данных','Введите температуру, близкую к эвтектической в К',form3.GE.Cells[3,1]));
 deltaT:=strtofloat(inputbox('Ввод данных','Введите погрешность температуры',floattostr(5.0)));
 if (t12<>0)and(deltaT<>0) then begin
 s:=0; S0:=0; ks:=0;s1:=0;p:=0;sq:=0;
 setlength(tr,nk+2); setlength(xr,nk+2);setlength(zr,nk+2);
 setlength(qr,nk+2);
 form3.RG.Cells[0,ks]:='N';
 form3.RG.Cells[1,ks]:='T,K';
 form3.RG.Cells[2,ks]:='t,C';
 form3.RG.Cells[3,ks]:='z1';
 form3.RG.Cells[4,ks]:='z2';
 form3.RG.Cells[5,ks]:='l12';
 form3.RG.Cells[6,ks]:='G1';
 form3.RG.Cells[7,ks]:='G2';
 form3.RG.Cells[8,ks]:='lg(g1/g2)';
 form3.RG.Cells[9,ks]:='x1';
 form3.RG.Cells[10,ks]:='x2';
 form3.RG.Cells[11,ks]:='q1';
 form3.RG.Cells[12,ks]:='q2';
 for i:=2 to nk do begin
 t0:=strtofloat(form3.GE.Cells[3,i]);
 if abs(t12-t0)<=deltaT then begin
 inc(ks);
 tr[ks]:=t0;
 x0:=strtofloat(form3.GE.Cells[1,i]);
 zr[ks]:=x0;
 l12:=strtofloat(form3.GE.Cells[6,i])/strtofloat(form3.GE.Cells[7,i]);
 g1:=exp(-ln(x0)+h10/r/t10*(1-t10/t0));
 g2:=exp(-ln(1-x0)+h20/r/t20*(1-t20/t0));
 logg12:=log10(g1/g2);
 x1:=strtofloat(form3.GE.Cells[8,i]);
 xr[ks]:=x1;
 qr[ks]:=strtofloat(form3.GE.Cells[11,i]);
 q1:=qr[ks];
 s0:=s0+x1*logg12;
 s:=s+x1*t0;
 s1:=s1+x1/l12;
 p:=p+x1;
 sq:=sq+qr[ks];
 form3.RG.Cells[0,ks]:=inttostr(ks+1);
 form3.RG.Cells[1,ks]:=floattostr(t0);
 form3.RG.Cells[2,ks]:=floattostr(t0-kelvin);
 form3.RG.Cells[3,ks]:=floattostr(x0);
 form3.RG.Cells[4,ks]:=floattostr(1-x0);
 form3.RG.Cells[5,ks]:=floattostr(l12);
 form3.RG.Cells[6,ks]:=floattostr(g1);
 form3.RG.Cells[7,ks]:=floattostr(g2);
 form3.RG.Cells[8,ks]:=floattostr(logg12);
 form3.RG.Cells[9,ks]:=floattostr(x1);
 form3.RG.Cells[10,ks]:=floattostr(1-x1);
 form3.RG.Cells[11,ks]:=floattostr(q1);
 form3.RG.Cells[12,ks]:=floattostr(1-q1);

 end;
end;
 s:=s/p; //средняя температура
 s1:=s1/p;// средняя l12
 s0:=s0/p;//средняя log(g1/g2)
 p:=p/(ks);//средняя x1
 sq:=sq/ks;//средняя q1
 form3.RG.Cells[11,ks+1]:=floattostr(sq);
 form3.RG.Cells[9,ks+1]:=floattostr(p);
 form3.RG.Cells[8,ks+1]:=floattostr(s0);
 form3.RG.Cells[1,ks+1]:=floattostr(s);
 form3.RG.Cells[2,ks+1]:=floattostr(s-kelvin);
 form3.RG.Cells[5,ks+1]:=floattostr(s1);
 form3.RG.Cells[0,ks+1]:='средние';
 form3.RG.rowcount:=ks+2;form3.RG.ColCount:=13;
 l12:=s1;
 find(L1,l2,s1);
 while l2 >10 do l2:=l2/10;
 while l1 >10 do l1:=l1/10;
 showmessage('k='+inttostr(ks)+
 ' lg(g1/g2)sr='+floattostr(s0)+
 ' T sr='+floattostr(s)+
  ' l1/l2='+floattostr(l12)+
   ' l1='+floattostr(l1)+
    ' l2='+floattostr(l2));
//Получение коэфициента K
h10:=h1;h20:=h2;
sz:=0;s:=0;
for i:=1 to ks do begin
//эффективные мольные доли
z1:=zr[i];
z2:=1-z1;
tz1:=tr[i];
try
k1_:=((h10/t10*z1+h20/t20*l12*z2)-(h10*z1+h20*z2*l12)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
except
k1_:=1;
end;
s:=k1_*z1+s;
sz:=z1+sz;
end;
k1_:=s/sz; k2_:=k1_/l12;
showmessage('K1='+floattostr(k1_)+' K2='+floattostr(k2_));
l1:=k1_;l2:=k2_;l12:=l1/l2;

//получение температуры плавления средней
form2.Chart1.Series[0].clear;form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[1].clear;form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[2].clear;form2.Chart1.Series[2].tag:=3;
form2.Chart2.Series[2].clear;form2.Chart2.Series[2].tag:=3;
form2.Chart2.Series[3].clear;form2.Chart2.Series[3].tag:=4;
form2.Chart2.Series[5].clear;form2.Chart2.Series[5].tag:=6;
 h10:=h1/l1;h20:=h2/l2;
 mint:=1.e+10;maxt:=-1.e+10;
for i:=1 to n-1 do
begin
z1:=i/n;
x1:=z1/(z1+(1-z1)/l12);
q1:=x1/(x1+(m2)/(m1)*(1-x1));
t12:=fx1_(z1);
g1:=exp(-ln(z1)+h10/r/t10*(1-t10/t12));
g2:=exp(-ln(1-z1)+h20/r/t20*(1-t20/t12));
logg12:=log10(g1/g2);
form2.Chart1.Series[0].AddXY(z1,t12);
form2.Chart1.Series[1].AddXY(x1,t12);
form2.Chart1.Series[2].AddXY(q1,t12);
form2.Chart2.Series[2].AddXY(z1,g1);
form2.Chart2.Series[3].AddXY(z1,g2);
form2.Chart2.Series[5].AddXY(z1,logg12);
if mint>t12 then begin
   mint:=t12;
   minz:=z1;
   minx:=x1;
   minq:=q1;
end;
end;
 if mint<1.e+10 then
 showmessage('T_min,K='+floattostr(mint)+
 ' T_min,C='+floattostr(mint-kelvin)+
 ' z_min='+floattostr(minz)+
 ' x_min='+floattostr(minx)+
 ' q_min='+floattostr(minq));
 
if ks>1 then begin
//процедура усреднения х1
s0:=0;s:=0;s1:=0;s2:=0;
for i:=1 to ks do begin
 s:=s+xr[i]-xr[i-1];
 s0:=s0+(xr[i]-xr[i-1])*xr[i-1];
  s1:=s1+(xr[i]-xr[i-1])*xr[i];
   s2:=s2+(xr[i]-xr[i-1])*(xr[i-1]+xr[i])/2;
end;
s0:=s0/s;//средняя по левой точке
s1:=s1/s;//средняя по правой точке
s2:=s2/s;//средняя по середине
 showmessage('x1_ср.лев.='+floattostr(s0)+
 ' x1_ср.прав.='+floattostr(s1)+
 ' x1_ср.центр.='+floattostr(s2));
//процедура усреднения z1
s0:=0;s:=0;s1:=0;s2:=0;
for i:=1 to ks do begin
 s:=s+zr[i]-zr[i-1];
 s0:=s0+(zr[i]-zr[i-1])*zr[i-1];
  s1:=s1+(zr[i]-zr[i-1])*zr[i];
   s2:=s2+(zr[i]-zr[i-1])*(zr[i-1]+zr[i])/2;
end;
s0:=s0/s;//средняя по левой точке
s1:=s1/s;//средняя по правой точке
s2:=s2/s;//средняя по середине
 showmessage('z1_ср.лев.='+floattostr(s0)+
 ' z1_ср.прав.='+floattostr(s1)+
 ' z1_ср.центр.='+floattostr(s2));
//процедура усреднения q1
s0:=0;s:=0;s1:=0;s2:=0;
for i:=1 to ks do begin
 s:=s+qr[i]-qr[i-1];
 s0:=s0+(qr[i]-qr[i-1])*qr[i-1];
  s1:=s1+(qr[i]-qr[i-1])*qr[i];
   s2:=s2+(qr[i]-qr[i-1])*(qr[i-1]+qr[i])/2;
end;
s0:=s0/s;//средняя по левой точке
s1:=s1/s;//средняя по правой точке
s2:=s2/s;//средняя по середине
 showmessage('q1_ср.лев.='+floattostr(s0)+
 ' q1_ср.прав.='+floattostr(s1)+
 ' q1_ср.центр.='+floattostr(s2));
 
 form2.Chart1.Series[15].clear;
 form2.Chart1.Series[16].clear;
 form2.Chart1.Series[16].tag:=17;
 form2.Chart1.Series[15].tag:=16;
 form2.Chart1.Series[15].title:='T(x)-усредн.';
 form2.Chart1.Series[16].title:='T(x)-эвтект.';

form2.Chart3.Series[6].clear;form2.Chart3.Series[6].tag:=7;
form2.Chart3.Series[7].clear;form2.Chart3.Series[7].tag:=8;
form2.Chart3.Series[8].clear;form2.Chart3.Series[8].tag:=9;
form2.Chart3.Series[9].clear;form2.Chart3.Series[9].tag:=10;
form2.Chart3.Series[6].Title:='T(x)-эвтект.';
form2.Chart3.Series[7].Title:='T(z)-усредн.';
form2.Chart3.Series[8].Title:='T(x)-усредн.';
form2.Chart3.Series[9].Title:='T(q)-усредн.';
{
for i:= ks downto 1 do begin
xr[i+1]:=xr[i];zr[i+1]:=zr[i]; tr[i+1]:=tr[i];
end;
ks:=ks+1;
zr[1]:=0;xr[1]:=0;tr[1]:=t20;
zr[ks+1]:=1;xr[ks+1]:=1;tr[ks+1]:=t10;
ks:=ks+1;
}
for i:=1 to ks do begin
 form2.Chart3.Series[6].AddXY(xr[i],tr[i]);
 form2.Chart1.Series[16].AddXY(xr[i],tr[i]);
end;
 form2.Chart3.Series[6].AddXY(0,t20);
 form2.Chart3.Series[6].AddXY(1,t10);
 form2.Chart1.Series[15].AddXY(0,t20);
 form2.Chart1.Series[15].AddXY(1,t10);
 //form2.Chart3.Series[7].AddXY(0,t20);
// form2.Chart3.Series[7].AddXY(1,t10);
  form2.Chart3.Series[8].AddXY(0,t20);
 form2.Chart3.Series[8].AddXY(1,t10);
 // form2.Chart3.Series[9].AddXY(0,t20);
// form2.Chart3.Series[9].AddXY(1,t10);
 form2.Chart1.Series[16].AddXY(0,t20);
 form2.Chart1.Series[16].AddXY(1,t10);
 setlength(ar,4);

tr[ks+1]:=t20;
tr[ks+2]:=t10;
zr[ks+1]:=0;
zr[ks+2]:=1;
polynrecurs(zr,tr,ks+2,3,ar,r1);
MINT:=1.e+10;
for i:=1 to n-1 do begin
 z1:=i/n;
 x1:=z1/(z1+(1-z1)/l12);
 q1:=x1/(x1+(m2)/(m1)*(1-x1));
 t12:=fr3(z1,ar,3);
  form2.Chart3.Series[7].AddXY(z1,t12);
  form2.Chart3.Series[8].AddXY(x1,t12);
  form2.Chart3.Series[9].AddXY(q1,t12);
  if mint>t12 then begin
     mint:=t12;
     minx:=x1;
     minz:=z1;
     minq:=q1;
  end;
end;
 ShowMessage('После усреднения: T_min,K='+floattostr(mint)+
' T_min,C='+floattostr(mint-kelvin)+
' z_min='+floattostr(minz)+' x_min='+floattostr(minx)+
' q_min='+floattostr(minq));
end; //if ks>1
end;
end;
form3.PageControl1.ActivePage:=form3.TabSheet4;
 form2.PageControl1.ActivePage:=form2.TabSheet3;
 form2.PageControl1.TabIndex:=0;
 form3.PageControl1.TabIndex:=2;
 form3.Show;form2.Show;
except

end;

end else
//3
begin
h1:=hp1;h2:=hp2;h3:=hp3;
t1:=tp1;t2:=tp2;t3:=tp3;

//lambda12
if (Table2Lambda1.Value<>0) and(Table2Lambda2.Value<>0)then begin
lambda1:= Table2Lambda1.Value;
lambda2:= Table2Lambda2.Value;
lambda12:=Table2Lambda1.Value/Table2Lambda2.Value ;
end else begin
//расчет
//получение точек эвтектики до уровня l
    try
    L:=strtoint(inputbox('Ввод данных','Введите количество уровней эвтектики для системы '
     +mr.cells[1,1]+'-'+mr.Cells[1,2],'1'));
    except
    L:=1;
    end;
    k:=1;k1:=1;k2:=1;
    l1l2[1,0]:=0;l1l2[2,0]:=1;
    schet(0,1,1,0,h2,h1,t2,t1,0,1,L);
    l1l2[1,k]:=1;l1l2[2,k]:=0;
    form3.GE.cells[6,0]:='l1';
    form3.GE.cells[7,0]:='l2';

    form3.GE.cells[6,1]:='1';
    form3.GE.cells[7,1]:='1';
   //сортировка

   nk:=form3.GE.rowcount-1;
    for i:=2 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i]);
     imax:=i;
    for j:=i+1 to nk do begin
      x2:=strtofloat(form3.Ge.cells[1,j]);
      if x2<x1 then begin imax:=j;x1:=x2;end;
    end;
        xx:=form3.Ge.rows[i].text;
        form3.Ge.rows[i].Text:=form3.Ge.rows[imax].text;
        form3.Ge.rows[imax].text:=xx;
        k:=l1l2[1,imax-1];l1l2[1,imax-1]:=l1l2[1,i-1];l1l2[1,i-1]:=k;
        k:=l1l2[2,imax-1];l1l2[2,imax-1]:=l1l2[2,i-1];l1l2[2,i-1]:=k;
    end;
   //получение средней суммы
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     s:=s+x1*l1l2[2,i]/l1l2[1,i]; // ?
     p:=p+x1;
   end;
   s:=s/p;
   lambda12:=s;
   table2.Edit;
   find(Lambda1,lambda2,Lambda12);
   while lambda2 >10 do lambda2:=lambda2/10;
   while lambda1 >10 do lambda1:=lambda1/10;
   Table2Lambda2.Value:=lambda2;
   Table2Lambda1.Value:=lambda1;

   table2.Post;
lambda12:=lambda1/lambda2;
form3.GE.ColCount:=15;
h10:=h1;h20:=h2;t10:=t1;t20:=t2;
sz:=0;s:=0;
for i:=2 to nk do begin
//эффективные мольные доли
z1:=strtofloat(form3.GE.Cells[1,i]);
z2:=strtofloat(form3.GE.Cells[2,i]);
tz1:=strtofloat(form3.GE.Cells[3,i]);
try
k1_:=((h10/t10*z1+h20/t20*lambda12*z2)-(h10*z1+h20*z2*lambda12)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
except
k1_:=1;
end;
s:=k1_*z1+s;
sz:=z1+sz;
form3.GE.cells[14,i]:=floattostr(k1_);
end;
k1_:=s/sz; k2_:=k1_/lambda12;
   form3.rt.cells[0,8]:='K1'; form3.rt.cells[1,8]:=format('%5.8f',[k1_]);
   form3.rt.cells[0,9]:='K2'; form3.rt.cells[1,9]:=format('%5.8f',[k2_]);
table2.Edit;
Table2Lambda1.Value:=strtofloat(format('%5.8f',[k1_]));
Table2Lambda2.Value:=strtofloat(format('%5.8f',[k2_]));
table2.Post;
form3.PageControl1.ActivePage:=form3.TabSheet8;form3.show;
end;
lambda11:=Table2Lambda1.Value;
lambda12:=Table2Lambda2.Value;

//lambda13
if (Table2Lambda1.Value<>0) and(Table2Lambda3.Value<>0)then begin
lambda1:= Table2Lambda1.Value;
lambda3:= Table2Lambda3.Value;
lambda13:=Table2Lambda1.Value/Table2Lambda3.Value
end
else begin
//расчет
//получение точек эвтектики до уровня l
 try
 L:=strtoint(inputbox('Ввод данных','Введите количество уровней эвтектики для системы '
 +mr.cells[1,1]+'-'+mr.Cells[1,3],'1'));
 except
 L:=1;
 end;
    k:=1;k1:=1;k2:=1;
    l1l2[1,0]:=0;l1l2[2,0]:=1;
   schet(0,1,1,0,h3,h1,t3,t1,0,1,L);
    l1l2[1,k]:=1;l1l2[2,k]:=0;
    form3.GE.cells[6,0]:='l1';
    form3.GE.cells[7,0]:='l2';
   //сортировка
   nk:=form3.GE.rowcount-1;
    for i:=2 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i]);
     imax:=i;
    for j:=i+1 to nk do begin
      x2:=strtofloat(form3.Ge.cells[1,j]);
      if x2<x1 then begin imax:=j;x1:=x2;end;
    end;
        xx:=form3.Ge.rows[i].text;
        form3.Ge.rows[i].Text:=form3.Ge.rows[imax].text;
        form3.Ge.rows[imax].text:=xx;
        k:=l1l2[1,imax-1];l1l2[1,imax-1]:=l1l2[1,i-1];l1l2[1,i-1]:=k;
        k:=l1l2[2,imax-1];l1l2[2,imax-1]:=l1l2[2,i-1];l1l2[2,i-1]:=k;
    end;
   //получение средней суммы
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     s:=s+x1*l1l2[2,i]/l1l2[1,i];
     p:=p+x1;
   end;
   s:=s/p;
   lambda13:=s;
   find(lambda1,lambda3,lambda13);
   while lambda3 >10 do lambda3:=lambda3/10;
   while lambda1 >10 do lambda1:=lambda1/10;
 table2.Edit;
 Table2Lambda1.Value:=lambda1;
 Table2Lambda3.Value:=lambda3;
 table2.Post;
  lambda13:=lambda1 / lambda3 ;
form3.GE.ColCount:=15;
h10:=h1;h20:=h3;t10:=t1;t20:=t3;
sz:=0;s:=0;
for i:=2 to nk do begin
//эффективные мольные доли
z1:=strtofloat(form3.GE.Cells[1,i]);
z2:=strtofloat(form3.GE.Cells[2,i]);
tz1:=strtofloat(form3.GE.Cells[3,i]);
try
k1_:=((h10/t10*z1+h20/t20*lambda13*z2)-(h10*z1+h20*z2*lambda13)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
except
k1_:=1;
end;
s:=k1_*z1+s;
sz:=z1+sz;
form3.GE.cells[14,i]:=floattostr(k1_);

end;
k1_:=s/sz; k2_:=k1_/lambda13;
   form3.rt.cells[0,10]:='K1'; form3.rt.cells[1,10]:=format('%5.8f',[k1_]);
   form3.rt.cells[0,11]:='K3'; form3.rt.cells[1,11]:=format('%5.8f',[k2_]);
table2.Edit;
Table2Lambda1.Value:=strtofloat(format('%5.8f',[k1_]));
Table2Lambda3.Value:=strtofloat(format('%5.8f',[k2_]));
table2.Post;
end;
lambda21:=Table2Lambda1.Value;
lambda23:=Table2Lambda3.Value;

//расчет l_23
//lambda23
//if (Table2Lambda2.Value<>0) and(Table2Lambda3.Value<>0)then begin
//lambda3:= Table2Lambda3.Value;
//lambda2:= Table2Lambda2.Value;
//lambda23:=Table2Lambda2.Value/Table2Lambda3.Value ;
//end else begin
//расчет
//получение точек эвтектики до уровня l
   try
    L:=strtoint(inputbox('ввод данных','Введите количество уровней эвтектики для системы '
     +mr.cells[1,2]+'-'+mr.Cells[1,3],'1'));
   except
   L:=1;
   end;
    k:=1;k1:=1;k2:=1;
    l1l2[1,0]:=0;l1l2[2,0]:=1;
    schet(0,1,1,0,h3,h2,t3,t2,0,1,L);
    l1l2[1,k]:=1;l1l2[2,k]:=0;
    form3.GE.cells[6,0]:='l1';
    form3.GE.cells[7,0]:='l2';

    form3.GE.cells[6,1]:='1';
    form3.GE.cells[7,1]:='1';
   //сортировка

   nk:=form3.GE.rowcount-1;
    for i:=2 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i]);
     imax:=i;
    for j:=i+1 to nk do begin
      x2:=strtofloat(form3.Ge.cells[1,j]);
      if x2<x1 then begin imax:=j;x1:=x2;end;
    end;
        xx:=form3.Ge.rows[i].text;
        form3.Ge.rows[i].Text:=form3.Ge.rows[imax].text;
        form3.Ge.rows[imax].text:=xx;
        k:=l1l2[1,imax-1];l1l2[1,imax-1]:=l1l2[1,i-1];l1l2[1,i-1]:=k;
        k:=l1l2[2,imax-1];l1l2[2,imax-1]:=l1l2[2,i-1];l1l2[2,i-1]:=k;
    end;
   //получение средней суммы
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     s:=s+x1*l1l2[2,i]/l1l2[1,i]; // ?
     p:=p+x1;
   end;
   s:=s/p;
   table2.Edit;
   find(Lambda2,lambda3,s);
   while lambda2 >10 do lambda2:=lambda2/10;
   while lambda3 >10 do lambda3:=lambda3/10;
   Table2Lambda2.Value:=lambda2;
   Table2Lambda3.Value:=lambda3;
   table2.Post;
lambda:=lambda2/lambda3;
form3.GE.ColCount:=15;
h10:=h2;h20:=h3;t10:=t2;t20:=t3;
sz:=0;s:=0;
for i:=2 to nk do begin
//эффективные мольные доли
z1:=strtofloat(form3.GE.Cells[1,i]);
z2:=strtofloat(form3.GE.Cells[2,i]);
tz1:=strtofloat(form3.GE.Cells[3,i]);
try
k1_:=((h10/t10*z1+h20/t20*lambda*z2)-(h10*z1+h20*z2*lambda)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
except
k1_:=1;
end;
s:=k1_*z1+s;
sz:=z1+sz;
form3.GE.cells[14,i]:=floattostr(k1_);

end;
k1_:=s/sz; k2_:=k1_/lambda;
   form3.rt.cells[0,12]:='K2'; form3.rt.cells[1,12]:=format('%5.8f',[k1_]);
   form3.rt.cells[0,13]:='K3'; form3.rt.cells[1,13]:=format('%5.8f',[k2_]);
table2.Edit;
Table2Lambda2.Value:=strtofloat(format('%5.8f',[k1_]));
Table2Lambda3.Value:=strtofloat(format('%5.8f',[k2_]));
table2.Post;

lambda32:=Table2Lambda2.Value;
lambda33:=Table2Lambda3.Value;

lambda1:=lambda11;
lambda2:=lambda12;
lambda13:=lambda11/lambda33/lambda2*lambda32;
lambda3:=lambda1/lambda13;

form3.GE.RowCount:=10;
form3.GE.colCount:=5;
form3.RTClick(form3.ge);
form3.GE.Cells[0,1]:='T,K';
form3.GE.cells[0,2]:='T,C';
form3.GE.cells[0,3]:='H';
form3.GE.Cells[0,4]:='x_1 эфф.';
form3.GE.Cells[0,5]:='x_2 эфф.';
form3.GE.Cells[0,6]:='x_3 эфф.';
form3.GE.Cells[0,7]:='x_1 эксп.';
form3.GE.Cells[0,8]:='x_2 эксп.';
form3.GE.Cells[0,9]:='x_3 эксп.';
form3.GE.Cells[0,10]:='x_1 масс.';
form3.GE.Cells[0,11]:='x_2 масс.';
form3.GE.Cells[0,12]:='x_3 масс.';
form3.GE.Cells[0,13]:='l_1';
form3.GE.Cells[0,14]:='l_2';
form3.GE.Cells[0,15]:='l_12/l_3';

form3.GE.Cells[1,0]:='1&2';
form3.GE.Cells[2,0]:='1&3';
form3.GE.Cells[3,0]:='2&3';
form3.GE.Cells[4,0]:='1&2&3';
form3.GE.Cells[5,0]:='2&3&1';
form3.GE.Cells[6,0]:='3&1&2';
form3.GE.Cells[7,0]:='Sr';

//бинарная эвтектика 1 и 2 компонента
 h10:=h1/lambda11;h20:=h2/lambda12;
 t10:=t1;t20:=t2;
 x1_12:=methodnuton(eps,fx1,dfdx1);
 x2_12:=1-x1_12;
 t12:=fx2(x2_12);
 z1:=x1_12;z2:=x2_12;
 form3.GE.cells[1,4]:=floattostr(x1_12);
 form3.GE.cells[1,5]:=floattostr(x2_12);
 form3.GE.cells[1,1]:=floattostr(t12);
 form3.GE.cells[1,2]:=floattostr(t12-kelvin);
 form3.GE.cells[1,3]:=floattostr(h10*x1_12+h20*x2_12);
 form3.GE.cells[1,13]:=floattostr(lambda11);
 form3.GE.cells[1,14]:=floattostr(lambda12);
 form3.GE.cells[1,15]:=floattostr(lambda11/lambda12);
 //экспериментальные мольные доли
 x1:=z1/(z1+z2/lambda1*lambda2);
 x2:=1-z1;
 form3.GE.cells[1,7]:=floattostr(x1);
 form3.GE.cells[1,8]:=floattostr(x2);

 //массовые мольные доли
 z1:=x1/(x1+x2/m1*m2);
 z2:=1-z1;
 form3.GE.cells[1,10]:=floattostr(z1);
 form3.GE.cells[1,11]:=floattostr(z2);

 //бинарная эвтектика 1 и 3 компонента
 h10:=h1/lambda21;h20:=h3/lambda23;
 t10:=t1;t20:=t3;
 x1_13:=methodnuton(eps,fx1,dfdx1);
 x3_13:=1-x1_13;
 t13:=fx2(x3_13);
 z1:=x1_13;z2:=x3_13;
 form3.GE.cells[2,4]:=floattostr(x1_13);
 form3.GE.cells[2,5]:=floattostr(x3_13);
 form3.GE.cells[2,1]:=floattostr(t13);
 form3.GE.cells[2,2]:=floattostr(t13-kelvin);
 form3.GE.cells[2,3]:=floattostr(h10*x1_13+h20*x3_13);
 form3.GE.cells[2,13]:=floattostr(lambda21);
 form3.GE.cells[2,14]:=floattostr(lambda23);
 form3.GE.cells[2,15]:=floattostr(lambda21/lambda23);
  //экспериментальные мольные доли
 x1:=z1/(z1+z2/lambda1*lambda3);
 x2:=1-z1;
 form3.GE.cells[2,7]:=floattostr(x1);
 form3.GE.cells[2,8]:=floattostr(x2);
 //массовые мольные доли
 z1:=x1/(x1+x2/m1*m2);
 z2:=1-z1;
 form3.GE.cells[2,10]:=floattostr(z1);
 form3.GE.cells[2,11]:=floattostr(z2);
 //бинарная эвтектика 2 и 3 компонента
 h10:=h2/lambda32;h20:=h3/lambda33;
 t10:=t2;t20:=t3;
 x2_23:=methodnuton(eps,fx1,dfdx1);
 x3_23:=1-x2_23;
 t23:=fx2(x3_23);
 z1:=x2_23;z2:=x3_23;
 form3.GE.cells[3,4]:=floattostr(x2_23);
 form3.GE.cells[3,5]:=floattostr(x3_23);
 form3.GE.cells[3,1]:=floattostr(t23);
 form3.GE.cells[3,2]:=floattostr(t23-kelvin);
 form3.GE.cells[3,3]:=floattostr(h10*x2_23+h20*x3_23);
 form3.GE.cells[3,13]:=floattostr(lambda32);
 form3.GE.cells[3,14]:=floattostr(lambda33);
 form3.GE.cells[3,15]:=floattostr(lambda32/lambda33);
 //экспериментальные мольные доли
 x1:=z1/(z1+z2/lambda2*lambda3);
 x2:=1-z1;
 form3.GE.cells[3,7]:=floattostr(x1);
 form3.GE.cells[3,8]:=floattostr(x2);
 //массовые мольные доли
 z1:=x1/(x1+x2/m1*m2);
 z2:=1-z1;
 form3.GE.cells[3,10]:=floattostr(z1);
 form3.GE.cells[3,11]:=floattostr(z2);
table2.Edit;
Table2Lambda12.Value:=strtofloat(format('%5.8f',[lambda1/lambda2]));
Table2Lambda13.Value:=strtofloat(format('%5.8f',[lambda1/lambda3]));
Table2Lambda32.Value:=strtofloat(format('%5.8f',[lambda3/lambda2]));
table2.Post;
 {
 //для W(x3)
function fx4(x:MyReal):MyReal;
begin
 result:=sqr(x1_13*power(x/x3_13,h1/h3)+x2_23*power(x/x3_23,h2/h3)+x-1);
end;
function dfdx4(x:MyReal):MyReal;
begin
 result:=2*(x1_13*power(x/x3_13,h1/h3)+x2_23*power(x/x3_23,h2/h3)+x-1)*
 (h1/h3*power(x/x3_13,h1/h3-1)*sqr(x1_13)+sqr(x2_23)*h2/h3*power(x/x3_23,h2/h3-1)+1);
end;

 //тройная эвтектика 1, 2 и 3 компонент
 x3:=methodnuton(eps,fx4,dfdx4);
 x1:=x1_13*power(x3/x3_13,h1/h3);
 x2:=x2_23*power(x3/x3_23,h2/h3);
 t:=1/(1/t13-r/h1*ln(x1/x1_13));
 //экспериментальные мольные доли
x1:=z1/(z1+z2/lambda12+z3/lambda13);
x2:=z2/(z2+z3*lambda32+z1*lambda12);
x3:=z3/(z3+z2/lambda32+z1*lambda13);
//весовые доли
q1:=x1/(x1+m2/m1*x2+m3/m1*x3);
q2:=x2/(x2+m3/m2*x3+m1/m2*x1);
q3:=x3/(x3+m2/m3*x2+m1/m3*x1);
Hh:=h1*x1+h2*x2+h3*x3;
 }
 form3.GE.RowCount:=16;
 form3.GE.ColCount:=8;
 //тройная эвтектика 1, 2 и 3 компонент
 h10:=h1/lambda1; h20:=h2/lambda2; h30:=h3/lambda3;
 x1_1:=x1_12; x2_1:=x2_12; // 1 2
 x1_2:=x1_13; x2_2:=x3_13; // 1 3
 x1_3:=x2_23; x2_3:=x3_23; // 2 3
 t2_:=t13;
 //эффективные мольные доли
 z3:=methodnuton(eps,fx4,dfdx4);
 if z3<0 then
 z3:=methodnuton(1-eps,fx4,dfdx4);
 if z3>0 then begin

 z1:=x1_2*power(z3/x2_2,h10/h30);
 z2:=x1_3*power(z3/x2_3,h20/h30);
 tz1:=1/(1/t2_-r/h10*ln(z1/x1_2));
 //H_:=h10*z1*z2+h20*z2*z3+h30*z3*z1;
 H_:=h10*z1+h20*z2+h30*z3;
 form3.GE.cells[4,4]:=floattostr(z1);
 form3.GE.cells[4,5]:=floattostr(z2);
 form3.GE.cells[4,6]:=floattostr(z3);
 form3.GE.cells[4,1]:=floattostr(tz1);
 form3.GE.cells[4,2]:=floattostr(tz1-kelvin);
 form3.GE.cells[4,3]:=floattostr(H_);
 form3.GE.cells[4,13]:=floattostr(lambda1);
 form3.GE.cells[4,14]:=floattostr(lambda2);
 form3.GE.cells[4,15]:=floattostr(lambda3);
 //экспериментальные мольные доли
 w:=z1*lambda1/lambda2+z2+z3*lambda3/lambda2;
 x1:=z1*lambda1/lambda2/w;
 x2:=z2/w;
 x3:=z3*lambda3/lambda2/w;
 //t:=1/(1/t13-r/h10*ln(x1/x1_13));
 form3.GE.cells[4,7]:=floattostr(x1);
 form3.GE.cells[4,8]:=floattostr(x2);
 form3.GE.cells[4,9]:=floattostr(x3);
 //массовые мольные доли
 w:=x1*m1/m2+x2+x3*m3/m2;
 z1:=x1*m1/m2/w;
 z2:=x2/w;
 z3:=x3*m3/m2/w;
 form3.GE.cells[4,10]:=floattostr(z1);
 form3.GE.cells[4,11]:=floattostr(z2);
 form3.GE.cells[4,12]:=floattostr(z3);
 end;
 //тройная эвтектика 2, 3, 1 компонент
 //h30:=h3/lambda3;h10:=h1/lambda1;h20:=h2/lambda2; //????
 h10:=h2/lambda2; h20:=h3/lambda3; h30:=h1/lambda1;
 x1_1:=x2_23; x2_1:=x3_23; // 2 3
 x1_2:=x2_12; x2_2:=x1_12; // 2 1
 x1_3:=x3_13; x2_3:=x1_13; // 3 1
 t2_:=t12;
 //эффективные мольные доли

 z3:=methodnuton(eps,fx4,dfdx4);
 if z3<0 then
 z3:=methodnuton(1-eps,fx4,dfdx4);
 if z3>0 then begin
 z1:=x1_2*power(z3/x2_2,h10/h30);
 z2:=x1_3*power(z3/x2_3,h20/h30);
 tz1:=1/(1/t2_-r/h10*ln(z1/x1_2));
 //H_:=h10*z1*z2+h20*z2*z3+h30*z3*z1;
 H_:=h10*z1+h20*z2+h30*z3;
 form3.GE.cells[5,4]:=floattostr(z3);
 form3.GE.cells[5,5]:=floattostr(z1);
 form3.GE.cells[5,6]:=floattostr(z2);
 form3.GE.cells[5,1]:=floattostr(tz1);
 form3.GE.cells[5,2]:=floattostr(tz1-kelvin);
 form3.GE.cells[5,3]:=floattostr(h_);
 //экспериментальные мольные доли
 w:=z3*lambda1/lambda2+z1+z2*lambda3/lambda2;
 x1:=z3*lambda1/lambda2/w;
 x2:=z1/w;
 x3:=z2*lambda3/lambda2/w;

 {w:=z1*lambda2/lambda3+z2+z3*lambda3/lambda1;
 x1:=z1*lambda2/lambda3/w;
 x2:=z2/w;
 x3:=z3*lambda1/lambda3/w;   }
 form3.GE.cells[5,7]:=floattostr(x1);
 form3.GE.cells[5,8]:=floattostr(x2);
 form3.GE.cells[5,9]:=floattostr(x3);
 //массовые мольные доли
 w:=x1*m1/m2+x2+x3*m3/m2;
 z1:=x1*m1/m2/w;
 z2:=x2/w;
 z3:=x3*m3/m2/w;
 form3.GE.cells[5,10]:=floattostr(z1);
 form3.GE.cells[5,11]:=floattostr(z2);
 form3.GE.cells[5,12]:=floattostr(z3);
 end;
 //тройная эвтектика 3, 1, 2 компонент
 //h30:=h3/lambda3;h10:=h1/lambda1;h20:=h2/lambda2; //????
 h10:=h3/lambda3; h20:=h1/lambda1; h30:=h2/lambda2;
 x1_1:=x3_13; x2_1:=x1_13; // 3 1
 x1_2:=x3_23; x2_2:=x2_23; // 3 2
 x1_3:=x1_12; x2_3:=x2_12; // 1 2
 t2_:=t23;
 //эффективные мольные доли
 z3:=methodnuton(eps,fx4,dfdx4);
 if z3<0 then
 z3:=methodnuton(1-eps,fx4,dfdx4);
 if z3>0 then begin
 z1:=x1_2*power(z3/x2_2,h10/h30);
 z2:=x1_3*power(z3/x2_3,h20/h30);
 tz1:=1/(1/t2_-r/h10*ln(z1/x1_2));
 //H_:=h10*z1*z2+h20*z2*z3+h30*z3*z1;
H_:=h10*z1+h20*z2+h30*z3;

 form3.GE.cells[6,4]:=floattostr(z2);
 form3.GE.cells[6,5]:=floattostr(z3);
 form3.GE.cells[6,6]:=floattostr(z1);
 form3.GE.cells[6,1]:=floattostr(tz1);
 form3.GE.cells[6,2]:=floattostr(tz1-kelvin);
 form3.GE.cells[6,3]:=floattostr(h_);
  //экспериментальные мольные доли
 w:=z2*lambda1/lambda2+z3+z1*lambda3/lambda2;
 x1:=z2*lambda1/lambda2/w;
 x2:=z3/w;
 x3:=z1*lambda3/lambda2/w;
 {w:=z1*lambda3/lambda1+z2+z3*lambda2/lambda1;
 x1:=z1*lambda3/lambda1/w;
 x2:=z2/w;
 x3:=z3*lambda1/lambda2/w; }
 //t:=1/(1/t13-r/h10*ln(x1/x1_13));
 form3.GE.cells[6,7]:=floattostr(x1);
 form3.GE.cells[6,8]:=floattostr(x2);
 form3.GE.cells[6,9]:=floattostr(x3);

 //массовые (весовые) мольные доли
 w:=x1*m1/m2+x2+x3*m3/m2;
 z1:=x1*m1/m2/w;
 z2:=x2/w;
 z3:=x3*m3/m2/w;
 form3.GE.cells[6,10]:=floattostr(z1);
 form3.GE.cells[6,11]:=floattostr(z2);
 form3.GE.cells[6,12]:=floattostr(z3);
 end;
 //средняя x1,x2,x3, температура и теплота
 try
 with form3.GE do
 for i:=1 to 12 do begin
  s:=0;
  for j:=1 to 3 do  s:=s+strtofloat(cells[4+j-1,i])/3;
  cells[7,i]:=floattostr(s);
 end;
 except
 end;
 form3.PageControl1.ActivePage:=form3.TabSheet8;
 form3.Show;
 end;
 
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form3.Show
end;

procedure TForm1.menuM2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.menuN6Click(Sender: TObject);
var i:integer;
    mint,minx,ga,gb,gib:myReal;
begin
mint:=1.0e+30;
//избыточная энергия Гиббса
 form3.sg.rowcount:=k+1;
 form3.SG.cells[1,0]:='X1';
 form3.SG.cells[2,0]:='GB1';
 form3.SG.cells[3,0]:='GB2';
 form3.SG.cells[4,0]:='GB';
 form2.Chart5.Series[0].Clear;
 form2.Chart5.Series[1].Clear;
 form2.Chart5.Series[2].Clear;
Ga:=-3194;Gb:=-2905;
for i:=0 to k do begin
 GB1:=ga/sqr(1+ga/gb*xm[1,i]/(1-xm[1,i]));
 GB2:=gb/sqr(1+gb/ga*xm[2,i]/(1-xm[2,i]));
 Gib:=ga*xm[1,i]*(1-xm[1,i])/(xm[1,i]*ga/gb+(1-xm[1,i]));
  if mint>Gib then begin
     mint:=Gib;
     minx:=xm[2,i];
  end;

 form3.SG.cells[0,i+1]:=inttostr(i);
 form3.SG.cells[1,i+1]:=floattostr(xm[1,i]);
 form3.SG.cells[2,i+1]:=floattostr(GB1);
 form3.SG.cells[3,i+1]:=floattostr(GB2);
 form3.SG.cells[4,i+1]:=floattostr(Gib);
 form2.Chart5.Series[0].Addxy(Xm[1,i],GB1);
 form2.Chart5.Series[1].Addxy(Xm[1,i],GB2);
 form2.Chart5.Series[2].Addxy(Xm[1,i],Gib);
 end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
table1.IndexFieldNames:='Id';
form4.show;
end;

procedure TForm1.MRDblClick(Sender: TObject);
var
    f:textfile;
    i,j:integer;
begin
assignfile(f,'matr_'+ TStringGrid(Sender).Name+'.txt');rewrite(f);
     for j:=0 to  TStringGrid(Sender).rowcount-1 do  begin
        for i:=0 to  TStringGrid(Sender).colcount-1 do
        write(f, TStringGrid(Sender).cells[i,j],' ');
     writeln(f);
     end;
closefile(f);
end;


procedure TForm1.Table2BeforePost(DataSet: TDataSet);
begin
   Table2Data.Value:=date;
end;

procedure TForm1.menuN2_12Click(Sender: TObject);
var s,a0,B,c,x01,x11,x12,x02,x1_1,x1_3,x1_4,x1_5,x1_6,x1_7,
    t120,t121,t122,t123,t124,t125,t126,t127,d,lgg1,lgg2,
    hh1,hh2,hh3,hh4,hh5,hh6,hh7,t13,t23,l1,l2,w1,w2:myreal;
    n,nk,i,j,imax,l,m,j1,j2:integer;
 l12,m12,p,x1,x2,t12,hh,x1_2,k1,k2,zmin1,g0,lng1,lng2,lgg12,asd,ge,epss,zmin2,r0,r1,g1,s1,
 gg1,gg2,ht,s2,betta,betta1,betta2,logg12,delta,eps1,a_lin,b_lin,g2,tau:Myreal;
 k1_,kl,lambda1,lambda2,lambda3,lambda13,lambda12,lambda23,sz,z1,z2,tz1,k10,k20,k11,k21,k12,k22,q1,q2,ffz1,ffx1,ffq1:myreal;
 flag,flag1:boolean;
 xx:string;
 a,e:masd;
 x,z,t,g,gl:array[1..2]of masd;
 y:array[1..4]of masd;
begin
//расчет растворимости
if i3=0 then begin
try
 k1:=Table2K1.Value;
 k2:=Table2K2.Value;
 except
 k1:=strtofloat(edit5.Text);
 k2:=strtofloat(edit6.Text);
// k1:=1;k2:=1;
end;
try
  lambda1:=Table2Lambda1.Value;
  lambda2:=Table2Lambda2.Value;
except
  lambda1:=strtofloat(edit3.Text);
  lambda2:=strtofloat(edit4.Text);
// lambda1:=1; lambda2:=1;
end;
 k12:=k1/k2;
 lambda12:=lambda1/lambda2;
 m12:=m1*k1/m2/k2;
 t10:=tk1;t20:=tk2;        //температура кипения
 h10:=hk1*k1;h20:=hk2*k2;
 nk:=form4.table3.recordcount;//
 flag1:=false;
// if n=0 then begin
 n:=form1.Fn.Value;
 h:=1/n;
 //n:=n-1;
 flag1:=true;
  //end;
//термодинамическое согласование жидкость-твердое
h10:=hp1/lambda1;h20:=hp2/lambda2;
t10:=tp1;t20:=tp2;
setlength(g[1],n+1);
setlength(g[2],n+1);
setlength(z[1],n+1);
setlength(t[1],n+1);
setlength(z[2],nk+1);
setlength(t[2],nk+1);
setlength(gl[1],n+1);
setlength(gl[2],n+1);
for i:=1 to n do begin
    z[1,i]:=i*h;
    t[1,i]:=fx1_(z[1,i]);
end;

form4.table3.first;
 form2.Chart1.Series[0].clear;
 form2.Chart1.Series[0].title:='x1_mol(T)-эксп';
  form2.Chart1.Series[0].tag:=1;
 form2.chart1.Series[1].clear;
 form2.Chart1.Series[1].title:='x2_mol(T)-эксп';
 form2.chart1.Series[1].tag:=2;
 form3.gr.colcount:=5;
form3.gr.rowcount:=nk+1;
    form3.GR.Cells[0,0]:='i';
    form3.GR.Cells[0,1]:='x1, mol';
    form3.GR.Cells[0,2]:='x2, mol';
    form3.GR.Cells[0,3]:='T,K';
    form3.GR.Cells[0,4]:='T,C';
    for i:=1 to nk do begin
    z[2,i]:=1-form4.Table3X1mol.Value;
    if form4.Table3T1K.Value<>0 then
    t[2,i]:=form4.Table3T1K.Value
    else t[2,i]:=form4.Table3T1c.Value+kelvin;
      form2.Chart1.Series[0].AddXY(t[2,i],1-z[2,i]);
      form2.Chart1.Series[1].AddXY(t[2,i],z[2,i]);
    form4.Table3.Next;
    form3.GR.Cells[0,i]:=inttostr(i);
    form3.GR.Cells[1,i]:=floattostr(1-z[2,i]);
    form3.GR.Cells[2,i]:=floattostr(z[2,i]);
    form3.GR.Cells[3,i]:=floattostr(t[2,i]);
    form3.GR.Cells[4,i]:=floattostr(t[2,i]-kelvin);
    end;

form3.rt.colcount:=9;
form3.rt.rowcount:=n+1;
    form2.Chart2.Series[0].clear;
    form2.Chart2.Series[1].clear;
    form2.Chart2.Series[2].clear;


    form2.Chart2.Series[0].tag:=1;
    form2.Chart2.Series[1].tag:=2;
    form2.Chart2.Series[2].tag:=3;

    form3.rt.cells[0,0]:='i';
    form3.rt.cells[1,0]:='z1';
    form3.rt.cells[2,0]:='z2';
    form3.rt.cells[3,0]:='T12,K';
    form3.rt.cells[4,0]:='T12,C';
    form3.rt.cells[5,0]:='ln g1';
    form3.rt.cells[6,0]:='ln g2';
    form3.rt.cells[7,0]:='Ge';
    form3.rt.cells[8,0]:='lg g1/g2';
    zmin1:=-1;
    g0:=1;flag:=true;

    for i:=1 to n do begin
    z1:=z[1,i];z2:=1-z1;//z1:=i*h;z2:=1-z1;
    try
    //t[1,i]:=fx1_(z1);
    t12:=t[1,i];
    lng1:= -ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:= -ln(z2)+h20/r/t20*(1-t20/t12);
    lgG12:=math.Log10(exp(lng1-lng2));
    z[1,i]:=z1;
    g[1,i]:=exp(lng1);
    g[2,i]:=exp(lng2);
    gl[1,i]:=lgG12;
    if lgG12*g0<0 then begin
       if flag then begin
       i1:=i;i2:=i-1;
       asd:=(z[1,i2]-z[1,i1])/(gl[1,i2]-gl[1,i1]);
       zmin1:=(-asd*gl[1,i1]+z[1,i1]);
      // zmin1:=z1;
        flag:=false; end;
    end;
    g0:=lgG12;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    form3.rt.cells[0,i]:=inttostr(i);
    form3.rt.cells[1,i]:=format('%5.4f',[z1]);
    form3.rt.cells[2,i]:=format('%5.4f',[z2]);
    form3.rt.cells[3,i]:=format('%5.4f',[t12]);
    form3.rt.cells[4,i]:=format('%5.4f',[t12-kelvin]);
    form3.rt.cells[5,i]:=format('%8.6f',[lng1]);
    form3.rt.cells[6,i]:=format('%8.6f',[lng2]);
    form3.rt.cells[7,i]:=format('%8.6f',[ge]);
    form3.rt.cells[8,i]:=format('%8.6f',[lgG12]);
    form2.Chart2.Series[0].AddXY(z1,lng1);
    form2.Chart2.Series[1].AddXY(z1,lng2);
    form2.Chart2.Series[2].AddXY(z1,lgg12);

    end;
//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
z1:=zmin1;r1:=1;  //exit;
epss:=0.01;zmin2:=z1; r0:=0;  j:=0;
while (abs(r1)>epss)and(j<=50000) do begin
    //интегралы
 g1:=fr3(z1,a,4);  inc(j);
 s1:=0;s2:=0; flag:=true;
 lgg12:=fr3(z[1,1],a,4)-g1;
 for i:=2 to n do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
 if (lgg12>0)and(g0>0) then begin
        //if flag then begin
        zmin2:=z[1,i]+h/2;
        flag:=false;
       // end;
 end;
 lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);
 if r1>0 then z1:=z1+h/2 else z1:=z1-h/2;
 if (abs(r1)<=0.05) and (abs(z1-r0)<=h/2) then break;
 r0:=z1;
end;
 if (abs(r1)<=epss*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
 //коэффициенты для ln gamma1 и ln gamma2
   for i:=1 to n do gl[2,i]:=gl[1,i]-g1;
   setlength(a,5);
   polynrecurs(z[1],gl[2],n,4,a,r1);
   d:=-a[4]/16;
   c:=-(a[3]-24*d)/6;
   b:=-(a[2]+10*d-6*c)/2;
   //if abs((b-c+d)-a[1])>eps then exit;
   for i:=1 to n do
   begin
   z1:=z[1,i];
   lgg1:=sqr(1-z1)*(b+c*(4*z1-1)+d*(12*sqr(z1)-8*z1+1));
   lgg2:=sqr(z1)*(b+c*(4*z1-3)+d*(12*sqr(z1)-16*z1+5));
   g[1,i]:=power(10,lgg1);
   g[2,i]:=power(10,lgg2);
   end;
 g0:=power(10,g1);
 //проверка после согласования
 r1:=1;
 //интегралы
 s1:=0;s2:=0;
 lng1:=ln(g[1,1]);
 lng2:=ln(g[2,1]);
 gg1:=exp(lng1);gg2:=exp(lng2);
 lgg12:=log10(gg1/gg2);
 for i:=2 to n do
 begin
 lng1:=ln(g[1,i]);
 lng2:=ln(g[2,i]);
 gg1:=exp(lng1);gg2:=exp(lng2);
 g0:=log10(gg1/gg2);

 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
  lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);

 if (abs(r1)>=epss*5)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
 form2.chart2.Series[3].clear;
 form2.chart2.Series[3].tag:=4;
 form2.chart2.Series[4].clear;
 form2.chart2.Series[4].tag:=5;
 form2.chart2.Series[5].clear;
 form2.chart2.Series[5].tag:=6;
 form2.chart2.Series[6].clear;
 form2.chart2.Series[6].tag:=7;
 form2.Chart5.Series[2].clear;
 form2.Chart5.Series[2].tag:=3;
 for i:=1 to n do begin
 z1:=z[1,i];
 form2.Chart2.Series[3].AddXY(z[1,i],gl[2,i]);
 try
  form2.Chart2.Series[4].AddXY(z[1,i],ln(g[1,i]));
  form2.Chart2.Series[5].AddXY(z[1,i],ln(g[2,i]));
  form2.Chart2.Series[6].AddXY(z[1,i],log10(g[1,i]/g[2,i]));
 except
 end;
 end;
 l12:=lambda12;
 {if t10>t20
 then begin  }
  t0:=t10; ht:=h10/r; m:=1;kl:=k1;
  //m12:=m1/m2;
 form2.Chart1.Series[1].title:='z1_mol(T)-идеал.,расч.';
 form2.Chart1.Series[2].title:='z1_1(T)-расч.';
 form2.Chart1.Series[3].title:='z1_2(T)-расч.';
 form2.chart1.Series[4].Title:='x1_1(T)-расч.';
 form2.chart1.Series[5].Title:='x1_2(T)-расч.';
 form2.chart1.Series[6].Title:='q1_1(T)-расч.';
 form2.chart1.Series[7].Title:='q1_2(T)-расч.';
{ form2.Chart1.Series[8].title:='z1_1(T)-экстр.';
 form2.Chart1.Series[9].title:='z1_2(T)-экстр.';
 form2.chart1.Series[10].Title:='x1_1(T)-экстр.';
 form2.chart1.Series[11].Title:='x1_2(T)-экстр.';
 form2.chart1.Series[12].Title:='q1_1(T)-экстр.';
 form2.chart1.Series[13].Title:='q1_2(T)экстр.';  }
 {end
 else begin

 t0:=t20; ht:=h20/r; m:=2;kl:=k2;
//   l12:=1/lambda12; m12:=1/m12;
  form2.Chart1.Series[1].title:='z2_mol(T)-идеал.,расч.';
  form2.Chart1.Series[2].title:='z2_1(T)-расч.';
  form2.Chart1.Series[3].title:='z2_2(T)-расч.';
  form2.chart1.Series[4].Title:='x2_1(T)-расч.';
  form2.chart1.Series[5].Title:='x2_2(T)-расч.';
  form2.chart1.Series[6].Title:='q2_1(T)-расч.';
  form2.chart1.Series[7].Title:='q2_2(T)-расч.';
  form2.Chart1.Series[8].title:='z2_1(T)-экстр.';
  form2.Chart1.Series[9].title:='z2_2(T)-экстр.';
  form2.chart1.Series[10].Title:='x2_1(T)-экстр.';
  form2.chart1.Series[11].Title:='x2_2(T)-экстр.';
  form2.chart1.Series[12].Title:='q2_1(T)-экстр.';
  form2.chart1.Series[13].Title:='q2_2(T)экстр.';
 end;
}
 form2.Series3.Pointer.Visible:=true;
 form2.chart1.Series[1].clear;
 form2.chart1.Series[1].tag:=2;
 form2.chart1.Series[2].clear;
 form2.chart1.Series[2].tag:=3;
 form2.chart1.Series[3].clear;
 form2.chart1.Series[3].tag:=4;
 form2.chart1.Series[4].clear;
 form2.chart1.Series[4].tag:=5;

 form2.chart1.Series[5].tag:=6;
 form2.chart1.Series[5].clear;
 form2.chart1.Series[6].tag:=7;
 form2.chart1.Series[6].clear;
 form2.chart1.Series[7].tag:=8;
 form2.chart1.Series[7].clear;
 form2.chart1.Series[8].tag:=9;
 form2.chart1.Series[8].clear;
 form2.chart1.Series[9].tag:=10;
 form2.chart1.Series[9].clear;
 form2.chart1.Series[10].tag:=11;
 form2.chart1.Series[10].clear;
 form2.chart1.Series[11].tag:=12;
 form2.chart1.Series[11].clear;
 form2.chart1.Series[12].tag:=13;
 form2.chart1.Series[12].clear;
 form2.chart1.Series[13].tag:=14;
 form2.chart1.Series[13].clear;
 form3.vd.cells[0,0]:='i';
 form3.vd.cells[1,0]:='z1';
 form3.vd.cells[2,0]:='z1,идеал';
 form3.vd.cells[3,0]:='g1';
 form3.vd.cells[4,0]:='g2';
 form3.vd.cells[5,0]:='ln g1';
 form3.vd.cells[6,0]:='ln g2';
 form3.vd.cells[7,0]:='t12,K';
 form3.vd.cells[8,0]:='t12,C';
 form3.vd.cells[9,0]:='x1';
 form3.vd.cells[10,0]:='x2';
 form3.vd.cells[11,0]:='q1';
 form3.vd.cells[12,0]:='q2';
 form3.vd.cells[13,0]:='z1_экстр.';
 form3.vd.cells[14,0]:='z2_экстр.';
 form3.vd.cells[15,0]:='x1_экстр.';
 form3.vd.cells[16,0]:='x2_экстр.';
 form3.vd.cells[17,0]:='q1_экстр.';
 form3.vd.cells[18,0]:='q2_экстр.';

 form3.vd.rowcount:=n+1;
 form3.vd.ColCount:=19;
 form2.Chart1.LeftAxis.Title.Caption:='x1, мол. д.';
 form2.Chart1.BottomAxis.Title.Caption:='T, K';
 //form2.Chart1.BottomAxis.Increment:=20;


 for i:=1 to nk do z[1,i]:=1-z[2,i];
  if (t[1,1]>t[1,2]) then t[1,0]:=t[1,1]+10 else t[1,0]:= t[1,1];
 setlength(x[1],n+1);
  j1:=0;j2:=0;
 SetLength(y[1],n+1);
 SetLength(y[2],n+1);
 SetLength(y[3],n+1);
 SetLength(y[4],n+1);
 for i:=1 to n do begin
    z1:=exp(-ln(g[m,i])/kl+ht*(1/t0-1/t[1,i]));   //??????
    z2:=exp(ht*(1/t0-1/t[1,i]));
    x[1,i]:=z1;
      form3.vd.cells[0,i]:=floattostr(i);
      form3.vd.cells[1,i]:=floattostr(z1);
      form3.vd.cells[2,i]:=floattostr(z2);
      form3.vd.cells[3,i]:=floattostr(g[1,i]);
      form3.vd.cells[4,i]:=floattostr(g[2,i]);
      form3.vd.cells[5,i]:=floattostr(ln(g[1,i]));
      form3.vd.cells[6,i]:=floattostr(ln(g[2,i]));
      form3.vd.cells[7,i]:=floattostr(t[1,i]);
      form3.vd.cells[8,i]:=floattostr(t[1,i]-kelvin);
{if m=2 then begin  //z1-это для 2-й компоненты
  w1:=(1-z1); w2:=z1; end
  else begin
 }
 w1:=z1; w2:=1-z1; // end;
      x1:=w1/(w1+w2/l12);
      x2:=w2/(w2+w1*l12);
      //массовые доли
      q1:=x1/(x1+x2/m12);
      q2:=x2/(x2+m12*x1);
      form3.vd.cells[9,i]:=floattostr(x1);
      form3.vd.cells[10,i]:=floattostr(x2);
      form3.vd.cells[11,i]:=floattostr(q1);
      form3.vd.cells[12,i]:=floattostr(q2);
      form2.chart1.Series[1].AddXY(t[1,i],z2);
      //if m=1 then begin
      if ((t[1,i]-t[1,i-1])>=0) then begin
       form2.chart1.Series[2].AddXY(t[1,i],w1);
       form2.chart1.Series[4].AddXY(t[1,i],x1);
       form2.chart1.Series[6].AddXY(t[1,i],q1);
       inc(j1);
       y[1,j1]:=w1;
       y[2,j1]:=t[1,i];
       end else begin
      form2.chart1.Series[3].AddXY(t[1,i],w1);
      form2.chart1.Series[5].AddXY(t[1,i],x1);
      form2.chart1.Series[7].AddXY(t[1,i],q1);
       inc(j2);
       y[3,j2]:=w1;
       y[4,j2]:=t[1,i];
      end;
    end;
//экстраполяция ?????
{    setlength(a,5);
    polynrecurs(y[2],y[1],j1,4,a,r1);
    setlength(e,5);
    polynrecurs(y[4],y[3],j2,4,e,r1);
    form2.chart1.Series[8].clear;
       form2.chart1.Series[9].clear;
       form2.chart1.Series[10].clear;
       form2.chart1.Series[11].clear;
       form2.chart1.Series[12].clear;
       form2.chart1.Series[13].clear;
       form2.chart1.Series[9].tag:=10;
       form2.chart1.Series[10].tag:=11;
       form2.chart1.Series[11].tag:=12;
       form2.chart1.Series[12].tag:=13;
       form2.chart1.Series[13].tag:=14;
       if t10>t20 then t0:=t20-10 else t0:=t10-10;
    for i:=1 to n do begin
       t1:=t10+i*2;
       t2:=t20+i*2;

       z1:=fr3(t2,a,4);
     //  z1:=fr3(t1,e,4);
       z2:=1-z1;
      x1:=z1/(z1+z2/l12);
      x2:=z2/(z2+z1*l12);
      //массовые доли
      q1:=x1/(x1+x2/m12);
      q2:=x2/(x2+m12*x1);

       form2.chart1.Series[8].AddXY(t1,z1);
       form2.chart1.Series[10].AddXY(t1,x1);
       form2.chart1.Series[12].AddXY(t1,q1);
       form2.chart1.Series[9].AddXY(t2,z1);
       form2.chart1.Series[11].AddXY(t2,x1);
       form2.chart1.Series[13].AddXY(t2,q1);
    end;
}
        //погрешность
        s1:=0;s:=0;k:=0; //eps1:=1/n;
        for i:=1 to nk do begin
      J:=poisk_mas_abs(t[2,i],t[1],n);
      if (j>0) then begin
      {  a_lin:=(t[2,j+1]-t[2,j])/(z[m,j+1]-z[m,j]);
        b_lin:=t[2,J]-a_lin*z[m,j];
        g2:=a_lin*z1+b_lin; }
        inc(k);  s:=s+sqr(t[1,j]-t[2,i]);
        s1:=s1+sqr(x[1,j]-z[m,i]);
  form2.chart1.Series[8].AddXY(t[1,j],x[1,j]);
   end;
   end;
    tau:=sqrt(s/(k-2));
    showmessage('sigma='+floattostr(tau));
    form3.Show;
    form2.Show;
end else begin
//3
   try
  L:=strtoint(inputbox('ввод данных','Введите количество уровней эвтектики для системы '
     +mr.cells[1,3]+'-'+mr.Cells[1,2],'1'));
   except
   L:=1;
   end;

 //расчет l_12
    k:=1;k1:=1;k2:=1;
    l1l2[1,0]:=0;l1l2[2,0]:=1;
   schet(0,1,1,0,h2,h3,t2,t3,0,1,L);
    l1l2[1,k]:=1;l1l2[2,k]:=0;
    form3.GE.cells[6,0]:='l1';
    form3.GE.cells[7,0]:='l2';

   //сортировка

   n:=form3.GE.rowcount-1;
    for i:=2 to n-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i]);
     imax:=i;
    for j:=i+1 to n do begin
      x2:=strtofloat(form3.Ge.cells[1,j]);
      if x2<x1 then begin imax:=j;x1:=x2;end;
    end;
        xx:=form3.Ge.rows[i].text;
        form3.Ge.rows[i].Text:=form3.Ge.rows[imax].text;
        form3.Ge.rows[imax].text:=xx;
        k:=l1l2[1,imax-1];l1l2[1,imax-1]:=l1l2[1,i-1];l1l2[1,i-1]:=k;
        k:=l1l2[2,imax-1];l1l2[2,imax-1]:=l1l2[2,i-1];l1l2[2,i-1]:=k;
    end;
   //получение средней суммы

   s:=0; p:=0;
   for  i:=1 to n-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     s:=s+x1*l1l2[2,i]/l1l2[1,i];
     p:=p+x1;
   end;
   s:=s/p;

   find(lambda1,lambda2,s);
   while lambda2 >10 do lambda2:=lambda2/10;
   while lambda1 >10 do lambda1:=lambda1/10;

lambda12:=s;

form3.GE.ColCount:=15;
h10:=h3;h20:=h2;t10:=t3;t20:=t2;
sz:=0;s:=0;
for i:=2 to form3.GE.RowCount-1 do begin
//эффективные мольные доли
z1:=strtofloat(form3.GE.Cells[1,i]);
z2:=strtofloat(form3.GE.Cells[2,i]);
tz1:=strtofloat(form3.GE.Cells[3,i]);
try
k1_:=((h10/t10*z1+h20/t20*lambda12*z2)-(h10*z1+h20*z2*lambda12)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
except
k1_:=1;
end;
s:=k1_*z1+s;
sz:=z1+sz;
form3.GE.cells[14,i]:=floattostr(k1_);
end;
k10:=s/sz; k20:=k10/lambda12;
    try
    L:=strtoint(inputbox('ввод данных','Введите количество уровней эвтектики для системы '
     +mr.cells[1,3]+'-'+mr.Cells[1,1],'1'));
   except
   L:=1;
   end;
 //получение точек эвтектики до уровня l
 //расчет l_13
    k:=1;k1:=1;k2:=1;
    l1l2[1,0]:=0;l1l2[2,0]:=1;
   schet(0,1,1,0,h1,h3,t1,t3,0,1,L);
    l1l2[1,k]:=1;l1l2[2,k]:=0;
    form3.GE.cells[6,0]:='l1';
    form3.GE.cells[7,0]:='l2';

   //сортировка

   n:=form3.GE.rowcount-1;
    for i:=2 to n-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i]);
     imax:=i;
    for j:=i+1 to n do begin
      x2:=strtofloat(form3.Ge.cells[1,j]);
      if x2<x1 then begin imax:=j;x1:=x2;end;
    end;
        xx:=form3.Ge.rows[i].text;
        form3.Ge.rows[i].Text:=form3.Ge.rows[imax].text;
        form3.Ge.rows[imax].text:=xx;
        k:=l1l2[1,imax-1];l1l2[1,imax-1]:=l1l2[1,i-1];l1l2[1,i-1]:=k;
        k:=l1l2[2,imax-1];l1l2[2,imax-1]:=l1l2[2,i-1];l1l2[2,i-1]:=k;
    end;
   //получение средней суммы

   s:=0; p:=0;
   for  i:=1 to n-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     s:=s+x1*l1l2[2,i]/l1l2[1,i];
     p:=p+x1;
   end;
   s:=s/p;
   lambda13:=s;
   find(lambda1,lambda3,s);
   while lambda3 >10 do lambda3:=lambda3/10;
   while lambda1 >10 do lambda1:=lambda1/10;



form3.GE.ColCount:=15;
h10:=h3;h20:=h1;t10:=t3;t20:=t1;
sz:=0;s:=0;
for i:=2 to form3.GE.RowCount-1 do begin
//эффективные мольные доли
z1:=strtofloat(form3.GE.Cells[1,i]);
z2:=strtofloat(form3.GE.Cells[2,i]);
tz1:=strtofloat(form3.GE.Cells[3,i]);
try
k1_:=((h10/t10*z1+h20/t20*lambda13*z2)-(h10*z1+h20*z2*lambda13)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
except
k1_:=1;
end;
s:=k1_*z1+s;
sz:=z1+sz;
form3.GE.cells[14,i]:=floattostr(k1_);

end;
k11:=s/sz; k21:=k11/lambda13;

//расчет l_23
lambda23:=lambda13/lambda12;
k22:=k21;
k12:=lambda23*k22;

// пересчет в мольные доли и расчет T

table2.Edit;
Table2Lambda1.Value:=k21;
Table2Lambda2.Value:=k12;
Table2Lambda3.Value:=k11;
Table2Lambda12.Value:=k21/k12;
Table2Lambda13.Value:=k21/k11;
Table2Lambda32.Value:=k11/k12;
table2.post;


 lambda1:=Table2Lambda1.Value;
 lambda2:=Table2Lambda2.Value;
 lambda12:=Table2Lambda12.Value;
 form3.GE.cells[6+2,0]:='x1 эксп.мол.д.';
 form3.GE.cells[7+2,0]:='x2 эксп.мол.д.';
 form3.GE.cells[8+2,0]:='H12';
 form3.GE.cells[9+2,0]:='x1 вес.д.';
 form3.GE.cells[10+2,0]:='x2 вес.д.';
 form3.GE.cells[11+2,0]:='T, K';
 form3.GE.ColCount:=15;

form2.Chart1.Title.Text.Clear;
form2.Chart1.Title.Text.Add('Расчет при норм. атм. давл.');
form2.Chart1.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
form2.Chart1.LeftAxis.Title.Caption:='Температура, К';
form2.Chart1.BottomAxis.Title.Caption:='Весовая доля 1-й компоненты';
form2.Chart1.Series[0].clear; form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[0].Title:='T(z1)';
form2.Chart1.Series[1].clear; form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[1].Title:='T(x1)';
form2.Chart1.Series[2].clear; form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[2].Title:='T(q1)';

h:=1/fn.Value;
a0:=h;
b:=1-a0;
h10:=h1/lambda1;h20:=h2/lambda2;t10:=t1;t20:=t2;
k:=round((b-a0)/h);
form3.RT.ColCount:=10;
form3.RT.rowcount:=k;
 form3.RT.cells[1,0]:='z1';
  form3.RT.cells[2,0]:='z2';
  form3.RT.cells[3,0]:='T(z1)';
  form3.RT.cells[4,0]:='x1';
  form3.RT.cells[5,0]:='x2';
  form3.RT.cells[6,0]:='T(x1)';
  form3.RT.cells[7,0]:='q1';
  form3.RT.cells[8,0]:='q2';
  form3.RT.cells[9,0]:='T(q1)';
for i:=1 to k-1 do begin
z1:=a0+i*h;z2:=(b-z1);
//экспериментальные мольные доли
//lambda12:=strtoint(form3.GE.Cells[6,i])/strtoint(form3.GE.Cells[7,i]);
x1:=z1/(z1+z2/lambda12);
x2:=z2/(z2+z1*lambda12);
//весовые доли
q1:=x1/(x1+(m2)/(m1)*x2);
q2:=x2/(x2+(m1)/(m2)*x1);
//q1:=x1/(x1+m2/m1*x2);
//q2:=x2/(x2+m1/m2*x1);
ffz1:=fx1_(z1);ffx1:=fx1_(x1);ffq1:=fx1_(q1);
form2.Chart1.series[0].AddXY(z1,ffz1);
form2.Chart1.series[1].AddXY(x1,ffz1);
form2.Chart1.series[2].AddXY(q1,ffz1);
 form3.RT.cells[1,i]:=floattostr(Z1);
 form3.RT.cells[2,i]:=floattostr(Z2);
 form3.RT.cells[3,i]:=floattostr(ffz1);
 form3.RT.cells[4,i]:=floattostr(x1);
 form3.RT.cells[5,i]:=floattostr(x2);
 form3.RT.cells[6,i]:=floattostr(ffx1);
 form3.RT.cells[7,i]:=floattostr(q1);
 form3.RT.cells[8,i]:=floattostr(q2);
 form3.RT.cells[9,i]:=floattostr(ffq1);
end;
 form3.PageControl1.ActivePage:=form3.TabSheet8;
 form2.PageControl1.ActivePage:=form2.TabSheet1;
end;
end;

procedure TForm1.menuN2_3Click(Sender: TObject);
var
flag:boolean;
i,j,i1,i2,nm,nk:integer;
k1,k2,s,sz,tz1,x1_,x2_,w1_,w2_,s1,s2,q2,hh1,hh2,hh3,s3,
q1,minx,tg,lnx1,l12,w1,w2,l1,l2,x1,hh,g3,g2,eps,k12, lgg1,lgg2,d,
lnx2,x2,g1,z1,z2,t12,lng1,lng2,lambda1,lambda2,lambda12,
lgG12,ge,g0,zmin1,zmin2,r1,c,r0,asd,t12_,lng1_,lng2_,lgg12_,
koefr1,koefr2:myreal;
aa:masd;
z,t,g,gl:array[1..2]of masd;
begin
//термодинамическое согласование жидкость-твердое
if i3=0 then
//2
begin
try
    koefr1:=Table2R1.Value;
    koefr2:=Table2R2.Value;
except
    koefr1:=0;
    koefr2:=0;
end;
try
lambda1:=Table2Lambda1.Value;
lambda2:=Table2Lambda2.Value;
lambda12:=lambda1/lambda2;
except
lambda1:=1;
lambda2:=1;
lambda12:=1;
end;
    h10:=hp1/lambda1;h20:=hp2/lambda2;
    t10:=tp1;t20:=tp2;
    form3.TS.rowcount:=n;
    form3.TS.ColCount:=9;
    form3.TS.Cells[0,1]:='i';
    form3.TS.cells[1,0]:='z1';
    form3.TS.cells[2,0]:='z2';
    form3.TS.cells[3,0]:='T,K';
    form3.TS.cells[4,0]:='T,C';
    form3.TS.cells[5,0]:='ln G1';
    form3.TS.cells[6,0]:='ln G2';
    form3.TS.cells[7,0]:='G_E';
    form3.TS.cells[8,0]:='lg G1/G2';
    form2.Chart2.Title.Text.Clear;
    form2.Chart2.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
    form2.Chart2.Series[0].clear;
    form2.Chart2.Series[0].tag:=1;
    form2.Chart2.Series[0].Title:='ln(G1)';
    form2.Chart2.Series[1].clear;
    form2.Chart2.Series[1].tag:=2;
    form2.Chart2.Series[1].Title:='ln(G2)';
    form2.Chart2.Series[2].clear;
    form2.Chart2.Series[2].tag:=3;
    form2.Chart2.Series[2].Title:='lg(G1/G2)';
    form2.Chart5.Title.Text.Clear;
    form2.Chart5.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
    form2.Chart5.Series[3].clear;form2.Chart2.Series[3].tag:=4;form2.Chart5.Series[3].Title:='G_E';
    form2.Chart1.Title.Text.Clear;
    form2.Chart1.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
    form2.Chart1.Series[0].clear;form2.Chart1.Series[0].tag:=1;form2.Chart1.Series[0].Title:='T12(x1)';
    setlength(z[1],n+1);
    setlength(g[1],n+1);
    setlength(g[2],n+1);
    setlength(t[1],n+1);
    setlength(gl[1],n+1);
    setlength(gl[2],n+1);
//Поиск минимума до термодинамического согласования
    zmin1:=-1;
    g0:=1;flag:=true;
    for i:=1 to n-1 do begin
    z1:=i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    ge:=(z1*lng1+z2*lng2)*(r*t12); //?   (z1*lng1+z2*lng2)/(r*t12)
    lgG12:=math.Log10(exp(lng1-lng2));
    z[1,i]:=z1;
    g[1,i]:=exp(lng1);
    g[2,i]:=exp(lng2);
    gl[1,i]:=lgG12;
    if lgG12*g0<0 then begin
       if flag then begin i1:=i;i2:=i-1;
       asd:=(z[1,i2]-z[1,i1])/(gl[1,i2]-gl[1,i1]);
       zmin1:=(-asd*gl[1,i1]+z[1,i1]);
       flag:=false; end;
    end;
    g0:=lgG12;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    form3.ts.Cells[0,i]:=inttostr(i);
    form3.TS.cells[1,i]:=format('%5.3f',[z1]);
    form3.TS.cells[2,i]:=format('%5.3f',[z2]);
    form3.TS.cells[3,i]:=format('%5.3f',[t12]);
    form3.TS.cells[4,i]:=format('%5.3f',[t12-kelvin]);
    form3.TS.cells[5,i]:=format('%8.6f',[lng1]);
    form3.TS.cells[6,i]:=format('%8.6f',[lng2]);
    form3.TS.cells[7,i]:=format('%8.6f',[ge]);
    form3.TS.cells[8,i]:=format('%8.6f',[lgG12]);
    form2.Chart2.Series[0].AddXY(z1,lng1);
    form2.Chart2.Series[1].AddXY(z1,lng2);
    form2.Chart2.Series[2].AddXY(z1,lgg12);
    form2.Chart5.Series[3].AddXY(z1,ge);
    form2.Chart1.Series[0].AddXY(z1,t12);
    end;
    if flag then
      zmin1:=strtofloat(inputbox('Введите данные','Точка минимума для V_E при T=const или для H_E приP=const',floattostr(0.5)));
    nm:=form3.RT.rowcount;
    form3.RT.Cells[0,nm]:='z_min до терм.согл.';
    form3.RT.Cells[1,nm]:=format('%5.3f',[zmin1]);
    form3.RT.RowCount:=nm+1;
//кубический полином
    setlength(aa,5);
    polynrecurs(z[1],gl[1],n-1,4,aa,r1);
//Процедура термодинамического согласования
z1:=zmin1;r1:=2;  //exit;
eps:=0.01;zmin2:=z1;  r0:=0; j:=0;
while (abs(r1)>eps) and(j<=50000) do begin
inc(j);
//интегралы
 g1:=fr3(z1,aa,4);
 s1:=0;s2:=0; flag:=true;
 lgg12:=fr3(z[1,1],aa,4)-g1;
 for i:=2 to n-1 do
 begin
 g0:=fr3(z[1,i],aa,4)-g1;
 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
 if (lgg12>0)and(g0>0) then begin
        //if flag then begin
        zmin2:=z[1,i]+h/2;
        flag:=false;
       // end;
 end;
 lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);
 if r1>0 then
  z1:=z1+h/2
 else
  z1:=z1-h/2;
 if (abs(r1)<=0.05) and (abs(z1-r0)<=h/2) then break;
 r0:=z1;
end;
if (j>50000) and (abs(r1)>eps*5) then begin
 showmessage('термодинамически не согласовано');
 exit;
end;

//после термодинамического согласования
form2.Chart2.Series[3].clear;
form2.Chart2.Series[3].tag:=4;
form2.Chart2.Series[3].Title:='lg(G1/G2)_согл.';
for i:=1 to n-1 do
 begin
 gl[2,i]:=fr3(z[1,i],aa,4)-g1;
 form2.Chart2.Series[3].AddXY(z[1,i],gl[2,i]);
 end;
  try
 k12:=zmin1/(1-zmin1)/zmin2*(1-zmin2);
 find(k1,k2,k12);
 if k12=0 then k12:=k1/k2;
  except
  k12:=1;k1:=1;k2:=1;
  end;
  table2.Edit;
 Table2.FieldByName('k1').AsFloat:=k1;
 Table2.FieldByName('k2').AsFloat:=k2;
 table2.Post;
 nm:=form3.RT.rowcount;
 form3.RT.Cells[0,nm]:='z_min после терм.согл.'; form3.RT.Cells[1,nm]:=floattostr(zmin2);
 form3.RT.Cells[0,nm+1]:='S1-S2='; form3.RT.Cells[1,nm+1]:=floattostr(abs(r1));
 form3.RT.Cells[0,nm+2]:='k1/k2='; form3.RT.Cells[1,nm+2]:=floattostr(k1/k2);
 form3.RT.Cells[0,nm+3]:='k1='; form3.RT.Cells[1,nm+3]:=floattostr(k1);
 form3.RT.Cells[0,nm+4]:='k2='; form3.RT.Cells[1,nm+4]:=floattostr(k2);
 form3.RT.Cells[0,nm+5]:='j='; form3.RT.Cells[1,nm+5]:=inttostr(j);
 form3.RT.rowcount:=nm+6;

 //коэффициенты для ln gamma1 и ln gamma2
   setlength(aa,5);
   polynrecurs(z[1],gl[2],n-1,4,aa,r1);
   d:=-aa[4]/16;
   c:=-(aa[3]-24*d)/6;
   b:=-(aa[2]+10*d-6*c)/2;
    form2.Chart2.Series[11].tag:=12;
    form2.Chart2.Series[12].tag:=13;
    form2.Chart2.Series[11].clear;form2.Chart2.Series[11].Title:='Ln Gamma1_согл';
    form2.Chart2.Series[12].clear;form2.Chart2.Series[12].Title:='Ln Gamma2_согл';
   for i:=1 to n-1 do
   begin
   z1:=z[1,i];
   lgg1:=sqr(1-z1)*(b+c*(4*z1-1)+d*(12*sqr(z1)-8*z1+1));
   lgg2:=sqr(z1)*(b+c*(4*z1-3)+d*(12*sqr(z1)-16*z1+5));
   g1:=power(10,lgg1);
   g2:=power(10,lgg2);
   lng1:=ln(g1);
   lng2:=ln(G2) ;
   form2.Chart2.Series[11].AddXY(z1,(lng1));
   form2.Chart2.Series[12].AddXY(z1,(lng2));
   end;
 {
    lng1:=-ln(zmin1)+h10/r/t10*(1-t10/t12);  //?
    lng2:=-ln(1-zmin1)+h20/r/t20*(1-t20/t12);//?
//расчет коэффициентов c,b по модели Ван-Лаара
    c:=sqr(lng1+lng2*(1-zmin1)/zmin1)/lng1;
    d:=sqr(lng2+lng1*zmin1/(1-zmin1))/lng2;
//расчет коэффициентов по модели Редлиха-Кистера
    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    d:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;

    form2.Chart2.Series[11].tag:=12;
    form2.Chart2.Series[12].tag:=13;
    form2.Chart2.Series[11].clear;
    form2.Chart2.Series[12].clear;
   for i:=1 to n-1 do begin
    z1:=a+i*h;
//    lng1:=c*sqr(d*z2/(c*z1+d*z2));//формула Ван-Лаара
//    lng2:=d*sqr(c*z1/(c*z1+d*z2));
    lng1:=sqr(1-z1)*(d+c*(3*z1-(1-z1))); //формула Редлиха-Кистера
    lng2:=sqr(z1)*(d+c*(z1-3*(1-z1)));
    form2.Chart2.Series[11].AddXY(z1,(lng1));
    form2.Chart2.Series[12].AddXY(z1,(lng2));
  end;
  }
nk:=form3.ge.RowCount-1;
j:=form3.ge.colcount;
form3.ge.cells[j,0]:='H(k)';
form3.ge.cells[j+1,0]:='M(k)';
form3.ge.cells[j+2,0]:='H(k)/M(k)';
form3.ge.cells[j+3,0]:='k1';
form3.ge.cells[j+4,0]:='k2';
form3.ge.cells[j+5,0]:='k1/k2';
form3.ge.cells[j+3,1]:=floattostr(k1);
form3.ge.cells[j+4,1]:=floattostr(k2);
form3.ge.cells[j+5,1]:=floattostr(k12);
try
for i:=2 to nk do begin
//изменено!!!
 x1:=strtofloat(form3.ge.cells[1,i]);
 x2:=1-x1;
 z1:=x1/(x1+x2*k1/k2);
 z2:=1-z1;
 form3.ge.cells[8,i]:=floattostr(x1);
 form3.ge.cells[9,i]:=floattostr(x2);
 form3.ge.cells[1,i]:=floattostr(z1);
 form3.ge.cells[2,i]:=floattostr(z2);
// q1:=strtofloat(form3.ge.cells[11,i]); //массовые доли
  q1:=x1/(x1+(m2)/(m1)*x2);//массовые доли
  q2:=1-q1;
 form3.ge.cells[11,i]:=floattostr(q1);
 form3.ge.cells[12,i]:=floattostr(q2);
 form3.ge.cells[3,i]:=floattostr(fx1_(x1));
 form3.ge.cells[4,i]:=floattostr(fx1_(x1)-kelvin);
// hh:=k1*hp1*q1+k2*hp2*(1-q1); //теплота плавления в точке эвтектики
 hh:=(k1+koefr1)*hp1*x1+(k2+koefr2)*hp2*(1-x1);
 s:=m1*k1*x1+m2*k2*(1-x1); //пересчитанная молярная масса
 form3.ge.cells[j,i]:=floattostr(hh);
 form3.ge.cells[j+1,i]:=floattostr(s);
// form3.ge.cells[j+2,i]:=floattostr((k1*hp1*x1+k2*hp2*(1-x1))/s);
 form3.ge.cells[j+2,i]:=floattostr(((k1+koefr1)*hp1*x1+(k2+koefr2)*hp2*(1-x1))/s);
end;
except  // если нет эвтектики
{x1:=zmin1;
x2:=1-x1;
z1:=x1/(x1+x2/k12);
z2:=1-z1;
q1:=x1/(x1+m2/m1*x2);//массовые доли
q2:=1-q2;
}

 z1:=zmin1;
 z2:=1-z1;
 x1:=z1/(z1+z2/k12);//экспериментальные мольные доли
 x2:=z2/(z2+z1*k12);
 q1:=x1/(x1+(m2)/(m1)*x2);//массовые доли
 q2:=x2/(x2+(m1)/(m2)*x1);


 // hh:=k1*hp1*q1+k2*hp2*(1-q1); //теплота плавления в точке эвтектики
 hh:=(k1+koefr1)*hp1*x1+(k2+koefr2)*hp2*(1-x1);
 s:=m1*k1*x1+m2*k2*(1-x1); //пересчитанная молярная масса
 form3.ge.cells[1,1]:=floattostr(fx1_(z1));
 form3.ge.cells[2,1]:=floattostr(fx1_(z1)-kelvin);
 form3.ge.cells[3,1]:=floattostr(z1);
 form3.ge.cells[4,1]:=floattostr(z2);
 form3.ge.cells[5,1]:=floattostr(x1);
 form3.ge.cells[6,1]:=floattostr(x2);
 form3.ge.cells[7,1]:=floattostr(q1);
 form3.ge.cells[8,1]:=floattostr(q2);
 form3.ge.cells[9,1]:=floattostr(hh);
 form3.ge.cells[10,1]:=floattostr(s);
 //form3.ge.cells[11,1]:=floattostr((k1*hp1*x1+k2*hp2*(1-x1))/s);
  form3.ge.cells[11,1]:=floattostr(((k1+koefr1)*hp1*x1+(koefr2+k2)*hp2*(1-x1))/s);
 form3.ge.cells[12,1]:=floattostr(k1);
 form3.ge.cells[13,1]:=floattostr(k2);
 form3.ge.cells[14,1]:=floattostr(k12);
 form3.ge.cells[15,1]:=floattostr(k1*h1);
 form3.ge.cells[16,1]:=floattostr(k2*h2);
 h10:=k1*hp1;h20:=k2*hp2;
 form3.ge.cells[17,1]:=floattostr(fx1_(z1));

 form3.ge.cells[1,0]:='T,K';
 form3.ge.cells[2,0]:='T,C';
 form3.ge.cells[3,0]:='z1,эфф.';
 form3.ge.cells[4,0]:='z2,эфф.';
 form3.ge.cells[5,0]:='x1,эксп.';
 form3.ge.cells[6,0]:='x2,эксп.';
 form3.ge.cells[7,0]:='q1,масс.';
 form3.ge.cells[8,0]:='q2,масс.';
 form3.ge.cells[9,0]:='H(k)';
 form3.ge.cells[10,0]:='M(k)';
 form3.ge.cells[11,0]:='H(k)/M(k)';
 form3.ge.cells[12,0]:='k1';
 form3.ge.cells[13,0]:='k2';
 form3.ge.cells[14,0]:='k12';
 form3.ge.cells[15,0]:='k1*H1';
 form3.ge.cells[16,0]:='k2*H2';
 form3.ge.cells[17,0]:='T,K';
 form3.GE.RowCount:=2;
 form3.GE.ColCount:=18;
end;


form2.Chart11.Title.Text.Clear;
form2.Chart11.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
form2.Chart12.Title.Text.Clear;
form2.Chart12.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
form2.chart5.Series[0].clear;
form2.chart5.Series[0].tag:=1;
form2.chart5.Series[0].Title:='Ge(x1_эфф)';
form2.chart5.Series[1].clear;form2.chart5.Series[1].tag:=2;form2.chart5.Series[1].Title:='Ge(x1_эксп)';
form2.chart5.Series[2].clear;form2.chart5.Series[2].tag:=3;form2.chart5.Series[2].Title:='Ge(x1_масс)';
form2.chart11.Series[0].clear;form2.chart11.Series[0].tag:=1;form2.chart11.Series[0].Title:='H(x1_эфф)';
form2.chart11.Series[1].clear;form2.chart11.Series[1].tag:=2;form2.chart11.Series[1].Title:='H(x1_эксп)';
form2.chart11.Series[2].clear;form2.chart11.Series[2].tag:=3;form2.chart11.Series[2].Title:='H(x1_масс)';
form2.chart12.Series[0].clear;form2.chart12.Series[0].tag:=1;form2.chart12.Series[0].Title:='S(x1_эфф)';
form2.chart12.Series[1].clear;form2.chart12.Series[1].tag:=2;form2.chart12.Series[1].Title:='S(x1_эксп)';
form2.chart12.Series[2].clear;form2.chart12.Series[2].tag:=3;form2.chart12.Series[2].Title:='S(x1_масс)';
form2.chart1.Series[1].clear;form2.chart1.Series[1].tag:=2;form2.chart1.Series[1].Title:='T(x1_эфф)';
form2.chart1.Series[2].clear;form2.chart1.Series[2].tag:=3;form2.chart1.Series[2].Title:='T(x1_эксп)';
form2.chart1.Series[3].clear;form2.chart1.Series[3].tag:=4;form2.chart1.Series[3].Title:='T(x1_масс)';
form3.StS.Cells[0,0]:='i';
form3.StS.Cells[1,0]:='z1';
form3.StS.Cells[2,0]:='z2';
form3.StS.Cells[3,0]:='x1';
form3.StS.Cells[4,0]:='x2';
form3.StS.Cells[5,0]:='q1';
form3.StS.Cells[6,0]:='q2';
form3.StS.Cells[7,0]:='S(z1)';
form3.StS.Cells[8,0]:='S(x1)';
form3.StS.Cells[9,0]:='S(q1)';
form3.StS.rowcount:=n;form3.StS.colcount:=10;
form3.TGE.Cells[0,0]:='i';
form3.TGE.Cells[1,0]:='z1';
form3.TGE.Cells[2,0]:='z2';
form3.TGE.Cells[3,0]:='x1';
form3.TGE.Cells[4,0]:='x2';
form3.TGE.Cells[5,0]:='q1';
form3.TGE.Cells[6,0]:='q2';
form3.TGE.Cells[7,0]:='Ge(z1)';
form3.TGE.Cells[8,0]:='Ge(x1)';
form3.TGE.Cells[9,0]:='Ge(q1)';
form3.TGE.rowcount:=n;form3.TGE.colcount:=10;
form3.GH.Cells[0,0]:='i';
form3.GH.Cells[1,0]:='z1';
form3.GH.Cells[2,0]:='z2';
form3.GH.Cells[3,0]:='x1';
form3.GH.Cells[4,0]:='x2';
form3.GH.Cells[5,0]:='q1';
form3.GH.Cells[6,0]:='q2';
form3.GH.Cells[7,0]:='H(z1)';
form3.GH.Cells[8,0]:='H(x1)';
form3.GH.Cells[9,0]:='H(q1)';
form3.GH.rowcount:=n;form3.GH.colcount:=10;
// h10:=k1*hp1;h20:=k2*hp2;
a:=strtofloat(form1.EdtA.text);
b:=strtofloat(form1.Edtb.text);
h:=(b-a)/n;
h10:=hp1/lambda1;h20:=hp2/lambda2;
for i:=1 to n-1 do begin
    z1:=a+i*h;//эксп. мол. д. //эффективные мольные доли
    z2:=b-z1;
x1:=z1/(z1+z2/k12);//экспериментальные мольные доли
x2:=z2/(z2+z1*k12);
q1:=x1/(x1+(m2)/(m1)*x2);//массовые доли
q2:=x2/(x2+(m1)/(m2)*x1);
t12:=fx1_(z1);
    form2.chart1.Series[1].AddXY(z1,t12);
    form2.chart1.Series[2].AddXY(x1,t12);
    form2.chart1.Series[3].AddXY(q1,t12);

    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    g2:=(z1*lng1+z2*lng2)*r*t12;//избыточная энергия

    lng1:=-ln(x1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(x2)+h20/r/t20*(1-t20/t12);

    g2:=(x1*lng1+x2*lng2)*r*t12;//избыточная энергия

//    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);//???
//    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);//???
    g1:=(z1*lng1+z2*lng2)*r*t12; //?
    lng1:=-ln(q1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(q2)+h20/r/t20*(1-t20/t12);
    g3:=(q1*lng1+q2*lng2)*r*t12; //?
    form3.TGE.Cells[0,i]:=inttostr(i);
    form3.TGE.Cells[1,i]:=floattostr(z1);
    form3.TGE.Cells[2,i]:=floattostr(z2);
    form3.TGE.Cells[3,i]:=floattostr(x1);
    form3.TGE.Cells[4,i]:=floattostr(x2);
    form3.TGE.Cells[5,i]:=floattostr(q1);
    form3.TGE.Cells[6,i]:=floattostr(q2);
    form3.TGE.Cells[7,i]:=floattostr(g1);
    form3.TGE.Cells[8,i]:=floattostr(g2);
    form3.TGE.Cells[9,i]:=floattostr(g3);
    form2.chart5.Series[0].AddXY(z1,g1);
    form2.chart5.Series[1].AddXY(x1,g2);
    form2.chart5.Series[2].AddXY(q1,g3);

    hh1:=h10*z1+h20*z2;  //? h10, h20
    hh2:=h10*x1+h20*x2; //теплота плавления
    hh3:=h10*q1+h20*q2; //теплота плавления
    form3.GH.Cells[0,i]:=inttostr(i);
    form3.gh.Cells[1,i]:=floattostr(z1);
    form3.gh.Cells[2,i]:=floattostr(z2);
    form3.gh.Cells[3,i]:=floattostr(x1);
    form3.gh.Cells[4,i]:=floattostr(x2);
    form3.gh.Cells[5,i]:=floattostr(q1);
    form3.gh.Cells[6,i]:=floattostr(q2);
    form3.gh.Cells[7,i]:=floattostr(hh1);
    form3.gh.Cells[8,i]:=floattostr(hh2);
    form3.gh.Cells[9,i]:=floattostr(hh3);

    form2.chart11.Series[0].AddXY(x1,g3);
    form2.chart11.Series[1].AddXY(z1,s2);
    form2.chart11.Series[2].AddXY(x1,s1);

    s1:=(hh1-g1)/t12;//энтропия
    s2:=(hh2-g2)/t12;//энтропия
    s3:=(hh3-g3)/t12;//энтропия
    form3.StS.Cells[0,i]:=inttostr(i);
    form3.StS.Cells[1,i]:=floattostr(z1);
    form3.StS.Cells[2,i]:=floattostr(z2);
    form3.StS.Cells[3,i]:=floattostr(x1);
    form3.StS.Cells[4,i]:=floattostr(x2);
    form3.StS.Cells[5,i]:=floattostr(q1);
    form3.StS.Cells[6,i]:=floattostr(q2);
    form3.StS.Cells[7,i]:=floattostr(s1);
    form3.StS.Cells[8,i]:=floattostr(s2);
    form3.StS.Cells[9,i]:=floattostr(s3);
    form2.chart12.Series[0].AddXY(x1,s1);
    form2.chart12.Series[1].AddXY(z1,s2);
    form2.chart12.Series[2].AddXY(q1,s3);

end;
 form3.ge.ColCount:=j+6;
 form3.PageControl1.ActivePage:=form3.TabSheet4;form3.Show;
 form2.PageControl1.ActivePage:=form2.TabSheet3;form2.Show;
end;
end;

procedure TForm1.menuN2_4Click(Sender: TObject);
 var
 i,nm,l,ll:integer;
 k12,k1,k2,q1,q2,q1_,q2_,m12,lnx1,lnx2,zmin1,
 g1,g2,minx1,minx2,tg1,tg2,g,tg,z1,z2,z0,d,
 l1,l2,l12,t12,lng1,lng2,minx,x1,x2,w1,w2,g1_l,g2_l,
 x1_,x2_,w1_,w2_,c,minu1,u1,u2,u1_,u2_,w0,hh,hm,hs:myreal;
begin
//Фазовое равновесие жидкость- твердое (ликвидус)
//Обратный ход
if i3=0 then
//2
begin
try
   a:=strtofloat(edta.text);
   b:=strtofloat(edtb.text);
 except
   a:=0;b:=1;
 end;
 n:=form1.Fn.Value;
 h:=(b-a)/n;
try
 l1:=strtofloat(edit3.Text);
 l2:=strtofloat(edit4.Text);
except
 l1:=Table2Lambda1.Value;
 l2:=Table2Lambda2.Value;
end;
 l12:=l1/l2;
try
 k1:=strtofloat(edit5.Text);
 k2:=strtofloat(edit6.Text);
except
 k1:=Table2K1.Value;
 k2:=Table2K2.Value;
end;
k12:=k1/k2;  ////убрать?????
//k1:=1;k2:=1;
m12:=m1/m2;
h10:=hp1/l1;h20:=hp2/l2;
    t10:=t1;t20:=t2;
    setlength(t[1],n+1);
    //модель Редлиха-Кистера
    form2.Chart1.Series[0].clear;
    form2.Chart1.Series[1].clear;
    form2.Chart1.Series[2].clear;
    form2.Chart1.Series[3].clear;
    form2.Chart1.Series[4].clear;
    form2.Chart1.Series[5].clear;
    form2.Chart1.Series[6].clear;
    form2.Chart1.Series[7].clear;
    form2.Chart1.Series[8].clear;
    form2.Chart1.Title.Text.Clear;
    form2.Chart1.Title.Text.Add(name1+'-'+name2);
    form2.Chart1.Series[0].tag:=1;form2.Chart1.Series[0].Title:='T(x1_эфф.)';
    form2.Chart1.Series[1].tag:=2;form2.Chart1.Series[1].Title:='Т(x1_эксп.)';
    form2.Chart1.Series[2].tag:=3;form2.Chart1.Series[2].Title:='Т(x1_масс.)';
    form2.Chart1.Series[3].tag:=4;form2.Chart1.Series[3].Title:='T1(x1_эфф.)_ликвидус';
    form2.Chart1.Series[4].tag:=5;form2.Chart1.Series[4].Title:='Т2(x1_эфф.)_ликвидус';
    form2.Chart1.Series[5].tag:=6;form2.Chart1.Series[5].Title:='Т1(x1_эксп.)_ликвидус';
    form2.Chart1.Series[6].tag:=7;form2.Chart1.Series[6].Title:='Т2(x1_эксп.)_ликвидус';
    form2.Chart1.Series[7].tag:=8;form2.Chart1.Series[7].Title:='Т1(x1_масс.)_ликвидус';
    form2.Chart1.Series[8].tag:=9;form2.Chart1.Series[8].Title:='Т2(x1_масс.)_ликвидус';
try
      for i:=1 to n-1 do begin
    z1:=a+i*h;
    t12:=fx1_(z1);
    t[1,i]:=t12;
    end;
  zmin1:=strtofloat(edit1.Text);
  t12:=strtofloat(edit2.Text);

  except
//поиск минимума
    g:=1; z0:=0;w0:=1; zmin1:=-1;
    for i:=1 to n-1 do begin
    z1:=a+i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    t[1,i]:=t12;
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    w1:=math.Log10(exp(lng1-lng2));
    if w1*g<0 then begin
       zmin1:=z1-w1*(z0-z1)/(w0-w1);
    end;
    g:=w1;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    z0:=z1; w0:=w1;
    end;
    t12:=fx1_(zmin1);
end;
if zmin1=-1 then begin
showmessage('Нет точки минимума!');exit;
end;
table2.Edit;
Table2X1.Value:=zmin1;
Table2T.Value:=t12;
table2.Post;

    //расчет коэффициентов по модели Редлиха-Кистера
    lng1:=-ln(zmin1)+h10/r/t10*(1-t10/t12);  //?
    lng2:=-ln(1-zmin1)+h20/r/t20*(1-t20/t12);//?
    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    d:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;
    minx:=1;minx1:=1;minx2:=1; minu1:=1;
//обратный ход
l:=0;ll:=0;
setlength(y[1],n+1);
setlength(y[2],n+1);
x1_:=1;x2_:=1; w1_:=1;w2_:=1;q1_:=1;q2_:=1;u1_:=1;u2_:=1;

for i:=1 to n-1 do begin
    z2:=a+i*h;
    z1:=1-z2;
    lng1:=sqr(z2)*(d+c*(3*z1-z2));
    lng2:=sqr(z1)*(d+c*(z1-3*z2));
    g1_l:=power(10,lng1);g2_l:=power(10,lng2); //?
    //обратный ход в эффективных долях
    t12:=fx1_(z1);
    form2.Chart1.Series[0].AddXY(z1,t12);
   // lnx1:=h10/r/t10*(1-t10/t12)-ln(g1_l);
   // lnx2:=h20/r/t20*(1-t20/t12)-ln(g2_l);
    lnx1:=h10/r/t10*(1-t10/t12)-lng1;
    lnx2:=h20/r/t20*(1-t20/t12)-lng2;
    w1:=exp(lnx1);  //левая ветвь
    w2:=exp(lnx2);  //правая ветвь
    if (w1>=a) and (w1<=b) {and (w1>=w1_)} then begin
    form2.Chart1.Series[3].AddXY(w1,t12);
try    l:=poisk_temp(t12,t[1],n-1);
except
l:=0;
end;
     y[1,l]:=w1;
    end;
    if (w2>=a) and (w2<=b) {and (w2<=w2_)} then //? w2>=w2_
    begin
    form2.Chart1.Series[4].AddXY(1-w2,t12);
    try
     ll:=poisk_temp(t12,t[1],n-1);
     except
     l1:=0;
     end;
     y[2,ll]:=1-w2;
    end;
    w1_:=w1;w2_:=w2;
    if abs(w1-(1-w2))<=minx then begin
    minx:=abs(w1-(1-w2));
    g:=w1;
    tg:=t12;
    end;

    //экспериментальные мольные доли
    z0:=z1/(z1+(1-z1)/k12);
    form2.Chart1.Series[1].AddXY(z0,t12);

    x1:=w1/(w1+(1-w1)/k12); //?
//? x2:=w2/((1-w2)/k12+w2); //?
    x2:=w2/((1-w2)*k12+w2); //?
hh:=k1*h10*x1+k2*h20*(1-x1);
hs:=m1*k1*x1+m2*k2*(1-x1); //пересчитанная молярная масса
hm:=hh/hs;

    if (x1>=a) and (x1<=b){ and (x1>=x1_)} then
    form2.Chart1.Series[5].AddXY(x1,t12);
    if (x2>=a) and (x2<=b) {and (x2<=x2_)} then  //? (x2>=x2_)
    form2.Chart1.Series[6].AddXY(1-x2,t12);
    //if x1<minx1 then  form2.Chart1.Series[5].AddXY(x1,t12);
    //if 1-x2>minx1 then form2.Chart1.Series[6].AddXY(1-x2,t12);
    x1_:=x1;x2_:=x2;
    if abs(x1-(1-x2))<=minx1 then begin
    minx1:=abs(x1-(1-x2));
    g1:=x1;
    tg1:=t12;
    end;


    //массовые доли
    z0:=z0/(z0+(1-z0)/m12);
    form2.Chart1.Series[2].AddXY(z0,t12);

    q1:=x1/(x1+(1-x1)/m12);
  //  q2:=x2/((1-x2)/m12+x2); //?
    q2:=x2/((1-x2)*m12+x2); //?

    if (q1>=a) and (q1<=b) {and (q1>=q1_)} then
    form2.Chart1.Series[7].AddXY(q1,t12);
    if (q2>=a) and (q2<=b) {and (q2<=q2_)} then   //? (q2>=q2_)
    form2.Chart1.Series[8].AddXY(1-q2,t12);
    q1_:=q1;q2_:=q2;
    if abs(q1-(1-q2))<=minx2 then begin
    minx2:=abs(q1-(1-q2));
    g2:=q1;
    tg2:=t12;
    end;
{    //расчет мольных долей в твердой фазе по данным о ликвидусе
    //формула Ван Лаара (стр. 123 Аносов В.Я. Основы физико-химического анализа)
    u1:=w1*exp(h10/R*(1/t12-1/t10));
    u2:=w2*exp(h20/R*(1/t12-1/t20));
      form2.Chart1.Series[11].AddXY(u1,t12);
      form2.Chart1.Series[12].AddXY(1-u2,t12);
    //формула Кордеса (стр. 123 Аносов В.Я. Основы физико-химического анализа)
    g:=(x1+x2*(t12-t20)/t20)/(x2+x1*(t12-t10)/t10);
    u1:=g/(1+g);
    u2:=g*u1;
    if u1>u1_ then
    form2.Chart1.Series[11].AddXY(u1,t12);
    if u2>u2_ then
    form2.Chart1.Series[12].AddXY(1-u2,t12);
    u1_:=u1;u2_:=u2;
    if abs(u1-(1-u2))<=minu1 then begin
    minu1:=abs(u1-(1-u2));
    g1:=u1;
    tg1:=t12;
    end;      }
    form3.gs.Cells[0,i]:=inttostr(i);
    form3.gs.Cells[1,i]:=format('%8.4f',[z1]);
    form3.gs.Cells[2,i]:=format('%8.4f',[z2]);
    form3.gs.Cells[3,i]:=format('%8.4f',[x1]);
    form3.gs.Cells[4,i]:=format('%8.4f',[x2]);
    form3.gs.Cells[5,i]:=format('%8.4f',[q1]);
    form3.gs.Cells[6,i]:=format('%8.4f',[q2]);
    form3.gs.Cells[7,i]:=format('%8.4f',[t12]);
    form3.gs.Cells[8,i]:=format('%8.4f',[t12-kelvin]);
    form3.gs.Cells[9,i]:=format('%8.4f',[w1]);
    form3.gs.Cells[10,i]:=format('%8.4f',[w2]);
    form3.gs.Cells[11,i]:=format('%8.4f',[hh]);;
    form3.gs.Cells[12,i]:=format('%8.4f',[hs]);;
    form3.gs.Cells[13,i]:=format('%8.4f',[hm]);;
   end;
    form3.gs.Cells[0,0]:='i';
    form3.gs.Cells[1,0]:='z1';
    form3.gs.Cells[2,0]:='z2';
    form3.gs.Cells[3,0]:='x1';
    form3.gs.Cells[4,0]:='x2';
    form3.gs.Cells[5,0]:='q1';
    form3.gs.Cells[6,0]:='q2';
    form3.gs.Cells[7,0]:='T12,K';
    form3.gs.Cells[8,0]:='T12,C';
    form3.gs.Cells[9,0]:='w1';
    form3.gs.Cells[10,0]:='w2';
    form3.gs.Cells[11,0]:='H(x)';
    form3.gs.Cells[12,0]:='M(x)';
    form3.gs.Cells[13,0]:='H(x)/M(x)';
    form3.gs.RowCount:=n;
form3.gs.ColCount:=14;
nm:=form3.rt.rowcount;
form3.RT.Cells[0,nm]:='left:zmin=';form3.RT.Cells[1,nm]:=floattostr(g);
form3.RT.Cells[0,nm+1]:='Tmin,K=';form3.RT.Cells[1,nm+1]:=floattostr(tg);
form3.RT.Cells[0,nm+2]:='Tmin,C=';form3.RT.Cells[1,nm+2]:=floattostr(tg-kelvin);
form3.RT.Cells[0,nm+3]:='xmin=';form3.RT.Cells[1,nm+3]:=floattostr(g1);
form3.RT.Cells[0,nm+4]:='Tmin,K=';form3.RT.Cells[1,nm+4]:=floattostr(tg1);
form3.RT.Cells[0,nm+5]:='Tmin,C=';form3.RT.Cells[1,nm+5]:=floattostr(tg1-kelvin);
form3.RT.Cells[0,nm+6]:='qmin=';form3.RT.Cells[1,nm+6]:=floattostr(g2);
form3.RT.Cells[0,nm+7]:='Tmin,K=';form3.RT.Cells[1,nm+7]:=floattostr(tg2);
form3.RT.Cells[0,nm+8]:='Tmin,C=';form3.RT.Cells[1,nm+8]:=floattostr(tg2-kelvin);
 g1:=g/(g+(1-g)/k12);
 g2:=g1/(g1+(1-g1)/m12);
 tg1:=fx1_(g1);
 tg2:=fx1_(g2);
form3.RT.Cells[0,nm+9]:='right:zmin=';form3.RT.Cells[1,nm+9]:=floattostr(g);
form3.RT.Cells[0,nm+10]:='Tmin,K=';form3.RT.Cells[1,nm+10]:=floattostr(tg);
form3.RT.Cells[0,nm+11]:='Tmin,C=';form3.RT.Cells[1,nm+11]:=floattostr(tg-kelvin);
form3.RT.Cells[0,nm+12]:='xmin=';form3.RT.Cells[1,nm+12]:=floattostr(g1);
form3.RT.Cells[0,nm+13]:='Tmin,K=';form3.RT.Cells[1,nm+13]:=floattostr(tg1);
form3.RT.Cells[0,nm+14]:='Tmin,C=';form3.RT.Cells[1,nm+14]:=floattostr(tg1-kelvin);
form3.RT.Cells[0,nm+15]:='qmin=';form3.RT.Cells[1,nm+15]:=floattostr(g2);
form3.RT.Cells[0,nm+16]:='Tmin,K=';form3.RT.Cells[1,nm+16]:=floattostr(tg2);
form3.RT.Cells[0,nm+17]:='Tmin,C=';form3.RT.Cells[1,nm+17]:=floattostr(tg2-kelvin);
form3.RT.rowcount:=nm+18;  
//построение графиков по экспериментальным данным
if form4.table3.recordcount<>0 then begin
  form4.table3.first;
   form2.Chart1.Series[0].clear;
    form2.Chart1.Series[1].clear;
    form2.Series1.pointer.visible:=true;
    form2.Series3.pointer.visible:=true;
for i:=1 to form4.table3.recordcount do begin
   form2.Chart1.Series[0].AddXY(form4.Table3X1mol.Value,form4.Table3T1K.Value);
   form2.Chart1.Series[1].AddXY(form4.Table3X1mas.Value,form4.Table3T1K.Value);
   form4.table3.next;
end;
end;
form3.PageControl1.ActivePage:=form3.TabSheet4;
form3.PageControl1.TabIndex:=3; form3.show;
form2.PageControl1.ActivePage:=form2.TabSheet1;
form2.PageControl1.TabIndex:=0;form2.Show;
end;
end;

procedure TForm1.menuN2_7Click(Sender: TObject);
label 1;
var
flag,i,j,l,imax,m,ks:integer;
old1,old2,xx:string;
deltat,l12,g1,g2,logg12,
x11,x12,z12,z13,z23,x1_sr,x2_sr,x3_sr,T_sr,T_az,T1k,T2k,T3k,
k1,k2,c,s,p,lambda1,lambda2,lambda12,sz,z1,z2,tz1,k1_,k2_,
l1,l2,mint,x0,minx,s0,s2,nu,s1, lng1,lng2,ge,pq,tau1,tau2,
s3,s4,g12,q1,q2,hh,hh1,hh2,ffz1,ffx1,ffq1, maxt,maxx,maxz,maxq,minz,minq:MyReal;
z:array[1..6]of MyReal;
tr,xr,zr:masd;
begin
//Точки азеотропии
form3.RTClick(form3.ge);
if i3=0 then
//2
begin
 try
 tau1:=Table2tau1.Value; tau2:=Table2tau2.Value;
 k1:=Table2K1.Value/tau1; k2:=Table2K2.Value/tau2;
  except
 k1:=1;k2:=1;tau1:=1;tau2:=1;
 end;
 h1:=hk1*k1;h2:=hk2*k2;  //теплота испарения
 t1:=tk1;t2:=tk2;        //температура кипения
    h10:=h1;h20:=h2;
    t10:=t1;t20:=t2;n:=form1.Fn.Value;
    form3.GE.RowCount:=10;
    form3.GE.colCount:=8;
for i:=1 to 3 do
for j:=1 to 3 do form3.GE.cells[i,j]:='';
    form3.GE.cells[1,0]:='x1';
    form3.GE.cells[2,0]:='x2';
    form3.GE.cells[3,0]:='T,K';
    form3.GE.cells[4,0]:='T,C';
    form3.GE.cells[5,0]:='H_sr';
    a:=h10/h20;
    b:=h10*(1/t20-1/t10)/r;
    c:=11.0/6.0;
    s:=(3+a)/(3-a);
    try
    x11:=s+sqrt(sqr(s)+2*(b-c)/(3-a));
    x12:=s-sqrt(sqr(s)+2*(b-c)/(3-a));
    if abs(1-x11)<=1 then x1:=x11;
    if abs(1-x12)<=1 then x1:=x12;
    x2:=1-x1;
    t12:=fx2(x2);
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0;
    end;

    form3.GE.cells[0,1]:='Разложение в ряд Тейлора в т.x=1';
    form3.GE.cells[1,1]:=floattostr(x1);
    form3.GE.cells[2,1]:=floattostr(x2);
    form3.GE.cells[3,1]:=floattostr(t12);
    form3.GE.cells[4,1]:=floattostr(t12-kelvin);

form2.Chart4.Title.Text.Clear;
form2.Chart4.Title.Text.Add('Температура кипения при норм. атм. давл.');
form2.Chart4.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
form2.Chart4.LeftAxis.Title.Caption:='Т, K';  //K
form2.Chart4.BottomAxis.Title.Caption:='Мольная доля 1-го компонента';
form2.Chart4.Series[1].clear;form2.Chart4.Series[1].tag:=2;
form2.Chart4.Series[1].Title:='T(x)-эвт.';

    form2.Chart4.Series[1].Addxy(0,t20);//
    form2.Chart4.Series[1].Addxy(1,t10);//
    //получение точек азеотропии до уровня l
   try
    L:=strtoint(inputbox('ввод данных','Введите количество уровней (1..8)','1'));
   except
   L:=1;
   end;
    if l>8 then exit;
    k:=1;k1:=1;k2:=1;
    l1l2[1,0]:=0;l1l2[2,0]:=1;
    schet(0,1,1,0,h2,h1,t2,t1,0,1,L);
    l1l2[1,k]:=1;l1l2[2,k]:=0;
    form3.GE.cells[6,0]:='l1';
    form3.GE.cells[7,0]:='l2';

    form3.GE.cells[6,1]:='1';
    form3.GE.cells[7,1]:='1';
   //сортировка

   m:=form3.GE.rowcount-1;
    for i:=2 to m-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i]);
     imax:=i;
    for j:=i+1 to m do begin
      x2:=strtofloat(form3.Ge.cells[1,j]);
      if x2<x1 then begin imax:=j;x1:=x2;end;
    end;
        xx:=form3.Ge.rows[i].text;
        form3.Ge.rows[i].Text:=form3.Ge.rows[imax].text;
        form3.Ge.rows[imax].text:=xx;
        k:=l1l2[1,imax-1];l1l2[1,imax-1]:=l1l2[1,i-1];l1l2[1,i-1]:=k;
        k:=l1l2[2,imax-1];l1l2[2,imax-1]:=l1l2[2,i-1];l1l2[2,i-1]:=k;
    end;
   for  i:=1 to m-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     form2.Chart4.Series[1].addxy(x1,t12);
     end;
case RadioGroup1.ItemIndex of
0:begin
//получение средней суммы1
   s:=0; p:=0;
   for  i:=1 to m-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     s:=s+x1*l1l2[2,i]/l1l2[1,i];
     p:=p+x1;
   end;
   s:=s/p;
   end;
1:begin
//получение средней суммы2
   s:=0; p:=0;
   for  i:=1 to m-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     lng1:=-ln(x1)+h10/r/t10*(1-t10/t12);
     lng2:=-ln(1-x1)+h20/r/t20*(1-t20/t12);
     ge:=(x1*lng1+(1-x1)*lng2);
     s:=s+exp(-ge)*l1l2[2,i]/l1l2[1,i];
     p:=p+exp(-ge);
   end;
   s:=s/p;
end;
2:begin
//получение средней суммы3
   s:=0; p:=0;
   for  i:=1 to m-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     s:=s+x1;
     p:=p+x1*l1l2[2,i]/l1l2[1,i];
   end;
   s:=s/p;
end;
3:begin
//получение средней суммы4
   s:=0; p:=0;
   for  i:=1 to m-1 do begin
     x1:=strtofloat(form3.Ge.cells[1,i+1]);
     t12:=strtofloat(form3.Ge.cells[3,i+1]);
     s:=s+x1*l1l2[1,i]/l1l2[2,i];
     p:=p+x1;
   end;
   s:=s/p;
   end;
end;{case}
   table2.Edit;
   Table2Lambda12_az.Value:=s;
   find(Lambda1,lambda2,s);
   while lambda2 >10 do lambda2:=lambda2/10;
   while lambda1 >10 do lambda1:=lambda1/10;
   Table2Lambda2_az.Value:=lambda2;
   Table2Lambda1_az.Value:=lambda1;
   table2.Post;
showmessage('L1/L2='+floattostr(s)+' L1='+floattostr(lambda1)+
' L2='+floattostr(lambda2));

//Получение коэфициента K
Lambda12:=Table2Lambda12_az.Value;
form3.GE.ColCount:=15;
h10:=h1;h20:=h2;t10:=t1;t20:=t2;
sz:=0;s:=0;
for i:=1 to m do begin
//эффективные мольные доли
z1:=strtofloat(form3.GE.Cells[1,i]);
z2:=strtofloat(form3.GE.Cells[2,i]);
tz1:=strtofloat(form3.GE.Cells[3,i]);
try
k1_:=((h10/t10*z1+h20/t20*lambda12*z2)-(h10*z1+h20*z2*lambda12)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
except
k1_:=1;
end;
s:=k1_*z1+s;
sz:=z1+sz;
form3.GE.cells[14,i]:=floattostr(k1_);
end;
k1_:=s/sz; k2_:=k1_/lambda12;
showmessage('K1='+floattostr(k1_));

table2.Edit;
Table2Lambda1_az.Value:=strtofloat(format('%5.8f',[k1_]));
Table2Lambda2_az.Value:=strtofloat(format('%5.8f',[k2_]));
table2.Post;

//Пересчет в эксп. и весовые доли

 form3.GE.cells[6+2,0]:='x1 эксп.мол.д.';
 form3.GE.cells[7+2,0]:='x2 эксп.мол.д.';
 form3.GE.cells[8+2,0]:='H12(x)';
 form3.GE.cells[9+2,0]:='x1 масс.д.';
 form3.GE.cells[10+2,0]:='x2 масс.д.';
 form3.GE.cells[11+2,0]:='T(x1), K';
 form3.GE.cells[12+2,0]:='M(z)';
 form3.GE.cells[13+2,0]:='H0(z)';
 form3.GE.cells[14+2,0]:='HL(z)';
 form3.GE.ColCount:=17;

form2.Chart4.Title.Text.Clear;
form2.Chart4.Title.Text.Add('Температура кипения при норм. атм. давл.');
form2.Chart4.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
form2.Chart4.LeftAxis.Title.Caption:='Т, K';  //K
form2.Chart4.BottomAxis.Title.Caption:='доля 1-го компонента';
form2.Chart4.Series[2].clear;form2.Chart4.Series[2].tag:=3;
form2.Chart4.Series[2].Title:='Т(эфф.)';
form2.Chart4.Series[3].clear;form2.Chart4.Series[3].tag:=4;
form2.Chart4.Series[3].Title:='T(эксп.)';
form2.Chart4.Series[4].clear;form2.Chart4.Series[4].tag:=5;
form2.Chart4.Series[4].Title:='T(масс.)';

//lambda12:=1;
//lambda1:=1;
//lambda2:=1;
h:=1/n;
a:=0;

h10:=h1/lambda1;h20:=h2/lambda2;

  form3.RT.ColCount:=11;
  form3.RT.rowcount:=n;
  form3.RT.cells[1,0]:='z1';
  form3.RT.cells[2,0]:='z2';
  form3.RT.cells[3,0]:='T(z1)';
  form3.RT.cells[4,0]:='x1';
  form3.RT.cells[5,0]:='x2';
  form3.RT.cells[6,0]:='q1';
  form3.RT.cells[7,0]:='q2';
  form3.RT.cells[8,0]:='M(z)';
  form3.RT.cells[9,0]:='H0';
  form3.RT.cells[10,0]:= 'HL';

for i:=1 to n-1 do begin
z1:=i*h;z2:=(1-z1);
//экспериментальные мольные доли
x1:=z1/(z1+z2/lambda12);
x2:=z2/(z2+z1*lambda12);
//весовые доли  (надо писать массовые доли)
q1:=x1/(x1+(m2)/(m1)*x2);
q2:=x2/(x2+(m1)/(m2)*x1);
//q1:=x1/(x1+m2/m1*x2);
//q2:=x2/(x2+m1/m2*x1);
Hh :=m1*x1+m2*x2;
hh1:=z1*h1+z2*h2;
hh2:=z1*h10+z2*h20;
ffz1:=fx1_(z1);ffx1:=fx1_(x1);ffq1:=fx1_(q1);
form2.Chart4.series[2].AddXY(z1,ffz1); //-kelvin
form2.Chart4.series[3].AddXY(x1,ffz1);
form2.Chart4.series[4].AddXY(q1,ffz1);
 form3.RT.cells[1,i]:=floattostr(Z1);
 form3.RT.cells[2,i]:=floattostr(Z2);
 form3.RT.cells[3,i]:=floattostr(ffz1);
 form3.RT.cells[4,i]:=floattostr(x1);
 form3.RT.cells[5,i]:=floattostr(x2);
 form3.RT.cells[6,i]:=floattostr(q1);
 form3.RT.cells[7,i]:= floattostr(q2);
 form3.RT.cells[8,i]:= floattostr(Hh);
 form3.RT.cells[9,i]:= floattostr(hh1);
 form3.RT.cells[10,i]:=floattostr(hh2);
end;
try
for i:=2 to m do begin
z1:=strtofloat(form3.GE.Cells[1,i]);//эффективные мольные доли
z2:=strtofloat(form3.GE.Cells[2,i]);
//экспериментальные мольные доли
lambda1:= strtoint(form3.GE.Cells[6,i]);
lambda2:= strtoint(form3.GE.Cells[7,i]);
lambda12:=lambda1/lambda2;
x1:=z1/(z1+z2/lambda12);
x2:=z2/(z2+z1*lambda12);
//весовые доли
q1:=x1/(x1+m2/m1*x2);
q2:=x2/(x2+m1/m2*x1);
Hh:=h1*x1+h2*x2;

 form3.GE.cells[6+2,i]:=floattostr(x1);
 form3.GE.cells[7+2,i]:=floattostr(x2);
 form3.GE.cells[8+2,i]:=floattostr(hh);

 form3.GE.cells[9+2,i]:=floattostr(q1);
 form3.GE.cells[10+2,i]:=floattostr(q2);
 form3.GE.cells[11+2,i]:=floattostr(fx2(x2));
 form3.GE.cells[12+2,i]:=floattostr(m1*x1+m2*x2);
 form3.GE.cells[13+2,i]:=floattostr(z1*h1+z2*h2);
 form3.GE.cells[14+2,i]:=floattostr(z1*h10+z2*h20);
end;

//температура кипения средняя
//form3.RTClick(form3.rt);
h:=1/n;
a:=0;
l1:= Table2Lambda1_az.Value;
l2:= Table2Lambda2_az.Value;
lambda12:=l1/l2;
h10:=h1/l1;
h20:=h2/l2;
t10:=t1;t20:=t2;

form2.Chart4.Title.Text.Clear;
form2.Chart4.Title.Text.Add('Температура кипения при норм. атм. давл.');
form2.Chart4.Title.Text.Add(mr.Cells[1,1]+'-'+mr.Cells[1,2]);
form2.Chart4.LeftAxis.Title.Caption:='Т, K';  //K
form2.Chart4.BottomAxis.Title.Caption:='Мольная доля 1-го компонента';
form2.Chart4.Series[5].clear;form2.Chart4.Series[5].tag:=6;
form2.Chart4.Series[5].Title:='T(x)-средн.';
mint:=1.0e+30;
for i:=1 to n-1 do begin
  x0:=(a+i*h);
  t0:=fx2(x0);
  form2.Chart4.Series[5].addxy(1-x0,t0);//-kelvin
  if mint>t0 then begin
     mint:=t0;
     minx:=1-x0;
  end;
end;
//minx:=methodnuton(a,dfdx2,dfdxx2);
try
lm1:=minx/(1-minx);
except
  lm1:=0;
end;

s:=0; S0:=0;
for i:=2 to m do begin
 t0:=strtofloat(form3.GE.Cells[3,i]);
 x0:=strtofloat(form3.GE.Cells[2,i]);
 s:=s+sqr(t0-fx2(x0));
 s0:=s0+t0;
end;
 s0:=s0/(m-1);{y средняя}
 showmessage('|T-Tэ|='+floattostr(sqrt(s)));
 s2:=0;s1:=0;
 for i:=2 to m do begin
 t0:=strtofloat(form3.GE.Cells[3,i]);
 x0:=strtofloat(form3.GE.Cells[2,i]);
 s1:=s1+sqr(fx2(x0)-s0);
 s2:=s2+sqr(t0-s0);
 end;
 nu:=sqrt(s1/s2);
 showmessage('nu='+floattostr(sqrt(nu)));
 form3.vd.rowcount:=4;
 form3.vd.colcount:=8;
 form3.vd.cells[0,1]:='X1';
 form3.vd.cells[0,2]:='X2';
 form3.vd.cells[0,3]:='T,K';
 form3.vd.cells[0,4]:='T,C';

 form3.vd.cells[0,5]:='H0';
  form3.vd.cells[0,6]:='HL';
  form3.vd.cells[0,7]:='M(z)';
 form3.vd.cells[1,0]:='эфф.мол.';
  form3.vd.cells[2,0]:='эксп.мол.';
 form3.vd.cells[3,0]:='масс.';

z1:=minx;
z2:=1-minx;
//экспериментальные мольные доли
x1:=z1/(z1+z2/lambda12);
x2:=z2/(z2+z1*lambda12);
//весовые доли
q1:=x1/(x1+(m2)/(m1)*x2);
q2:=x2/(x2+(m1)/(m2)*x1);
ffz1:=fx1_(z1);ffx1:=fx1_(x1);ffq1:=fx1_(q2);
 form3.vd.cells[1,7]:=floattostr(x1*m1+m2*x2);
 form3.vd.cells[1,1]:=floattostr(z1);
 form3.vd.cells[1,2]:=floattostr(z2);
 form3.vd.cells[1,3]:=floattostr(ffz1);
 form3.vd.cells[1,4]:=floattostr(ffz1-kelvin);
 form3.vd.cells[1,5]:=floattostr(z1*h1+z2*h2);
 form3.vd.cells[1,6]:=floattostr(z1*h10+z2*h20);

 form3.vd.cells[2,1]:=floattostr(x1);
 form3.vd.cells[2,2]:=floattostr(x2);
 form3.vd.cells[2,3]:=floattostr(ffx1);
 form3.vd.cells[2,4]:=floattostr(ffz1-kelvin);
 form3.vd.cells[2,5]:=floattostr(x1*h1+x2*h2);
 form3.vd.cells[2,6]:=floattostr(x1*h10+x2*h20);

 form3.vd.cells[3,1]:=floattostr(q1);
 form3.vd.cells[3,2]:=floattostr(q2);
 form3.vd.cells[3,3]:=floattostr(ffz1);
 form3.vd.cells[3,4]:=floattostr(ffz1-kelvin);
 form3.vd.cells[3,5]:=floattostr(q1*h1+q2*h2);
 form3.vd.cells[3,6]:=floattostr(q1*h10+q2*h20);
 if m>2 then begin
 //расчет азеотропа по близким параметрам
 t12:=strtofloat(inputbox('Ввод данных','Введите температуру, близкую к азеотропной в К',form3.GE.Cells[3,1]));
 deltaT:=strtofloat(inputbox('Ввод данных','Введите погрешность температуры',floattostr(5.0)));
 if (t12<>0)and(deltat<>0) then begin

 setlength(tr,m); setlength(xr,m);setlength(zr,m);
 form3.RG.Cells[0,ks]:='N';
 form3.RG.Cells[1,ks]:='T,K';
 form3.RG.Cells[2,ks]:='t,C';
 form3.RG.Cells[3,ks]:='z1';
 form3.RG.Cells[4,ks]:='z2';
 form3.RG.Cells[5,ks]:='l12';
 form3.RG.Cells[6,ks]:='G1';
 form3.RG.Cells[7,ks]:='G2';
 form3.RG.Cells[8,ks]:='lg(g1/g2)';
 form3.RG.Cells[9,ks]:='x1';
 form3.RG.Cells[10,ks]:='x2';
 form3.RG.Cells[11,ks]:='q1';
 form3.RG.Cells[12,ks]:='q2';
 form3.RG.Cells[13,ks]:='H';
   s:=0; S0:=0; ks:=0;s1:=0;p:=0;
 pq:=0; s3:=0;s2:=0;s4:=0;
 for i:=2 to m do begin
 t0:=strtofloat(form3.GE.Cells[3,i]);
 if abs(t12-t0)<=deltaT then begin
 inc(ks);
 tr[ks]:=t0;
 x0:=strtofloat(form3.GE.Cells[1,i]);
 g12:=strtofloat(form3.GE.Cells[5,i]);
 zr[ks]:=x0;
 l12:=strtofloat(form3.GE.Cells[6,i])/strtofloat(form3.GE.Cells[7,i]);
 g1:=exp(-ln(x0)+h10/r/t10*(1-t10/t0));
 g2:=exp(-ln(1-x0)+h20/r/t20*(1-t20/t0));
 logg12:=log10(g1/g2);
 x1:=strtofloat(form3.GE.Cells[8,i]);
 xr[ks]:=x1;
 q1:=strtofloat(form3.GE.Cells[11,i]);
 s0:=s0+x1*logg12;
 s:=s+x1*t0;
 s1:=s1+x1/l12;
 p:=p+x1;
 pq:=pq+q1;
 s2:= s2+exp(-g12/t0/r);
 s3:= s3+q1*exp(-g12/t0/r);
 s4:= s4+t0*exp(-g12/t0/r);
 form3.RG.Cells[0,ks]:=inttostr(ks);
 form3.RG.Cells[1,ks]:=floattostr(t0);
 form3.RG.Cells[2,ks]:=floattostr(t0-kelvin);
 form3.RG.Cells[3,ks]:=floattostr(x0);
 form3.RG.Cells[4,ks]:=floattostr(1-x0);
 form3.RG.Cells[5,ks]:=floattostr(l12);
 form3.RG.Cells[6,ks]:=floattostr(g1);
 form3.RG.Cells[7,ks]:=floattostr(g2);
 form3.RG.Cells[8,ks]:=floattostr(logg12);
 form3.RG.Cells[9,ks]:=floattostr(x1);
 form3.RG.Cells[10,ks]:=floattostr(1-x1);
 form3.RG.Cells[11,ks]:=floattostr(q1);
 form3.RG.Cells[12,ks]:=floattostr(1-q1);
 form3.RG.Cells[13,ks]:=floattostr(g12);
 end;
end;
 s:=s/p; //средняя температура
 s1:=s1/p;// средняя l12
 s0:=s0/p;//средняя log(g1/g2)
 p:=p/(ks);//средняя x1
 s3:=s3/s2;
 s4:=s4/s2;
 form3.RG.Cells[11,ks+1]:=floattostr(pq/ks);
 form3.RG.Cells[11,ks+2]:=floattostr(s3);
 form3.RG.Cells[9,ks+1]:=floattostr(p);
 form3.RG.Cells[8,ks+1]:=floattostr(s0);
 form3.RG.Cells[1,ks+1]:=floattostr(s);
 form3.RG.Cells[2,ks+1]:=floattostr(s-kelvin);
 form3.RG.Cells[2,ks+2]:=floattostr(s4-kelvin);
 form3.RG.Cells[5,ks+1]:=floattostr(s1);

 form3.RG.Cells[0,ks+1]:='средние';
 form3.RG.Cells[0,ks+2]:='среднее статистическое';
 form3.RG.rowcount:=ks+3;form3.RG.ColCount:=14;
 l12:=s1;
 find(L1,l2,s1);
 while l2 >10 do l2:=l2/10;
 while l1 >10 do l1:=l1/10;
 showmessage('k='+inttostr(ks)+
 ' lg(g1/g2)sr='+floattostr(s0)+
 ' T sr='+floattostr(s)+
  ' l1/l2='+floattostr(l12)+
   ' l1='+floattostr(l1)+
    ' l2='+floattostr(l2));
if ks>1 then begin
//процедура усреднения х1
s0:=0;s:=0;s1:=0;s2:=0;
for i:=1 to ks do begin
 s:=s+xr[i]-xr[i-1];
 s0:=s0+(xr[i]-xr[i-1])*xr[i-1];
  s1:=s1+(xr[i]-xr[i-1])*xr[i];
   s2:=s2+(xr[i]-xr[i-1])*(xr[i-1]+xr[i])/2;
end;
s0:=s0/s;//средняя по левой точке
s1:=s1/s;//средняя по правой точке
s2:=s2/s;//средняя по середине
 showmessage('x1_ср.лев.='+floattostr(s0)+
 ' x1_ср.прав.='+floattostr(s1)+
 ' x1_ср.центр.='+floattostr(s2));
end;
//процедура усреднения z1
s0:=0;s:=0;s1:=0;s2:=0;
for i:=1 to ks do begin
 s:=s+zr[i]-zr[i-1];
 s0:=s0+(zr[i]-zr[i-1])*zr[i-1];
  s1:=s1+(zr[i]-zr[i-1])*zr[i];
   s2:=s2+(zr[i]-zr[i-1])*(zr[i-1]+zr[i])/2;
end;
s0:=s0/s;//средняя по левой точке
s1:=s1/s;//средняя по правой точке
s2:=s2/s;//средняя по середине
 showmessage('z1_ср.лев.='+floattostr(s0)+
 ' z1_ср.прав.='+floattostr(s1)+
 ' z1_ср.центр.='+floattostr(s2));
end;
//Получение коэфициента K
h10:=h1;h20:=h2;
sz:=0;s:=0;
for i:=1 to ks do begin
//эффективные мольные доли
z1:=zr[i];
z2:=1-z1;
tz1:=tr[i];
try
k1_:=((h10/t10*z1+h20/t20*l12*z2)-(h10*z1+h20*z2*l12)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
except
k1_:=1;
end;
s:=k1_*z1+s;
sz:=z1+sz;
end;
k1_:=s/sz; k2_:=k1_/l12;
showmessage('K1='+floattostr(k1_)+' K2='+floattostr(k2_));
l1:=k1_;l2:=k2_;l12:=l1/l2;
 //получение температуры кипения средней
form2.Chart1.Series[0].clear;form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[1].clear;form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[2].clear;form2.Chart1.Series[2].tag:=3;
form2.Chart2.Series[2].clear;form2.Chart2.Series[2].tag:=3;
form2.Chart2.Series[3].clear;form2.Chart2.Series[3].tag:=4;
form2.Chart2.Series[5].clear;form2.Chart2.Series[5].tag:=6;
form3.RT.Cells[0,0]:='i';
form3.RT.Cells[1,0]:='z1';
form3.RT.Cells[2,0]:='z2';
form3.RT.Cells[3,0]:='x1';
form3.RT.Cells[4,0]:='x2';
form3.RT.Cells[5,0]:='q1';
form3.RT.Cells[6,0]:='q2';
form3.RT.Cells[7,0]:='T12,K';
form3.RT.Cells[8,0]:='T12,C';
form3.RT.Cells[9,0]:='Gamma1';
form3.RT.Cells[10,0]:='Gamma2';
form3.RT.Cells[11,0]:='lg Gamma1/Gamma2';
form3.RT.RowCount:=n+1;form3.RT.colcount:=12;

 h10:=h1/l1;h20:=h2/l2;
 mint:=1.e+10; maxt:=-1.e+10;

 for i:=1 to n-1 do
begin
z1:=i/n;
x1:=z1/(z1+(1-z1)/l12);
q1:=x1/(x1+(m2)/(m1)*(1-x1));
t12:=fx1_(z1);

g1:=exp(-ln(z1)+h10/r/t10*(1-t10/t12));
g2:=exp(-ln(1-z1)+h20/r/t20*(1-t20/t12));
logg12:=log10(g1/g2);
form3.RT.Cells[0,i]:=inttostr(i);
form3.RT.Cells[1,i]:=floattostr(z1);
form3.RT.Cells[2,i]:=floattostr(1-z1);
form3.RT.Cells[3,i]:=floattostr(x1);
form3.RT.Cells[4,i]:=floattostr(1-x1);
form3.RT.Cells[5,i]:=floattostr(q1);
form3.RT.Cells[6,i]:=floattostr(1-q1);
form3.RT.Cells[7,i]:=floattostr(t12);
form3.RT.Cells[8,i]:=floattostr(t12-kelvin);
form3.RT.Cells[9,i]:=floattostr(g1);
form3.RT.Cells[10,i]:=floattostr(g2);
form3.RT.Cells[11,i]:=floattostr(logg12);

form2.Chart1.Series[0].AddXY(z1,t12);
form2.Chart1.Series[1].AddXY(x1,t12);
form2.Chart1.Series[2].AddXY(q1,t12);
form2.Chart2.Series[2].AddXY(z1,g1);
form2.Chart2.Series[3].AddXY(z1,g2);
form2.Chart2.Series[5].AddXY(z1,logg12);
if mint>t12 then begin
   mint:=t12;
   minz:=z1;
   minx:=x1;
   minq:=q1;
end;

end;
 if mint<1.e+10 then
 showmessage('T_min,K='+floattostr(mint)+
 ' T_min,C='+floattostr(mint-kelvin)+
 ' z_min='+floattostr(minz)+
 ' x_min='+floattostr(minx)+
 ' q_min='+floattostr(minq));
 form3.RT.cells[0,n]:='min';
 form3.RT.cells[1,n]:=floattostr(minz);
  form3.RT.cells[3,n]:=floattostr(minx);
   form3.RT.cells[5,n]:=floattostr(minq);
    form3.RT.cells[7,n]:=floattostr(mint);
     form3.RT.cells[8,n]:=floattostr(mint-kelvin);
      form3.RT.rowcount:=form3.RT.rowcount+1;
      table2.Edit;
      Table2X1_az.Value:=minz;
      table2t_az.Value:=mint;
      table2.Post;

 end;

 form3.PageControl1.ActivePage:=form3.TabSheet3;
 form2.PageControl1.ActivePage:=form2.TabSheet1;
 form2.PageControl1.TabIndex:=0;
 form3.PageControl1.TabIndex:=2;
 form3.Show;form2.Show;
except
end;
end
else
//3
// по методу Малесинского
begin
h1:=hk1;h2:=hk2;h3:=hk3;
t1:=tk1;t2:=tk2;t3:=tk3;
flag:=0;
//old2:=table2.Bookmark;
//old1:=table1.Bookmark;
table1.FindKey([i3]);
T3k:=Table1T_Kelvin.Value;
table1.FindKey([i1]);
T1k:=Table1T_Kelvin.Value;
table2.first;
table2.Locate('Id_Names',i2,[]);
while not (table2.Eof) and not((table2x1.value<>0)and(table2id_named.Value=0)and(table2id_names.Value=i2))
 do table2.Next;
if not (table2.Eof) then
begin
 x12:=Table2X1_az.value;
 T12:=Table2T_az.value;
 inc(flag);
end;

table2.first;
table2.Locate('Id_Names',i3,[]);
while not (table2.Eof) and not((table2x1.value<>0)and(table2id_named.Value=0)and(table2id_names.Value=i3))
 do table2.Next;
if not (table2.Eof) then
begin
  x13:=Table2X1_az.Value;
  T13:=Table2T_AZ.Value;
  inc(flag);
end;
table1.FindKey([i2]);
T2k:=Table1T_Kelvin.Value;
table2.first;
table2.Locate('Id_Names',i3,[]);
while not (table2.Eof) and not((table2x1.value<>0)and(table2id_named.Value=0)and(table2id_names.Value=i3))
 do table2.Next;
if not (table2.Eof) then
begin
  x23:=Table2X1_az.Value;
  T23:=Table2T_az.Value;
  inc(flag);
end;
table1.Bookmark:=old1;
table2.Bookmark:=old2;
if flag<>3 then begin
 showmessage('Неполные данные!');exit;
end;
form3.GE.rowcount:=6;
form3.GE.colcount:=5;
form3.GE.Cells[0,1]:='x1';
form3.GE.Cells[0,2]:='x2';
form3.GE.Cells[0,3]:='x3';
form3.GE.Cells[0,4]:='T_az,C';
form3.GE.Cells[0,5]:='T_az,K';
form3.GE.Cells[1,0]:='12&23';
form3.GE.Cells[2,0]:='13&23';
form3.GE.Cells[3,0]:='12&13';
form3.GE.Cells[4,0]:='Sr';

z12:=T1k+T2k-2*T12+2*sqrt((T1k-T12)*(T2k-T12));
z13:=T1k+T3k-2*T13+2*sqrt((T1k-T13)*(T3k-T13));
z23:=T2k+T3k-2*T23+2*sqrt((T3k-T23)*(T2k-T23));
z[1]:=(Z13-z12-z23)/2/z12;
z[2]:=(Z13-z12-z23)/2/z23;
z[3]:=(Z12-z13-z23)/2/z13;
z[4]:=(Z12-z13-z23)/2/z23;
z[5]:=(Z23-z12-z13)/2/z12;
z[6]:=(Z23-z12-z13)/2/z13;
//12 & 23
x1:=(x12+z[1]*(1-x23))/(1-z[1]*z[2]);
x3:=(x12*z[2]+(1-x23))/(1-z[1]*z[2]);
x2:=1-x1-x3;
T_az:=T2k-z12*x1*x12-z23*x3*(1-x23);
form3.GE.Cells[1,1]:=floattostr(x1);
form3.GE.Cells[1,2]:=floattostr(x2);
form3.GE.Cells[1,3]:=floattostr(x3);
form3.GE.Cells[1,4]:=floattostr(T_az);
form3.GE.Cells[1,5]:=floattostr(T_az+kelvin);
x1_sr:=x1/3;
x2_sr:=x2/3;
x3_sr:=x3/3;
T_sr:=T_az/3;
//13 & 23
x1:=(x13+z[3]*x23)/(1-z[3]*z[4]);
x2:=(x13*z[4]+x23)/(1-z[3]*z[4]);
x3:=1-x1-x2;
T_az:=T3k-z13*x1*x13-z23*x2*x23;
form3.GE.Cells[2,1]:=floattostr(x1);
form3.GE.Cells[2,2]:=floattostr(x2);
form3.GE.Cells[2,3]:=floattostr(x3);
form3.GE.Cells[2,4]:=floattostr(T_az);
form3.GE.Cells[2,5]:=floattostr(T_az+kelvin);
x1_sr:=x1/3+x1_sr;
x2_sr:=x2/3+x2_sr;
x3_sr:=x3/3+x3_sr;
T_sr:=T_az/3+T_sr;

//12 & 13
x2:=((1-x12)+z[5]*(1-x13))/(1-z[5]*z[6]);
x3:=((1-x12)*z[6]+(1-x13))/(1-z[5]*z[6]);
x1:=1-x2-x3;
T_az:=T1k-z12*x2*(1-x12)-z13*x3*(1-x13);
form3.GE.Cells[3,1]:=floattostr(x1);
form3.GE.Cells[3,2]:=floattostr(x2);
form3.GE.Cells[3,3]:=floattostr(x3);
form3.GE.Cells[3,4]:=floattostr(T_az);
form3.GE.Cells[3,5]:=floattostr(T_az+kelvin);

x1_sr:=x1/3+x1_sr;
x2_sr:=x2/3+x2_sr;
x3_sr:=x3/3+x3_sr;
T_sr:=T_az/3+T_sr;
form3.GE.Cells[4,1]:=floattostr(x1_sr);
form3.GE.Cells[4,2]:=floattostr(x2_sr);
form3.GE.Cells[4,3]:=floattostr(x3_sr);
form3.GE.Cells[4,4]:=floattostr(T_sr);
form3.GE.Cells[4,5]:=floattostr(T_sr+kelvin);
form3.PageControl1.ActivePage:=form3.TabSheet8;
form3.show;
end;
end;

procedure TForm1.menuN2_5Click(Sender: TObject);
var
 i,l,nk,nm,ks,ll:integer;
 k12,q1,q2,q1_,q2_,m12,lnx1,lnx2,zmin1,r1,
 g1,g2,minx1,minx2,tg1,tg2,g,tg,z1,z2,z0,c_,b_,
 lg1,lg2,l1,l2,l12,t12,lng1,lng2,minx,x1,x2,w1,w2,t21,
 g1_s,g2_s,g1_l,g2_l,w0,
 k1,k2,x1_,x2_,w1_,w2_,d,c,minu1,u1,u2,u1_,u2_:myreal;
 xr,tr,ar:masd;
begin
//Фазовое равновесие твердое - твердое (солидус)
//Обратный ход
if i3=0 then
//2
begin
try
   a:=strtofloat(edta.text);
   b:=strtofloat(edtb.text);
 except
   a:=0;b:=1;
 end;
 n:=form1.Fn.Value;
 h:=(b-a)/n;
try
 l1:=strtofloat(edit3.Text);
 l2:=strtofloat(edit4.Text);
except
 l1:=Table2Lambda1.Value;
 l2:=Table2Lambda2.Value;
end;
 l12:=l1/l2;
try
 k1:=strtofloat(edit5.Text);
 k2:=strtofloat(edit6.Text);
 k12:=k1/k2;
except
k1:=Table2K1.Value;
k2:=Table2K2.Value;
k12:=k1/k2;
{k1:=strtofloat(form3.ge.cells[20,1]);
k2:=strtofloat(form3.ge.cells[21,1]);
k12:=strtofloat(form3.ge.cells[22,1]);}
end;
//k1:=1;k2:=1;/////?????
  //  m12:=m1*k1/m2/k2;
  m12:=m1/m2;
    h10:=hp1/l1;h20:=hp2/l2; //?
    t10:=t1;t20:=t2;
    setlength(t[1],n+1);
//модель Редлиха-Кистера
    form2.Chart2.Series[2].title:='lg G1';
    form2.Chart2.Series[3].title:='lg G2';
    form2.Chart2.Series[5].title:='lg G1/G2';
    form2.Chart2.Series[2].clear;
    form2.Chart2.Series[3].clear;
    form2.Chart2.Series[5].clear;
    form2.Chart2.Series[2].tag:=3;
    form2.Chart2.Series[3].tag:=4;
    form2.Chart2.Series[5].tag:=6;

    form2.Chart2.Series[2].clear;
    form2.Chart2.Series[3].clear;
    form2.Chart1.Series[9].clear;
    form2.Chart1.Series[10].clear;
    form2.Chart1.Series[11].clear;
    form2.Chart1.Series[12].clear;
    form2.Chart1.Series[13].clear;
    form2.Chart1.Series[14].clear;


    form2.Chart1.Series[9].tag:=10;
    form2.Chart1.Series[10].tag:=11;
    form2.Chart1.Series[11].tag:=12;
    form2.Chart1.Series[12].tag:=13;
    form2.Chart1.Series[13].tag:=14;
    form2.Chart1.Series[14].tag:=15;

    form2.Chart1.Title.Text.Clear;
    form2.Chart1.Title.Text.Add(name1+'-'+name2);
    form2.Chart1.Series[9].Title:='T1(эфф.м.д.)_солидус';
    form2.Chart1.Series[10].Title:='Т2(эфф.м.д.)_солидус';
    form2.Chart1.Series[11].Title:='Т1(эксп.м.д.)_солидус';
    form2.Chart1.Series[12].Title:='Т2(эксп.м.д.)_солидус';
    form2.Chart1.Series[13].Title:='Т1(масс.д.)_солидус';
    form2.Chart1.Series[14].Title:='Т2(масс.д.)_солидус';
try
for i:=1 to n-1 do begin
    z1:=a+i*h;
    t12:=fx1_(z1);
     t[1,i]:=t12;
end;
 zmin1:=strtofloat(edit1.Text);
 t12:=strtofloat(edit2.Text);
except
//поиск минимума
     g:=1;z0:=0;w0:=1;zmin1:=-1;
for i:=1 to n-1 do begin
    z1:=a+i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    t[1,i]:=t12;
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    w1:=math.Log10(exp(lng1-lng2));
    if w1*g<0 then begin
       zmin1:=z1-w1*(z0-z1)/(w0-w1);
     end;
    g:=w1;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    z0:=z1;w0:=w1;
    end;
    t12:=fx1_(zmin1);
end;
if zmin1=-1 then begin
showmessage('Нет точки минимума!');exit;
end;
    //расчет коэффициентов c,b по модели Редлиха-Кистера

    lg1:=-ln(zmin1)+h10/r/t10*(1-t10/t12);//ln (gamma_liquid)
    lg2:=-ln(1-zmin1)+h20/r/t20*(1-t20/t12);

    c_:=(lg1/2/sqr(1-zmin1)-lg2/2/sqr(zmin1));
    b_:=lg1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c_;

    lng1:=lg1-(h10/R*(1/t10-1/t12)); //ln gamma_solid
    lng2:=lg2-(h20/R*(1/t20-1/t12));
  //расчет коэффициентов c,b по модели Редлиха-Кистера
{    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    b:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;   }

//расчет коэффициентов c,b по модели Ван-Лаара
    c:=sqr(lng1+lng2*(1-zmin1)/zmin1)/lng1;
    d:=sqr(lng2+lng1*zmin1/(1-zmin1))/lng2;
    minx:=1;minx1:=1;minx2:=1; minu1:=1;
//обратный ход
form2.Chart1.Series[0].clear;form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[1].clear;form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[2].clear;form2.Chart1.Series[2].tag:=3;
nk:=form3.gs.colcount;
x1_:=1;x2_:=1; w1_:=1;w2_:=1;q1_:=1;q2_:=1;u1_:=1;u2_:=1;
 l:=0;ll:=0;
 setlength(y[3],n+1);
 setlength(y[4],n+1);
for i:=1 to n-1 do begin
    z2:=a+h*i;
    z1:=1-z2;
{    lg1:=sqr(z2)*(b+c*(3*z1-z2));  //формула Редлиха-Кистера
    lg2:=sqr(z1)*(b+c*(z1-3*z2));  //lg gamma_solid
    g1_s:=power(10,lg1);g2_s:=power(10,lg2);
    g1_s:=exp(lg1);    g2_s:=exp(lg2);}
    lg1:=c*sqr(d*z2/(c*z1+d*z2));//формула Ван-Лаара
    lg2:=d*sqr(c*z1/(c*z1+d*z2));
    g1_s:=exp(lg1);    g2_s:=exp(lg2);

    form2.Chart2.Series[2].AddXY(z1,lg1);
    form2.Chart2.Series[3].AddXY(z1,lg2);
    form2.Chart2.Series[5].AddXY(z1,log10(g1_S/g2_S));
    //обратный ход в эффективных долях
    t12:=fx1_(z1);
    form2.Chart1.Series[0].AddXY(z1,t12);
    lng1:=sqr(z2)*(b_+c_*(3*z1-z2));  //формула Редлиха-Кистера
    lng2:=sqr(z1)*(b_+c_*(z1-3*z2));  //lg gamma_liquid
    g1_l:=power(10,lng1);g2_l:=power(10,lng2);
//восстанавливаем точки ликвидуса
    lnx1:=h10/r/t10*(1-t10/t12)-ln(g1_l);
    lnx2:=h20/r/t20*(1-t20/t12)-ln(g2_l);
    p1:=exp(lnx1);  //левая ветвь  ликвидуса
    p2:=exp(lnx2);  //правая ветвь ликвидуса
//восстанавливаем точки солидуса
    w1:=g1_l/g1_s*p1*exp(-(h10/r*(1/t10-1/t12))); //левая ветвь  солидуса
    w2:=g2_l/g2_s*p2*exp(-(h20/r*(1/t20-1/t12))); //правая ветвь солидуса

    if (w1>=z1)and(z1>=zmin1)then
    begin
    form2.Chart1.Series[9].AddXY(w1,t12);
    l:=poisk_temp(t12,t[1],n-1);
    y[3,l]:=w1;

    end;
   if (1-w2<=z1)and(z1<=zmin1) then    begin
    form2.Chart1.Series[10].AddXY(1-w2,t12);
    ll:=poisk_temp(t12,t[1],n-1);
    y[4,ll]:=1-w2;
    end;
    w1_:=w1;w2_:=w2;
    if abs(w1-(1-w2))<=minx then begin
    minx:=abs(w1-(1-w2));
    g:=w1;
    tg:=t12;
    end;

    //экспериментальные мольные доли
    z0:=z1/(z1+(1-z1)/k12);
    form2.Chart1.Series[1].AddXY(z0,t12);

    x1:=w1/(w1+(1-w1)/k12);
    x2:=w2/((1-w2)/k12+w2);
    if (x1>=z0)and(z1>=zmin1) then
    form2.Chart1.Series[11].AddXY(x1,t12);
   if (1-x2<=z0)and(z1<=zmin1)then
    form2.Chart1.Series[12].AddXY(1-x2,t12);
    x1_:=x1;x2_:=x2;
    if abs(x1-(1-x2))<=minx1 then begin
    minx1:=abs(x1-(1-x2));
    g1:=x1;
    tg1:=t12;
    end;
    //массовые доли
    z0:=z0/(z0+(1-z0)/m12);
    form2.Chart1.Series[2].AddXY(z0,t12);

    q1:=x1/(x1+(1-x1)/m12);
    q2:=x2/((1-x2)*m12+x2);
    if (q1>=z0)and(z1>=zmin1)then
    form2.Chart1.Series[13].AddXY(q1,t12);
    if (1-q2<=z0)and(z1<=zmin1) then
    form2.Chart1.Series[14].AddXY(1-q2,t12);
    q1_:=q1;q2_:=q2;
    if abs(q1-(1-q2))<=minx2 then begin
    minx2:=abs(q1-(1-q2));
    g2:=q1;
    tg2:=t12;
    end;

    form3.GS.Cells[nk,i]:=inttostr(i);
    form3.GS.Cells[1+nk,i]:=format('%8.4f',[z1]);
    form3.GS.Cells[2+nk,i]:=format('%8.4f',[z2]);
    form3.GS.Cells[3+nk,i]:=format('%8.4f',[x1]);
    form3.GS.Cells[4+nk,i]:=format('%8.4f',[x2]);
    form3.GS.Cells[5+nk,i]:=format('%8.4f',[q1]);
    form3.GS.Cells[6+nk,i]:=format('%8.4f',[q2]);
    form3.GS.Cells[7+nk,i]:=format('%8.4f',[t12]);
    form3.GS.Cells[8+nk,i]:=format('%8.4f',[w1]);
    form3.GS.Cells[9+nk,i]:=format('%8.4f',[w2]);
    form3.GS.Cells[10+nk,i]:=format('%8.4f',[p1]);
    form3.GS.Cells[11+nk,i]:=format('%8.4f',[p2]);
    form3.GS.Cells[12+nk,i]:=format('%8.4f',[lg1]);
    form3.GS.Cells[13+nk,i]:=format('%8.4f',[lg2]);
    form3.GS.Cells[14+nk,i]:=format('%8.4f',[lnx1]);
    form3.GS.Cells[15+nk,i]:=format('%8.4f',[lnx2]);
    form3.GS.Cells[16+nk,i]:=format('%8.4f',[lng1]);
    form3.GS.Cells[17+nk,i]:=format('%8.4f',[lng2]);
   end;
    form3.GS.Cells[nk,0]:='i';
    form3.GS.Cells[1+nk,0]:='z1';
    form3.GS.Cells[2+nk,0]:='z2';
    form3.GS.Cells[3+nk,0]:='x1';
    form3.GS.Cells[4+nk,0]:='x2';
    form3.GS.Cells[5+nk,0]:='q1';
    form3.GS.Cells[6+nk,0]:='q2';
    form3.GS.Cells[7+nk,0]:='T12';
    form3.GS.Cells[8+nk,0]:='w1';
    form3.GS.Cells[9+nk,0]:='w2';
    form3.GS.Cells[10+nk,0]:='p1';
    form3.GS.Cells[11+nk,0]:='p2';
    form3.GS.Cells[12+nk,0]:='lg1';
    form3.GS.Cells[13+nk,0]:='lg2';
    form3.GS.Cells[14+nk,0]:='lnx1';
    form3.GS.Cells[15+nk,0]:='lnx2';
    form3.GS.Cells[16+nk,0]:='lng1';
    form3.GS.Cells[17+nk,0]:='lng2';

    form3.GS.RowCount:=n;
    form3.GS.ColCount:=nk+18;

nm:=form3.rt.rowcount;
form3.RT.Cells[0,nm]:='left:zmin=';form3.RT.Cells[1,nm]:=floattostr(g);
form3.RT.Cells[0,nm+1]:='Tmin,K=';form3.RT.Cells[1,nm+1]:=floattostr(tg);
form3.RT.Cells[0,nm+2]:='Tmin,C=';form3.RT.Cells[1,nm+2]:=floattostr(tg-kelvin);
form3.RT.Cells[0,nm+3]:='xmin=';form3.RT.Cells[1,nm+3]:=floattostr(g1);
form3.RT.Cells[0,nm+4]:='Tmin,K=';form3.RT.Cells[1,nm+4]:=floattostr(tg1);
form3.RT.Cells[0,nm+5]:='Tmin,C=';form3.RT.Cells[1,nm+5]:=floattostr(tg1-kelvin);
form3.RT.Cells[0,nm+6]:='qmin=';form3.RT.Cells[1,nm+6]:=floattostr(g2);
form3.RT.Cells[0,nm+7]:='Tmin,K=';form3.RT.Cells[1,nm+7]:=floattostr(tg2);
form3.RT.Cells[0,nm+8]:='Tmin,C=';form3.RT.Cells[1,nm+8]:=floattostr(tg2-kelvin);
 g1:=g/(g+(1-g)/k12);
 g2:=g1/(g1+(1-g1)/m12);
 tg1:=fx1_(g1);
 tg2:=fx1_(g2);
form3.RT.Cells[0,nm+9]:='right:zmin=';form3.RT.Cells[1,nm+9]:=floattostr(g);
form3.RT.Cells[0,nm+10]:='Tmin,K=';form3.RT.Cells[1,nm+10]:=floattostr(tg);
form3.RT.Cells[0,nm+11]:='Tmin,C=';form3.RT.Cells[1,nm+11]:=floattostr(tg-kelvin);
form3.RT.Cells[0,nm+12]:='xmin=';form3.RT.Cells[1,nm+12]:=floattostr(g1);
form3.RT.Cells[0,nm+13]:='Tmin,K=';form3.RT.Cells[1,nm+13]:=floattostr(tg1);
form3.RT.Cells[0,nm+14]:='Tmin,C=';form3.RT.Cells[1,nm+14]:=floattostr(tg1-kelvin);
form3.RT.Cells[0,nm+15]:='qmin=';form3.RT.Cells[1,nm+15]:=floattostr(g2);
form3.RT.Cells[0,nm+16]:='Tmin,K=';form3.RT.Cells[1,nm+16]:=floattostr(tg2);
form3.RT.Cells[0,nm+17]:='Tmin,C=';form3.RT.Cells[1,nm+17]:=floattostr(tg2-kelvin);
form3.RT.rowcount:=nm+18;

form2.PageControl1.ActivePage:=form2.TabSheet1;
form2.PageControl1.TabIndex:=0;
form2.Show;

end;
end;

procedure TForm1.menuN15Click(Sender: TObject);
var
    i:integer;
    c,b,minx,minx2,x1_,w1_,q1_,u1_,g1_l,g2_l,lnx1,lnx2,w1,w2,tg,tg1,g2,
    tg2,c_,b_,g1_s,g2_s,z0,minx1,minu1,x2_,w2_,q2_,u2_,u1,
    z1,z2,lng1,lng2,lg1,lg2,ge,lgG12,zmin1,zmin2,
    g1,s1,q1,q2,Hh,hh1,hh2,ffz1,s,r1,s2,m12,w0,
    g,h,x1_e,t12,lambda1,lambda2,l12,k1,k2,k12
    :myreal;
a:masd;
z,gl:array[1..4]of masd;
begin
//термодинамическое согласование жидкость-твердое
if i3=0 then
//2
begin
try
x1_e:=strtofloat(edit1.text);
T12:=strtofloat(edit2.text);
lambda1:=strtofloat(edit3.text);
lambda2:=strtofloat(edit4.text);
except
showmessage('Не верно введены числовые данные!');exit;
end;
    form3.rt.cells[8,i]:=format('%8.6f',[lgG12]);
    form2.Chart2.Series[0].clear;
    form2.Chart2.Series[1].clear;
    form2.Chart3.Series[0].clear;
    form2.Chart5.Series[2].clear;
    form2.Chart4.Series[0].clear;
form2.Chart1.Series[0].clear;
form2.Chart1.Series[1].clear;
form2.Chart1.Series[2].clear;
form2.Chart1.Series[3].clear;
form2.Chart1.Series[4].clear;
form2.Chart1.Series[5].clear;
form2.Chart1.Series[6].clear;
form2.Chart1.Series[7].clear;
form2.Chart1.Series[8].clear;
form2.Chart1.Series[9].clear;
form2.Chart1.Series[10].clear;
form2.Chart1.Series[11].clear;
form2.Chart1.Series[12].clear;
form2.Chart1.Series[13].clear;
form2.Chart1.Series[14].clear;
    form2.Chart1.Title.Text.Clear;
    form2.Chart1.Title.Text.Add(name1+'-'+name2);
    form2.Chart1.LeftAxis.Title.Caption:='T, K';
    form2.Chart1.BottomAxis.Title.Caption:='доли 1-го компонента';
    form2.Chart1.Series[0].Title:='T(эфф.м.д.)';
    form2.Chart1.Series[1].Title:='Т(эксп.м.д.)';
    form2.Chart1.Series[2].Title:='Т(масс.м.д.)';

    form2.Chart1.Series[3].Title:='T1(эфф.м.д.)_ликвидус';
    form2.Chart1.Series[4].Title:='Т2(эфф.м.д._ликвидус';
    form2.Chart1.Series[5].Title:='Т1(эксп.м.д.)_ликвидус';
    form2.Chart1.Series[6].Title:='Т2(эксп.м.д.)_ликвидус';
    form2.Chart1.Series[7].Title:='Т1(масс.д.)_ликвидус';
    form2.Chart1.Series[8].Title:='Т2(масс.д.)_ликвидус';
    form2.Chart1.Series[9].Title:='T1(эфф.м.д.)_солидус';
    form2.Chart1.Series[10].Title:='Т2(эфф.м.д.)_солидус';
    form2.Chart1.Series[11].Title:='Т1(эксп.м.д.)_солидус';
    form2.Chart1.Series[12].Title:='Т2(эксп.м.д.)_солидус';
    form2.Chart1.Series[13].Title:='Т1(масс.д.)_солидус';
    form2.Chart1.Series[14].Title:='Т2(масс.д.)_солидус';
l12:=lambda1/lambda2;
h10:=h1/lambda1;h20:=h2/lambda2;
t10:=t1;t20:=t2;
n:=Fn.value;
h:=1/n;
setlength(z[1],n+1);
setlength(gl[1],n+1);
//проверка термодинамического согласования по h10,h20,t10,t20
    g:=1;
    for i:=1 to n-1 do begin
    z1:=i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    ge:=(z1*lng1+z2*lng2)*r*t12; //?????
    lgG12:=math.Log10(exp(lng1-lng2));
    z[1,i]:=z1;
    gl[1,i]:=lgG12;
    if lgG12*g<0 then begin
//       zmin1:=z1;
       zmin1:=z1-lgG12*(z[1,i-1]-z1)/(gl[1,i-1]-lgG12);
    end;
    g:=lgG12;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;

    form3.rt.cells[1,i]:=format('%5.3f',[z1]);
    form3.rt.cells[2,i]:=format('%5.3f',[z2]);
    form3.rt.cells[3,i]:=format('%5.3f',[t12]);
    form3.rt.cells[4,i]:=format('%5.3f',[t12-kelvin]);
    form3.rt.cells[5,i]:=format('%8.6f',[lng1]);
    form3.rt.cells[6,i]:=format('%8.6f',[lng2]);
    form3.rt.cells[7,i]:=format('%8.6f',[ge]);
    form3.rt.cells[8,i]:=format('%8.6f',[lgG12]);
    form2.Chart2.Series[0].AddXY(z1,lng1);
    form2.Chart2.Series[1].AddXY(z1,lng2);
    form2.Chart3.Series[0].AddXY(z1,lgg12);
    form2.Chart5.Series[2].AddXY(z1,ge);
    form2.Chart4.Series[0].AddXY(z1,t12);
    end;
     showmessage('до термодинамического согласования '+chr(13)+
     'z_min='+format('%5.3f',[zmin1]));
//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
z1:=zmin1;r1:=1;  //exit;
while abs(r1)>0.01 do begin
 //интегралы
 g1:=fr3(z1,a,4);
 s1:=0;s2:=0;
 lgg12:=fr3(z[1,1],a,4)-g1;
 for i:=2 to n-1 do
 begin
 g:=fr3(z[1,i],a,4)-g1;
 if (lgg12<0) and (g<0) then
  s1:=s1+(g+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g+lgg12)/2*(z[1,i]-z[1,i-1]);
 if (lgg12>0) and (g>0) then begin
       zmin2:=z[1,i+1];
 end;
 lgg12:=g;
 end;
 r1:=abs(s1)-abs(s2);
 if r1>0 then z1:=z1+0.01 else z1:=z1-0.01;
end;

form2.Chart3.Series[1].clear;
 for i:=1 to n-1 do
 begin
 g:=fr3(z[1,i],a,4)-g1;
 form2.Chart3.Series[1].AddXY(z[1,i],g);
 end;

//после термодинамического согласования
 k12:=zmin1/(1-zmin1)/zmin2*(1-zmin2);
    myfunct.find(k1,k2,k12);
    h10:=h1/k12;h20:=h2*k12;//?
    edit5.Text:=format('%0.0f',[k1]);
    edit6.Text:=format('%0.0f',[k2]);
    k12:=k1/k2;
    m12:=m1*k1/m2/k2;
 z1:=zmin2;z2:=1-z1;
//экспериментальные мольные доли
x1:=z1/(z1+z2/k12);
x2:=z2/(z2+z1*k12);
//весовые доли  (надо писать массовые доли)
q1:=x1/(x1+(m2*k2)/(m1*k1)*x2);
q2:=x2/(x2+(m1*k1)/(m2*k2)*x1);
ffz1:=fx1_(z1);

    h:=k1*h1*q1+k2*h2*(1-q1); //теплота плавления в точке эвтектики
    s:=m1*k1*q1+m2*k2*(1-q1); //пересчитанная молярная масса
    Hh :=m1*q1+m2*q2;
    hh1:=z1*h1+z2*h2;
    hh2:=z1*h10+z2*h20;
showmessage('после проверки термодинамического согласования'+ ' S1-S2='+floattostr(abs(r1))+chr(13)+
 ' z_min='+floattostr(zmin2)+' T_min='+floattostr(ffz1)+chr(13)+
 ' k1/k2='+floattostr(k12)+' k1='+floattostr(k1)+' k2='+floattostr(k2)+chr(13)+
 ' H='+floattostr(h)+' Hh='+floattostr(hh)+' Hh1='+floattostr(hh1)+chr(13)+
 ' Hh2='+floattostr(hh2)+ 'm='+floattostr(s));
//поиск минимума
     g:=1;z0:=0;w0:=1;
for i:=1 to n-1 do begin
    z1:=i/n;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    w1:=math.Log10(exp(lng1-lng2));
    if w1*g<0 then begin
       //zmin1:=z1;
        zmin1:=z1-w1*(z0-z1)/(w0-w1);
    end;
    g:=w1;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
      z0:=z1;w0:=w1;
    end;

 //жидкость-твердое
 zmin1:=x1_e;
//расчет коэффициентов по модели Редлиха-Кистера
    t12:=fx1_(zmin1);
    lng1:=ln(zmin1)-h10/r/t10*(1-t10/t12);
    lng2:=ln(1-zmin1)-h20/r/t20*(1-t20/t12);
    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    b:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;
    minx:=1;minx1:=1;minx2:=1; minu1:=1;
//обратный ход
   form2.Chart2.Series[2].clear;
   form2.Chart2.Series[3].clear;
   form2.Chart2.Series[4].clear;
   form2.Chart2.Series[5].clear;
   form2.Chart2.Series[6].clear;
   form2.Chart2.Series[7].clear;

x1_:=1;x2_:=1; w1_:=1;w2_:=1;q1_:=1;q2_:=1;u1_:=1;u2_:=1;
for i:=1 to n-1 do begin
    z2:=i/n;
    z1:=1-z2;
    lng1:=sqr(z2)*(b+c*(3*z1-z2));
    lng2:=sqr(z1)*(b+c*(z1-3*z2));
    form2.Chart2.Series[2].AddXY(z1,lng1);
    form2.Chart2.Series[3].AddXY(z1,lng2);
    form2.Chart2.Series[4].AddXY(z1,log10(exp(lng1-lng2)));
    //обратный ход в эффективных долях
    t12:=fx1_(z1);
//  form2.Chart1.Series[0].AddXY(z1,t12);

    g1_l:=power(10,lng1);g2_l:=power(10,lng2);
//    lnx1:=h10/r/t10*(1-t10/t12)-ln(g1_l);
//    lnx2:=h20/r/t20*(1-t20/t12)-ln(g2_l);
    lnx1:=h10/r/t10*(1-t10/t12)-lng1;
    lnx2:=h20/r/t20*(1-t20/t12)-lng2;
    w1:=exp(lnx1);  //левая ветвь
    w2:=exp(lnx2);  //правая ветвь
    if w1>w1_ then
    form2.Chart1.Series[3].AddXY(w1,t12);
    if w2>w2_ then
    form2.Chart1.Series[4].AddXY(1-w2,t12);//?
    w1_:=w1;w2_:=w2;
    if abs(w1-(1-w2))<=minx then begin
    minx:=abs(w1-(1-w2));
    g:=w1;
    tg:=t12;
    end;

    //экспериментальные мольные доли

    x1:=w1/(w1+(1-w1)/k12);
    x2:=w2/((1-w2)/k12+w2);
    if x1>x1_ then
    form2.Chart1.Series[5].AddXY(x1,t12);
    if x2>x2_ then
    form2.Chart1.Series[6].AddXY(1-x2,t12);  //?
    x1_:=x1;x2_:=x2;
    if abs(x1-(1-x2))<=minx1 then begin
    minx1:=abs(x1-(1-x2));
    g1:=x1;
    tg1:=t12;
    end;


    //массовые доли
    q1:=x1/(x1+(1-x1)/m12);
    q2:=x2/((1-x2)*m12+x2);
   if q1>q1_ then
    form2.Chart1.Series[7].AddXY(q1,t12);
   if q2>q2_ then
    form2.Chart1.Series[8].AddXY(1-q2,t12);  //?
    q1_:=q1;q2_:=q2;
    if abs(q1-(1-q2))<=minx2 then begin
    minx2:=abs(q1-(1-q2));
    g2:=q1;
    tg2:=t12;
    end;

    form3.RT.Cells[1,i]:=format('%8.4f',[z1]);
    form3.RT.Cells[2,i]:=format('%8.4f',[z2]);
    form3.RT.Cells[3,i]:=format('%8.4f',[x1]);
    form3.RT.Cells[4,i]:=format('%8.4f',[x2]);
    form3.RT.Cells[5,i]:=format('%8.4f',[q1]);
    form3.RT.Cells[6,i]:=format('%8.4f',[q2]);
    form3.RT.Cells[7,i]:=format('%8.4f',[t12]);
   end;
    form3.RT.Cells[1,0]:='z1';
    form3.RT.Cells[2,0]:='z2';
    form3.RT.Cells[3,0]:='x1';
    form3.RT.Cells[4,0]:='x2';
    form3.RT.Cells[5,0]:='q1';
    form3.RT.Cells[6,0]:='q2';
    form3.RT.Cells[7,0]:='T12';

showmessage('zmin='+floattostr(g)+' Tmin='+floattostr(tg-kelvin)+#13+
'xmin='+floattostr(g1)+' Tmin='+floattostr(tg1-kelvin)+#13+
'qmin='+floattostr(g2)+' Tmin='+floattostr(tg2-kelvin));


//твердое-твердое
//расчет коэффициентов c,b по модели Редлиха-Кистера
    t12:=fx1_(zmin1);
    lg1:=-ln(zmin1)+h10/r/t10*(1-t10/t12);//ln (gamma_liquid)
    lg2:=-ln(1-zmin1)+h20/r/t20*(1-t20/t12);

    c_:=(lg1/2/sqr(1-zmin1)-lg2/2/sqr(zmin1));
    b_:=lg1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c_;

    lng1:=lg1-(h10/R*(1/t10-1/t12)); //ln gamma_solid
    lng2:=lg2-(h20/R*(1/t20-1/t12));
  //расчет коэффициентов c,b по модели Редлиха-Кистера
{    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    b:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;   }

//расчет коэффициентов c,b по модели Ван-Лаара
    c:=sqr(lng1+lng2*(1-zmin1)/zmin1)/lng1;
    b:=sqr(lng2+lng1*zmin1/(1-zmin1))/lng2;
    minx:=1;minx1:=1;minx2:=1; minu1:=1;
//обратный ход
x1_:=1;x2_:=1; w1_:=1;w2_:=1;q1_:=1;q2_:=1;u1_:=1;u2_:=1;
for i:=1 to n-1 do begin
    z2:=i/n;
    z1:=1-z2;
{    lg1:=sqr(z2)*(b+c*(3*z1-z2));  //формула Редлиха-Кистера
    lg2:=sqr(z1)*(b+c*(z1-3*z2));  //lg gamma_solid
    g1_s:=power(10,lg1);g2_s:=power(10,lg2);
    g1_s:=exp(lg1);    g2_s:=exp(lg2);}
    lg1:=c*sqr(b*z2/(c*z1+b*z2));//формула Ван-Лаара
    lg2:=b*sqr(c*z1/(c*z1+b*z2));
    g1_s:=exp(lg1);    g2_s:=exp(lg2);

    form2.Chart2.Series[5].AddXY(z1,lg1);
    form2.Chart2.Series[6].AddXY(z1,lg2);
    form2.Chart2.Series[7].AddXY(z1,log10(g1_S/g2_S));
    //обратный ход в эффективных долях
    t12:=fx1_(z1);
    form2.Chart1.Series[0].AddXY(z1,t12);
    lng1:=sqr(z2)*(b_+c_*(3*z1-z2));  //формула Редлиха-Кистера
    lng2:=sqr(z1)*(b_+c_*(z1-3*z2));  //lg gamma_liquid
    g1_l:=power(10,lng1);g2_l:=power(10,lng2);
//восстанавливаем точки ликвидуса
    lnx1:=h10/r/t10*(1-t10/t12)-ln(g1_l);
    lnx2:=h20/r/t20*(1-t20/t12)-ln(g2_l);
//    lnx1:=h10/r/t10*(1-t10/t12)-lng1;
//    lnx2:=h20/r/t20*(1-t20/t12)-lng2;
    p1:=exp(lnx1);  //левая ветвь  ликвидуса
    p2:=exp(lnx2);  //правая ветвь ликвидуса
//восстанавливаем точки солидуса
    w1:=g1_l/g1_s*p1*exp(-(h10/r*(1/t10-1/t12))); //левая ветвь  солидуса
    w2:=g2_l/g2_s*p2*exp(-(h20/r*(1/t20-1/t12))); //правая ветвь солидуса

    if (w1>=z1)and(z1>=zmin1)then
    form2.Chart1.Series[9].AddXY(w1,t12);
    if (1-w2<=z1)and(z1<=zmin1) then
    form2.Chart1.Series[10].AddXY(1-w2,t12);
    w1_:=w1;w2_:=w2;
    if abs(w1-(1-w2))<=minx then begin
    minx:=abs(w1-(1-w2));
    g:=w1;
    tg:=t12;
    end;

    //экспериментальные мольные доли
    z0:=z1/(z1+(1-z1)/k12);

    x1:=w1/(w1+(1-w1)/k12);
    x2:=w2/((1-w2)/k12+w2);
   if (x1>=z0)and(z1>=zmin1) then
    form2.Chart1.Series[11].AddXY(x1,t12);
    if (1-x2<=z0)and(z1<=zmin1)then
    form2.Chart1.Series[12].AddXY(1-x2,t12);
    x1_:=x1;x2_:=x2;
    if abs(x1-(1-x2))<=minx1 then begin
    minx1:=abs(x1-(1-x2));
    g1:=x1;
    tg1:=t12;
    end;
    form2.Chart1.Series[1].AddXY(z0,t12);


    //массовые доли
    z0:=z0/(z0+(1-z0)/m12);

    q1:=x1/(x1+(1-x1)/m12);
    q2:=x2/((1-x2)*m12+x2);
    if (q1>=z0)and(z1>=zmin1)then
    form2.Chart1.Series[13].AddXY(q1,t12);
    if (1-q2<=z0)and(z1<=zmin1) then
    form2.Chart1.Series[14].AddXY(1-q2,t12);
    q1_:=q1;q2_:=q2;
    if abs(q1-(1-q2))<=minx2 then begin
    minx2:=abs(q1-(1-q2));
    g2:=q1;
    tg2:=t12;
    end;
    form2.Chart1.Series[2].AddXY(z0,t12);

    form3.RT.Cells[1,i]:=format('%8.4f',[z1]);
    form3.RT.Cells[2,i]:=format('%8.4f',[z2]);
    form3.RT.Cells[3,i]:=format('%8.4f',[x1]);
    form3.RT.Cells[4,i]:=format('%8.4f',[x2]);
    form3.RT.Cells[5,i]:=format('%8.4f',[q1]);
    form3.RT.Cells[6,i]:=format('%8.4f',[q2]);
    form3.RT.Cells[7,i]:=format('%8.4f',[t12]);
    form3.RT.Cells[8,i]:=format('%8.4f',[w1]);
    form3.RT.Cells[9,i]:=format('%8.4f',[w2]);
    form3.RT.Cells[10,i]:=format('%8.4f',[p1]);
    form3.RT.Cells[11,i]:=format('%8.4f',[p2]);
    form3.RT.Cells[12,i]:=format('%8.4f',[lg1]);
    form3.RT.Cells[13,i]:=format('%8.4f',[lg2]);
    form3.RT.Cells[14,i]:=format('%8.4f',[lnx1]);
    form3.RT.Cells[15,i]:=format('%8.4f',[lnx2]);
    form3.RT.Cells[16,i]:=format('%8.4f',[lng1]);
    form3.RT.Cells[17,i]:=format('%8.4f',[lng2]);
   end;

    form3.RT.Cells[1,0]:='z1';
    form3.RT.Cells[2,0]:='z2';
    form3.RT.Cells[3,0]:='x1';
    form3.RT.Cells[4,0]:='x2';
    form3.RT.Cells[5,0]:='q1';
    form3.RT.Cells[6,0]:='q2';
    form3.RT.Cells[7,0]:='T12';
    form3.RT.Cells[8,0]:='w1';
    form3.RT.Cells[9,0]:='w2';
    form3.RT.Cells[10,0]:='p1';
    form3.RT.Cells[11,0]:='p2';
    form3.RT.Cells[12,0]:='lg1';
    form3.RT.Cells[13,0]:='lg2';
    form3.RT.Cells[14,0]:='lnx1';
    form3.RT.Cells[15,0]:='lnx2';
    form3.RT.Cells[16,0]:='lng1';
    form3.RT.Cells[17,0]:='lng2';

    form3.RT.RowCount:=n;
    form3.RT.ColCount:=18;  
showmessage('zmin='+floattostr(g)+' Tmin='+floattostr(tg-kelvin)+#13+
'xmin='+floattostr(g1)+' Tmin='+floattostr(tg1-kelvin)+#13+
'qmin='+floattostr(g2)+' Tmin='+floattostr(tg2-kelvin));
form2.PageControl1.ActivePage:=form2.TabSheet1;
form2.PageControl1.TabIndex:=0;
form2.Show;
end;
end;

procedure TForm1.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//key=70;  Ctrl+f - find; f3-continue find;  Ctrl+Q - восстановить порядок
//form1.Caption:=inttostr(key);
if key=114 then begin
table1.FindNext; exit;
end;
if key=17 then begin flagCtrl:=true; exit; end;
if flagctrl then begin
if key=70 then begin
s:= InputBox('Поиск', 'Введите строку для поиска', s);
table1.IndexName:='i_name';
table1.FindNearest([s]);
end;
if key=81 then table1.IndexFieldNames:='Id';
 flagCtrl:=false;
end else flagCtrl:=false;

end;

procedure TForm1.Mn_calcClick(Sender: TObject);
begin
   ShellExecute(Form1.Handle, 'open', 'calc.exe',
   nil, nil, SW_SHOWNORMAL)

end;

procedure TForm1.Mn_aboutClick(Sender: TObject);
begin
   aboutbox.show;
end;

procedure TForm1.menuN2_8Click(Sender: TObject);
//термодинамическое согласование жидкость-пар
var
flag:boolean;
i,j,m,i1,i2:integer;
k1,k2,s,sz,tz1,x1_,x2_,w1_,w2_,s1,s2,q2,hh1,hh2,hh3,s3,gg,gamma1,
q1,minx,tg,lnx1,l12,w1,w2,l1,l2,x1,hh,g3,g2,eps,k12,l_12,
lnx2,x2,g1,g5,z1,z2,t12,h,lng1,lng2,lambda1,lambda2,lambda12,
lgG12,ge,g0,zmin1,zmin2,r1,c,b,r0,betta12,tau12,x_az,t_az,p_az,
coef_b,y1,lgg1,lgg2,lnv1,lnv2,v1,v2,coef_a,m12,y2,lng1x,lng2x,lng1z,lng2z,
lng1q,lng2q ,coef_c,coef_d,gg1,gg2,gg12,asd,tau1,tau2
:myreal;
a:masd;
y:array[1..3]of masd;
z,t,g,gl:array[1..2]of masd;
begin
//термодинамическое согласование жидкость-пар
if i3=0 then
//2
begin
try
 tau1:=Table2tau1.Value; tau2:=Table2tau2.Value;
 k1:=Table2K1.Value/tau1; k2:=Table2K2.Value/tau2;
  except
 k1:=1;k2:=1; tau1:=1;tau2:=1;
 end;
 h1:=hk1*k1;h2:=hk2*k2;  //теплота испарения
 t1:=tk1;t2:=tk2;        //температура кипения

try
 lambda1:=Table2K1_az.Value; lambda2:=Table2K2_az.Value;
  except
 lambda1:=1;lambda2:=1;
 end;
    h10:=h1;h20:=h2;
    t10:=t1;t20:=t2;
    n:=form1.Fn.Value;
    form3.RT.rowcount:=n;
    form3.RT.ColCount:=11;
    form3.rt.cells[1,0]:='z1';
    form3.rt.cells[2,0]:='z2';
    form3.rt.cells[3,0]:='T,K';
    form3.rt.cells[4,0]:='T,C';
    form3.rt.cells[5,0]:='ln G1';
    form3.rt.cells[6,0]:='ln G2';
    form3.rt.cells[7,0]:='G_E';
    form3.rt.cells[8,0]:='lg G1/G2';
    form3.rt.cells[9,0]:='G1';
    form3.rt.cells[10,0]:='G2';
    form2.Chart2.Series[0].Clear;form2.Chart2.Series[0].tag:=1;
    form2.Chart2.Series[1].Clear;form2.Chart2.Series[1].tag:=2;
    form2.Chart2.Series[2].Clear;form2.Chart2.Series[2].tag:=3;
    form2.Chart2.Series[3].Clear;form2.Chart2.Series[3].tag:=4;
    form2.Chart1.Series[0].Clear;form2.Chart1.Series[0].tag:=1;
    form2.Chart5.Series[3].Clear;form2.Chart5.Series[3].tag:=4;
    form2.Chart1.Series[4].clear;form2.Chart1.Series[4].tag:=5;
    form2.Chart9.Series[1].clear;form2.Chart9.Series[1].tag:=2;
    form2.Chart9.Series[0].clear;form2.Chart9.Series[0].tag:=1;
    form2.Chart1.Series[4].title:='T(y1)';
    form2.Chart9.Series[1].title:='y1(x1)';
    form2.Chart9.Series[0].title:='y=x1';
    form2.Chart2.Series[0].title:='ln g1';
    form2.Chart2.Series[1].title:='ln g2';
    form2.Chart2.Series[2].title:='lg g1/g2';
    form2.Chart5.Series[3].title:='Gamma_E';
    form2.Chart1.Series[0].title:='T(x1)';
    h:=1/n;
    setlength(z[1],n+1);
    setlength(g[1],n+1);
    setlength(g[2],n+1);
    setlength(t[1],n+1);
    setlength(gl[1],n+1);
    setlength(gl[2],n+1);
    zmin1:=-1;
    g0:=1;flag:=true;
    for i:=1 to n-1 do begin
    z1:=i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    ge:=(z1*lng1+z2*lng2)*r*t12;//???????
    lgG12:=math.Log10(exp(lng1-lng2));
    z[1,i]:=z1;
    t[1,i]:=fx1_(z1);
    g[1,i]:=exp(lng1);
    g[2,i]:=exp(lng2);
    gl[1,i]:=lgG12;
    p_1:=p_antuan(t12,a1_ant,b1_ant,c1_ant);
    p_2:=p_antuan(t12,a2_ant,b2_ant,c2_ant);
    gg:=z2*p_2/z1/p_1/power(10,gl[1,i]);
    y1:=1/(1+gg);
   //y1:=g[1,i]*z1*p_1/101.3;
    form2.Chart9.Series[1].AddXY(z1,y1);
    form2.Chart9.Series[0].AddXY(z1,z1);
    form2.Chart1.Series[4].AddXY(y1,t12);
    if lgG12*g0<0 then begin
       if flag then begin
       i1:=i;i2:=i-1;
       asd:=(z[1,i2]-z[1,i1])/(gl[1,i2]-gl[1,i1]);
       zmin1:=(-asd*gl[1,i1]+z[1,i1]);
      // zmin1:=z1;
        flag:=false; end;
    end;
    g0:=lgG12;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    form3.rt.cells[1,i]:=format('%5.3f',[z1]);
    form3.rt.cells[2,i]:=format('%5.3f',[z2]);
    form3.rt.cells[3,i]:=format('%5.3f',[t12]);
    form3.rt.cells[4,i]:=format('%5.3f',[t12-kelvin]);
    form3.rt.cells[5,i]:=format('%8.6f',[lng1]);
    form3.rt.cells[6,i]:=format('%8.6f',[lng2]);
    form3.rt.cells[7,i]:=format('%8.6f',[ge]);
    form3.rt.cells[8,i]:=format('%8.6f',[lgG12]);
    form3.rt.cells[9,i]:=format('%8.6f',[g[1,i]]);
    form3.rt.cells[10,i]:=format('%8.6f',[g[2,i]]);
    form2.Chart2.Series[0].AddXY(z1,lng1);
    form2.Chart2.Series[1].AddXY(z1,lng2);
    form2.Chart2.Series[2].AddXY(z1,lgg12);
    form2.Chart5.Series[3].AddXY(z1,ge);
    form2.Chart1.Series[0].AddXY(z1,t12);
    end;
    if flag then
      zmin1:=strtofloat(inputbox('Введите данные','Точка минимума для V_E при T=const или для H_E приP=const',floattostr(0.5)));

     showmessage('до термодинамического согласования '+chr(13)+
     'z_min='+format('%5.3f',[zmin1]));
//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
z1:=zmin1;r1:=1;  //exit;
eps:=0.01;zmin2:=z1; r0:=0;  j:=0;
while (abs(r1)>eps)and(j<=50000) do begin
    //интегралы
 g1:=fr3(z1,a,4);  inc(j);
 s1:=0;s2:=0; flag:=true;
 lgg12:=fr3(z[1,1],a,4)-g1;
 for i:=2 to n-1 do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
 if (lgg12>0)and(g0>0) then begin
        //if flag then begin
        zmin2:=z[1,i]+h/2;
        flag:=false;
       // end;
 end;
 lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);
 if r1>0 then z1:=z1+h/2 else z1:=z1-h/2;
 if (abs(r1)<=0.05) and (abs(z1-r0)<=h/2) then break;
 r0:=z1;
end;
 if (abs(r1)<=eps*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
form2.Chart2.Series[3].clear;
 for i:=1 to n-1 do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 form2.Chart2.Series[3].AddXY(z[1,i],g0);
 end;

//после термодинамического согласования
 k12:=zmin1/(1-zmin1)/zmin2*(1-zmin2);
    find(k1,k2,k12);

    table2.Edit;
    Table2.FieldByName('k1_az').AsFloat:=k1;
    Table2.FieldByName('k2_az').AsFloat:=k2;
   // Table2.FieldByName('lambda1').AsFloat:=lambda1;
   // Table2.FieldByName('lambda2').AsFloat:=lambda2;
    table2.Post;
showmessage('после проверки термодинамического согласования'+chr(13)+
 ' S1-S2='+floattostr(abs(r1))+' z_min='+floattostr(zmin2)+chr(13)+
 ' k1/k2='+floattostr(k12)+' k1='+floattostr(k1)+' k2='+floattostr(k2));//k1,k2
//после согласования
h10:=h1/k12;h20:=h2*k12;
m12:=m1*k1/m2/k2;
{   zmin1:=-1;
    g0:=1;flag:=true;
    for i:=1 to n-1 do begin
    z1:=i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    ge:=(z1*lng1+z2*lng2)*r*t12;///??????
    lgG12:=math.Log10(exp(lng1-lng2));
    z[1,i]:=z1;
    t[1,i]:=fx1_(z1);
    g[1,i]:=exp(lng1);
    g[2,i]:=exp(lng2);
    gl[1,i]:=lgG12;
    if lgG12*g0<0 then begin
       if flag then begin zmin1:=z1; flag:=false; end;
    end;
    g0:=lgG12;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    form3.rt.cells[1,i]:=format('%5.3f',[z1]);
    form3.rt.cells[2,i]:=format('%5.3f',[z2]);
    form3.rt.cells[3,i]:=format('%5.3f',[t12]);
    form3.rt.cells[4,i]:=format('%5.3f',[t12-kelvin]);
    form3.rt.cells[5,i]:=format('%8.6f',[lng1]);
    form3.rt.cells[6,i]:=format('%8.6f',[lng2]);
    form3.rt.cells[7,i]:=format('%8.6f',[ge]);
    form3.rt.cells[8,i]:=format('%8.6f',[lgG12]);
    form2.Chart2.Series[0].AddXY(z1,lng1);
    form2.Chart2.Series[1].AddXY(z1,lng2);
    form2.Chart2.Series[2].AddXY(z1,lgg12);
    form2.Chart5.Series[3].AddXY(z1,ge);
    form2.Chart1.Series[0].AddXY(z1,t12);
    end;
    if flag then
      zmin1:=strtofloat(inputbox('Введите данные','Точка минимума для V_E при T=const или для H_E приP=const',floattostr(0.5)));

     showmessage('до термодинамического согласования '+chr(13)+
     'z_min='+format('%5.3f',[zmin1]));
//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
z1:=zmin1;r1:=1;  //exit;
eps:=0.01;zmin2:=z1; r0:=0;  j:=0;
while (abs(r1)>eps)and(j<=50000) do begin
    //интегралы
 g1:=fr3(z1,a,4);  inc(j);
 s1:=0;s2:=0; flag:=true;
 lgg12:=fr3(z[1,1],a,4)-g1;
 for i:=2 to n-1 do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
 if (lgg12>0)and(g0>0) then begin
        //if flag then begin
        zmin2:=z[1,i]+h/2;
        flag:=false;
       // end;
 end;
 lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);
 if r1>0 then z1:=z1+h/2 else z1:=z1-h/2;
 if (r1<=0.05) and (abs(z1-r0)<=h/2) then break;
 r0:=z1;
end;
 if (abs(r1)<=eps*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
form2.Chart2.Series[3].clear;
 for i:=1 to n-1 do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 form2.Chart2.Series[3].AddXY(z[1,i],g0);
 end;
showmessage('после проверки термодинамического согласования'+chr(13)+
 ' S1-S2='+floattostr(abs(r1)));
}

 m:=form3.ge.RowCount-1;
j:=17;
form3.ge.cells[j,0]:='H(k)';
form3.ge.cells[j+1,0]:='M(k)';
form3.ge.cells[j+2,0]:='H(k)/M(k)';
form3.ge.cells[j+3,0]:='k1';
form3.ge.cells[j+4,0]:='k2';
form3.ge.cells[j+5,0]:='k1/k2';
form3.ge.cells[j+3,1]:=floattostr(k1);
form3.ge.cells[j+4,1]:=floattostr(k2);
form3.ge.cells[j+5,1]:=floattostr(k12);

for i:=2 to m do begin
try
 x1:=strtofloat(form3.ge.cells[5,i]);
 q1:=strtofloat(form3.ge.cells[7,i]); //массовые доли
 hh:=k1*h1*q1+k2*h2*(1-q1); //теплота плавления в точке эвтектики
 s:=m1*k1*x1+m2*k2*(1-x1); //пересчитанная молярная масса
 form3.ge.cells[j,i]:=floattostr(hh);
 form3.ge.cells[j+1,i]:=floattostr(s);
 form3.ge.cells[j+2,i]:=floattostr(hh/s);
except
// если нет азеотропа
    z1:=zmin1;
    z2:=1-z1;
//экспериментальные мольные доли
x1:=z1/(z1+z2/k12);
x2:=z2/(z2+z1*k12);
//весовые доли
q1:=x1/(x1+x2/m12);
q2:=x2/(x2+x1*m12);
 hh:=k1*h1*q1+k2*h2*(1-q1); //теплота плавления в точке эвтектики
 s:=m1*k1*x1+m2*k2*(1-x1); //пересчитанная молярная масса
 form3.ge.cells[1,1]:=floattostr(zmin2);
 form3.ge.cells[2,1]:=floattostr(zmin1);
 form3.ge.cells[3,1]:=floattostr(x1);
 form3.ge.cells[4,1]:=floattostr(q1);
 form3.ge.cells[5,1]:=floattostr(hh);
 form3.ge.cells[6,1]:=floattostr(s);
 form3.ge.cells[7,1]:=floattostr(hh/s);
 form3.ge.cells[8,1]:=floattostr(k1);
 form3.ge.cells[9,1]:=floattostr(k2);
 form3.ge.cells[10,1]:=floattostr(k12);
 form3.ge.cells[11,1]:=floattostr(k1*h1);
 form3.ge.cells[12,1]:=floattostr(k2*h2);
 form3.ge.cells[13,1]:=floattostr(fx1_(z1));
 break;
end;
end;

//поправка для пара
 x2:=0.5;
 g2:=fr3(x2,a,4)-g1; //lg(betta1/betta2)=lg(gamma1/gamma2) при x=0.5
  showmessage('x=0.5 f='+floattostr(g2));

//интегралы
 form2.Chart2.Series[5].clear; form2.Chart2.Series[5].tag:=6;
 s1:=0;s2:=0;
 g0:=fr3(z[1,1],a,4)-g1-g2;
 gl[2,1]:=g0;
 for i:=2 to n do
 begin
 g3:=fr3(z[1,i],a,4)-g1-g2;
 gl[2,i]:=g3;
 form2.Chart2.Series[5].AddXY(z[1,i],g3);
 if (g0>0) and (g3>0) then
  s1:=s1+(g3+g0)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g3+g0)/2*(z[1,i]-z[1,i-1]);
 g0:=g3;
 end;
gg12:=g1+g2;
 showmessage('после поправки в паре S1-S2='+floattostr(s1-s2));
 L_12:=zmin1/(1-zmin1)/x2*(1-x2);
 showmessage('X_экс='+floattostr(zmin1)+' X_мод='+floattostr(x2)+
' L12='+floattostr(l_12));
 form3.UR.RowCount:=9;
 form3.UR.cells[1,8]:=floattostr(zmin1);
 form3.UR.cells[2,8]:=floattostr(x2);
 form3.UR.cells[0,8]:=floattostr(L_12);
 //betta1/betta2=10^g2
betta12:=math.Power(10,g2);
 //tau1/tau2=lambda12/(betta1/betta2) ассоциация в паре
 tau12:=k12/betta12;
showmessage('betta1/betta2='+floattostr(betta12)+
' tau1/tau2='+floattostr(tau12));
form3.UR.RowCount:=10;
 form3.UR.cells[1,9]:=floattostr(betta12);
 form3.UR.cells[2,9]:=floattostr(tau12);

 // расчет относительной летучести a=(p1/p2*gamma1/gamm2)
 // если =1 то это точка азеотропии
  form2.Chart8.Series[0].clear;form2.Chart8.Series[0].tag:=1;
  form2.Chart8.Series[0].title:='отн.летучесть';
  form2.Chart8.Series[1].clear;form2.Chart8.Series[1].tag:=2;
  form2.Chart8.Series[1].title:='alfa=1';
 // form2.Chart4.Series[0].clear;form2.Chart4.Series[0].tag:=1;
   form3.RT.Cells[11,0]:='p1';
  form3.RT.Cells[12,0]:='p2';
   form3.RT.Cells[13,0]:='p1/p2*g1/g2';

  z1:=0;
 for i:=1 to N-1 do begin
//эффективные мольные доли
 s:=z[1,i];
 //g6:=fr3(s,a,4)-g1-g2;
// g3:=math.Power(10,g6);
 g3:=g[1,i]/g[2,i];
 g0:=t[1,i];
 p_1:=p_antuan(g0,a1_ant,b1_ant,c1_ant);
 p_2:=p_antuan(g0,a2_ant,b2_ant,c2_ant);
 g5:=p_1/p_2*g3;
 form2.Chart8.Series[0].addxy(s,g5);
  form2.Chart8.Series[1].addxy(s,1);
 if abs(g5-1)<=0.01 then begin z1:=T[1,i];z2:=s end;
 form3.RT.Cells[11,i]:=floattostr(p_1);
  form3.RT.Cells[12,i]:=floattostr(p_2);
   form3.RT.Cells[13,i]:=floattostr(g5);
  end;
 form3.RT.colcount:=14;
 if z1<>0 then showmessage('при a=1: T='+floattostr(z1)+' x_mol='+floattostr(z2));

form2.chart5.Series[0].clear; form2.chart5.Series[0].tag:=1;
form2.chart5.Series[1].clear; form2.chart5.Series[1].tag:=2;
form2.chart5.Series[2].clear; form2.chart5.Series[2].tag:=3;
form2.chart11.Series[0].clear; form2.chart11.Series[0].tag:=1;
form2.chart11.Series[1].clear;form2.chart11.Series[1].tag:=2;
form2.chart11.Series[2].clear;form2.chart11.Series[2].tag:=3;
form2.chart12.Series[0].clear;form2.chart12.Series[0].tag:=1;
form2.chart12.Series[1].clear;form2.chart12.Series[1].tag:=2;
form2.chart12.Series[2].clear;form2.chart12.Series[2].tag:=3;
form2.chart1.Series[3].clear;form2.chart1.Series[3].tag:=4;
form2.chart1.Series[1].clear;form2.chart1.Series[1].tag:=2;
form2.chart1.Series[2].clear;form2.chart1.Series[2].tag:=3;

form2.chart1.Series[1].title:='T(эфф)';
form2.chart1.Series[2].title:='T(эксп)';
form2.chart1.Series[3].title:='T(масс)';

form2.chart5.Series[0].title:='Ge(эфф)';
form2.chart5.Series[1].title:='Ge(эксп)';
form2.chart5.Series[2].title:='Ge(масс)';

form2.chart11.Series[0].title:='H(эфф)';
form2.chart11.Series[1].title:='H(эксп)';
form2.chart11.Series[2].title:='H(масс)';

form2.chart12.Series[0].title:='S(эфф)';
form2.chart12.Series[1].title:='S(эксп)';
form2.chart12.Series[2].title:='S(масс)';
    form2.Chart1.Series[7].clear;form2.Chart1.Series[7].tag:=8;
    form2.Chart9.Series[2].clear;form2.Chart9.Series[2].tag:=3;
    form2.Chart1.Series[7].title:='T(y1)_согл';
    form2.Chart9.Series[2].title:='y1(x1)_согл';
form3.gs.cells[1,0]:='t12';
form3.gs.cells[2,0]:='z1';
form3.gs.cells[3,0]:='z2';
form3.gs.cells[4,0]:='lng_z1';
form3.gs.cells[5,0]:='lng_z2';
form3.gs.cells[6,0]:='G1';
form3.gs.cells[7,0]:='H1';
form3.gs.cells[8,0]:='S1';

form3.gs.cells[9,0]:='x1';
form3.gs.cells[10,0]:='x2';
form3.gs.cells[11,0]:='lng_x1';
form3.gs.cells[12,0]:='lng_x2';
form3.gs.cells[13,0]:='G2';
form3.gs.cells[14,0]:='H2';
form3.gs.cells[15,0]:='S2';

form3.gs.cells[16,0]:='q1';
form3.gs.cells[17,0]:='q2';
form3.gs.cells[18,0]:='lng_q1';
form3.gs.cells[19,0]:='lng_q2';
form3.gs.cells[20,0]:='G3';
form3.gs.cells[21,0]:='H3';
form3.gs.cells[23,0]:='Gamma1(z1)';
form3.gs.cells[24,0]:='Gamma2(z1)';
form3.gs.cells[25,0]:='Gamma1(x1)';
form3.gs.cells[26,0]:='Gamma2(x1)';
form3.gs.cells[27,0]:='Gamma1(q1)';
form3.gs.cells[28,0]:='Gamma2(q1)';
form3.gs.rowcount:=N;
form3.gs.colcount:=29;
//после согласования
h:=1/n;
try
lambda1:=Table2k1.Value/table2tau1.Value;
except
lambda1:=1;
end;
 //??? Redlehrecurs(z[1],gl[2],n,a1,a2,a3);

for i:=1 to n-1 do begin
//эффективные мольные доли
    z1:=i*h;
    z2:=1-z1;
//экспериментальные мольные доли
x1:=z1/(z1+z2/k12);
x2:=z2/(z2+z1*k12);
//весовые доли
q1:=x1/(x1+x2/m12);
q2:=x2/(x2+x1*m12);
    t12:=fx1_(z1);
    form2.chart1.Series[1].AddXY(z1,t12);
    form2.chart1.Series[2].AddXY(x1,t12);
    form2.chart1.Series[3].AddXY(q1,t12);

    lng1z:=-ln(z1)+h10/r/t10*(1-t10/t12);//?
    lng2z:=-ln(z2)+h20/r/t20*(1-t20/t12);//?
    g1:=(z1*lng1z+z2*lng2z)*r*t12; //?
    lng1x:=-ln(x1)+h10/r/t10*(1-t10/t12);
    lng2x:=-ln(x2)+h20/r/t20*(1-t20/t12);
    g2:=(x1*lng1x+x2*lng2x)*r*t12;//избыточная энергия
    lng1q:=-ln(q1)+h10/r/t10*(1-t10/t12);
    lng2q:=-ln(q2)+h20/r/t20*(1-t20/t12);
    g3:=(q1*lng1q+q2*lng2q)*r*t12; //?
    form2.chart5.Series[0].AddXY(z1,g1);
    form2.chart5.Series[1].AddXY(x1,g2);
    form2.chart5.Series[2].AddXY(q1,g3);
    p_1:=p_antuan(t12,a1_ant,b1_ant,c1_ant);
    p_2:=p_antuan(t12,a2_ant,b2_ant,c2_ant);
 //   gg:=z2*p_2/z1/p_1/power(10,gl[1,i]-gg12);
 //   y1:=1/(1+gg);

{    gg:=x2*p_2*exp(lng2x-lng1x)/p_1/x1;  //???
    y1:=1/(1+gg);
    y1:=exp(lng1z)*z1*p_1/101.3;  }
    gamma1:=exp(lng1x);
    y1:=x1/101.3*p_1*gamma1/lambda1;
    form2.Chart1.Series[7].AddXY(y1,t12);
    form2.Chart9.Series[2].AddXY(z1,y1);

    hh1:=h10*z1+h20*z2;  //? h10, h20
    hh2:=h10*x1+h20*x2; //теплота плавления
    hh3:=h10*q1+h20*q2; //теплота плавления
    form2.chart11.Series[0].AddXY(x1,hh1);
    form2.chart11.Series[1].AddXY(z1,hh2);
    form2.chart11.Series[2].AddXY(x1,hh3);

    s1:=(hh1-g1)/t12;//энтропия
    s2:=(hh2-g2)/t12;//энтропия
    s3:=(hh3-g3)/t12;//энтропия
    form2.chart12.Series[0].AddXY(x1,s1);
    form2.chart12.Series[1].AddXY(z1,s2);
    form2.chart12.Series[2].AddXY(q1,s3);
form3.gs.cells[1,i]:=floattostr(t12);
form3.gs.cells[2,i]:=floattostr(z1);
form3.gs.cells[3,i]:=floattostr(z2);
form3.gs.cells[4,i]:=floattostr(lng1z);
form3.gs.cells[5,i]:=floattostr(lng2z);
form3.gs.cells[6,i]:=floattostr(g1);
form3.gs.cells[7,i]:=floattostr(hh1);
form3.gs.cells[8,i]:=floattostr(s1);

form3.gs.cells[9,i]:=floattostr(x1);
form3.gs.cells[10,i]:=floattostr(1-x1);
form3.gs.cells[11,i]:=floattostr(lng1x);
form3.gs.cells[12,i]:=floattostr(lng2x);
form3.gs.cells[13,i]:=floattostr(g2);
form3.gs.cells[14,i]:=floattostr(hh2);
form3.gs.cells[15,i]:=floattostr(s2);

form3.gs.cells[16,i]:=floattostr(q1);
form3.gs.cells[17,i]:=floattostr(1-q1);
form3.gs.cells[18,i]:=floattostr(lng1q);
form3.gs.cells[19,i]:=floattostr(lng2q);
form3.gs.cells[20,i]:=floattostr(g3);
form3.gs.cells[21,i]:=floattostr(hh3);
form3.gs.cells[22,i]:=floattostr(s3);
form3.gs.cells[23,i]:=floattostr(exp(lng1z));
form3.gs.cells[24,i]:=floattostr(exp(lng2z));
form3.gs.cells[25,i]:=floattostr(exp(lng1x));
form3.gs.cells[26,i]:=floattostr(exp(lng2x));
form3.gs.cells[27,i]:=floattostr(exp(lng1q));
form3.gs.cells[28,i]:=floattostr(exp(lng2q));
end;
{ setlength(y[1],n+1);
  setlength(y[2],n+1);
   setlength(y[3],n+1);
 form2.Chart4.Series[0].clear;
 p_1:=p_antuan(T10,a1_ant,b1_ant,c1_ant);
 p_2:=p_antuan(T20,a2_ant,b2_ant,c2_ant);
  for i:=1 to N-1 do begin
//T(y) p.283 Рид Р., Праусниц Дж., Т.Шервуд Свойства газов и жидкости
//y-эффективные мольные доля
  y[1,i]:=p_1*z[1,i]*(g[1,i]-gg12)/((g[2,i]-gg12)*(1-z[1,i])*p_2+(g[1,i]-gg12)*z[1,i]*p_1);
//экспериментальные мольные доли
  y[2,i]:=y[1,i]/(y[1,i]+(1-y[1,i])/tau12);
//массовые доли
  y[3,i]:=y[2,i]/(y[2,i]+m2/m1*(1-y[2,i]));
end;
g0:=t[1,1];
for i:=1 to N-1 do if g0>t[1,i] then begin g0:=t[1,i];k:=i; end;
  form2.chart1.Series[4].clear;
    form2.chart1.Series[5].clear;
      form2.chart1.Series[6].clear;
for i:=1 to k do begin
  form2.chart1.Series[4].AddXY(y[1,i],t[1,i]);  //?
  form2.chart1.Series[5].AddXY(y[2,i],t[1,i]);  //?
  form2.chart1.Series[6].AddXY(y[3,i],t[1,i]);  //?
end;
for i:=k to N-1 do begin
  form2.chart1.Series[4].AddXY(1-y[1,i],t[1,i]);  //?
  form2.chart1.Series[5].AddXY(1-y[2,i],t[1,i]);  //?
  form2.chart1.Series[6].AddXY(1-y[3,i],t[1,i]);  //?
end;
}
form3.ge.ColCount:=j+6;
form3.Show;
form2.Show;
end;
end;
procedure TForm1.menuN2_10Click(Sender: TObject);
var
    i,nm,m,nm1,nm2,n:integer;
    w,betta12,k1,k2,lambda1,lambda2,k12,lambda12,m12,x_az,zmin1,
    T_az,g1,g2,p_az,lng1,lng2,coef_a,coef_b,coef_c,coef_d,c,d,minx,minx2,l,x1_,
    tg0,g0,tg2,tg1,g1_l,w1_,q1_,u1_,u2_,minx1,minu1,ll,x2_,w2_,q2_,u2_g1_l,g2_l,lnx1,lnx2,w2,
    z0,w1,w0,gg,gg1,gg2,y1,y2,lgg1,lgg2,lnv1,lnv2,v1,v2,z1,z2,q1,q2,tau1,tau2
    :myreal;
    xm,xv,ym,yv,t:array[1..4]of masd;
    begin
//Фазовое равновесие жидкость- пар
if i3=0 then
//2
begin
 try
   a:=strtofloat(edta.text);
   b:=strtofloat(edtb.text);
 except
   a:=0;b:=1;
 end;
 n:=form1.Fn.Value;
 h:=(b-a)/n;
try
 tau1:=Table2tau1.Value; tau2:=Table2tau2.Value;
 k1:=Table2K1.Value/tau1; k2:=Table2K2.Value/tau2;
except
 k1:=1;k2:=1;tau1:=1;tau2:=1;
end;

 h1:=hk1*k1;h2:=hk2*k2;  //теплота испарения     ?????
 t1:=tk1;t2:=tk2;        //температура кипения

try
 k1:=strtofloat(edit5.Text);
 k2:=strtofloat(edit6.Text);
except
  k1:=Table2K1_az.Value;
  k2:=Table2K2_az.Value;
end;
try
 lambda1:=strtofloat(edit3.Text);
 lambda2:=strtofloat(edit4.Text);
except
 lambda1:=Table2Lambda1_az.Value;
 lambda2:=Table2Lambda2_az.Value;
// lambda1:=1; lambda2:=1;
end;
k1:=1;k2:=1;/////?????
 k12:=k1/k2;
 lambda12:=lambda1/lambda2;
 m12:=m1*k1/m2/k2;
 h10:=h1/lambda1;h20:=h2/lambda2;t10:=t1;t20:=t2;
//экспериментальные данные

m:=form4.table3.RecordCount;
if m<>0 then begin
form4.table3.First;
setlength(xm[1],m+1);
setlength(xm[2],m+1);
setlength(xv[1],m+1);
setlength(xv[2],m+1);
setlength(ym[1],m+1);
setlength(ym[2],m+1);
setlength(yv[1],m+1);
setlength(yv[2],m+1);
setlength(t[1],m+1);
setlength(t[2],m+1);
form2.Chart1.Series[0].clear;form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[0].title:='T(x1_мол.)_эксп.';
form2.Series3.pointer.visible:=true;
form2.Chart1.Series[16].clear;form2.Chart1.Series[16].tag:=17;
form2.Chart1.Series[16].title:='T(y1_мол.)_эксп.';
form2.Series77.pointer.visible:=true;
n1:=0;n2:=0;
with form4 do begin
for i:=1 to m do begin
if ((Table3X1mol.Value<>0)or (Table3X2mol.Value<>0))then
begin
   if (Table3X1mol.Value<>0)then begin
   table3.Edit;
   Table3X2mol.value:=1-Table3X1mol.Value;table3.post;end;
if Table3X2mol.value<>0 then begin
   table3.Edit;
   Table3X1mol.Value:=1-Table3X2mol.value;table3.post; end;
table3.Edit;
Table3X1mas.Value:=Table3X1mol.Value*m1/(Table3X1mol.Value*m1+Table3X2mol.value*m2);
Table3X2mas.value:=Table3X2mol.value*m2/(Table3X1mol.Value*m1+Table3X2mol.value*m2);
table3.post;
end else if ((Table3X1mas.Value<>0)or (Table3X2mas.Value<>0))then
begin
if (Table3X1mas.Value<>0)then begin
   table3.Edit;
   Table3X2mas.value:=1-Table3X1mas.Value;table3.post;end;
if Table3X2mas.value<>0 then begin
   table3.Edit;
   Table3X1mas.Value:=1-Table3X2mas.value;table3.post; end;
table3.Edit;
Table3X1mol.Value:=Table3X1mas.Value/m1/(Table3X1mas.Value/m1+Table3X2mas.value/m2);
Table3X2mol.value:=Table3X2mas.value/m2/(Table3X1mas.Value/m1+Table3X2mas.value/m2);
table3.post;
end;

xm[1,i]:=Table3X1mol.Value;
xm[2,i]:=Table3X2mol.value;
xv[1,i]:=Table3X1mas.Value;
xv[2,i]:=Table3X2mas.value;

if (Table3y1mol.Value<>0)or(Table3y2mol.Value<>0) then
begin
   if (Table3y1mol.Value<>0)then begin
   table3.Edit;
   Table3y2mol.value:=1-Table3y1mol.Value;table3.post;end;
if Table3y2mol.value<>0 then begin
   table3.Edit;
   Table3y1mol.Value:=1-Table3y2mol.value;table3.post; end;
table3.Edit;
Table3y1mas.Value:=Table3y1mol.Value*m1/(Table3y1mol.Value*m1+Table3y2mol.value*m2);
Table3y2mas.value:=Table3y2mol.value*m2/(Table3y1mol.Value*m1+Table3y2mol.value*m2);
table3.post;
end else if (Table3y1mas.Value<>0)or(Table3y2mas.Value<>0)then
begin
if (Table3y1mas.Value<>0)then begin
   table3.Edit;
   Table3y2mas.value:=1-Table3y1mas.Value;table3.post;end;
if Table3y2mas.value<>0 then begin
   table3.Edit;
   Table3y1mas.Value:=1-Table3y2mas.value;table3.post; end;
table3.Edit;
Table3y1mol.Value:=Table3y1mas.Value/m1/(Table3y1mas.Value/m1+Table3y2mas.value/m2);
Table3y2mol.value:=Table3y2mas.value/m2/(Table3y1mas.Value/m1+Table3y2mas.value/m2);
table3.post;
end;

ym[1,i]:=Table3y1mol.Value;
ym[2,i]:=Table3y2mol.value;
yv[1,i]:=Table3y1mas.Value;
yv[2,i]:=Table3y2mas.value;
table3.Edit;
if (Table3T1C.Value<>0) OR (Table3T1K.Value<>0 )then begin
   inc(nm1);
   if (Table3T1C.Value<>0) then Table3T1K.Value:=Table3t1c.Value+Kelvin
   else Table3T1c.Value:=Table3t1k.Value-Kelvin;
   t[1,i]:=Table3T1K.Value;
   form2.Chart1.Series[0].AddXY(xm[1,i],t[1,i]);
 //  form2.Chart1.Series[1].AddXY(xv[1,i],t[1,i]);
   form2.Chart1.Series[16].AddXY(ym[1,i],t[1,i]);
 //  form2.Chart1.Series[3].AddXY(yv[1,i],t[1,i]);
   end;
if (Table3T2C.Value<>0)or(Table3T2K.Value<>0 ) then begin
   inc(nm2);
   if Table3T2c.Value<>0 then Table3T2K.Value:=Table3t2c.Value+Kelvin
   else Table3T2c.Value:=Table3t2k.Value-Kelvin;
   t[2,i]:=Table3T2K.Value;
   form2.Chart1.Series[0].AddXY(xm[1,i],t[2,i]);
  // form2.Chart1.Series[1].AddXY(Xv[1,i],t[2,i]);
   form2.Chart1.Series[16].AddXY(ym[1,i],t[2,i]);
 //  form2.Chart1.Series[3].AddXY(yv[1,i],t[2,i]);
   end;
table3.post;
table3.Next;
end;
end;
form3.RG.ColCount:=9;
form3.RG.RowCount:=n+1;
form3.RG.Cells[0,0]:='i';
form3.RG.Cells[1,0]:='X1m';
form3.RG.Cells[2,0]:='X2m';
form3.RG.Cells[3,0]:='T1';
form3.RG.Cells[4,0]:='T2';
form3.RG.Cells[5,0]:='X1v';
form3.RG.Cells[6,0]:='X2v';
for i:=1 to m do begin
form3.RG.Cells[0,i]:=inttostr(i);
form3.RG.Cells[1,i]:=floattostr(xm[1,i]);
form3.RG.Cells[2,i]:=floattostr(xm[2,i]);
form3.RG.Cells[5,i]:=floattostr(t[1,i]);
form3.RG.Cells[6,i]:=floattostr(t[2,i]);
form3.RG.Cells[7,i]:=floattostr(xv[1,i]);
form3.RG.Cells[8,i]:=floattostr(xv[2,i]);
end;
end;
//обратный ход
//Коган В.Б. Азеотропная и экстрактивная ректификация стр. 220, 215
//x_az, T_az, P_az, P1_0, P2_0->A,B по модели Ван-Лаара->
//lg(G1),lg(G2)
try
 x_az:=strtofloat(edit1.Text);
except
  x_az:=strtofloat(inputbox('Введите точку азеотропии в эфф.м.д.','',floattostr(zmin1)));
end;
try
 T_az:=strtofloat(edit2.Text);
except
 T_az:=fx1_(x_az);
end;
if x_az=0 then begin
//поиск минимума
    gg:=1; z0:=0;w0:=1;zmin1:=-1;
    for i:=1 to n-1 do begin
    z1:=a+i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);

    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    w1:=math.Log10(exp(lng1-lng2));
    if w1*gg<0 then begin
       zmin1:=z1-w1*(z0-z1)/(w0-w1);
    end;
    gg:=w1;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    z0:=z1; w0:=w1;
    end;
    t12:=fx1_(zmin1);
if zmin1=-1 then begin
showmessage('Нет точки минимума!');exit;
end;
x_az:=zmin1;
t_az:=t12;
end;

table2.Edit;
Table2X1_az.Value:=x_az;
Table2T_az.Value:=t_az;
table2.Post;
showmessage('x_az='+floattostr(x_az)+' t_az='+floattostr(t_az));
  form2.chart1.Series[4].clear;form2.chart1.Series[4].tag:=5;
  form2.chart1.Series[5].clear;form2.chart1.Series[5].tag:=6;
  form2.chart1.Series[6].clear;form2.chart1.Series[6].tag:=7;
  form2.chart1.Series[7].clear;form2.chart1.Series[7].tag:=8;
  form2.chart1.Series[8].clear;form2.chart1.Series[8].tag:=9;
  form2.chart1.Series[9].clear;form2.chart1.Series[9].tag:=10;

form2.Chart1.Series[4].Title:='Т1(z1)эфф';
form2.Chart1.Series[5].Title:='Т2(z1)эфф';
form2.Chart1.Series[6].Title:='T1(x1)эксп';
form2.Chart1.Series[7].Title:='Т2(x1)эксп';
form2.Chart1.Series[8].Title:='T1(q1)масс';
form2.Chart1.Series[9].Title:='T2(q1)масс';

 form2.Chart9.Series[0].clear; form2.Chart9.Series[0].tag:=1;
 form2.Chart9.Series[1].clear; form2.Chart9.Series[1].tag:=2;
 form2.Chart9.Series[2].clear; form2.Chart9.Series[2].tag:=3;
 form2.Chart9.Series[3].clear; form2.Chart9.Series[3].tag:=4;
 form2.Chart9.Series[0].title:='y=x';
 form2.Chart9.Series[1].title:='Y1(x)_эфф';
 form2.Chart9.Series[2].title:='Y1(x)_эксп';
 form2.Chart9.Series[3].title:='Y1(x)_масс.';
 form2.chart1.Series[1].clear; form2.Chart1.Series[1].tag:=2;
 form2.chart1.Series[2].clear; form2.Chart1.Series[2].tag:=3;
 form2.chart1.Series[3].clear; form2.Chart1.Series[3].tag:=4;
 form2.chart1.Series[1].title:='T(z1)эфф.';
 form2.chart1.Series[2].title:='T(x1)эксп.';
 form2.chart1.Series[3].title:='T(q1)масс.';

 form2.chart2.Series[0].clear; form2.Chart1.Series[0].tag:=1;
 form2.chart2.Series[1].clear; form2.Chart1.Series[1].tag:=2;
 form2.chart2.Series[2].clear; form2.Chart1.Series[2].tag:=3;
    form3.gs.Cells[0,0]:='i';
    form3.gs.Cells[1,0]:='z1';
    form3.gs.Cells[2,0]:='z2';
    form3.gs.Cells[3,0]:='x1';
    form3.gs.Cells[4,0]:='x2';
    form3.gs.Cells[5,0]:='q1';
    form3.gs.Cells[6,0]:='q2';
    form3.gs.Cells[7,0]:='T12,K';
    form3.gs.Cells[8,0]:='T12,C';
    form3.gs.Cells[9,0]:='w1';
    form3.gs.Cells[10,0]:='w2';
    form3.gs.RowCount:=n;
    form3.gs.ColCount:=11;
{расчет по модели фазового равновесия жидкость-твердое}
  //расчет коэффициентов по модели Редлиха-Кистера
    lng1:=-ln(zmin1)+h10/r/t10*(1-t10/t12);  //?
    lng2:=-ln(1-zmin1)+h20/r/t20*(1-t20/t12);//?
    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    d:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;
    minx:=1;minx1:=1;minx2:=1; minu1:=1;
//обратный ход
l:=0;ll:=0;
//setlength(y[1],n+1);
//setlength(y[2],n+1);
  x1_:=1;x2_:=1; w1_:=1;w2_:=1;q1_:=1;q2_:=1;u1_:=1;u2_:=1;
  for i:=1 to n-1 do begin
    z2:=a+i*h;
    z1:=1-z2;
    lng1:=sqr(z2)*(d+c*(3*z1-z2));
    lng2:=sqr(z1)*(d+c*(z1-3*z2));
    g1_l:=power(10,lng1);g2_l:=power(10,lng2); //?
    //обратный ход в эффективных долях
    t12:=fx1_(z1);
    form2.Chart1.Series[1].AddXY(z1,t12);
   // lnx1:=h10/r/t10*(1-t10/t12)-ln(g1_l);
   // lnx2:=h20/r/t20*(1-t20/t12)-ln(g2_l);
    lnx1:=h10/r/t10*(1-t10/t12)-lng1;
    lnx2:=h20/r/t20*(1-t20/t12)-lng2;
    w1:=exp(lnx1);  //левая ветвь
    w2:=exp(lnx2);  //правая ветвь
    if (w1>=a) and (w1<=b) {and (w1>=w1_)} then begin
    form2.Chart1.Series[4].AddXY(w1,t12);
  //? l:=poisk_temp(t12,t[1],n-1);
   //  y[1,l]:=w1;
    end;
    if (w2>=a) and (w2<=b) {and (w2<=w2_)} then //? w2>=w2_
    begin
    form2.Chart1.Series[5].AddXY(1-w2,t12);
    //? ll:=poisk_temp(t12,t[1],n-1);
    // y[2,ll]:=1-w2;
    end;
    w1_:=w1;w2_:=w2;
    if abs(w1-(1-w2))<=minx then begin
    minx:=abs(w1-(1-w2));
    g0:=w1;
    tg0:=t12;
    end;
     //экспериментальные мольные доли
    z0:=z1/(z1+(1-z1)/k12);
    form2.Chart1.Series[2].AddXY(z0,t12);

    x1:=w1/(w1+(1-w1)/k12); //?
//? x2:=w2/((1-w2)/k12+w2); //?
    x2:=w2/((1-w2)*k12+w2); //?
    if (x1>=a) and (x1<=b){ and (x1>=x1_)} then
    form2.Chart1.Series[6].AddXY(x1,t12);
    if (x2>=a) and (x2<=b) {and (x2<=x2_)} then  //? (x2>=x2_)
    form2.Chart1.Series[7].AddXY(1-x2,t12);
    //if x1<minx1 then  form2.Chart1.Series[5].AddXY(x1,t12);
    //if 1-x2>minx1 then form2.Chart1.Series[6].AddXY(1-x2,t12);
    x1_:=x1;x2_:=x2;
    if abs(x1-(1-x2))<=minx1 then begin
    minx1:=abs(x1-(1-x2));
    g1:=x1;
    tg1:=t12;
    end;
    //массовые доли
    z0:=z0/(z0+(1-z0)/m12);
    form2.Chart1.Series[3].AddXY(z0,t12);

    q1:=x1/(x1+(1-x1)/m12);
   // q2:=x2/((1-x2)/m12+x2); //?
    q2:=x2/((1-x2)*m12+x2); //?
    if (q1>=a) and (q1<=b) {and (q1>=q1_)} then
    form2.Chart1.Series[8].AddXY(q1,t12);
    if (q2>=a) and (q2<=b) {and (q2<=q2_)} then   //? (q2>=q2_)
    form2.Chart1.Series[9].AddXY(1-q2,t12);
    q1_:=q1;q2_:=q2;
    if abs(q1-(1-q2))<=minx2 then begin
    minx2:=abs(q1-(1-q2));
    g2:=q1;
    tg2:=t12;
    end;
    form3.gs.Cells[0,i]:=inttostr(i);
    form3.gs.Cells[1,i]:=format('%8.4f',[z1]);
    form3.gs.Cells[2,i]:=format('%8.4f',[z2]);
    form3.gs.Cells[3,i]:=format('%8.4f',[x1]);
    form3.gs.Cells[4,i]:=format('%8.4f',[x2]);
    form3.gs.Cells[5,i]:=format('%8.4f',[q1]);
    form3.gs.Cells[6,i]:=format('%8.4f',[q2]);
    form3.gs.Cells[7,i]:=format('%8.4f',[t12]);
    form3.gs.Cells[8,i]:=format('%8.4f',[t12-kelvin]);
    form3.gs.Cells[9,i]:=format('%8.4f',[w1]);
    form3.gs.Cells[10,i]:=format('%8.4f',[w2]);
   end;

nm:=form3.rt.rowcount;
form3.RT.Cells[0,nm]:='left:zmin=';form3.RT.Cells[1,nm]:=floattostr(g0);
form3.RT.Cells[0,nm+1]:='Tmin,K=';form3.RT.Cells[1,nm+1]:=floattostr(tg0);
form3.RT.Cells[0,nm+2]:='Tmin,C=';form3.RT.Cells[1,nm+2]:=floattostr(tg0-kelvin);
form3.RT.Cells[0,nm+3]:='xmin=';form3.RT.Cells[1,nm+3]:=floattostr(g1);
form3.RT.Cells[0,nm+4]:='Tmin,K=';form3.RT.Cells[1,nm+4]:=floattostr(tg1);
form3.RT.Cells[0,nm+5]:='Tmin,C=';form3.RT.Cells[1,nm+5]:=floattostr(tg1-kelvin);
form3.RT.Cells[0,nm+6]:='qmin=';form3.RT.Cells[1,nm+6]:=floattostr(g2);
form3.RT.Cells[0,nm+7]:='Tmin,K=';form3.RT.Cells[1,nm+7]:=floattostr(tg2);
form3.RT.Cells[0,nm+8]:='Tmin,C=';form3.RT.Cells[1,nm+8]:=floattostr(tg2-kelvin);
 g1:=g0/(g0+(1-g0)/k12);
 g2:=g1/(g1+(1-g1)/m12);
 tg1:=fx1_(g1);
 tg2:=fx1_(g2);
form3.RT.Cells[0,nm+9]:='right:zmin=';form3.RT.Cells[1,nm+9]:=floattostr(g0);
form3.RT.Cells[0,nm+10]:='Tmin,K=';form3.RT.Cells[1,nm+10]:=floattostr(tg0);
form3.RT.Cells[0,nm+11]:='Tmin,C=';form3.RT.Cells[1,nm+11]:=floattostr(tg0-kelvin);
form3.RT.Cells[0,nm+12]:='xmin=';form3.RT.Cells[1,nm+12]:=floattostr(g1);
form3.RT.Cells[0,nm+13]:='Tmin,K=';form3.RT.Cells[1,nm+13]:=floattostr(tg1);
form3.RT.Cells[0,nm+14]:='Tmin,C=';form3.RT.Cells[1,nm+14]:=floattostr(tg1-kelvin);
form3.RT.Cells[0,nm+15]:='qmin=';form3.RT.Cells[1,nm+15]:=floattostr(g2);
form3.RT.Cells[0,nm+16]:='Tmin,K=';form3.RT.Cells[1,nm+16]:=floattostr(tg2);
form3.RT.Cells[0,nm+17]:='Tmin,C=';form3.RT.Cells[1,nm+17]:=floattostr(tg2-kelvin);
form3.RT.rowcount:=nm+18;
form3.PageControl1.ActivePage:=form3.TabSheet4;
form3.PageControl1.TabIndex:=3; form3.show;
form2.PageControl1.ActivePage:=form2.TabSheet1;
form2.PageControl1.TabIndex:=0;form2.Show;
form2.show;
form3.Show;
end;

end;

procedure TForm1.Mn_helpClick(Sender: TObject);
begin
   shellexecute(form1.Handle,'open','myhelp.chm',nil,nil,1);
end;

procedure TForm1.menuN2_15Click(Sender: TObject);
var flag,flag1:boolean;
    i,j,m,nk:integer;
    a1_lg,b1_lg,c1_lg,d1_lg,
    a2_lg,b2_lg,c2_lg,d2_lg,
    c,lgg1,lgg2,k1,k2,l12,l1,l2,
    lambda1,lambda2,k12,lambda12,m12,gg1,gg2,
    betta,betta1,betta2,tau1,tau2,
    g1,g2,p10_fp,p20_fp,t10_fp,t20_fp,lng1,lng2,
    epss,zmin2,delta,logg12,
    sigma,ht,z1,z2,d,zmin1,g0,ge,lgG12,asd,r0,r1,s1,s2 :myreal;
    old:string;
    a:masd;
z,t,tr,g,gl:array[1..2]of masd;

begin
//Расчет температуры вспышки
//x1*g1*P1/P1_0_fp+x2*g2*P2/P2_0_fp=1
//log P1=A1-B1/(T+C1)
//log P2=A2-B2/(T+C2)
if i3=0 then
//2
begin
try
 //tau1:=Table2tau1.Value; tau2:=Table2tau2.Value;
 //k1:=Table2K1.Value/tau1; k2:=Table2K2.Value/tau2;
 k1:=Table2K1.Value; k2:=Table2K2.Value;
  except
 //k1:=Table2K1.Value;
 //k2:=Table2K2.Value;
 k1:=1;k2:=1;
end;
try
 lambda1:=Table2Lambda1.Value;
 lambda2:=Table2Lambda2.Value;
 except
 lambda1:=1; lambda2:=1;
end;
 k12:=k1/k2;
 lambda12:=lambda1/lambda2;
 m12:=m1*k1/m2/k2;
 t10:=tk1;t20:=tk2;        //температура кипения в К
 try
old:=table2.Bookmark;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
table1.FindKey([i1]);
 t10_fp:=Table1T_fp.Value;
 a1_lg:=Table1A_lg.Value;
 b1_lg:=Table1B_lg.Value;
 c1_lg:=Table1C_lg.Value;
 d1_lg:=Table1D_lg.Value;
table1.FindKey([i2]);
 t20_fp:=Table1T_fp.Value;
 a2_lg:=Table1A_lg.Value;
 b2_lg:=Table1B_lg.Value;
 c2_lg:=Table1C_lg.Value;
 d2_lg:=Table1D_lg.Value;
table1.FindKey([i1]);
table2.Bookmark:=old;
 except
 t10_fp:=strtofloat(inputbox('Ввод данных','Введите температуру вспышки 1-го компонента, С',floattostr(t10-kelvin)))+kelvin;
 t20_fp:=strtofloat(inputbox('Ввод данных','Введите температуру вспышки 2-го компонента, С',floattostr(t20-kelvin)))+kelvin;
 end;
 //температура вспышки
 h10:=hk1*k1;h20:=hk2*k2;
 n:=form1.Fn.Value;   m:=n;
 nk:=form4.table3.recordcount;//
 flag1:=false;
// if n=0 then begin
  n:=form1.Fn.Value;h:=1/n;n:=n-1;flag1:=true;
  //end;
//термодинамическое согласование жидкость-твердое
h10:=hp1/lambda1;h20:=hp2/lambda2;
    t10:=tp1;t20:=tp2;
setlength(g[1],n+1);
setlength(g[2],n+1);
setlength(z[1],n+1);
setlength(t[1],n+1);
setlength(tr[1],n+1);
setlength(tr[2],n+1);
setlength(z[2],nk+1);
setlength(t[2],nk+1);
setlength(gl[1],n+1);
for i:=1 to n do begin
    z[1,i]:=i*h;
    t[1,i]:=fx1_(z[1,i]);
end;

 form4.table3.first;
 form2.Chart1.Series[0].clear;
 form2.Chart1.Series[0].title:='x1_mol(T)-эксп.';
 form2.Chart1.Series[0].tag:=1;
 form2.chart1.Series[1].clear;
 form2.Chart1.Series[1].title:='x2_mol(T)-эксп.';
 form2.chart1.Series[1].tag:=2;
 form3.gr.colcount:=5;
 form3.gr.rowcount:=nk+1;
    form3.GR.Cells[0,0]:='i';
    form3.GR.Cells[0,1]:='x1, mol';
    form3.GR.Cells[0,2]:='x2, mol';
    form3.GR.Cells[0,3]:='T,K';
    form3.GR.Cells[0,4]:='T,C';
    for i:=1 to nk do begin
    z[2,i]:=form4.Table3X1mol.Value;
    if form4.Table3T1K.Value<>0 then
    t[2,i]:=form4.Table3T1K.Value
    else t[2,i]:=form4.Table3T1c.Value+kelvin;
      form2.Chart1.Series[0].AddXY(z[2,i],t[2,i]-kelvin);
      form2.Chart1.Series[1].AddXY(1-z[2,i],t[2,i]-kelvin);
    form4.Table3.Next;
    form3.GR.Cells[0,i]:=inttostr(i);
    form3.GR.Cells[1,i]:=floattostr(z[2,i]);
    form3.GR.Cells[2,i]:=floattostr(1-z[2,i]);
    form3.GR.Cells[3,i]:=floattostr(t[2,i]);
    form3.GR.Cells[4,i]:=floattostr(t[2,i]-kelvin);
    end;

form3.rt.colcount:=11;
form3.rt.rowcount:=n+1;
    form2.Chart2.Series[0].clear;
    form2.Chart2.Series[1].clear;
    form2.Chart2.Series[2].clear;
    form2.Chart2.Series[3].clear;
    form2.Chart2.Series[4].clear;
    form2.Chart2.Series[0].title:='ln gamma1(z1)';
    form2.Chart2.Series[1].title:='ln gamma2(z1)';
    form2.Chart2.Series[2].title:='lg gamma1/gamma2(z1)';
    form2.Chart2.Series[3].title:='gamma1(z1)';
    form2.Chart2.Series[4].title:='gamma2(z1)';

    form2.Chart2.Series[0].tag:=1;
    form2.Chart2.Series[1].tag:=2;
    form2.Chart2.Series[2].tag:=3;
    form2.Chart2.Series[3].tag:=4;
    form2.Chart2.Series[4].tag:=5;
    form3.rt.cells[0,0]:='i';
    form3.rt.cells[1,0]:='z1';
    form3.rt.cells[2,0]:='z2';
    form3.rt.cells[3,0]:='T12,K';
    form3.rt.cells[4,0]:='T12,C';
    form3.rt.cells[5,0]:='ln g1';
    form3.rt.cells[6,0]:='ln g2';
    form3.rt.cells[7,0]:='Ge';
    form3.rt.cells[8,0]:='lg g1/g2';
    form3.rt.cells[9,0]:='g1';
    form3.rt.cells[10,0]:='g2';
    zmin1:=-1;
    g0:=1;flag:=true;

    for i:=1 to n do begin
    z1:=z[1,i];z2:=1-z1;//z1:=i*h;z2:=1-z1;
    try
    //t[1,i]:=fx1_(z1);
    t12:=t[1,i];
    lng1:= -ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:= -ln(z2)+h20/r/t20*(1-t20/t12);
    lgG12:=math.Log10(exp(lng1-lng2));
    z[1,i]:=z1;
    g[1,i]:=exp(lng1);
    g[2,i]:=exp(lng2);
    gl[1,i]:=lgG12;
    if lgG12*g0<0 then begin
       if flag then begin
       i1:=i;i2:=i-1;
       asd:=(z[1,i2]-z[1,i1])/(gl[1,i2]-gl[1,i1]);
       zmin1:=(-asd*gl[1,i1]+z[1,i1]);
      // zmin1:=z1;
        flag:=false; end;
    end;
    g0:=lgG12;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    form3.rt.cells[0,i]:=inttostr(i);
    form3.rt.cells[1,i]:=format('%5.4f',[z1]);
    form3.rt.cells[2,i]:=format('%5.4f',[z2]);
    form3.rt.cells[3,i]:=format('%5.4f',[t12]);
    form3.rt.cells[4,i]:=format('%5.4f',[t12-kelvin]);
    form3.rt.cells[5,i]:=format('%8.6f',[lng1]);
    form3.rt.cells[6,i]:=format('%8.6f',[lng2]);
    form3.rt.cells[7,i]:=format('%8.6f',[ge]);
    form3.rt.cells[8,i]:=format('%8.6f',[lgG12]);
    form3.rt.cells[9,i]:=format('%8.6f',[g[1,i]]);
    form3.rt.cells[10,i]:=format('%8.6f',[g[2,i]]);
    form2.Chart2.Series[0].AddXY(z1,lng1);
    form2.Chart2.Series[1].AddXY(z1,lng2);
    form2.Chart2.Series[2].AddXY(z1,lgg12);
    form2.Chart2.Series[3].AddXY(z1,g[1,i]);
    form2.Chart2.Series[4].AddXY(z1,g[2,i]);
    end;
//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
z1:=zmin1;r1:=1;  //exit;
epss:=0.01;zmin2:=z1; r0:=0;  j:=0;
 form2.chart2.Series[3].clear;
 form2.chart2.Series[3].tag:=5;
while (abs(r1)>epss)and(j<=50000) do begin
    //интегралы
 g1:=fr3(z1,a,4);  inc(j);
 s1:=0;s2:=0; flag:=true;
 lgg12:=fr3(z[1,1],a,4)-g1;
 for i:=2 to n do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
 if (lgg12>0)and(g0>0) then begin
        //if flag then begin
        zmin2:=z[1,i]+h/2;
        flag:=false;
       // end;
 end;
 lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);
 if r1>0 then z1:=z1+h/2 else z1:=z1-h/2;
 if (abs(r1)<=0.05) and (abs(z1-r0)<=h/2) then break;
 r0:=z1;
end;
 if (abs(r1)<=epss*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
 //коэффициенты для ln gamma1 и ln gamma2
 setlength(gl[2],n+1);
   for i:=1 to n do gl[2,i]:=gl[1,i]-g1;
   setlength(a,5);
   polynrecurs(z[1],gl[2],n,4,a,r1);
   d:=-a[4]/16;
   c:=-(a[3]-24*d)/6;
   b:=-(a[2]+10*d-6*c)/2;
   //if abs((b-c+d)-a[1])>eps then exit;
   for i:=1 to n do
   begin
   z1:=z[1,i];
   lgg1:=sqr(1-z1)*(b+c*(4*z1-1)+d*(12*sqr(z1)-8*z1+1));
   lgg2:=sqr(z1)*(b+c*(4*z1-3)+d*(12*sqr(z1)-16*z1+5));
   g[1,i]:=power(10,lgg1);
   g[2,i]:=power(10,lgg2);
   end;
 g0:=power(10,g1);
 //проверка после согласования
 r1:=1;
 //интегралы
 s1:=0;s2:=0;
 lng1:=ln(g[1,1]);
 lng2:=ln(g[2,1]);
 gg1:=exp(lng1);gg2:=exp(lng2);
 lgg12:=log10(gg1/gg2);
 for i:=2 to n do
 begin
 lng1:=ln(g[1,i]);
 lng2:=ln(g[2,i]);
 gg1:=exp(lng1);gg2:=exp(lng2);
 g0:=log10(gg1/gg2);
 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
  lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);

 if (abs(r1)>=epss*5)then begin
  showmessage('термодинамически не согласовано');
  exit;
 end;

 form2.Chart2.Series[5].clear;
 form2.Chart2.Series[5].tag:=4;
 form2.Chart2.Series[5].title:='Ж-Т Lg (gamma1/gamma2)-согласованное';
 form2.chart2.Series[6].clear;
 form2.chart2.Series[6].tag:=7;
 form2.Chart2.Series[6].title:='Ж-Т Ln (gamma1)';
 form2.chart2.Series[7].clear;
 form2.chart2.Series[7].tag:=8;
 form2.Chart2.Series[7].title:='Ж-Т Ln (gamma2)';
 form2.chart2.Series[8].clear;
 form2.chart2.Series[8].tag:=9;
 form2.Chart2.Series[8].title:='Ж-Т Lg (gamma1/gamma2)';

    form3.TS.Cells[1,0]:='z1';
    form3.TS.Cells[2,0]:='Ж-Т gamma1';
    form3.TS.Cells[3,0]:='Ж-Т gamma2';
    form3.TS.Cells[4,0]:='Ж-Т Lg (gamma1/gamma2)';
    form3.TS.Cells[5,0]:='Ж-Т Ln gamma1';
    form3.TS.Cells[6,0]:='Ж-Т Ln gamma2';
    form3.TS.ColCount:=7;
    form3.TS.rowCount:=n+1;

 for i:=1 to n do begin
 z1:=z[1,i];
 form2.Chart2.Series[5].AddXY(z[1,i],gl[2,i]);
 form2.Chart2.Series[6].AddXY(z[1,i],ln(g[1,i]));
 form2.Chart2.Series[7].AddXY(z[1,i],ln(g[2,i]));
 form2.Chart2.Series[8].AddXY(z[1,i],log10(g[1,i]/g[2,i]));
 form3.TS.Cells[1,i]:=floattostr(z1);
    form3.TS.Cells[2,i]:=floattostr(g[1,i]);
    form3.TS.Cells[3,i]:=floattostr(g[2,i]);
    form3.TS.Cells[4,i]:=floattostr(gl[2,i]);
    form3.TS.Cells[5,i]:=floattostr(ln(g[1,i]));
    form3.TS.Cells[6,i]:=floattostr(ln(g[2,i]));
 end;
 //температура вспышки
  t10:=tk1;t20:=tk2;        //температура кипения
  h10:=hk1*k1;h20:=hk2*k2;

 if t20_fp>t10_fp
 then begin t0:=t10_fp-50; t1:=t20_fp+50; end
 else begin t0:=t20_fp-50; t1:=t10_fp+50; end;
 ht:=(t1-t0)/m;
 //try
 //p10_fp:=exp(-a1_lg/t10_fp+b1_lg*ln(T10_fp)+C1_lg*t10_fp+d1_lg);
 //p20_fp:=exp(-a2_lg/t20_fp+b2_lg*ln(T20_fp)+C2_lg*t20_fp+d2_lg);
 //except
 p10_fp:=p_antuan(T10_fp,a1_ant,b1_ant,c1_ant);
 p20_fp:=p_antuan(T20_fp,a2_ant,b2_ant,c2_ant);
 //end;
 form2.chart1.Series[3].clear;
 form2.chart1.Series[3].tag:=4;
 form2.chart1.Series[3].title:='T_fp(z1) Ж-Т';
 form2.chart2.Series[9].clear;
 form2.chart2.Series[9].tag:=10;
 form2.chart2.Series[9].title:='gamma1(z1) Ж-Т';
 form2.chart2.Series[10].clear;
 form2.chart2.Series[10].tag:=11;
 form2.chart2.Series[10].title:='gamma2(z1) Ж-Т';
 form3.tf.cells[0,0]:='i';
 form3.tf.cells[1,0]:='z1';
 form3.tf.cells[2,0]:='z2';
 form3.tf.cells[3,0]:='g1';
 form3.tf.cells[4,0]:='g2';
 form3.tf.cells[5,0]:='ln g1';
 form3.tf.cells[6,0]:='ln g2';
 form3.tf.cells[7,0]:='P1';
 form3.tf.cells[8,0]:='P2';
 form3.tf.cells[9,0]:='t12,K';
 form3.tf.cells[10,0]:='t12,C';
 form3.tf.cells[11,0]:='t12,delta';
 form3.tf.rowcount:=n+1;
 form3.tf.ColCount:=12;
 for i:=1 to n do begin
    z1:=z[1,i];
    z2:=1-z1;
    g1:=exp(ln(g[1,i])/k1); //!!!
    g2:=exp(ln(g[2,i])/k2);  //!!!
    flag:=false;
    for j:=0 to m do begin
    t12:=t0+j*ht;
   // t12:=fx1_(z1);
// try
   //по эмпирической формуле
   // p1:=exp(-a1_lg/t12+b1_lg*ln(T12)+C1_lg*t12+d1_lg);
   // p2:=exp(-a2_lg/t12+b2_lg*ln(T12)+C2_lg*t12+d2_lg);
// except
    p1:=p_antuan(t12,a1_ant,b1_ant,c1_ant);
    p2:=p_antuan(t12,a2_ant,b2_ant,c2_ant);
// end;


    d:=abs(1-(z1*g1*p1/p10_fp+z2*g2*p2/p20_fp));
    if d<=epss then begin flag:=true; break;  end;
    end;
   if flag then  tr[1,i]:=t12 else tr[1,i]:=tr[1,i-1];
    form2.chart1.Series[3].AddXY(z1,t12-kelvin);
    form2.chart2.Series[9].AddXY(z1,g1);
    form2.chart2.Series[10].AddXY(z1,g2);
      form3.tf.cells[0,i]:=floattostr(i);
      form3.tf.cells[1,i]:=floattostr(z1);
      form3.tf.cells[2,i]:=floattostr(z2);
      form3.tf.cells[3,i]:=floattostr(g[1,i]);
      form3.tf.cells[4,i]:=floattostr(g[2,i]);
      form3.tf.cells[5,i]:=floattostr(ln(g[1,i]));
      form3.tf.cells[6,i]:=floattostr(ln(g[2,i]));
      form3.tf.cells[7,i]:=floattostr(p1);
      form3.tf.cells[8,i]:=floattostr(p2);
      form3.tf.cells[9,i]:=floattostr(t12);
      form3.tf.cells[10,i]:=floattostr(t12-kelvin);
      form3.tf.cells[11,i]:=floattostr(d);
end;
 //погрешность
        s1:=0;k:=0;  s2:=0;
   for i:=1 to nk do begin
      J:=poisk_mas_abs(z[2,i],z[1],n);
      if (j>0) then begin
        inc(k);
        s1:=s1+sqr(tr[1,j]-t[2,i]);
        s2:=s2+abs(tr[1,j]-t[2,i]);
      end;
   end;
   if k>0 then  begin
   sigma:=sqrt(s1/(k-2));
   showmessage('sigma='+floattostr(sigma)+
   ' delta='+floattostr(s2/k));
   end;
form2.show;
form3.Show;
end;
end;
procedure TForm1.menuN2_13Click(Sender: TObject);
var i:integer;
begin
try
    form2.Chart9.Series[1].clear;form2.Chart9.Series[1].tag:=2;
    form2.Chart9.Series[0].clear;form2.Chart9.Series[0].tag:=1;
    form2.Chart9.Series[1].title:='y1(x1)';
    form2.Chart9.Series[0].title:='y=x1';
for i:=1 to n-1 do
begin
  if y[1,i]<=y[3,i] then form2.Chart9.Series[1].AddXY(y[3,i],y[1,i]);
  if y[2,i]>=y[4,i] then form2.Chart9.Series[1].AddXY(y[4,i],y[2,i]);
  form2.Chart9.Series[0].AddXY(y[4,i],y[4,i]);
  form2.Chart9.Series[0].AddXY(y[3,i],y[3,i]);
end;
except
end;
end;

procedure TForm1.menuN2_14Click(Sender: TObject);
var hpl,hplr,h10,h20,x1,k1,k2,r1,r2,s1,s2:myreal;
begin
    hpL:=strtofloat(inputbox('Ввод данных','Введите теплоту плавления из эксперимента в Дж/г','0'));
    r1:=strtofloat(inputbox('Ввод данных','Введите поправку для коэффициента ассоциации в жидкости r1','0'));
    h10:=hp1;
    h20:=hp2;
    try
    k1:=Table2K1.value;
    k2:=Table2K2.value;
    x1:=Table2X1.Value;
    except
     showmessage('Нет данных!');exit;
    end;
    x2:=1-x1;
    r2:=hpl/x2/h20-(k1+r1)*x1*h10/x2/h20-k2;
    table2.Edit;
    Table2R1.Value:=r1;
    Table2R2.Value:=r2;
    table2.Post;
    hplr:=(k1+r1)*x1*h10+(k2+r2)*x2*h20;
    showmessage('s1='+floattostr(k1+r1)+' s2='+floattostr(k2+r2)+
    ' H_теор='+floattostr(hplr));
end;

procedure TForm1.popupN2Click(Sender: TObject);
var i,n,nk, pmin1,pmin:integer;
s1,s2,t1,t2,h1,h2,p1,p2,p3,t00,p00,pp,p0,a0,a1,b0,b1,b2,
a_ant,b_ant,c_ant,p20,cc1,cc2,cc3,p_tr,tt,v_tr,hh,pa,pb,ph,
vv,t0_1,t0_2,t03,hh1,hh2,hh3,mm,v_tr1,v_tr2,v_tr3,ca,cb,
a_lg,b_lg,c_lg,d_lg,a_sg,b_sg,c_sg,d_sg,h_kr,h_tr,t_kr,t_tr,p_kr,v_kr,z_kr,p_atm,
h4,p1p,p1k,h1k,h1p,t1k,t1p,p4,s0,a1_lg,b1_lg,c1_lg,d1_lg,a1_sg,b1_sg,c1_sg,d1_sg,r1,r2:MyReal;
t,h:array[1..3]of masd;
p:array[1..4]of masd;
p_:masd;
old:string;
function f(tt:myreal):myreal;
begin
result:=h_tr/r/tt/tt*power((t_kr-tt)/(t_kr-t_tr),sqr(z_kr)*(tt-t_tr)/(t_kr-t_tr)+z_kr); //h_исп по эмпирической формуле
end;
function integral(t0,t1:myreal;k:integer):myreal;
var i:integer;
    steph,tt:myreal;
begin
result:=0;  steph:=(t1-t0)/(k-1);
tt:=t0;
for i:=1 to k-1 do begin
result:=result+steph/6*(f(tt)+4*f(tt+steph/2)+f(tt+steph)); //h_исп по эмпирической формуле
tt:=tt+steph;
end;
end;
begin
//расчет давления
old:=table1.Bookmark;
h1:=Table1Teplota.value;
h1p:=Table1Teplota.value; //Нплавления
t1p:=Table1Temperature.value+kelvin; //Tплавления
h1k:=Table1H_kipen.value;
t1k:=Table1T_Kelvin.value+kelvin;
t1:=Table1T_Kelvin.value+kelvin; //Т кипения в К
p1p:=Table1P_kipen.Value; //Давление плавления кПа
mm:=Table1MolMassa.Value;
t20:=Table1Temperature.value+kelvin; //Т атм. в К    Tзамерзания
a_ant:=Table1A_ant.Value;
b_ant:=Table1B_ant.Value;
c_ant:=Table1C_ant.Value;
p1k:=p_antuan(t1k,a_ant,b_ant,c_ant);
t_kr:=Table1T_kr.Value;
t_tr:=Table1T_tr.Value;
p_tr:=Table1P_tr.Value;
p_kr:=Table1P_kr.Value;// кПа
v_kr:=Table1V_kr.Value; //m^3/моль
Z_kr:=Table1Z_kr.Value;
if z_kr=0 then begin
try
 z_kr:=1000*p_kr*v_kr/t_kr/r;
 table1.Edit;
 Table1Z_kr.Value:=z_kr;
 table1.Post;
 except
 z_kr:=0;
end;
 showmessage('z_kr='+floattostr(z_kr));
end;
n:=Form1.spinedit1.Value;
setlength(h[1],n+1);
setlength(h[2],n+1);
setlength(T[1],n+1);

form2.Chart1.Title.Text.clear;
form2.Chart1.Title.Text.Add('Зависимость теплоты от температуры');
form2.Chart1.leftAxis.Title.Caption:='H, Дж/моль';
form2.Chart1.BottomAxis.Title.Caption:='T, К';
form2.Chart1.Series[0].Clear;form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[0].title:='H(t)исп расч';
form2.Chart1.Series[1].Clear;form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[1].title:='H(t)субл расч';
form2.Chart1.Series[2].Clear;form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[2].title:='H(t)исп рек';
form2.Chart1.Series[3].Clear;form2.Chart1.Series[3].tag:=4;
form2.Chart1.Series[3].title:='H(t)субл рек';
form2.Chart1.Series[4].Clear;form2.Chart1.Series[4].tag:=5;
form2.Chart1.Series[4].title:='H(t)плавл расч1';
form2.Chart1.Series[5].Clear;form2.Chart1.Series[5].tag:=6;
form2.Chart1.Series[5].title:='H(t)плавл расч2';
form2.Chart1.Series[6].Clear;form2.Chart1.Series[6].tag:=7;
form2.Chart1.Series[6].title:='H(t)плавл расч3';

form2.Chart10.Title.Text.clear;
form2.Chart10.Title.Text.Add('Зависимость энтальпии плавления от давления');
form2.Chart10.leftAxis.Title.Caption:='H, Дж/моль';
form2.Chart10.BottomAxis.Title.Caption:='Р, кПа';
form2.Chart10.Series[0].clear;form2.Chart10.Series[0].tag:=1;
form2.Chart10.Series[0].title:='H(P)плавл расч1';
form2.Chart10.Series[1].clear;form2.Chart10.Series[1].tag:=2;
form2.Chart10.Series[1].title:='H(P)плавл расч2';
form2.Chart10.Series[2].clear;form2.Chart10.Series[2].tag:=3;
form2.Chart10.Series[2].title:='H(P)плавл расч3';

form2.Chart6.Title.Text.clear;
form2.Chart6.Title.Text.Add('Зависимость давления от температуры');
form2.Chart6.leftAxis.Title.Caption:='Р, кПа';
form2.Chart6.BottomAxis.Title.Caption:='T, К';
form2.Chart6.Series[0].clear;form2.Chart6.Series[0].tag:=1;
form2.Chart6.Series[0].title:='P(T) lg расч';
form2.Chart6.Series[1].clear; form2.Chart6.Series[1].tag:=2;
form2.Chart6.Series[1].title:='P(T) sg расч';
form2.Chart6.Series[2].clear; form2.Chart6.Series[2].tag:=3;
form2.Chart6.Series[2].title:='P(T) lg Ант';
form2.Chart6.Series[3].clear;form2.Chart6.Series[3].tag:=4;
form2.Chart6.Series[3].title:='P(T) sg мод';
form2.Chart6.Series[4].clear;form2.Chart6.Series[4].tag:=5;
form2.Chart6.Series[4].title:='P(T) lg интегр';
form2.Chart6.Series[5].clear;form2.Chart6.Series[5].tag:=6;
form2.Chart6.Series[5].title:='P(T) sg форм';
form2.Chart6.Series[6].clear;form2.Chart6.Series[6].tag:=7;
form2.Chart6.Series[6].title:='P(T) плавл1';
form2.Chart6.Series[7].clear;form2.Chart6.Series[7].tag:=8;
form2.Chart6.Series[7].title:='P(T) плавл2';
form2.Chart6.Series[8].clear;form2.Chart6.Series[8].tag:=9;
form2.Chart6.Series[8].title:='P(T) плавл3';
form2.Chart6.Series[9].clear;form2.Chart6.Series[9].tag:=10;
form2.Chart6.Series[9].title:='P(T) плавл4';

form2.Chart8.Title.Text.clear;
form2.Chart8.Title.Text.Add('Зависимость давления от температуры');
form2.Chart8.leftAxis.Title.Caption:='Р/Pкр*10^6';
form2.Chart8.BottomAxis.Title.Caption:='T/Tкр';
form2.Chart8.Series[0].clear;form2.Chart8.Series[0].tag:=1;
form2.Chart8.Series[0].title:='P(T) lg расч';
form2.Chart8.Series[1].clear; form2.Chart8.Series[1].tag:=2;
form2.Chart8.Series[1].title:='P(T) sg расч';
form2.Chart8.Series[2].clear; form2.Chart8.Series[2].tag:=3;
form2.Chart8.Series[2].title:='P(T) lg Ант';
form2.Chart8.Series[3].clear;form2.Chart8.Series[3].tag:=4;
form2.Chart8.Series[3].title:='P(T) sg мод';
form2.Chart8.Series[4].clear;form2.Chart8.Series[4].tag:=5;
form2.Chart8.Series[4].title:='P(T) lg интегр';
form2.Chart8.Series[5].clear;form2.Chart8.Series[5].tag:=6;
form2.Chart8.Series[5].title:='P(T) sg форм';
form2.Chart8.Series[6].clear;form2.Chart8.Series[6].tag:=7;
form2.Chart8.Series[6].title:='P(T) плавл';

form3.RG.ColCount:=7;
form3.RG.RowCount:=n+1;
form3.RG.Cells[0,0]:='i';
form3.RG.Cells[1,0]:='T';
form3.RG.Cells[2,0]:='H(T) исп. расч.';
form3.RG.Cells[3,0]:='H(T) субл. расч.';
form3.RG.Cells[4,0]:='H(T) плавл. расч.1';
form3.RG.Cells[5,0]:='H(T) плавл. расч.2';
form3.RG.Cells[6,0]:='H(T) плавл. расч.3';

if t_tr=0 then t_tr:=t1p;
TRY
h_tr:=h1k/power((t_kr-t1k)/(t_kr-t_tr),sqr(z_kr)*(t1k-t_tr)/(t_kr-t_tr)+z_kr);
except
h_tr:=0;
end;
showmessage('исп h_tr= '+floattostr(h_tr));
if Table1h_tr.Value=0 then
begin
table1.Edit;
Table1h_tr.Value:=h_tr;
table1.Post;
end;

a:=strtofloat(Form1.edit7.text)+kelvin;
b:=strtofloat(Form1.edit8.text)+kelvin;
s0:=(b-a)/n;
for i:=1 to n do begin
tt:=a+s0*(i-1);
//h_исп по эмпирической формуле
h[1,i]:=h_tr*power((t_kr-tt)/(t_kr-t_tr),sqr(z_kr)*(tt-t_tr)/(t_kr-t_tr)+z_kr);
h[2,i]:=h[1,i]+h1p;//Н сублимации= Н испарения+ Н плавления
form3.RG.Cells[1,i]:=floattostr(tt);
form3.RG.Cells[2,i]:=floattostr(h[1,i]);
form3.RG.Cells[3,i]:=floattostr(h[2,i]);
form2.Chart1.Series[0].AddXY(tt,h[1,i]);
form2.Chart1.Series[1].AddXY(tt,h[2,i]);
t[1,i]:=tt;
end;
// рекурсия
setlength(p_,4);
polynrecurs(t[1],h[1],n,3,p_,r1);
b0:=p_[1];b1:=p_[2];b2:=p_[3];
form3.ur.Cells[0,1]:= 'рекурсия Н исп.';
form3.ur.Cells[1,1]:= floattostr (b0);
form3.ur.Cells[2,1]:= floattostr (b1);
form3.ur.Cells[3,1]:= floattostr (b2);
form3.ur.Cells[4,1]:= floattostr (r1);
//расчет коэффициентов lnP=-A/T+B*lnT+C*T+D
a1_lg:=b0/R;
b1_lg:=b1/R;
c1_lg:=b2/R;
d1_lg:=ln(P1k)+a1_lg/T1k-b1_lg*ln(T1k)-c1_lg*T1k;
showmessage('lg: a='+floattostr(a1_lg)+' b='+floattostr(b1_lg)+
' c='+floattostr(c1_lg)+' d='+floattostr(d1_lg));

polynrecurs(t[1],h[2],n,3,p_,r1);
a0:=p_[1];a1:=p_[2];a2:=p_[3];
form3.ur.Cells[0,2]:= 'рекурсия Н субл.';
form3.ur.Cells[1,2]:= floattostr (a0);
form3.ur.Cells[2,2]:= floattostr (a1);
form3.ur.Cells[3,2]:= floattostr (a2);
form3.ur.Cells[4,2]:= floattostr (r1);
//расчет коэффициентов lnP=-A/T+B*lnT+C*T+D
a1_sg:=a0/R;
b1_sg:=a1/R;
c1_sg:=a2/R;
p20:=exp(-a1_lg/t1p+b1_lg*ln(T1p)+C1_lg*t1p+d1_lg);// кПа; из кривой P_lg при Тплавл (замерзания)
d1_sg:=ln(P20)+a1_sg/T1p-b1_sg*ln(T1p)-c1_sg*T1p;
showmessage('sg: a='+floattostr(a1_sg)+' b='+floattostr(b1_sg)+
' c='+floattostr(c1_sg)+' d='+floattostr(d1_sg));
if  (Table1A_lg.Value=0)and(Table1A_sg.Value=0) then begin
table1.Edit;
Table1A_lg.Value:=a1_lg;
Table1B_lg.Value:=b1_lg;
Table1C_lg.Value:=c1_lg;
Table1D_lg.Value:=d1_lg;
Table1A_sg.Value:=a1_sg;
Table1B_sg.Value:=b1_sg;
Table1C_sg.Value:=c1_sg;
Table1D_sg.Value:=d1_sg;
table1.Post;
end;
//расчет давления испарения и сублимации

setlength(p[1],n+1);
setlength(p[2],n+1);
setlength(p[3],n+1);
setlength(p[4],n+1);
form3.vd.rowcount:=n+1;
form3.vd.colcount:=17;
form3.vd.Cells[0,0]:='T,K';
form3.vd.Cells[1,0]:='P(T)lg_расч';
form3.vd.Cells[2,0]:='P(T)sg_расч';
form3.vd.Cells[3,0]:='H(T)исп_рек';
form3.vd.Cells[4,0]:='H(T)субл_рек';
form3.vd.Cells[5,0]:='P(T)lg Ант';
form3.vd.Cells[6,0]:='Р(Т)sg мод';
form3.vd.Cells[7,0]:='|P(T)lg Ант-P(T)расч|';
form3.vd.Cells[8,0]:='|Р(Т)sg мод-P(T)расч|';
form3.vd.Cells[9,0]:='P(T)lg интегр';
form3.vd.Cells[10,0]:='P(T)sg  по формуле';
form3.vd.Cells[11,0]:='P(T)плавл1';
form3.vd.Cells[12,0]:='H(P)плавл1';
form3.vd.Cells[13,0]:='P(T)плавл2';
form3.vd.Cells[14,0]:='H(P)плавл2';
form3.vd.Cells[15,0]:='P(T)плавл3';
form3.vd.Cells[16,0]:='H(P)плавл3';

pmin:=0;   pmin1:=0;   s2:=0;s1:=0;

for i:=1 to n do begin
tt:=t[1,i];
p[1,i]:=exp(-a1_lg/tt+b1_lg*ln(Tt)+C1_lg*tt+d1_lg);// kПа;
p[2,i]:=exp(-a1_sg/tt+b1_sg*ln(Tt)+C1_sg*tt+d1_sg);// kПа;
p2:=exp(a_ant-b_ant/(c_ant+tt))*Pascual/1000;//испарение по Антуану
p3:=p2*exp(h1p*(tt-t1p)/r/tt/t1p); //сублимация  по формуле
h2:=b0+b1*t[1,i]+b2*sqr(t[1,i]);//испарение
h3:=a0+a1*t[1,i]+a2*sqr(t[1,i]);//сублимация

if (p[1,i]<p[2,i]) and (pmin=0) then
begin
pmin:= 1;
//t0:=(tt+t[1,1]+s0*(i-2))/2;
t0:=tt;
p0:=exp(-a1_lg/t0+b1_lg*ln(T0)+C1_lg*t0+d1_lg);
end;
if (p2<p3) and (pmin1=0) then
begin
pmin1:= 1;
//t0:=(tt+t[1,1]+s0*(i-2))/2;
t00:=tt;
p00:=exp(a_ant-b_ant/(c_ant+t00))*Pascual/1000;//испарение по Антуану
end;
form3.vd.Cells[0,i]:=floattostr(tt);
form3.vd.Cells[1,i]:=floattostr(p[1,i]);
form3.vd.Cells[2,i]:=floattostr(p[2,i]);
form2.Chart6.Series[0].AddXY(tt,p[1,i]);
form2.Chart6.Series[1].AddXY(tt,p[2,i]);
form2.Chart6.Series[2].AddXY(tt,p2);
form2.Chart6.Series[3].AddXY(tt,p3);//в Паскалях
if p[1,i]>p[2,i] then
form2.Chart8.Series[0].AddXY(tt/t_kr,p[1,i]/p_kr*1000000)
else
form2.Chart8.Series[1].AddXY(tt/t_kr,p[2,i]/p_kr*1000000);

if p2>p3 then
form2.Chart8.Series[2].AddXY(tt/t_kr,p2/p_kr*1000000)
else
form2.Chart8.Series[3].AddXY(tt/t_kr,p3/p_kr*1000000);

form3.vd.Cells[3,i]:=floattostr(h2);
form3.vd.Cells[4,i]:=floattostr(h3);
form3.vd.Cells[5,i]:=floattostr(p2);
form3.vd.Cells[6,i]:=floattostr(p3);
form3.vd.Cells[7,i]:=floattostr(abs(p2-p[1,i]));
form3.vd.Cells[8,i]:=floattostr(abs(p3-p[2,i]));
form2.Chart1.Series[2].AddXY(tt,h2);
form2.Chart1.Series[3].AddXY(tt,h3);
s2:=s2+abs((p2-p[1,i])/p2) ;
s1:=s1+abs((p3-p[2,i])/p3) ;
end;
s2:=100*s2/n;
s1:=100*s1/n;
showmessage('погрешность lg_расч-lg_Ант='+floattostr(s2)+
 ' sg_расч-sg_мод='+floattostr(s1));

if pmin=1 then begin
   showmessage('расчет по пересеч lg-sg: P_tr='+floattostr(P0)+ ' кПа T_tr='+floattostr(t0)+' К');
   p_tr:=p0;
   t_tr:=t0;
   end ;
if pmin1=1 then begin
   showmessage('расчет по пересеч lg Ант-sg мод: P_tr='+floattostr(P00)+ ' кПа T_tr='+floattostr(t00)+' К');
   p_tr:=p00;
   t_tr:=t00;
end ;

if Table1T_tr.Value=0 then
begin
table1.Edit;
Table1T_tr.Value:=t_tr;
table1.Post;
end;

if Table1P_tr.Value=0 then
begin
table1.Edit;
Table1P_tr.Value:=P_tr;
table1.Post;
end;

p_tr:=Table1P_tr.Value;
p2:=0;//(integral(t_tr-s0,t_tr,100));
for i:=1 to n do begin
tt:=t[1,i];  //if tt>b then break;
p2:=(integral(tt-s0,tt,100))+p2;  //интегрирование
p3:=exp(p2)*p_tr;
p4:=p3*exp(h1p*(tt-t1p)/r/tt/t1p); //сублимация  по формуле
form3.vd.Cells[9,i]:=floattostr(p3);
form2.Chart6.Series[4].AddXY(tt,p3);
form3.vd.Cells[10,i]:=floattostr(p4);
form2.Chart6.Series[5].AddXY(tt,p4);
if p3>p4 then
 form2.Chart8.Series[5].AddXY(tt/t_kr,p4/p_kr*1000000)
else
 form2.Chart8.Series[4].AddXY(tt/t_kr,p3/p_kr*1000000);

end;


{p0:=-27*p_kr;
t0:= t_tr;
CC:=ln(-101.3/p0)/ln(t1p/t0); }


if Table1P0.Value=0 then
begin
table1.Edit;
Table1P0.Value:=-27*p_kr;
table1.Post;
end;
p0:=Table1P0.Value;    // P0 при Т->0
showmessage('P0='+floattostr(P0)+ 'кПа');
//t_tr:=Table1T_tr.Value;
Cc1:=h1p/r/t1p;  //коэфф. в формуле Симона
CC2:=ln(p1p/p0+1)/ln(t1p/t_tr);
cc3:=strtofloat(inputbox('Введите коэффициент С в уравнении Симона(2)',s,Table1C_Simona.AsString));
ca:=strtofloat(inputbox('Введите коэффициент A в уравнении Симона(2)',s,floattostr(Table1p0.Value)));
try
cb:=strtofloat(inputbox('Введите коэффициент B в уравнении Симона(2)',s,floattostr(Table1p0.Value/power(Table1t0.Value,Table1C_Simona.value))));
except
cb:=1;
end;
if Table1C_Simona.Value=0 then
begin
table1.Edit;
Table1C_Simona.Value:=cc2;
table1.Post;
end;
try
v_tr1:=h_tr/cc1/p_tr/1000;     // м^3/моль
except
v_tr1:=0;  end;
try v_tr2:=h_tr/cc2/p_tr/1000;     // м^3/моль
except  v_tr2:=0;  end;
try v_tr3:=h_tr/cc3/p_tr/1000;     // м^3/моль
except  v_tr3:=0;  end;
if Table1v_tr.Value=0 then
begin
table1.Edit;
Table1v_tr.Value:=v_tr2;
table1.Post;
end;
T0_1:=t_tr/exp(ln(-p_tr/p0+1)/cc1);  //уравнение Симона при Р=0
T0_2:=t_tr/exp(ln(-p_tr/p0+1)/cc2);  //уравнение Симона при Р=0
T0_3:=t_tr/exp(ln(-p_tr/p0+1)/cc3);  //уравнение Симона при Р=0
showmessage('1:V_tr='+floattostr(v_tr1)+' м^3/моль; T0='+
floattostr(t0_1)+  ' К; C='+floattostr(cc1));
showmessage('2:V_tr='+floattostr(v_tr2)+' м^3/моль; T0='+
floattostr(t0_2)+ ' К; C='+floattostr(cc2));
showmessage('3:V_tr='+floattostr(v_tr3)+' м^3/моль; T0='+
floattostr(t0_3)+ ' К; C='+floattostr(cc3));

if Table1t0.Value=0 then
begin
table1.Edit;
Table1t0.Value:=t0_2;
table1.Post;
end;

for i:=1 to n do begin
tt:=t[1,i];
p[1,i]:=-p0*(power(tt/t0_1,cc1)-1);
p[2,i]:=-p0*(power(tt/t0_2,cc2)-1);
p[3,i]:=ca+cb*power(tt,cc3)/1000;
p[4,i]:=-Table1P0.Value*(power(tt/Table1t0.Value,cc3)-1);

hh1:=cc1*tt*r; //теплота плавления
hh2:=cc2*tt*r; //теплота плавления
hh3:=cc3*tt*r; //теплота плавления
{
vv:=h_tr/cc2/p[2,i]/1000;
hh2:=cc2*(p0/t_tr)*power(t_tr/t0_2,cc2)*tt*mm*Vv;

vv:=h_tr/cc3/p[3,i]/1000;
hh3:=cc3*(p0/t_tr)*power(t_tr/t0_3,cc3)*tt*mm*Vv;
}
form3.vd.Cells[11,i]:=floattostr(p[1,i]);
form3.vd.Cells[12,i]:=floattostr(hh1);
form3.vd.Cells[13,i]:=floattostr(p[2,i]);
form3.vd.Cells[14,i]:=floattostr(hh2);
form3.vd.Cells[15,i]:=floattostr(p[3,i]);
form3.vd.Cells[16,i]:=floattostr(hh3);
form3.RG.Cells[4,i]:=floattostr(hh1);
form3.RG.Cells[5,i]:=floattostr(hh2);
form3.RG.Cells[6,i]:=floattostr(hh3);
form2.Chart6.Series[6].AddXY(tt,p[1,i]);
form2.Chart10.Series[0].AddXY(p[1,i],hh1);
form2.Chart6.Series[7].AddXY(tt,p[2,i]);
form2.Chart10.Series[1].AddXY(p[2,i],hh2);
form2.Chart6.Series[8].AddXY(tt,p[3,i]);
form2.Chart10.Series[2].AddXY(p[3,i],hh3);
form2.Chart6.Series[9].AddXY(tt,p[4,i]);
form2.Chart8.Series[6].AddXY(tt/t_kr,p[4,i]/p_kr);
form2.Chart1.Series[4].AddXY(tt,hh1);
form2.Chart1.Series[5].AddXY(tt,hh2);
form2.Chart1.Series[6].AddXY(tt,hh3);
end;

//расчет температуры и энтальпии плавления от давления
p0:=Table1P0.Value;
cc1:=Table1C_Simona.Value;
pp:=strtofloat(inputbox('Введите давление в кПа','','0'));
if pp<>0 then   begin
tp:=t1p/exp(ln(pp/abs(p0)+1)/cc1);  //уравнение Симона при Р=0
hp:=h1p*power((t_kr-tp)/(t_kr-t1p),sqr(z_kr)*(tp-t1p)/(t_kr-t1p)+z_kr);
showmessage('P, кПа:'+floattostr(pp)+ ' T,K :'+
floattostr(tp)+ ' H,Дж/моль :' +floattostr(hp));
end else begin
if form4.Table9.RecordCount>0 then begin
  form2.chart10.Series[7].clear;
  form2.chart10.Series[7].tag:=8;
  form2.chart10.Series[7].title:='P(T_p),рекурс.';

  form2.chart10.Series[8].clear;
  form2.chart10.Series[8].tag:=9;
  form2.chart10.Series[8].title:='P(T_p),расч.';

   form2.chart10.Series[9].clear;
   form2.chart10.Series[9].tag:=10;
   form2.chart10.Series[9].title:='P(T_p), эксп.';
   form4.Table9.First;
pa:=form4.Table9P_MPa.value*1.e3;
nk:= form4.Table9.RecordCount ;
 form3.gr.rowcount:=nk+1;
 form3.gr.colcount:=5;
 form3.gr.cells[0,0]:='i';
 form3.gr.cells[1,0]:='P,kПа';
 form3.gr.cells[2,0]:='T_p,K';
 form3.gr.cells[3,0]:='T_p,К,расч';
 form3.gr.cells[4,0]:='T_p,абс.ош.';

   for i:=1 to nk do begin
     t[1,i]:=form4.Table9T_K.value;
     p[1,i]:=form4.Table9P_MPa.value*1.e3;
     pb:=p[1,i];
     tp:=t1p/exp(ln(pb/abs(p0)+1)/cc1);  //уравнение Симона при Р=0
   form3.gr.Cells[0,i]:=inttostr(i);
   form3.gr.Cells[1,i]:=floattostr(pb);
   form3.gr.Cells[2,i]:=floattostr(tp);
   form3.gr.Cells[3,i]:=floattostr(t[1,i]);
   form3.gr.Cells[4,i]:=floattostr(abs(tp-t[1,i]));
   form2.chart10.Series[9].Addxy(t[1,i],p[1,i]);
   form2.chart10.Series[8].Addxy(tp,p[1,i]);
   form4.Table9.Next;
   end;
polynrecurs(t[1],p[1],nk,3,p_,r1);
n:=spinedit2.Value;
ph:=(pb-pa)/n;
form3.ps.rowcount:=n+2;
 form3.ps.colcount:=8;
 form3.ps.cells[0,0]:='i';
 form3.ps.cells[1,0]:='P,kПа';
 form3.ps.cells[2,0]:='T_p,K,рекурс';
 form3.ps.cells[3,0]:='t_p,C,рекурс';
 form3.ps.cells[4,0]:='H_p(Трекурс),Дж/моль';
 form3.ps.cells[5,0]:='T_p,K,расч';
 form3.ps.cells[6,0]:='t_p,C,расч';
 form3.ps.cells[7,0]:='H_p(Трасч),Дж/моль';
 for i:=0 to n do begin
    pp:=Pa+i*ph;
    tp:=fr3(pp,p_,3);
  //  hp:=h1p*power((t_kr-tp)/(t_kr-t1p),sqr(z_kr)*(tp-t1p)/(t_kr-t1p)+z_kr);
   form3.ps.Cells[0,i+1]:=inttostr(i);
   form3.ps.Cells[1,i+1]:=floattostr(pp);
   form3.ps.Cells[2,i+1]:=floattostr(tp);
   form3.ps.Cells[3,i+1]:=floattostr(tp-kelvin);
   form3.ps.Cells[4,i+1]:=floattostr(hp);
   form2.chart10.Series[7].Addxy(tp,pp);

   tp:=t1p/exp(ln(pp/abs(p0)+1)/cc1);  //уравнение Симона при Р=0
   hp:=h1p*power((t_kr-tp)/(t_kr-t1p),sqr(z_kr)*(tp-t1p)/(t_kr-t1p)+z_kr);
   form3.ps.Cells[5,i+1]:=floattostr(tp);
   form3.ps.Cells[6,i+1]:=floattostr(tp-kelvin);
   form3.ps.Cells[7,i+1]:=floattostr(hp);
   form2.Chart10.Series[8].AddXY(tp,pp);
   end;
end
else  begin
  form2.chart10.Series[8].clear;
  form2.chart10.Series[8].tag:=9;
  form2.chart10.Series[8].title:='P(T_p),расч.';

pa:=strtofloat(Edit8.Text)*pascual*1.e-3;
pb:=strtofloat(Edit8.Text)*pascual*1.e-3;//кПа
n:=spinedit2.value;

 form3.ps.rowcount:=n+2;
 form3.ps.colcount:=6;
 form3.ps.cells[0,0]:='i';
 form3.ps.cells[1,0]:='P,kПа';
 form3.ps.cells[2,0]:='T_p,K';
 form3.ps.cells[3,0]:='t_p,C';
 form3.ps.cells[4,0]:='H_p,Дж/моль,расч';

 ph:=(pb-pa)/n;
 for i:=0 to n do begin
pp:=Pa+i*ph;
tp:=t1p/exp(ln(pp/abs(p0)+1)/cc1);  //уравнение Симона при Р=0
hp:=h1p*power((t_kr-tp)/(t_kr-t1p),sqr(z_kr)*(tp-t1p)/(t_kr-t1p)+z_kr);
   form3.ps.Cells[0,i+1]:=inttostr(i);
   form3.ps.Cells[1,i+1]:=floattostr(pp);
   form3.ps.Cells[2,i+1]:=floattostr(tp);
   form3.ps.Cells[3,i+1]:=floattostr(tp-kelvin);
   form3.ps.Cells[4,i+1]:=floattostr(hp);
   form2.Chart10.Series[8].AddXY(tp,pp);
end;
end;
end;
form3.PageControl1.ActivePageIndex:=2;
form2.PageControl1.ActivePageIndex:=1;
form2.Show;
form3.Show;
end;

procedure TForm1.popupn3Click(Sender: TObject);
begin
FrTeplota.Edit1.Text:=floattostr(Table1MolMassa.value);
FrTeplota.Edit2.Text:=floattostr(Table1Temperature.value+kelvin);
FrTeplota.Edit3.Text:=floattostr(Table1T_Kelvin.value+kelvin);
FrTeplota.Edit6.Text:=floattostr(Table1Teplota.value);
FrTeplota.Edit7.Text:=floattostr(Table1H_kipen.value);
FrTeplota.Edit10.Text:=floattostr(Table1Z_kr.value);
FrTeplota.Edit11.Text:=floattostr(Table1P_kr.value);
FrTeplota.Edit14.Text:=floattostr(Table1T_kr.value);
FrTeplota.Edit15.Text:=floattostr(Table1T0.value);

frTeplota.show;
end;

procedure TForm1.popupn4Click(Sender: TObject);
var p,c_simona:myreal;
    vv,a_vv,b_vv,c_vv,a1_ant,b1_ant,c1_ant,t0_1,p_atm,pp,
    tk1,tp1,ph,p0_1,c_simon,p0,p1,hp,tp,tk,tkr,ttr,zkr,pkr,vkr,htr,
    hk,hpl,hvp:myreal;
    np,i:integer;
begin
try
p_atm:=Table1P_atm.Value;
if p_atm=0 then
p_atm:=760*pascual/1000;
tp:=Table1Temperature.value+kelvin;
tk:=Table1T_Kelvin.value+kelvin;
hp:=Table1Teplota.value;
hk:=Table1H_kipen.value;
pkr:=Table1P_kr.value;
tkr:=Table1T_kr.value;
vkr:=Table1V_kr.value;
zkr:=Table1Z_kr.value;
ttr:=Table1T_tr.value;
if ttr=0 then ttr:=tp;

htr:=Table1H_tr.value;
t0_1:=Table1T0.value;
p0_1:=Table1P0.Value;
c_simon:=Table1C_Simona.Value;
if zkr=0 then
 try
 zkr:=1000*pkr*vkr/tkr/r;
 except
 zkr:=0.23;
 end;
if htr=0 then
try
htr:=hk/power((tkr-tk)/(tkr-ttr),sqr(zkr)*(tk-ttr)/(tkr-ttr)+zkr);
except
htr:=0;
end;
vv:=Table1V_ls.value;
if vv=0 then begin
a_vv:=table1a_v.value;
b_vv:=table1b_v.value;
c_vv:=table1c_v.value;
vv:=(a_vv*sqr(Tp)+b_vv*Tp+c_VV)/p0_1;
end;
a1_ant:=Table1A_ant.Value;
b1_ant:=Table1B_ant.Value;
c1_ant:=Table1C_ant.Value;
p0:=strtofloat(edit9.text);
p1:=strtofloat(edit10.text);
np :=SpinEdit2.Value;
ph:=(p1-p0)/np;
 form2.chart11.Series[0].clear;
 form2.chart11.Series[0].tag:=1;
 form2.chart11.Series[0].title:='H_пл';
 form2.chart11.Series[1].clear;
 form2.chart11.Series[1].tag:=2;
 form2.chart11.Series[1].title:='H_исп';
 form2.chart11.BottomAxis.Title.Caption:='P,кПа';
 form3.ps.rowcount:=np+2;
 form3.ps.colcount:=4;
 form3.ps.cells[0,0]:='i';
 form3.ps.cells[1,0]:='P,kПа';
 form3.ps.cells[2,0]:='H_p';
 form3.ps.cells[3,0]:='H_k';
for i:=0 to np do begin
   p:=p0+i*ph; //мм.рт.ст.
   pp:=p*pascual/1000;//кПа
  tp1:=t0_1*power(pp/abs(p0_1)+1,1/c_simon); //ур-ние Симона
//  vv:=(a_vv*sqr(Tp)+b_vv*Tp+c_VV)/pp;
//  hpl:=tp*c_simon*abs(p0_1)*power(tp/t0_1,c_simon)*vv;
//hpl:=hp*(1+abs(p0_1)/pp)/(1+abs(p0_1)/p_atm)*pp/p_atm;
// hpl:=c_simon*(1+abs(p0_1)/pp)*pp*vv;
   tk1:=t_antuan(p,a1_ant,b1_ant,c1_ant);
//   hvp:=htr*power((tkr-tk)/(tkr-ttr),sqr(zkr)*(tk-ttr)/(tkr-ttr)+zkr); //h_исп по эмпирической формуле
try
   hpl:=hp*power((tkr-tp1)/(tkr-tp),sqr(zkr)*(tp1-tp)/(tkr-tp)+zkr);
   hvp:=hk*power((tkr-tk1)/(tkr-tk),sqr(zkr)*(tk1-tk)/(tkr-tk)+zkr);
except
end;
   form3.ps.Cells[0,i+1]:=inttostr(i);
   form3.ps.Cells[1,i+1]:=floattostr(pp);
   form3.ps.Cells[2,i+1]:=floattostr(hpl);
   form3.ps.Cells[3,i+1]:=floattostr(hvp);
   form2.chart11.Series[0].Addxy(p,hpl);
   form2.chart11.Series[1].Addxy(p,hvp);
   end;
form3.Show;
form2.Show;
except
exit;
end;
{p:=strtofloat(inputbox('Введите давление в мм.рт.ст.','','760'));
p:=p*pascual/1.e3;
tp1:=strtofloat(inputbox('Введите температуру плавления в С','','0'));
tp1:=Tp1+kelvin;
c_simona:=Table1C_Simona.Value;
p0_1:=Table1P0.Value;
vv1:=Table1V_ls.value;
if vv1=0 then begin
a_vv1:=table1a_v.value;
b_vv1:=table1b_v.value;
c_vv1:=table1c_v.value;
vv1:=(a_vv1*sqr(Tp1)+b_vv1*Tp1+c_VV1)/p;
end;
hp1:=c_simona*(1+p0_1/p)*p*vv1;
}
end;

procedure TForm1.menuN2_11Click(Sender: TObject);
var
 i,l,nk,nm,ks,ll:integer;
 k12,q1,q2,q1_,q2_,m12,lnx1,lnx2,zmin1,r1,
 g1,g2,minx1,minx2,tg1,tg2,g,tg,z1,z2,z0,c_,b_,tau1,tau2,
 lg1,lg2,l1,l2,l12,t12,lng1,lng2,minx,x1,x2,w1,w2,t21,
 g1_s,g2_s,g1_l,g2_l,w0,
 k1,k2,x1_,x2_,w1_,w2_,d,c,minu1,u1,u2,u1_,u2_:myreal;
 xr,tr,ar:masd;
begin
//Фазовое равновесие жидкость-пар (нижняя кривая)
// по аналогии с кривой твердое - твердое (солидус)
//Обратный ход
if i3=0 then
//2
begin
try
   a:=strtofloat(edta.text);
   b:=strtofloat(edtb.text);
 except
   a:=0;b:=1;
 end;
 try
 tau1:=Table2tau1.Value; tau2:=Table2tau2.Value;
 k1:=Table2K1.Value/tau1; k2:=Table2K2.Value/tau2;
except
 k1:=1;k2:=1;tau1:=1;tau2:=1;
end;

 h1:=hk1*k1;h2:=hk2*k2;  //теплота испарения
 t1:=tk1;t2:=tk2;        //температура кипения
 h10:=h1;h20:=h2;t10:=t1;t20:=t2;
try
 l1:=strtofloat(edit3.Text);
 l2:=strtofloat(edit4.Text);
except
 l1:=Table2Lambda1_az.Value;
 l2:=Table2Lambda2_az.Value;
end;
 l12:=l1/l2;
try
 k1:=strtofloat(edit5.Text);
 k2:=strtofloat(edit6.Text);
 k12:=k1/k2;
except
try
k1:=Table2K1_az.Value;
k2:=Table2K2_az.Value;
k12:=k1/k2;
except
k1:=1;
k2:=1;
k12:=1;
end;
end;
k1:=1;k2:=1;/////?????
     m12:=m1*k1/m2/k2;
     h10:=h1/l1;h20:=h2/l2; //?
     t10:=t1;t20:=t2;
//модель Редлиха-Кистера
    form2.Chart2.Series[2].title:='lg G1';
    form2.Chart2.Series[3].title:='lg G2';
    form2.Chart2.Series[5].title:='lg G1/G2';
    form2.Chart2.Series[2].clear;
    form2.Chart2.Series[3].clear;
    form2.Chart2.Series[5].clear;
    form2.Chart2.Series[2].tag:=3;
    form2.Chart2.Series[3].tag:=4;
    form2.Chart2.Series[5].tag:=6;
    form2.Chart1.Series[3].clear;form2.Chart1.Series[3].tag:=4;
form2.Chart1.Series[1].clear;form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[2].clear;form2.Chart1.Series[2].tag:=3;
    form2.Chart1.Series[10].clear;
    form2.Chart1.Series[11].clear;
    form2.Chart1.Series[12].clear;
    form2.Chart1.Series[13].clear;
    form2.Chart1.Series[14].clear;
    form2.Chart1.Series[15].clear;

    form2.Chart1.Series[15].tag:=16;
    form2.Chart1.Series[10].tag:=11;
    form2.Chart1.Series[11].tag:=12;
    form2.Chart1.Series[12].tag:=13;
    form2.Chart1.Series[13].tag:=14;
    form2.Chart1.Series[14].tag:=15;

    form2.Chart1.Title.Text.Clear;
    form2.Chart1.Title.Text.Add(name1+'-'+name2);
    form2.Chart1.Series[10].Title:='T1(z1)';
    form2.Chart1.Series[11].Title:='Т2(z1)';
    form2.Chart1.Series[12].Title:='Т1(x1)';
    form2.Chart1.Series[13].Title:='Т2(x1)';
    form2.Chart1.Series[14].Title:='Т1(q1)';
    form2.Chart1.Series[15].Title:='Т2(q2)';
try
 zmin1:=strtofloat(edit1.Text);
 t12:=strtofloat(edit2.Text);
except
//поиск минимума
    g:=1;z0:=0;w0:=1; zmin1:=-1;
for i:=1 to n-1 do begin
    z1:=a+i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    w1:=math.Log10(exp(lng1-lng2));
    if w1*g<0 then begin
       zmin1:=z1-w1*(z0-z1)/(w0-w1);
    end;
    g:=w1;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    z0:=z1;w0:=w1;
    end;
    t12:=fx1_(zmin1);
if zmin1=-1 then begin
showmessage('Нет точки минимума!');exit;
end;
end;

showmessage('x_az='+floattostr(zmin1)+' t_az='+floattostr(t12));
    //расчет коэффициентов c,b по модели Редлиха-Кистера

    lg1:=-ln(zmin1)+h10/r/t10*(1-t10/t12);//ln (gamma_liquid)
    lg2:=-ln(1-zmin1)+h20/r/t20*(1-t20/t12);

    c_:=(lg1/2/sqr(1-zmin1)-lg2/2/sqr(zmin1));
    b_:=lg1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c_;

    lng1:=lg1-(h10/R*(1/t10-1/t12)); //ln gamma_solid
    lng2:=lg2-(h20/R*(1/t20-1/t12));
  //расчет коэффициентов c,b по модели Редлиха-Кистера
{    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    b:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;   }

//расчет коэффициентов c,b по модели Ван-Лаара
    c:=sqr(lng1+lng2*(1-zmin1)/zmin1)/lng1;
    d:=sqr(lng2+lng1*zmin1/(1-zmin1))/lng2;
    minx:=1;minx1:=1;minx2:=1; minu1:=1;
//обратный ход

nk:=form3.gs.colcount;
x1_:=1;x2_:=1; w1_:=1;w2_:=1;q1_:=1;q2_:=1;u1_:=1;u2_:=1;
 l:=0;ll:=0;
for i:=1 to n-1 do begin
    z2:=a+h*i;
    z1:=1-z2;
{    lg1:=sqr(z2)*(b+c*(3*z1-z2));  //формула Редлиха-Кистера
    lg2:=sqr(z1)*(b+c*(z1-3*z2));  //lg gamma_solid
    g1_s:=power(10,lg1);g2_s:=power(10,lg2);
    g1_s:=exp(lg1);    g2_s:=exp(lg2);}
    lg1:=c*sqr(d*z2/(c*z1+d*z2));//формула Ван-Лаара
    lg2:=d*sqr(c*z1/(c*z1+d*z2));
    g1_s:=exp(lg1);    g2_s:=exp(lg2);

    form2.Chart2.Series[2].AddXY(z1,lg1);
    form2.Chart2.Series[3].AddXY(z1,lg2);
    form2.Chart2.Series[5].AddXY(z1,log10(g1_S/g2_S));
    //обратный ход в эффективных долях
    t12:=fx1_(z1);
    form2.Chart1.Series[1].AddXY(z1,t12);
    lng1:=sqr(z2)*(b_+c_*(3*z1-z2));  //формула Редлиха-Кистера
    lng2:=sqr(z1)*(b_+c_*(z1-3*z2));  //lg gamma_liquid
    g1_l:=power(10,lng1);g2_l:=power(10,lng2);
//восстанавливаем точки ликвидуса
    lnx1:=h10/r/t10*(1-t10/t12)-ln(g1_l);
    lnx2:=h20/r/t20*(1-t20/t12)-ln(g2_l);
    p1:=exp(lnx1);  //левая ветвь  ликвидуса
    p2:=exp(lnx2);  //правая ветвь ликвидуса
//восстанавливаем точки солидуса
    w1:=g1_l/g1_s*p1*exp(-(h10/r*(1/t10-1/t12))); //левая ветвь  солидуса
    w2:=g2_l/g2_s*p2*exp(-(h20/r*(1/t20-1/t12))); //правая ветвь солидуса

    if (w1>=z1)and(z1>=zmin1)then
    begin
    form2.Chart1.Series[10].AddXY(w1,t12);
  //  l:=poisk_temp(t12,t[1],n-1);
   // y[3,l]:=w1;

    end;
   if (1-w2<=z1)and(z1<=zmin1) then    begin
    form2.Chart1.Series[11].AddXY(1-w2,t12);
   // ll:=poisk_temp(t12,t[1],n-1);
   // y[4,ll]:=b-w2;
    end;
    w1_:=w1;w2_:=w2;
    if abs(w1-(1-w2))<=minx then begin
    minx:=abs(w1-(1-w2));
    g:=w1;
    tg:=t12;
    end;

    //экспериментальные мольные доли
    z0:=z1/(z1+(1-z1)/k12);
    form2.Chart1.Series[2].AddXY(z0,t12);

    x1:=w1/(w1+(1-w1)/k12);
    x2:=w2/((1-w2)/k12+w2);
    if (x1>=z0)and(z1>=zmin1) then
    form2.Chart1.Series[12].AddXY(x1,t12);
   if (1-x2<=z0)and(z1<=zmin1)then
    form2.Chart1.Series[13].AddXY(1-x2,t12);
    x1_:=x1;x2_:=x2;
    if abs(x1-(1-x2))<=minx1 then begin
    minx1:=abs(x1-(1-x2));
    g1:=x1;
    tg1:=t12;
    end;
     //массовые доли
    z0:=z0/(z0+(1-z0)/m12);
    form2.Chart1.Series[3].AddXY(z0,t12);

    q1:=x1/(x1+(1-x1)/m12);
    q2:=x2/((1-x2)*m12+x2);
    if (q1>=z0)and(z1>=zmin1)then
    form2.Chart1.Series[14].AddXY(q1,t12);
    if (1-q2<=z0)and(z1<=zmin1) then
    form2.Chart1.Series[15].AddXY(1-q2,t12);
    q1_:=q1;q2_:=q2;
    if abs(q1-(1-q2))<=minx2 then begin
    minx2:=abs(q1-(1-q2));
    g2:=q1;
    tg2:=t12;
    end;

    form3.GS.Cells[nk,i]:=inttostr(i);
    form3.GS.Cells[1+nk,i]:=format('%8.4f',[z1]);
    form3.GS.Cells[2+nk,i]:=format('%8.4f',[z2]);
    form3.GS.Cells[3+nk,i]:=format('%8.4f',[x1]);
    form3.GS.Cells[4+nk,i]:=format('%8.4f',[x2]);
    form3.GS.Cells[5+nk,i]:=format('%8.4f',[q1]);
    form3.GS.Cells[6+nk,i]:=format('%8.4f',[q2]);
    form3.GS.Cells[7+nk,i]:=format('%8.4f',[t12]);
    form3.GS.Cells[8+nk,i]:=format('%8.4f',[w1]);
    form3.GS.Cells[9+nk,i]:=format('%8.4f',[w2]);
    form3.GS.Cells[10+nk,i]:=format('%8.4f',[p1]);
    form3.GS.Cells[11+nk,i]:=format('%8.4f',[p2]);
    form3.GS.Cells[12+nk,i]:=format('%8.4f',[lg1]);
    form3.GS.Cells[13+nk,i]:=format('%8.4f',[lg2]);
    form3.GS.Cells[14+nk,i]:=format('%8.4f',[lnx1]);
    form3.GS.Cells[15+nk,i]:=format('%8.4f',[lnx2]);
    form3.GS.Cells[16+nk,i]:=format('%8.4f',[lng1]);
    form3.GS.Cells[17+nk,i]:=format('%8.4f',[lng2]);
   end;
    form3.GS.Cells[nk,0]:='i';
    form3.GS.Cells[1+nk,0]:='z1';
    form3.GS.Cells[2+nk,0]:='z2';
    form3.GS.Cells[3+nk,0]:='x1';
    form3.GS.Cells[4+nk,0]:='x2';
    form3.GS.Cells[5+nk,0]:='q1';
    form3.GS.Cells[6+nk,0]:='q2';
    form3.GS.Cells[7+nk,0]:='T12';
    form3.GS.Cells[8+nk,0]:='w1';
    form3.GS.Cells[9+nk,0]:='w2';
    form3.GS.Cells[10+nk,0]:='p1';
    form3.GS.Cells[11+nk,0]:='p2';
    form3.GS.Cells[12+nk,0]:='lg1';
    form3.GS.Cells[13+nk,0]:='lg2';
    form3.GS.Cells[14+nk,0]:='lnx1';
    form3.GS.Cells[15+nk,0]:='lnx2';
    form3.GS.Cells[16+nk,0]:='lng1';
    form3.GS.Cells[17+nk,0]:='lng2';

    form3.GS.RowCount:=n;
    form3.GS.ColCount:=nk+18;

nm:=form3.rt.rowcount;
form3.RT.Cells[0,nm]:='left:zmin=';form3.RT.Cells[1,nm]:=floattostr(g);
form3.RT.Cells[0,nm+1]:='Tmin,K=';form3.RT.Cells[1,nm+1]:=floattostr(tg);
form3.RT.Cells[0,nm+2]:='Tmin,C=';form3.RT.Cells[1,nm+2]:=floattostr(tg-kelvin);
form3.RT.Cells[0,nm+3]:='xmin=';form3.RT.Cells[1,nm+3]:=floattostr(g1);
form3.RT.Cells[0,nm+4]:='Tmin,K=';form3.RT.Cells[1,nm+4]:=floattostr(tg1);
form3.RT.Cells[0,nm+5]:='Tmin,C=';form3.RT.Cells[1,nm+5]:=floattostr(tg1-kelvin);
form3.RT.Cells[0,nm+6]:='qmin=';form3.RT.Cells[1,nm+6]:=floattostr(g2);
form3.RT.Cells[0,nm+7]:='Tmin,K=';form3.RT.Cells[1,nm+7]:=floattostr(tg2);
form3.RT.Cells[0,nm+8]:='Tmin,C=';form3.RT.Cells[1,nm+8]:=floattostr(tg2-kelvin);
 g1:=g/(g+(1-g)/k12);
 g2:=g1/(g1+(1-g1)/m12);
 tg1:=fx1_(g1);
 tg2:=fx1_(g2);
form3.RT.Cells[0,nm+9]:='right:zmin=';form3.RT.Cells[1,nm+9]:=floattostr(g);
form3.RT.Cells[0,nm+10]:='Tmin,K=';form3.RT.Cells[1,nm+10]:=floattostr(tg);
form3.RT.Cells[0,nm+11]:='Tmin,C=';form3.RT.Cells[1,nm+11]:=floattostr(tg-kelvin);
form3.RT.Cells[0,nm+12]:='xmin=';form3.RT.Cells[1,nm+12]:=floattostr(g1);
form3.RT.Cells[0,nm+13]:='Tmin,K=';form3.RT.Cells[1,nm+13]:=floattostr(tg1);
form3.RT.Cells[0,nm+14]:='Tmin,C=';form3.RT.Cells[1,nm+14]:=floattostr(tg1-kelvin);
form3.RT.Cells[0,nm+15]:='qmin=';form3.RT.Cells[1,nm+15]:=floattostr(g2);
form3.RT.Cells[0,nm+16]:='Tmin,K=';form3.RT.Cells[1,nm+16]:=floattostr(tg2);
form3.RT.Cells[0,nm+17]:='Tmin,C=';form3.RT.Cells[1,nm+17]:=floattostr(tg2-kelvin);
form3.RT.rowcount:=nm+18;

form2.PageControl1.ActivePage:=form2.TabSheet1;
form2.PageControl1.TabIndex:=0;
form2.Show;
end;
end;

procedure TForm1.menuN2_9Click(Sender: TObject);
var
    i,nm:integer;
    w,betta12,k1,k2,lambda1,lambda2,k12,lambda12,m12,x_az,zmin1,
    T_az,g1,g2,p_az,lng1,lng2,coef_a,coef_b,coef_c,coef_d,c,d,minx,minx2,l,x1_,
    tg0,g0,tg2,tg1,g1_l,w1_,q1_,u1_,u2_,minx1,minu1,ll,x2_,w2_,q2_,u2_g1_l,g2_l,lnx1,lnx2,w2,
    z0,w1,w0,gg,gg1,gg2,y1,y2,lgg1,lgg2,lnv1,lnv2,v1,v2,z1,z2,q1,q2,tau1,tau2
    :myreal;
  //  y:array[1..2]of masd;
    begin
//Фазовое равновесие жидкость- пар
if i3=0 then
//2
begin
 try
   a:=strtofloat(edta.text);
   b:=strtofloat(edtb.text);
 except
   a:=0;b:=1;
 end;
 n:=form1.Fn.Value;
 h:=(b-a)/n;
try
 tau1:=Table2tau1.Value; tau2:=Table2tau2.Value;
 k1:=Table2K1.Value/tau1; k2:=Table2K2.Value/tau2;
except
 k1:=1;k2:=1;tau1:=1;tau2:=1;
end;
 h1:=hk1*k1;h2:=hk2*k2;  //теплота испарения
 t1:=tk1;t2:=tk2;        //температура кипения
try
 k1:=strtofloat(edit5.Text);
 k2:=strtofloat(edit6.Text);
except
  k1:=Table2K1_az.Value;
  k2:=Table2K2_az.Value;
end;
try
 lambda1:=strtofloat(edit3.Text);
 lambda2:=strtofloat(edit4.Text);
except
 lambda1:=Table2Lambda1_az.Value;
 lambda2:=Table2Lambda2_az.Value;
// lambda1:=1; lambda2:=1;
end;
 k12:=k1/k2;
 lambda12:=lambda1/lambda2;
 m12:=m1*k1/m2/k2;
 h10:=h1/lambda1;h20:=h2/lambda2;t10:=t1;t20:=t2;
//обратный ход
//Коган В.Б. Азеотропная и экстрактивная ректификация стр. 220, 215
//x_az, T_az, P_az, P1_0, P2_0->A,B по модели Ван-Лаара->
//lg(G1),lg(G2)
try
 x_az:=strtofloat(edit1.Text);
except
  x_az:=strtofloat(inputbox('Введите точку азеотропии в эфф.м.д.','',floattostr(zmin1)));
end;
try
 T_az:=strtofloat(edit2.Text);
except
 T_az:=fx1_(x_az);
end;
if x_az=0 then begin
//поиск минимума
    gg:=1; z0:=0;w0:=1;zmin1:=-1;
    for i:=1 to n-1 do begin
    z1:=a+i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);

    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    w1:=math.Log10(exp(lng1-lng2));
    if w1*gg<0 then begin
       zmin1:=z1-w1*(z0-z1)/(w0-w1);
    end;
    gg:=w1;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    z0:=z1; w0:=w1;
    end;
    t12:=fx1_(zmin1);
if zmin1=-1 then begin
showmessage('Нет точки минимума!');exit;
end;
x_az:=zmin1;
t_az:=t12;
end;

table2.Edit;
Table2X1_az.Value:=x_az;
Table2T_az.Value:=t_az;
table2.Post;
showmessage('x_az='+floattostr(x_az)+' t_az='+floattostr(t_az));
  form2.chart1.Series[4].clear;form2.chart1.Series[4].tag:=5;
  form2.chart1.Series[5].clear;form2.chart1.Series[5].tag:=6;
  form2.chart1.Series[6].clear;form2.chart1.Series[6].tag:=7;
  form2.chart1.Series[7].clear;form2.chart1.Series[7].tag:=8;
  form2.chart1.Series[8].clear;form2.chart1.Series[8].tag:=9;
  form2.chart1.Series[9].clear;form2.chart1.Series[9].tag:=10;

form2.Chart1.Series[4].Title:='Т1(z1)эфф';
form2.Chart1.Series[5].Title:='Т2(z1)эфф';
form2.Chart1.Series[6].Title:='T1(x1)эксп';
form2.Chart1.Series[7].Title:='Т2(x1)эксп';
form2.Chart1.Series[8].Title:='T1(q1)масс';
form2.Chart1.Series[9].Title:='T2(q1)масс';

 form2.Chart9.Series[0].clear; form2.Chart9.Series[0].tag:=1;
 form2.Chart9.Series[1].clear;form2.Chart9.Series[1].tag:=2;
 form2.Chart9.Series[2].clear; form2.Chart9.Series[2].tag:=3;
 form2.Chart9.Series[3].clear; form2.Chart9.Series[3].tag:=4;
 form2.Chart9.Series[0].title:='y=x';
 form2.Chart9.Series[1].title:='Y1(x)_эфф';
 form2.Chart9.Series[2].title:='Y1(x)_эксп';
 form2.Chart9.Series[3].title:='Y1(x)_масс.';
 form2.chart1.Series[1].clear; form2.Chart1.Series[1].tag:=2;
 form2.chart1.Series[2].clear; form2.Chart1.Series[2].tag:=3;
 form2.chart1.Series[3].clear; form2.Chart1.Series[3].tag:=4;
 form2.chart1.Series[1].title:='T(z1)эфф.';
 form2.chart1.Series[2].title:='T(x1)эксп.';
 form2.chart1.Series[3].title:='T(q1)масс.';

 form2.chart2.Series[0].clear; form2.Chart1.Series[0].tag:=1;
 form2.chart2.Series[1].clear; form2.Chart1.Series[1].tag:=2;
 form2.chart2.Series[2].clear; form2.Chart1.Series[2].tag:=3;
     form3.gs.Cells[0,0]:='i';
    form3.gs.Cells[1,0]:='z1';
    form3.gs.Cells[2,0]:='z2';
    form3.gs.Cells[3,0]:='x1';
    form3.gs.Cells[4,0]:='x2';
    form3.gs.Cells[5,0]:='q1';
    form3.gs.Cells[6,0]:='q2';
    form3.gs.Cells[7,0]:='T12,K';
    form3.gs.Cells[8,0]:='T12,C';
    form3.gs.Cells[9,0]:='w1';
    form3.gs.Cells[10,0]:='w2';
    form3.gs.RowCount:=n;
    form3.gs.ColCount:=11;
 p_1:=p_antuan(T10,a1_ant,b1_ant,c1_ant);
 p_2:=p_antuan(T20,a2_ant,b2_ant,c2_ant);
// p_1:=p1_0;
// p_2:=p2_0;
 g1:=exp(h10/r/t10*(1-t10/t_az))/x_az;
 g2:=exp(h20/r/t20*(1-t20/t_az))/(1-x_az);
 try
 p_az:=Table2Pl_cmecu.Value*pascual/1000;
 except
 p_az:=strtofloat(inputbox('Ввод данных','введите давление азеотропной смеси в кПа',floattostr(101.3)));
 end;
 // 101.3;//в kПаскалях
// p_az:=p_1*x_az*g1+p_2*(1-x_az)*g2;

form3.rg.colcount:=12;
form3.rg.rowcount:=2;
form3.rg.Cells[0,0]:='данные по азеотропу';
form3.rg.Cells[1,0]:='x1';
form3.rg.Cells[2,0]:='x2';
form3.rg.Cells[3,0]:='T,K';
form3.rg.Cells[4,0]:='t,C';
form3.rg.Cells[5,0]:='P';
form3.rg.Cells[6,0]:='P1';
form3.rg.Cells[7,0]:='P2';
form3.rg.Cells[8,0]:='g1';
form3.rg.Cells[9,0]:='g2';
form3.rg.Cells[10,0]:='lng1';
form3.rg.Cells[11,0]:='lng2';
form3.rg.Cells[1,1]:=floattostr(x_az);
form3.rg.Cells[2,1]:=floattostr(1-x_az);
form3.rg.Cells[3,1]:=floattostr(T_az);
form3.rg.Cells[4,1]:=floattostr(T_az-kelvin);
form3.rg.Cells[5,1]:=floattostr(p_az);
form3.rg.Cells[6,1]:=floattostr(p_1);
form3.rg.Cells[7,1]:=floattostr(p_2);
form3.rg.Cells[8,1]:=floattostr(g1);
form3.rg.Cells[9,1]:=floattostr(g2);
form3.rg.Cells[10,1]:=floattostr(lng1);
form3.rg.Cells[11,1]:=floattostr(lng2);

//расчет коэффициентов по модели Ван-Лаара
coef_a:=sqr(1+(1-x_az)/x_az*log10(p_az/p_2)/log10(p_az/p_1))*Log10(p_az/p_1);
coef_b:=sqr(1+x_az/(1-x_az)*log10(p_az/p_1)/log10(p_az/p_2))*Log10(p_az/p_2);
form3.CU.rowcount:=3;
form3.CU.colcount:=3;
form3.CU.Cells[0,0]:='Модель';
form3.CU.Cells[0,1]:='Ван-Лаара';
form3.CU.Cells[1,1]:=floattostr(coef_a);
form3.CU.Cells[2,1]:=floattostr(coef_b);
 lng1:=-ln(x_az)+h10/r/t10*(1-t10/t_az);
 lng2:=-ln(1-x_az)+h20/r/t20*(1-t20/t_az);

//расчет коэффициентов по модели Редлиха-Кистера
    coef_c:=(lng1/2/sqr(1-x_az)-lng2/2/sqr(x_az));
    coef_d:=lng1/sqr(1-x_az)-(3*x_az-(1-x_az))*coef_c;
form3.CU.Cells[0,2]:='Редлиха-Кистера';
form3.CU.Cells[1,2]:=floattostr(coef_c);
form3.CU.Cells[2,2]:=floattostr(coef_d);

 for i:=1 to n-1 do begin
//эффективные мольные доли
    z1:=a+i*h;
    z2:=1-z1;
//экспериментальные мольные доли
x1:=z1/(z1+z2/k12);
x2:=z2/(z2+z1*k12);
//весовые доли
q1:=x1/(x1+x2/m12);
q2:=x2/(x2+x1*m12);
    t12:=fx1_(z1);
    form2.chart1.Series[1].AddXY(z1,t12);
    form2.chart1.Series[2].AddXY(x1,t12);
    form2.chart1.Series[3].AddXY(q1,t12);
end;

for i:=1 to N-1 do begin
 x1:=a+i*h;
 t12:=fx1_(x1);

 p_1:=p_antuan(T12,a1_ant,b1_ant,c1_ant);
 p_2:=p_antuan(T12,a2_ant,b2_ant,c2_ant);

 lng1:=-ln(x1)+h10/r/t10*(1-t10/t12);
 lng2:=-ln(1-x1)+h20/r/t20*(1-t20/t12);
 gg1:=exp(lng1);gg2:=exp(lng2);
 form2.Chart2.Series[0].AddXY(x1,lng1);
 form2.Chart2.Series[1].AddXY(x1,lng2);
 form2.Chart2.Series[2].AddXY(x1,log10(gg1/gg2));

 //w:=p_1*x1+p_2*(1-x1);
 //y1:=p_1*x1/w;
 w:= p_1*x1*gg1/(p_2*(1-x1)*gg2);//gg1,gg2 - после согласования!!!
 y1:=w/(w+1);
 y2:=1-y1;
 //y1:=p_1*x1*gg1/p_az;//??
 //y1:=p_1*x1*gg1/p_az; //(p_1*x1*gg1+p_2*(1-x1)*gg2);
 //y2:=1-y1;
 //y1:=1-y2;
 //y2:=p_2*(1-x2)*gg2/p_az; //(p_1*x1*gg1+p_2*(1-x1)*gg2);
  z1:=y1/(y1+(1-y1)/lambda12);
  q1:=z1/(z1+(1-z1)/m1*m2);
 form2.Chart9.Series[1].AddXY(x1,y1);
 form2.Chart9.Series[2].AddXY(x1,z1);
 form2.Chart9.Series[3].AddXY(x1,q1);
 form2.Chart9.Series[0].AddXY(x1,x1);

 lgg1:=coef_a/sqr(1+coef_a/coef_b*y1/y2);//уравнение Ван-Лаара
 lgg2:=coef_b/sqr(1+coef_b/coef_a*y2/y1);
 g1:=power(10,lgg1);
 g2:=power(10,lgg2);
 lnv1:=h10/r/t10*(1-t10/t12)-ln(g1);
 lnv2:=h20/r/t20*(1-t20/t12)-ln(g2);
//эфф.м.д.
 v1:=exp(lnv1); //левая ветвь  2-го компонента
 v2:=exp(lnv2);//правая ветвь  1-го компонента
//эксп.м.д.
 z1:=v1/(v1+(1-v1)/k12);
 z2:=v2/(v2+(1-v2)*k12); //?
//масс.д.
 q1:=z1/(z1+(1-z1)/m12);
 q2:=z2/(z2+(1-z2)*m12); //?
 if (v1>=a)and(v1<=b) then
   form2.chart1.Series[4].addxy(v1,t12);
 if (1-v2>=a)and(1-v2<=b) then
   form2.chart1.Series[5].addxy(1-v2,t12);
 if (z1>=a)and(z1<=b) then
   form2.chart1.Series[6].addxy(z1,t12);
  if (1-z2>=a)and(1-z2<=b) then
   form2.chart1.Series[7].addxy(1-z2,t12);
 if (q1>=a)and(q1<=b) then
   form2.chart1.Series[8].addxy(q1,t12);
  if (1-q2>=a)and(1-q2<=b) then
   form2.chart1.Series[9].addxy(1-q2,t12);
    form3.gs.Cells[0,i]:=inttostr(i);
    form3.gs.Cells[1,i]:=format('%8.4f',[y1]);
    form3.gs.Cells[2,i]:=format('%8.4f',[y2]);
    form3.gs.Cells[3,i]:=format('%8.4f',[z1]);
    form3.gs.Cells[4,i]:=format('%8.4f',[z2]);
    form3.gs.Cells[5,i]:=format('%8.4f',[q1]);
    form3.gs.Cells[6,i]:=format('%8.4f',[q2]);
    form3.gs.Cells[7,i]:=format('%8.4f',[t12]);
    form3.gs.Cells[8,i]:=format('%8.4f',[t12-kelvin]);
    form3.gs.Cells[9,i]:=format('%8.4f',[v1]);
    form3.gs.Cells[10,i]:=format('%8.4f',[v2]);
form3.vd.cells[1,i]:=floattostr(t12);
form3.vd.cells[2,i]:=floattostr(x1);
form3.vd.cells[3,i]:=floattostr(1-x1);
form3.vd.cells[4,i]:=floattostr(lng1);
form3.vd.cells[5,i]:=floattostr(lng2);
form3.vd.cells[6,i]:=floattostr(gg1);
form3.vd.cells[7,i]:=floattostr(gg2);
form3.vd.cells[8,i]:=floattostr(y1);
form3.vd.cells[9,i]:=floattostr(y2);
form3.vd.cells[10,i]:=floattostr(lgg1);
form3.vd.cells[11,i]:=floattostr(lgg2);
form3.vd.cells[12,i]:=floattostr(g1);
form3.vd.cells[13,i]:=floattostr(g2);
form3.vd.cells[14,i]:=floattostr(lnv1);
form3.vd.cells[15,i]:=floattostr(lnv2);
form3.vd.cells[16,i]:=floattostr(v1);
form3.vd.cells[17,i]:=floattostr(v2);
form3.vd.cells[18,i]:=floattostr(z2);
form3.vd.cells[19,i]:=floattostr(z2);
form3.vd.cells[20,i]:=floattostr(q1);
form3.vd.cells[21,i]:=floattostr(q2);

 g1:=power(10,lgg1);
 g2:=power(10,lgg2);
 lnv1:=h10/r/t10*(1-t10/t12)-ln(g1);
 lnv2:=h20/r/t20*(1-t20/t12)-ln(g2);
//эфф.м.д.
 v1:=exp(lnv1); //левая ветвь  2-го компонента
 v2:=exp(lnv2);//правая ветвь  1-го компонента
//эксп.м.д.
 z1:=v1/(v1+(1-v1)/k12);
 z2:=v2/(v2+(1-v2)*k12); //?
//масс.д.
 q1:=z1/(z1+(1-z1)/m12);
 q2:=z2/(z2+(1-z2)*m12); //?
  if (v1>=a)and(v1<=b) then
   form2.chart1.Series[10].addxy(v1,t12);
  if (1-v2>=a)and(1-v2<=b) then
   form2.chart1.Series[11].addxy(1-v2,t12);
   if (z1>=a)and(z1<=b) then
   form2.chart1.Series[12].addxy(z1,t12);
   if (1-z2>=a)and(1-z2<=b) then
   form2.chart1.Series[13].addxy(1-z2,t12);
   if (q1>=a)and(q1<=b) then
   form2.chart1.Series[14].addxy(q1,t12);
   if (1-q2>=a)and(1-q2<=b) then
   form2.chart1.Series[15].addxy(1-q2,t12);
end;
form3.VD.RowCount:=n;
form3.VD.ColCount:=34;
form2.show;
form3.Show;
end;

end;

procedure TForm1.popupn5Click(Sender: TObject);
var t,t0,t1,th,tp,tk,tkr,zkr,hp,hk,hpl,hvp:myreal;
    nt,i:integer;
begin
try
tp:=Table1Temperature.value+kelvin;
tk:=Table1T_Kelvin.value+kelvin;
hp:=Table1Teplota.value;
hk:=Table1H_kipen.value;
zkr:=Table1Z_kr.value;
tkr:=Table1T_kr.value;
T0:=strtofloat(edit7.text)+kelvin;
T1:=strtofloat(edit8.text)+kelvin;
nt :=SpinEdit1.Value;
th:=(t1-t0)/nt;
 form2.chart11.Series[0].clear;
 form2.chart11.Series[0].tag:=1;
 form2.chart11.Series[0].title:='H_melting';
 form2.chart11.Series[1].clear;
 form2.chart11.Series[1].tag:=2;
 form2.chart11.Series[1].title:='H_vapour';
 form2.chart11.BottomAxis.Title.Caption:='T, К';
 form3.gh.rowcount:=nt+2;
 form3.gh.colcount:=4;
 form3.gh.cells[0,0]:='i';
 form3.gh.cells[1,0]:='T,K';
 form3.gh.cells[2,0]:='H_melting';
 form3.gh.cells[3,0]:='H_vapour';
for i:=0 to nt do begin
   t:=t0+i*th;
try
   hpl:=hp*power((tkr-t)/(tkr-tp),sqr(zkr)*(t-tp)/(tkr-tp)+zkr);
   hvp:=hk*power((tkr-t)/(tkr-tk),sqr(zkr)*(t-tk)/(tkr-tk)+zkr);
except
end;
   form3.gh.Cells[0,i+1]:=inttostr(i);
   form3.gh.Cells[1,i+1]:=floattostr(t);
   form3.gh.Cells[2,i+1]:=floattostr(hpl);
   form3.gh.Cells[3,i+1]:=floattostr(hvp);
   form2.chart11.Series[0].Addxy(t,hpl);
   form2.chart11.Series[1].Addxy(t,hvp);
   end;
   if form4.Table6.RecordCount>0 then begin
   form2.chart11.Series[2].clear;
   form2.chart11.Series[2].tag:=3;
   form2.chart11.Series[2].title:='H_пар, эксп.';

   form4.Table6.First;
   for i:=1 to form4.Table6.RecordCount do begin
   t:=form4.Table6T_K.value;
   hvp:=form4.table6h_isp.value;
   form2.chart11.Series[2].Addxy(t,hvp);
   form4.Table6.Next;
   end;
   end;
   form3.Show;
form2.Show;
except
exit;
end;
end;

procedure TForm1.menuN2_16Click(Sender: TObject);
var flag,flag1:boolean;
    i,j,m,nk,kk:integer;
    a1_lg,b1_lg,c1_lg,d1_lg,
    a2_lg,b2_lg,c2_lg,d2_lg,
    c,lgg1,lgg2,k1,k2,l12,l1,l2,
    lambda1,lambda2,k12,lambda12,m12,gg1,gg2,
    betta,betta1,betta2,tau1,tau2,
    g1,g2,p10_fp,p20_fp,t10_fp,t20_fp,lng1,lng2,
    epss,zmin2,delta,logg12,
    sigma,ht,z1,z2,d,zmin1,g0,ge,lgG12,asd,r0,r1,s1,s2 :myreal;
    old:string;
    a:masd;
z,t,tr,g,gl:array[1..3]of masd;

begin
//Расчет температуры вспышки
//x1*g1*P1/P1_0_fp+x2*g2*P2/P2_0_fp=1
//log P1=A1-B1/(T+C1)
//log P2=A2-B2/(T+C2)
if i3=0 then
//2
begin
try
 tau1:=Table2tau1.Value; tau2:=Table2tau2.Value;
 k1:=Table2K1.Value/tau1; k2:=Table2K2.Value/tau2;
except
 k1:=1;k2:=1;tau1:=1;tau2:=1;
end;
try
 lambda1:=Table2Lambda1.Value;
 lambda2:=Table2Lambda2.Value;
 except
 lambda1:=1; lambda2:=1;
end;
 k12:=k1/k2;
 lambda12:=lambda1/lambda2;
 m12:=m1*k1/m2/k2;
 t10:=tk1;t20:=tk2;        //температура кипения в К
 try
old:=table2.Bookmark;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
table1.FindKey([i1]);
 t10_fp:=Table1T_fp.Value;
 a1_lg:=Table1A_lg.Value;
 b1_lg:=Table1B_lg.Value;
 c1_lg:=Table1C_lg.Value;
 d1_lg:=Table1D_lg.Value;
table1.FindKey([i2]);
 t20_fp:=Table1T_fp.Value;
 a2_lg:=Table1A_lg.Value;
 b2_lg:=Table1B_lg.Value;
 c2_lg:=Table1C_lg.Value;
 d2_lg:=Table1D_lg.Value;
table1.FindKey([i1]);
table2.Bookmark:=old;
 except
 t10_fp:=strtofloat(inputbox('Ввод данных','Введите температуру вспышки 1-го компонента, С',floattostr(t10-kelvin)))+kelvin;
 t20_fp:=strtofloat(inputbox('Ввод данных','Введите температуру вспышки 2-го компонента, С',floattostr(t20-kelvin)))+kelvin;
 end;
 //температура вспышки
 h10:=hk1*k1;h20:=hk2*k2;
 n:=form1.Fn.Value;   m:=n;
 nk:=form4.table3.recordcount;//
 flag1:=false;
 n:=form1.Fn.Value;h:=1/n;n:=n-1;flag1:=true;
//термодинамическое согласование жидкость-пар
 t1:=tk1;t2:=tk2;        //температура кипения
 h10:=hk1*k1;h20:=hk2*k2;//???
   //h10:=h1;h20:=h2;
   // h10:=hk1;h20:=hk2;
   t10:=t1;t20:=t2;
    n:=form1.Fn.Value;
    form3.RT.rowcount:=n;
    form3.RT.ColCount:=9;
    form3.rt.cells[1,0]:='z1';
    form3.rt.cells[2,0]:='z2';
    form3.rt.cells[3,0]:='T,K';
    form3.rt.cells[4,0]:='T,C';
    form3.rt.cells[5,0]:='ln G1';
    form3.rt.cells[6,0]:='ln G2';
    form3.rt.cells[7,0]:='G_E';
    form3.rt.cells[8,0]:='lg G1/G2';
    form2.Chart2.Series[0].Clear;form2.Chart2.Series[0].tag:=1;
    form2.Chart2.Series[1].Clear;form2.Chart2.Series[1].tag:=2;
    form2.Chart2.Series[2].Clear;form2.Chart2.Series[2].tag:=3;
    form2.Chart2.Series[3].Clear;form2.Chart2.Series[3].tag:=4;
    form2.Chart1.Series[0].Clear;form2.Chart1.Series[0].tag:=1;
    form2.Chart5.Series[3].Clear; form2.Chart5.Series[3].tag:=4;
    form2.Chart2.Series[0].title:='ln gamma1(z1)';
    form2.Chart2.Series[1].title:='ln gamma2(z1)';
    form2.Chart2.Series[2].title:='lg gamma1/gamma2(z1)';
    form2.Chart5.Series[3].title:='ln G_E(z1)';
    form2.Chart1.Series[0].title:='T(z1)';

    h:=1/n;
    setlength(z[1],n+1);
    setlength(g[1],n+1);
    setlength(g[2],n+1);
    setlength(t[1],n+1);
    setlength(gl[1],n+1);
    setlength(z[2],nk+1);
    setlength(t[2],nk+1);
    setlength(tr[2],n+1);
    form4.table3.first;
 form2.Chart1.Series[0].clear;
 form2.Chart1.Series[0].title:='x1_mol(T)-эксп.';
 form2.Chart1.Series[0].tag:=1;
 form2.chart1.Series[1].clear;
 form2.Chart1.Series[1].title:='x2_mol(T)-эксп.';
 form2.chart1.Series[1].tag:=2;
 form3.gr.colcount:=5;
 form3.gr.rowcount:=nk+1;
    form3.GR.Cells[0,0]:='i';
    form3.GR.Cells[0,1]:='x1, mol';
    form3.GR.Cells[0,2]:='x2, mol';
    form3.GR.Cells[0,3]:='T,K';
    form3.GR.Cells[0,4]:='T,C';
    for i:=1 to nk do begin
    if form4.Table3X1mol.Value<>0 then
    z[2,i]:=form4.Table3X1mol.Value else
    z[2,i]:=1-form4.Table3X2mol.Value;
    if form4.Table3T1K.Value<>0 then
    t[2,i]:=form4.Table3T1K.Value
    else t[2,i]:=form4.Table3T1c.Value+kelvin;
    // form2.Chart1.Series[0].AddXY(z[2,i],t[2,i]-kelvin);
     form2.Chart1.Series[1].AddXY(z[2,i],t[2,i]-kelvin);

    form4.Table3.Next;
    form3.GR.Cells[0,i]:=inttostr(i);
    form3.GR.Cells[1,i]:=floattostr(z[2,i]);
    form3.GR.Cells[2,i]:=floattostr(1-z[2,i]);
    form3.GR.Cells[3,i]:=floattostr(t[2,i]);
    form3.GR.Cells[4,i]:=floattostr(t[2,i]-kelvin);
    end;


    zmin1:=-1;
    g0:=1;flag:=true;
    for i:=1 to n-1 do begin
    z1:=i*h;
    z2:=1-z1;
    try
    t12:=fx1_(z1);
    lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(z2)+h20/r/t20*(1-t20/t12);
    ge:=(z1*lng1+z2*lng2)*r*t12;//???????
    lgG12:=math.Log10(exp(lng1-lng2));
    z[1,i]:=z1;
    t[1,i]:=fx1_(z1);
    g[1,i]:=exp(lng1);
    g[2,i]:=exp(lng2);
    gl[1,i]:=lgG12;
    if lgG12*g0<0 then begin
       if flag then begin
       i1:=i;i2:=i-1;
       asd:=(z[1,i2]-z[1,i1])/(gl[1,i2]-gl[1,i1]);
       zmin1:=(-asd*gl[1,i1]+z[1,i1]);
      // zmin1:=z1;
        flag:=false; end;
    end;
    g0:=lgG12;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    form3.rt.cells[1,i]:=format('%5.3f',[z1]);
    form3.rt.cells[2,i]:=format('%5.3f',[z2]);
    form3.rt.cells[3,i]:=format('%5.3f',[t12]);
    form3.rt.cells[4,i]:=format('%5.3f',[t12-kelvin]);
    form3.rt.cells[5,i]:=format('%8.6f',[lng1]);
    form3.rt.cells[6,i]:=format('%8.6f',[lng2]);
    form3.rt.cells[7,i]:=format('%8.6f',[ge]);
    form3.rt.cells[8,i]:=format('%8.6f',[lgG12]);
    form2.Chart2.Series[0].AddXY(z1,lng1);
    form2.Chart2.Series[1].AddXY(z1,lng2);
    form2.Chart2.Series[2].AddXY(z1,lgg12);
    form2.Chart5.Series[3].AddXY(z1,ge);
    form2.Chart1.Series[0].AddXY(z1,t12-kelvin);
    end;
    if flag then
      zmin1:=strtofloat(inputbox('Введите данные','Точка минимума для V_E при T=const или для H_E приP=const',floattostr(0.5)));

    // showmessage('до термодинамического согласования '+chr(13)+
  //   'z_min='+format('%5.3f',[zmin1]));
//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
z1:=zmin1;r1:=1;  //exit;
epss:=0.01;zmin2:=z1; r0:=0;  j:=0;
while (abs(r1)>epss)and(j<=50000) do begin
    //интегралы
 g1:=fr3(z1,a,4);  inc(j);
 s1:=0;s2:=0; flag:=true;
 lgg12:=fr3(z[1,1],a,4)-g1;
 for i:=2 to n-1 do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
 if (lgg12>0)and(g0>0) then begin
        //if flag then begin
        zmin2:=z[1,i]+h/2;
        flag:=false;
       // end;
 end;
 lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);
 if r1>0 then z1:=z1+h/2 else z1:=z1-h/2;
 if (abs(r1)<=0.05) and (abs(z1-r0)<=h/2) then break;
 r0:=z1;
end;
 if (abs(r1)<=eps*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
form2.Chart2.Series[3].clear; form2.Chart2.Series[3].tag:=4;

 for i:=1 to n-1 do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 form2.Chart2.Series[3].AddXY(z[1,i],g0);
 end;
(*
//после термодинамического согласования
 l12:=zmin1/(1-zmin1)/zmin2*(1-zmin2);
    find(l1,l2,l12);

   { table2.Edit;
    Table2.FieldByName('k1').AsFloat:=l1;
    Table2.FieldByName('k2').AsFloat:=l2;
   // Table2.FieldByName('lambda1').AsFloat:=lambda1;
   // Table2.FieldByName('lambda2').AsFloat:=lambda2;
    table2.Post;}
showmessage('после проверки термодинамического согласования'+chr(13)+
 ' S1-S2='+floattostr(abs(r1))+' z_min='+floattostr(zmin2)+chr(13)+
 ' k1/k2='+floattostr(l12)+' k1='+floattostr(k1)+' l2='+floattostr(l2));//k1,k2

//после согласования
//h10:=hk1/l12;h20:=hk2*l12;  //??
h10:=hk1*k1/l12;h20:=hk2*k2*l12;  //??
//h10:=h1/l12;h20:=h2*l12;
m12:=m1*l1/m2/l2;

z1:=zmin1;r1:=1;  //exit;
epss:=0.01;zmin2:=z1; r0:=0;  j:=0;
while (abs(r1)>epss)and(j<=50000) do begin
    //интегралы
 g1:=fr3(z1,a,4);  inc(j);
 s1:=0;s2:=0; flag:=true;
 lgg12:=fr3(z[1,1],a,4)-g1;
 for i:=2 to n-1 do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 if (lgg12<0) and (g0<0) then
  s1:=s1+(g0+lgg12)/2*(z[1,i]-z[1,i-1])
 else
  s2:=s2+abs(g0+lgg12)/2*(z[1,i]-z[1,i-1]);
 if (lgg12>0)and(g0>0) then begin
        //if flag then begin
        zmin2:=z[1,i]+h/2;
        flag:=false;
       // end;
 end;
 lgg12:=g0;
 end;
 r1:=abs(s1)-abs(s2);
 if r1>0 then z1:=z1+h/2 else z1:=z1-h/2;
 if (r1<=0.05) and (abs(z1-r0)<=h/2) then break;
 r0:=z1;
end;
 if (abs(r1)<=eps*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
form2.Chart2.Series[8].clear;form2.Chart2.Series[8].tag:=9;
form2.Chart2.Series[8].Title:='Ж-П Lg Gamma1/Gamma2 - согласованное';
 for i:=1 to n-1 do
 begin
 g0:=fr3(z[1,i],a,4)-g1;
 form2.Chart2.Series[8].AddXY(z[1,i],g0);
 end;
showmessage('после проверки термодинамического согласования'+chr(13)+
' S1-S2='+floattostr(abs(r1)));
 *)
 //коэффициенты для ln gamma1 и ln gamma2
 setlength(gl[2],n+1);
   for i:=1 to n do gl[2,i]:=gl[1,i];//-g1;
   setlength(a,5);
   polynrecurs(z[1],gl[2],n,4,a,r1);
   d:=-a[4]/16;
   c:=-(a[3]-24*d)/6;
   b:=-(a[2]+10*d-6*c)/2;
   //if abs((b-c+d)-a[1])>eps then exit;
  form2.Chart2.Series[9].clear;
  form2.Chart2.Series[9].tag:=10;
form2.Chart2.Series[9].Title:='Ж-П Gamma1';

form2.Chart2.Series[10].clear;
form2.Chart2.Series[10].tag:=11;
form2.Chart2.Series[10].Title:='Ж-П Gamma2';

    form3.TS.Cells[7,0]:='Ж-П gamma1';
    form3.TS.Cells[8,0]:='Ж-П gamma2';
    form3.TS.Cells[9,0]:='Ж-П Lg (gamma1/gamma2)';
    form3.TS.Cells[10,0]:='Ж-П Ln gamma1';
    form3.TS.Cells[11,0]:='Ж-П Ln gamma2';
    form3.TS.ColCount:=12;

   for i:=1 to n do
   begin
   z1:=z[1,i];
   lgg1:=sqr(1-z1)*(b+c*(4*z1-1)+d*(12*sqr(z1)-8*z1+1));
   lgg2:=sqr(z1)*(b+c*(4*z1-3)+d*(12*sqr(z1)-16*z1+5));
   g[1,i]:=power(10,lgg1);
   g[2,i]:=power(10,lgg2);
    form2.Chart2.Series[9].AddXY(z1,g[1,i]);
    form2.Chart2.Series[10].AddXY(z1,g[2,i]);

    form3.TS.Cells[7,i]:=floattostr(g[1,i]);
    form3.TS.Cells[8,i]:=floattostr(g[2,i]);
    form3.TS.Cells[9,i]:=floattostr(gl[2,i]);
    form3.TS.Cells[10,i]:=floattostr(ln(g[1,i]));
    form3.TS.Cells[11,i]:=floattostr(Ln(g[2,i]));
   end;

 t10:=tk1;t20:=tk2;        //температура кипения
 h10:=hk1*k1;h20:=hk2*k2;

 if t20_fp>t10_fp
 then begin t0:=t10_fp-50; t1:=t20_fp+50; end
 else begin t0:=t20_fp-50; t1:=t10_fp+50; end;
 ht:=(t1-t0)/m;
 //try
 //p10_fp:=exp(-a1_lg/t10_fp+b1_lg*ln(T10_fp)+C1_lg*t10_fp+d1_lg);
 //p20_fp:=exp(-a2_lg/t20_fp+b2_lg*ln(T20_fp)+C2_lg*t20_fp+d2_lg);
 //except
 p10_fp:=p_antuan(T10_fp,a1_ant,b1_ant,c1_ant);
 p20_fp:=p_antuan(T20_fp,a2_ant,b2_ant,c2_ant);
 //end;
 form2.chart1.Series[2].clear;
 form2.chart1.Series[2].title:='T_fp Ж-П';
 form2.chart1.Series[2].tag:=3;
 form2.chart2.Series[7].clear;
 form2.chart2.Series[7].tag:=8;
 form2.chart2.Series[8].clear;
 form2.chart2.Series[8].tag:=9;
 form3.tf.cells[0,0]:='i';
 form3.tf.cells[1,0]:='z1';
 form3.tf.cells[2,0]:='z2';
 form3.tf.cells[3,0]:='g1';
 form3.tf.cells[4,0]:='g2';
 form3.tf.cells[5,0]:='ln g1';
 form3.tf.cells[6,0]:='ln g2';
 form3.tf.cells[7,0]:='P1';
 form3.tf.cells[8,0]:='P2';
 form3.tf.cells[9,0]:='t12,K';
 form3.tf.cells[10,0]:='t12,C';
 form3.tf.cells[11,0]:='t12,delta';
 form3.tf.cells[12,0]:='ж-п g1';
 form3.tf.cells[13,0]:='ж-п g2';
 form3.tf.cells[14,0]:='ж-п ln g1';
 form3.tf.cells[15,0]:='ж-п ln g2';
 form3.tf.cells[16,0]:='ж-п P1';
 form3.tf.cells[17,0]:='ж-п P2';
 form3.tf.cells[18,0]:='ж-п t12,K';
 form3.tf.cells[19,0]:='ж-п t12,C';
 form3.tf.cells[20,0]:='ж-п t12,delta';
 form3.tf.rowcount:=n+1;
 form3.tf.ColCount:=21;
 for i:=1 to n do begin
    z1:=z[1,i];
    z2:=1-z1;
    g1:=exp(ln(g[1,i])/k1); //
    g2:=exp(ln(g[2,i])/k2); //
    for j:=0 to m do begin
    t12:=t0+j*ht;
   // t12:=fx1_(z1);
  // try
   //по эмпирической формуле
   // p1:=exp(-a1_lg/t12+b1_lg*ln(T12)+C1_lg*t12+d1_lg);
   // p2:=exp(-a2_lg/t12+b2_lg*ln(T12)+C2_lg*t12+d2_lg);
 //except
    p1:=p_antuan(t12,a1_ant,b1_ant,c1_ant);
    p2:=p_antuan(t12,a2_ant,b2_ant,c2_ant);
 //end;

    d:=abs(1-(z1*g1*p1/p10_fp+z2*g2*p2/p20_fp));
    if d<=epss then break;
    end;
    tr[2,i]:=t12;
    form2.chart1.Series[2].AddXY(z1,t12-kelvin);
    form2.chart2.Series[7].AddXY(z1,g1);
    form2.chart2.Series[8].AddXY(z1,g2);
      form3.tf.cells[0,i]:=floattostr(i);
      form3.tf.cells[1,i]:=floattostr(z1);
      form3.tf.cells[2,i]:=floattostr(z2);
      form3.tf.cells[12,i]:=floattostr(g[1,i]);
      form3.tf.cells[13,i]:=floattostr(g[2,i]);
      form3.tf.cells[14,i]:=floattostr(ln(g[1,i]));
      form3.tf.cells[15,i]:=floattostr(ln(g[2,i]));
      form3.tf.cells[16,i]:=floattostr(p1);
      form3.tf.cells[17,i]:=floattostr(p2);
      form3.tf.cells[18,i]:=floattostr(t12);
      form3.tf.cells[19,i]:=floattostr(t12-kelvin);
      form3.tf.cells[20,i]:=floattostr(d);
end;
 //погрешность
        s1:=0;k:=0;  s2:=0;
   for i:=1 to nk do begin
      J:=poisk_mas_abs(z[2,i],z[1],n);
      if (j>0) then begin
        inc(k);
        s1:=s1+sqr(tr[2,j]-t[2,i]);
        s2:=s2+abs(tr[2,j]-t[2,i]);
      end;
   end;
   if k>0 then  begin
   sigma:=sqrt(s1/(k-2));
   showmessage('sigma='+floattostr(sigma)+
   ' delta='+floattostr(s2/k));
   end;
form2.show;
form3.Show;
end;
end;

end.


