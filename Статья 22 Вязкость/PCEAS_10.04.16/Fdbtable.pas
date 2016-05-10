unit Fdbtable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, math,DB, comobj,DBTables, Grids, DBGrids, ComCtrls, Menus,MyFunct,
  ExtCtrls, DBCtrls;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    Table3: TTable;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Table2: TTable;
    DataSource2: TDataSource;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    Table4: TTable;
    DataSource4: TDataSource;
    Table1: TTable;
    Table1Id: TAutoIncField;
    Table1Name: TStringField;
    Table1Teplota: TFloatField;
    Table1Temperature: TFloatField;
    Table1MolMassa: TFloatField;
    Table1H_teplota: TFloatField;
    Table1T_Kelvin: TFloatField;
    Table4Id: TAutoIncField;
    Table4Id_experiments: TIntegerField;
    Table4VE: TFloatField;
    PopupMenu1: TPopupMenu;
    N12365: TMenuItem;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    DataSource5: TDataSource;
    Table5: TTable;
    Table4Ro12: TFloatField;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    PopupMenu4: TPopupMenu;
    MenuItem2: TMenuItem;
    PopupMenu5: TPopupMenu;
    MenuItem3: TMenuItem;
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
    TabSheet6: TTabSheet;
    Table6: TTable;
    DBGrid6: TDBGrid;
    DataSource6: TDataSource;
    PopupMenu6: TPopupMenu;
    N3: TMenuItem;
    Table6Id: TAutoIncField;
    Table6Id_ingradient: TIntegerField;
    Table6H_isp: TFloatField;
    Table6T_K: TFloatField;
    Table6P_lg: TFloatField;
    Table6P_sg: TFloatField;
    Table6P_ls: TFloatField;
    Table1P_kipen: TFloatField;
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
    StatusBar1: TStatusBar;
    TabSheet7: TTabSheet;
    DBGrid7: TDBGrid;
    Table7: TTable;
    DataSource7: TDataSource;
    Table7Id: TAutoIncField;
    Table7Id_ingredient: TIntegerField;
    Table7Cp_mol: TFloatField;
    Table7T_K: TFloatField;
    Table1Cp_mol: TFloatField;
    Table1A_Cp: TFloatField;
    Table1B_Cp: TFloatField;
    Table1C_Cp: TFloatField;
    Table1D_Cp: TFloatField;
    PopupMenu7: TPopupMenu;
    CpABTCT2DT31: TMenuItem;
    CpABTCT21: TMenuItem;
    CpABTCT22: TMenuItem;
    CpABTCT2DT32: TMenuItem;
    CpABTCT23: TMenuItem;
    CpABTCT24: TMenuItem;
    const1: TMenuItem;
    const21: TMenuItem;
    const31: TMenuItem;
    N4: TMenuItem;
    TabSheet8: TTabSheet;
    Table8: TTable;
    DBGrid8: TDBGrid;
    DataSource8: TDataSource;
    Table8Id: TAutoIncField;
    Table8Id_experiments: TIntegerField;
    Table8HE: TFloatField;
    PopupMenu8: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    menux1: TMenuItem;
    N8: TMenuItem;
    Table1H_kipen: TFloatField;
    Table1Formula: TStringField;
    Table1Literature: TStringField;
    Table3Id: TAutoIncField;
    Table3Id_experiments: TIntegerField;
    Table3X1mas: TFloatField;
    Table3X2mas: TFloatField;
    Table3X1mol: TFloatField;
    Table3X2mol: TFloatField;
    Table3T1C: TFloatField;
    Table3T2C: TFloatField;
    Table3T1K: TFloatField;
    Table3T2K: TFloatField;
    Table3Y1mas: TFloatField;
    Table3Y2mas: TFloatField;
    Table3Y1mol: TFloatField;
    Table3Y2mol: TFloatField;
    Table3Gamma1: TFloatField;
    Table3Gamma2: TFloatField;
    Table3LnGamma1: TFloatField;
    Table3LnGamma2: TFloatField;
    Table4X1mas: TFloatField;
    Table4X2mas: TFloatField;
    Table4X1mol: TFloatField;
    Table4X2mol: TFloatField;
    Table5Id: TAutoIncField;
    Table5Id_experiments: TIntegerField;
    Table5P: TFloatField;
    Table5X1mol: TFloatField;
    Table5X2mol: TFloatField;
    Table5Y1mol: TFloatField;
    Table5Y2mol: TFloatField;
    Table5X1mas: TFloatField;
    Table5X2mas: TFloatField;
    Table5Y1mas: TFloatField;
    Table5Y2mas: TFloatField;
    Table8X1mas: TFloatField;
    Table8X2mas: TFloatField;
    Table8X1mol: TFloatField;
    Table8X2mol: TFloatField;
    Table8Y1mas: TFloatField;
    Table8Y2mas: TFloatField;
    Table8Y1mol: TFloatField;
    Table8Y2mol: TFloatField;
    Table10: TTable;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
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
    Table2names1: TStringField;
    Table2names2: TStringField;
    N123: TMenuItem;
    Table2Tau1: TFloatField;
    Table2Tau2: TFloatField;
    Table2Tau3: TFloatField;
    P2P11: TMenuItem;
    Table1Koef_teplota: TSmallintField;
    Table1Koef_kipen: TSmallintField;
    Table2R1: TFloatField;
    Table2R2: TFloatField;
    Table2R3: TFloatField;
    menux2: TMenuItem;
    Table2T_az: TFloatField;
    Table1T_fp: TFloatField;
    Table2Information: TStringField;
    Table1C_Simona: TFloatField;
    Table1V_ls: TFloatField;
    Table1Ro_l: TFloatField;
    Table1Ro_s: TFloatField;
    Table1Ro_g: TFloatField;
    Table1H_tr: TFloatField;
    Table1V_tr: TFloatField;
    TabSheet9: TTabSheet;
    Table9: TTable;
    DataSource9: TDataSource;
    Table9Id: TAutoIncField;
    Table9Id_ingredient: TIntegerField;
    Table9P_MPa: TFloatField;
    Table9T_K: TFloatField;
    Table9V: TFloatField;
    popupmenu9: TPopupMenu;
    MenuItem9: TMenuItem;
    DBGrid9: TDBGrid;
    Table1A_V: TFloatField;
    Table1B_V: TFloatField;
    Table1C_V: TFloatField;
    PVT1: TMenuItem;
    dV1: TMenuItem;
    Table9P_mm: TFloatField;
    Table9P_atm: TFloatField;
    Table9T_C: TFloatField;
    popup18: TMenuItem;
    menuPTHlg: TMenuItem;
    menuPTHsl: TMenuItem;
    menuHTsl: TMenuItem;
    log101: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure CpABTCT2DT32Click(Sender: TObject);
    procedure CpABTCT23Click(Sender: TObject);
    procedure CpABTCT24Click(Sender: TObject);
    procedure const1Click(Sender: TObject);
    procedure const21Click(Sender: TObject);
    procedure const31Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Form1muneN7Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure menux1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CpABTCT2DT31Click(Sender: TObject);
    procedure CpABTCT21Click(Sender: TObject);
    procedure CpABTCT22Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure N123Click(Sender: TObject);
    procedure P2P11Click(Sender: TObject);
    procedure menux2Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure PVT1Click(Sender: TObject);
    procedure dV1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid9DblClick(Sender: TObject);
    procedure popup18Click(Sender: TObject);
    procedure menuPTHlgClick(Sender: TObject);
    procedure menuPTHslClick(Sender: TObject);
    procedure menuHTslClick(Sender: TObject);
    procedure log101Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  p1,p2,h1,h2,m1,m2,a10,a20,b10,b20,c10,c20,a30,b30,c30,t0,
  hs1,hs2,hk1,hk2,
  tc:MyReal;
  xm,ym,g,gl,yv,xv,t,tl:array[1..4]of masd;
  //n:integer;

implementation
 uses tablica,grafik,main,foronecomponent;
{$R *.dfm}

procedure TForm4.MenuItem1Click(Sender: TObject);
var nk,m,n1,n2,i1,i2,i,n:integer;
h,s,mint,t1,t2,h1,h2,m1,m2,r1,r2,min,minx,g1,g2,tt,xl,zl:MyReal;
p1,p2:masd;
xv,xm,t,tl,z:array[1..4]of masd;
old:string;
begin
// расчет эвтектических точек
old:=table2.Bookmark;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
table1.FindKey([i1]);
h1:=Table1Teplota.value;
t1:=Table1Temperature.value+kelvin;
m1:=Table1MolMassa.value;
table1.FindKey([i2]);
h2:=Table1Teplota.value;
t2:=Table1Temperature.value+kelvin;
m2:=Table1MolMassa.value;
table1.FindKey([i1]);
table2.Bookmark:=old;
n:=table3.RecordCount;
setlength(xm[1],n+1);
setlength(xm[2],n+1);
setlength(xv[1],n+1);
setlength(xv[2],n+1);
setlength(t[1],n+1);
setlength(t[2],n+1);
setlength(tl[1],n+1);
setlength(tl[2],n+1);
form2.Chart2.Series[1].clear;
form2.Chart2.Series[0].clear;
form2.Chart1.Series[1].clear;
form2.Chart1.Series[0].clear;
form2.Chart1.Series[2].clear;
form2.Chart1.Series[3].clear;
form2.Chart2.Series[1].tag:=2;
form2.Chart2.Series[0].tag:=1;
form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[3].tag:=4;
n1:=0;n2:=0;
table3.First;
for i:=1 to N do begin
if (Table3X1mas.Value<>0)then begin
   table3.Edit;
   Table3X2mas.Value:=1-Table3X1mas.Value;table3.post;end;
if Table3X2mas.Value<>0 then begin
   table3.Edit;
   Table3X1mas.Value:=1-Table3X2mas.Value;table3.post; end;
table3.Edit;
Table3X1mol.Value:=Table3X1mas.Value/m1/(Table3X1mas.Value/m1+Table3X2mas.value/m2);
Table3X2mol.Value:=Table3X2mas.value/m2/(Table3X1mas.Value/m1+Table3X2mas.value/m2);
table3.post;
table3.Edit;
xm[1,i]:=Table3X1mol.Value;
xm[2,i]:=Table3X2mol.value;
xv[1,i]:=Table3X1mas.Value;
xv[2,i]:=Table3X2mas.value;

if Table3T1C.Value<>0 then begin
   inc(n1);
   Table3T1K.Value:=Table3t1c.Value+Kelvin;
   t[1,i]:=Table3T1K.Value;
   Tl[1,i]:=H1/R/T1*(1-T1/T[1,i])-ln(Xm[1,i]);
   Tl[2,i]:=H2/R/T2*(1-T2/T[1,i])-ln(Xm[2,i]);
   form2.Chart2.Series[0].AddXY(xm[1,i],tl[1,i]);
   form2.Chart1.Series[0].AddXY(xm[1,i],t[1,i]);
   form2.Chart1.Series[2].AddXY(xv[1,i],t[1,i]);
end;
if Table3T2C.Value<>0 then begin
    inc(n2);
   Table3T2K.Value:=Table3t2c.Value+Kelvin;
   t[2,i]:=Table3T2K.Value;
   Tl[1,i]:=H1/R/T1*(1-T1/T[2,i])-ln(Xm[1,i]);
   Tl[2,i]:=H2/R/T2*(1-T2/T[2,i])-ln(Xm[2,i]);
   form2.Chart2.Series[1].AddXY(xm[1,i],tl[2,i]);
   form2.Chart1.Series[1].AddXY(xm[1,i],t[2,i]);
   form2.Chart1.Series[3].AddXY(Xv[1,i],t[2,i]);
end;
table3.post;
table3.Next;
end;

form3.RG.ColCount:=9;
form3.RG.RowCount:=n+1;
form3.RG.Cells[0,0]:='i';
form3.RG.Cells[1,0]:='X1m';
form3.RG.Cells[2,0]:='X2m';
form3.RG.Cells[3,0]:='Ln1';
form3.RG.Cells[4,0]:='Ln2';
form3.RG.Cells[5,0]:='T1';
form3.RG.Cells[6,0]:='T2';
form3.RG.Cells[7,0]:='X1v';
form3.RG.Cells[8,0]:='X2v';
for i:=1 to n do begin
form3.RG.Cells[0,i]:=inttostr(i);
form3.RG.Cells[1,i]:=floattostr(xm[1,i]);
form3.RG.Cells[2,i]:=floattostr(xm[2,i]);
form3.RG.Cells[3,i]:=floattostr(tl[1,i]);
form3.RG.Cells[4,i]:=floattostr(tl[2,i]);
form3.RG.Cells[5,i]:=floattostr(t[1,i]);
form3.RG.Cells[6,i]:=floattostr(t[2,i]);
form3.RG.Cells[7,i]:=floattostr(xv[1,i]);
form3.RG.Cells[8,i]:=floattostr(xv[2,i]);
end;
//прогноз по 5 точкам
k:=2;nk:=k+n;
//левая ветвь ликвидуса
setlength(z[1],k+1);
setlength(z[2],k+1);
for i:=1 to k do begin
  z[1,i]:=xm[1,n-n2-i+1];
  z[2,i]:=t[1,n-n2-i+1];
end;
//рекурсия для Т
setlength(p1,4);
polynrecurs(z[1],z[2],k,3,p1,r1);

//правая ветвь ликвидуса
setlength(z[3],k+1);
setlength(z[4],k+1);
for i:=1 to k do begin
  z[3,i]:=xm[1,n1+i];
  z[4,i]:=t[2,n1+i];
end;
//рекурсия для Т
setlength(p2,4);
polynrecurs(z[3],z[4],k,3,p2,r2);

 form3.UR.cells[1,0]:='T1';
 form3.UR.cells[0,1]:='a0';
 form3.UR.cells[0,2]:='a1';
 form3.UR.cells[0,3]:='a2';
 form3.UR.cells[0,4]:='R';
 form3.UR.cells[1,1]:=floattostr(p1[1]);
 form3.UR.cells[1,2]:=floattostr(p1[2]);
 form3.UR.cells[1,3]:=floattostr(p1[3]);
 form3.UR.cells[1,4]:=floattostr(r1);
 form3.UR.cells[2,0]:='T2';
 form3.UR.cells[2,1]:=floattostr(p2[1]);
 form3.UR.cells[2,2]:=floattostr(p2[2]);
 form3.UR.cells[2,3]:=floattostr(p2[3]);
 form3.UR.cells[2,4]:=floattostr(r2);

 form2.Chart4.Series[0].Clear;
 form2.Chart4.Series[1].Clear;
 form2.Chart4.Series[0].tag:=1;
 form2.Chart4.Series[1].tag:=2;

 form3.VD.RowCount:=N+1;
 form3.VD.Cells[0,0]:='i';
 form3.VD.Cells[1,0]:='X1';
 form3.VD.Cells[3,0]:='T(X1)';
 form3.VD.Cells[2,0]:='X2';
 form3.VD.Cells[4,0]:='T(X2)';
  form2.Chart4.Series[2].clear;
  form2.Chart4.Series[3].clear;
  form2.Chart4.Series[2].tag:=3;
  form2.Chart4.Series[3].tag:=4;
 for i:=1 to N1 do
   form2.Chart4.Series[2].AddXY(xm[1,i],t[1,i]);
 for i:=n1+1 to N do
   form2.Chart4.Series[3].AddXY(1-xm[2,i],t[2,i]);

 min:=1.0e+30;minx:=-1;
 h:=2;m:=100;
 for i:=1 to m-1 do begin
 s:=i/m;
 g1:=fr3(s,p1,3);//a0+a1*(s)+a2*sqr(s);
 g2:=fr3(s,p2,3);//b0+b1*(s)+b2*sqr(s);
 form3.VD.Cells[0,i+1]:=inttostr(i);
 form3.VD.Cells[3,i+1]:=floattostr(g1);
 form3.VD.Cells[4,i+1]:=floattostr(g2);
if g1>=g2 then form2.Chart4.Series[0].addxy(s,g1);
if g2>=g1 then form2.Chart4.Series[1].addxy(s,g2);
 if abs(g1-g2)<min then begin
    if g1<g2 then mint:=g1 else mint:=g2;
    minx:=s;
    min:=abs(g1-g2);
 end;
 end;
 showmessage(floattostr(minx)+' '+floattostr(min));
// minx:=methodnuton(a,fx3,dfdx3);
// mint:=fr2(minx,a0,a1,a2);
 try
 TT:=H1/R/T1*(1-T1/mint)-ln(minX);
 lm2:=(1-minx)/(minx);
 except
 tt:=1;
 lm2:=0;
 end;
 form3.rt.cells[2,0]:='эксп';
 form3.rt.cells[2,1]:=floattostr(minx);
 form3.rt.cells[2,2]:=floattostr(1-minx);
 form3.rt.cells[2,3]:=floattostr(lm2);
 form3.rt.cells[2,4]:=floattostr(mint);

 //рекурсия для lnT
 for i:=0 to 4 do begin
 z[1,i]:=xm[1,i+N1];
 z[2,i]:=tl[2,i];
 z[3,i]:=xm[1,N1-1+i-4];
 z[4,i]:=tl[1,n1-1+i-4];
 end;
 polynrecurs(z[1],z[2],5,3,p1,r1);
 polynrecurs(z[3],z[4],5,3,p2,r2);

 form3.UR.cells[3,0]:='Ln1';
 form3.UR.cells[3,1]:=floattostr(p1[1]);
 form3.UR.cells[3,2]:=floattostr(p1[2]);
 form3.UR.cells[3,3]:=floattostr(p1[3]);
 form3.UR.cells[3,4]:=floattostr(r1);
 form3.UR.cells[4,0]:='Ln2';
 form3.UR.cells[4,1]:=floattostr(p2[1]);
 form3.UR.cells[4,2]:=floattostr(p2[2]);
 form3.UR.cells[4,3]:=floattostr(p2[3]);
 form3.UR.cells[4,4]:=floattostr(r2);

 form2.Chart2.Series[2].Clear;
 form2.Chart2.Series[3].Clear;
 form2.Chart2.Series[2].tag:=3;
 form2.Chart2.Series[3].tag:=4;

 form3.VD.Cells[5,0]:='L(X1)';
 form3.VD.Cells[6,0]:='L(X2)';
 min:=1.0e+30;
 for i:=0 to N do begin
 s:=a+i*h;
 xl:=s;//(s-a1)/a2;
 zl:=1-s;//((1-s)-b1)/b2;
 g1:=fr3(s,p1,3);//fr2(xl,a0,a1,a2);
 g2:=fr3(s,p2,3);//fr2(xl,b0,b1,b2);
 form3.VD.Cells[5,i+1]:=floattostr(g1);
 form3.VD.Cells[6,i+1]:=floattostr(g2);
 form2.Chart2.Series[2].addxy(s,g1);
 form2.Chart2.Series[3].addxy(s,g2);
 if abs(g1-g2)<min then begin
  if g1<g2 then mint:=g1 else mint:=g2;
    minx:=s;
    min:=abs(g1-g2);
  end;
 end;
 //minx:=methodnuton(a,fx3,dfdx3);
 mint:=fr2(minx,a0,a1,a2);
 lm:=(1-minx)/(minx);
 form3.rt.cells[3,0]:='эксп.LN';
 form3.rt.cells[3,1]:=floattostr(minx);
 form3.rt.cells[3,2]:=floattostr(1-minx);
 form3.rt.cells[3,3]:=floattostr(lm);
 form3.rt.cells[3,4]:=floattostr(mint);

form3.PageControl1.ActivePageIndex:=2;
form2.PageControl1.ActivePageIndex:=1;
form2.Show;
form3.Show;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
    Table1.Open;
    Table2.Open;
    Table3.Open;
    Table4.Open;
    Table5.Open;
    Table6.Open;
    Table7.Open;
    Table8.Open;
    Table9.Open;
  //  table10.Open;
end;

procedure TForm4.N2Click(Sender: TObject);
var
 i0,i1,i2:integer;
 p1_0,p2_0,a1,a2,b1,b2,c1,c2,tk1,tk2,tc:MyReal;
 old:string;
begin
//расчет р10_, р2_0 по уравнению Антуана
old:=table2.Bookmark;
i0:=Table2Id.Value;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
tc:=table2tc_cmecu.value+Kelvin;
table1.FindKey([i1]);
a1:=Table1A_ant.Value;
b1:=Table1B_ant.Value;
c1:=Table1C_ant.Value;
table1.FindKey([i2]);
a2:=Table1A_ant.Value;
b2:=Table1B_ant.Value;
c2:=Table1C_ant.Value;
table1.FindKey([i1]);
table2.Bookmark:=old;

p1_0:=exp(a1-b1/(c1+tc))*Pascual; //уравнение Антуана
p2_0:=exp(a2-b2/(c2+tc))*Pascual; //перевод из мм рт.ст. в Паскаль
showmessage('P1_0='+floattostr(p1_0)+' P2_0='+floattostr(p2_0));
Table2.Edit;
Table2p1_0.Value:=p1_0;
Table2p2_0.Value:=p2_0;
table2.post;
end;

procedure TForm4.MenuItem2Click(Sender: TObject);
var
i,i1,i2,i0,nk:integer;
m,s,c,x1m,x2m,g1,g2,l1,l2,h,ve,cc,y1,x1,l12,h1,h2,z1,xmax,dz1,dz2,
p_s,p_a, p_b,a_1,a_2,b1,b2,c1,c2,tk1,tk2,xmin,y2,l12n,l12m,z2,
y11,m12,qwe,g,v1e,v2e,v1,v2,t0:MyReal;
z,lg12,p,pt,yt,y,xt,x,xe:masd;
str1,old:string;
begin
//расчет избыточного объема VE
nk:=main.Form1.fn.value;
old:=table2.Bookmark;
i0:=Table2Id.Value;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
p1:=Table2ro1.Value;
p2:=Table2ro2.Value;
p1_0:=Table2p1_0.Value;
p2_0:=Table2p2_0.Value;
l1:=Table2Lambda1.Value;
l2:=Table2Lambda2.Value;
tc:=table2tc_cmecu.value+Kelvin;
table1.FindKey([i1]);
a_1:=Table1A_ant.Value;
b1:=Table1B_ant.Value;
c1:=Table1C_ant.Value;
h1:=Table1Teplota.AsFloat;
m1:=Table1MolMassa.AsFloat;
TK1:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i2]);
a_2:=Table1A_ant.Value;
b2:=Table1B_ant.Value;
c2:=Table1C_ant.Value;
h2:=Table1Teplota.AsFloat;
m2:=Table1MolMassa.AsFloat;
TK2:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i1]);
table2.Bookmark:=old;
t0:=table2TC_cmecu.Value;
n:=table4.RecordCount;
l1:=table2lambda1.value;
l2:=table2lambda2.value;
L12:=table2lambda12.value;
if (l1=0)and(l2=0)and(l12<>0)
then L12:=table2lambda12.value else
IF (l1<>0)and(l2<>0)and(L12=0) THEN l12:=l1/l2;

setlength(x,n+1);
setlength(xe,n+1);
setlength(y,n+1);
setlength(p,n+1);
setlength(pt,nk+1);
setlength(yt,nk+1);
setlength(xt,nk+1);


m12:=l12*m1/m2;
m1:=l1*m1;
m2:=m2*l2;
table4.First;
for i:=1 to n do begin
table4.Edit;
if not((Table4X1mas.Value<>0)and (Table4X2mas.Value<>0 ))then
begin
if Table4X1mas.Value<>0 then
   Table4X2mas.value:=1-Table4X1mas.Value
  else if Table4X2mas.value<>0 then
   Table4X1mas.Value:=1-Table4X2mas.value
else if (Table4X2mas.value=0)and(Table4X1mas.Value=0)then begin
   if (Table4X2mol.value=0)and(Table4X1mol.Value=0)then
   begin
     showmessage('Введите данные по X1mol, X2mol!');
     exit;
   end;
   if Table4X1mol.Value<>0 then
      Table4X2mol.value:=1-Table4X1mol.Value
      else if Table4X2mol.value<>0 then
        Table4X1mol.Value:=1-Table4X2mol.value;
   Table4X1mas.Value:=Table4X1mol.Value/(Table4X1mol.Value+Table4X2mol.Value*m1/m2);
   Table4X2mas.value:=1-Table4X1mas.Value;
end
end else
if not((Table4X1mol.Value<>0 )and (Table5X2mol.Value<>0 ))then
begin
if Table4X1mol.Value<>0 then
Table4X2mol.value:=1-Table4X1mol.Value
else
if Table4X2mol.value<>0 then
Table4X1mol.Value:=1-Table4X2mol.value
else if (Table4X2mol.value=0)and(Table4X1mol.Value=0)then begin
if (Table4X2mas.value=0)and(Table4X1mas.Value=0)then
   begin
     showmessage('Введите данные по X1mas, X2mas!');
     exit;
   end;
if Table4X1mas.Value<>0 then
   Table4X2mas.value:=1-Table4X1mas.Value
  else if Table4X2mas.value<>0 then
   Table4X1mas.Value:=1-Table4X2mas.value;
g1:=Table4X1mas.Value/m1;
g2:=Table4X2mas.value/m2;
g:=g1+g2;
X1m:=g1/g;
X2m:=g2/g;
m:=X1m*m1+X2m*m2;
s:=X1m*m1/p1+X2m*m2/p2;
c:=m/Table4Ro12.Value;
Table4X1mol.Value:=g1/g;
Table4X2mol.value:=g2/g;
end;
end;

X1m:=Table4X1mol.Value;
X2m:=Table4X2mol.value;
m:=X1m*m1+X2m*m2;
s:=X1m*m1/p1+X2m*m2/p2;
c:=m/Table4Ro12.Value;
if (Table4VE.Value=0) then table4VE.Value:=c-s;
table4.post;
table4.Next;
end;

table4.First;
for i:=1 to n do begin
y[i]:=Table4VE.Value;
x[i]:=Table4X1mol.Value;
table4.Next;
end;
//пересчет в эффективные молярные доли
For i:=1 to n do begin
g:=x[i];
xe[i]:=g/(g+l12*(1-g));
end;
redlehrecurs(x,y,n,a1,a2,a3);
redlehrecurs(xe,y,n,a1,a2,a3);   ///////
form3.UR.Cells[0,0]:='T0';
form3.UR.Cells[1,0]:='a1';
form3.UR.Cells[2,0]:='a2';
form3.UR.Cells[3,0]:='a3';
k:=1;
while form3.UR.Cells[0,k]<>'' do inc(k);
form3.UR.Cells[0,k]:=floattostr(T0);
form3.UR.Cells[1,k]:=floattostr(a1);
form3.UR.Cells[2,k]:=floattostr(a2);
form3.UR.Cells[3,k]:=floattostr(a3);
form3.UR.rowcount:=k+1;

V1e:=a1-a2+a3;
V2e:=a1+a2+a3;
table2.Edit;
Table2A1.Value:=a1;
Table2A2.Value:=a2;
Table2A3.Value:=a3;
Table2VE1_0.Value:=V1e;
Table2VE2_0.Value:=V2e;
table2.Post;

showmessage('A1='+floattostr(a1)+
';A2='+floattostr(a2)+
';A3='+floattostr(a3)+
';V1e='+floattostr(v1e)+
';V2e='+floattostr(v2e));

form3.GV.RowCount:=n+1;
form3.GV.Cells[0,0]:='i';
form3.GV.Cells[1,0]:='x(g1)';
form3.GV.Cells[2,0]:='y(Ve)';
form3.GV.Cells[3,0]:='yt';

form2.Chart7.Series[0].clear;form2.Chart7.Series[0].Title:='VE(x)';
form2.Chart7.Series[1].clear;form2.Chart7.Series[1].Title:='VE(x)_spline';
form2.Chart7.Series[2].clear;form2.Chart7.Series[2].Title:='VE(x)_A123';
form2.Chart7.Series[3].clear;form2.Chart7.Series[3].Title:='VE(x)_sr';
form2.Chart7.Series[4].clear;form2.Chart7.Series[4].Title:='V1(x)';
form2.Chart7.Series[5].clear;form2.Chart7.Series[5].Title:='V2(x)';
form2.Chart7.Series[6].clear;form2.Chart7.Series[6].Title:='VE(z по х_min)';
form2.Chart7.Series[7].clear;form2.Chart7.Series[7].Title:='VE(z по х_max)';
form2.Chart7.Series[8].clear;form2.Chart7.Series[8].Title:='';

form2.Chart7.Series[0].tag:=1;
form2.Series12.pointer.visible:=true;
form2.Chart7.Series[1].tag:=2;
form2.Chart7.Series[2].tag:=3;
form2.Chart7.Series[3].tag:=4;
form2.Chart7.Series[4].tag:=5;
form2.Chart7.Series[5].tag:=6;
form2.Chart7.Series[6].tag:=7;
form2.Chart7.Series[7].tag:=8;
form2.Chart7.Series[8].tag:=9;
s:=0;
for i:=1 to n do begin
yt[i]:=x[i]*(1-x[i])*(a1+a2*(2*x[i]-1)+a3*sqr(2*x[i]-1));
s:=s+sqr(y[i]-yt[i]);
form3.GV.Cells[0,i]:=inttostr(i);
form3.GV.Cells[1,i]:=floattostr(x[i]);
form3.GV.Cells[2,i]:=floattostr(y[i]);
form3.GV.Cells[3,i]:=floattostr(yt[i]);
form2.Chart7.Series[0].AddXY(x[i],y[i]);
form2.Chart7.Series[2].AddXY(x[i],yt[i]);
end;
g:=sqrt(s/(n-3));
showmessage('Y-Yt='+floattostr(g));
form2.Chart1.Series[0].clear;form2.Chart1.Series[0].Title:='H1(z)';
form2.Chart1.Series[1].clear;form2.Chart1.Series[1].Title:='H2(z)';
form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[1].tag:=2;

spline3(x,y,n);
//p1_0:=p_antuan(t0+kelvin,a_1,b1,c1);  //????
//p2_0:=p_antuan(t0+kelvin,a_2,b2,c2);  //???
xmin:=200;y2:=0;z1:=0;xmax:=-200;
for i:=0 to nk do begin
x1:=i/nk;
v1:=sqr(1-x1)*(a1+a2*(4*x1-1)+a3*(6*x1-1)*(2*x1-1));
v2:=sqr(x1)*(a1+a2*(4*x1-3)+a3*(6*x1-5)*(2*x1-1));
y1:=x1*v1+v2*(1-x1);
h1:=p2_0*y1;
h2:=x1*p1_0*v1+(1-x1)*p2_0*v2;
form2.Chart1.Series[0].AddXY(x1,h1);  //h1(z1)
form2.Chart1.Series[1].AddXY(x1,h2);  //h2(z1)
form2.Chart7.Series[3].AddXY(x1,y1);  //yt
if y1<y2 then begin
    xmin:=x1;
    y2:=y1;
end;
if y1>z1 then begin
    xmax:=x1;
    z1:=y1;
end;
y11:=fspline(x1,x,n);
{if y1-y2<=eps then begin
    xmin:=x1;
    y2:=y1;
    end;

if y1-z1>=eps then begin
    xmax:=x1;
    z1:=y1;
    end;
}

form2.Chart7.Series[1].AddXY(x1,y11);  //y
form2.Chart7.Series[4].AddXY(x1,v1);  //y
form2.Chart7.Series[5].AddXY(x1,v2);  //y

end;
qwe:=strtofloat(inputbox('z1_E=',str1,floattostr(0.5)));
qwe:=qwe/(1-qwe);
if (xmin>0)and(xmin<1)then l12n:=qwe*xmin/(1-xmin) else l12n:=1;
if (xmax>0)and(xmax<1)then l12m:=qwe*xmax/(1-xmax) else l12m:=1;
showmessage('x_min='+floattostr(xmin)+
'x_max='+floattostr(xmax)+' l12(xmin)='+floattostr(l12n)
+' l12(xmax)='+floattostr(l12m));

for i:=0 to nk do begin
x1:=i/nk;
z1:=x1/(x1+l12n*(1-x1));
dz1:=z1/(z1+l12n*(1-z1));
v1e:=dz1*(1-dz1)*(a1+a2*(2*dz1-1)+a3*(2*dz1-1)*(2*dz1-1));
//v1:=sqr(1-dz1)*(a1+a2*(4*dz1-1)+a3*(6*dz1-1)*(2*dz1-1));
//v2:=sqr(dz1)*(a1+a2*(4*dz1-3)+a3*(6*dz1-5)*(2*dz1-1));

z2:=x1/(x1+l12m*(1-x1));
dz2:=z2/(z2+l12m*(1-z2));
v2e:=dz2*(1-dz2)*(a1+a2*(2*dz2-1)+a3*(2*dz2-1)*(2*dz2-1));

form2.Chart7.Series[6].AddXY(z1,v1e);
form2.Chart7.Series[7].AddXY(z2,v2e);
//form2.Chart7.Series[8].AddXY(z1,v2);
end;

form3.PageControl1.ActivePageIndex:=9;
form2.PageControl1.ActivePageIndex:=6;
form2.Show;
end;

procedure TForm4.MenuItem3Click(Sender: TObject);
 var
 flag:boolean;
i,i1,i2,i0,nk,n,imax,j:integer;
gamma1,gamma2,L12,f1,f2,g1,g2,l1,l2,h,ve,cc,
b1_b2,y0,xmin1,xmin2,z1,s1,s2,s0,l12_,z2,z0,hk,
y1,x1,p_s,p_a,p_b,r1,xx,g3,g4,c,b,lg10,m12,q_az,
t12,tk1,tk2,v1e,v2e,s,v1,v2,y2,p_az,g_az,z_az,x_az,lng1,lng2:MyReal;
z,g,gt,p,pt,yt,y,xt,x,xe,ye,lg12:masd;
old:string;
a:array[1..3]of masd;
gl:array[1..2]of masd;
begin
//расчет давления
n:=main.Form1.fn.value;
old:=table2.Bookmark;
i0:=Table2Id.Value;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
p1:=Table2ro1.Value;
p2:=Table2ro2.Value;
l1:=Table2Lambda1.Value;
l2:=Table2Lambda2.Value;
tc:=table2tc_cmecu.value+Kelvin;
table1.FindKey([i1]);
a10:=Table1A_ant.Value;
b10:=Table1B_ant.Value;
c10:=Table1C_ant.Value;
h1:=Table1Teplota.AsFloat;
m1:=Table1MolMassa.AsFloat;
TK1:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i2]);
a20:=Table1A_ant.Value;
b20:=Table1B_ant.Value;
c20:=Table1C_ant.Value;
h2:=Table1Teplota.AsFloat;
m2:=Table1MolMassa.AsFloat;
TK2:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i1]);
table2.Bookmark:=old;
nk:=table5.RecordCount;
t0:=Table2TC_cmecu.Value;
a1:=table2a1.value;
a2:=table2a2.value;
a3:=table2a3.value;
L12:=table2lambda12.value;
IF L12=0 THEN l12:=l1/l2;
p_1:=Table2p1_0.Value/1000;
p_2:=Table2p2_0.Value/1000;
p_az:=Table2P.Value*Pascual/1000;  //перевод из мм.рт.ст.в мПа
m12:=m1/m2;
h:=1/n;
setlength(x,n+1);
setlength(y,n+1);
setlength(xe,n+1);
setlength(ye,n+1);
setlength(g,n+1);
setlength(gl[1],n+1);
setlength(gl[2],n+1);
setlength(gt,n+1);
setlength(p,n+1);
setlength(pt,n+1);
setlength(yt,n+1);
setlength(xt,n+1);
table5.First;
for i:=1 to nk do begin
table5.Edit;
if Table5X1mas.Value<>0 then
   Table5X2mas.value:=1-Table5X1mas.Value;
if Table5X2mas.value<>0 then
   Table5X1mas.Value:=1-Table5X2mas.value;
if Table5y1mas.value<>0 then
   Table5y2mas.Value:=1-Table5y1mas.value;
if Table5y2mas.Value<>0 then
   Table5y1mas.value:=1-Table5y2mas.Value;
if Table5X1mol.Value<>0 then
Table5X2mol.value:=1-Table5X1mol.Value
else
if Table5X2mol.value<>0 then
Table5X1mol.Value:=1-Table5X2mol.value
else if (Table5X2mol.value=0)and(Table5X1mol.Value=0)then begin
g1:=Table5X1mas.Value/m1;//l1;
g2:=Table5X2mas.Value/m2;//l2;
Table5X1mol.Value:=g1/(g1+g2);
Table5X2mol.value:=1-Table5X1mol.Value;
end;
if Table5y1mol.Value<>0 then
Table5y2mol.value:=1-Table5y1mol.Value
else
if Table5y2mol.value<>0 then
Table5y1mol.Value:=1-Table5y2mol.value
else if (Table5y2mol.value=0)and(Table5y1mol.Value=0)then begin
f1:=Table5Y1mas.Value/m1;//l1;
f2:=Table5Y2mas.Value/m2;//l2;
Table5Y1mol.Value:=f1/(f1+f2);
Table5y2mol.Value:=1-Table5y1mol.Value;
end;
table5.Post;
table5.Next;
end;
form3.RG.RowCount :=n+1;
form3.GR.RowCount :=n+1;
form3.GR.ColCount :=4;
form3.GR.cells[0,0]:='i';
form3.GR.cells[1,0]:='X1m';
form3.GR.cells[2,0]:='Y1m';
form3.GR.cells[3,0]:='P';
form3.RG.Cells [1,0]:='x1';
form3.RG.Cells [2,0]:='lg(g1/g2)';
form3.RG.Cells [3,0]:='x1ef';
form3.RG.Cells [4,0]:='lg(g1/g2)ef';
form3.RG.Cells [5,0]:='P';
form2.Chart2.Series[0].clear;
form2.Chart2.Series[0].title:='ln(gamma1)';
form2.Chart2.Series[0].tag:=1;
form2.Chart2.Series[1].clear;
form2.Chart2.Series[1].tag:=2;
form2.Chart2.Series[1].title:='ln(gamma2)';
form2.Chart2.Series[2].clear;
form2.Chart2.Series[2].title:='';
form2.Chart2.Series[2].tag:=3;
form2.Chart2.Series[3].clear;
form2.Chart2.Series[3].title:='';
form2.Chart2.Series[3].tag:=4;
form2.Chart2.Series[4].clear;
form2.Chart2.Series[4].title:='lg gamma1/gamma2';
form2.Chart2.Series[4].tag:=5;

form2.Chart8.Series[0].clear;
form2.Chart8.Series[0].title:='';
form2.Chart8.Series[1].clear;
form2.Chart8.Series[1].title:='P(x1)';
form2.Chart8.Series[0].tag:=1;
form2.Chart8.Series[1].tag:=2;
form2.Chart8.Series[2].clear;
form2.Chart8.Series[2].title:='P(x1)';

table5.First;
for i:=1 to nk do begin
x[i]:=Table5X1mol.value; //mas?
y[i]:=Table5y1mol.value; //mas?
p[i]:=Table5P.Value*Pascual/1000;
gamma1:=y[i]*p[i]/x[i]/p_1; //gamma1
gamma2:=(1-y[i])*p[i]/(1-x[i])/p_2; //gamma2
gl[1,i]:=ln(gamma1);
gl[2,i]:=ln(gamma2);
g[i]:=log10(gamma1/gamma2);
form3.RG.Cells [1,i]:=format('%8.5f',[x[i]]);
form3.RG.Cells [2,i]:=format('%8.5f',[g[i]]);
form3.RG.Cells [5,i]:=format('%8.5f',[p[i]]);
form2.Chart2.Series[4].AddXY(x[i],g[i]);
form2.Chart2.Series[0].AddXY(x[i],ln(gamma1));
form2.Chart2.Series[1].AddXY(x[i],ln(gamma2));
form2.Chart8.Series[1].AddXY(x[i],p[i]);
form3.GR.Cells[0,i]:=inttostr(i);
form3.GR.Cells[1,i]:=floattostr(Table5X1mol.value);
form3.GR.Cells[2,i]:=floattostr(Table5Y1mol.value);
form3.GR.Cells[3,i]:=floattostr(Table5P.value);
table5.Next;
end;
form3.PageControl1.ActivePageIndex:=2;

  x_az:=Table2X1_az.value;{экспериментальные мольные доли}
if x_az=0 then begin
   z_az:=strtofloat(inputbox('Ввод данных','введите данных о точке азеотропии X1 в эфф.мольных долях',floattostr(0.5)));
   x_az:=converse2z_x(z_az,l12);{эффективные мольные доли}
   q_az:=converse2x_q(x_az,m12);
end else  begin
   z_az:=converse2x_z(x_az,l12);{эффективные мольные доли}
   q_az:=converse2x_q(x_az,m12);
end;
//переходим в эффективные мольные доли
form2.Chart2.Series[0].clear; form2.Chart2.Series[0].title:='ln gamma1 эксп';
form2.Chart2.Series[1].clear; form2.Chart2.Series[1].title:='ln gamma2 эксп';
form2.Chart2.Series[4].clear; form2.Chart2.Series[4].title:='lg gamma1/gamma2 эксп';
form2.Chart8.Series[2].clear; form2.Chart8.Series[2].title:='P(x1) эксп';
form2.Chart2.Series[0].tag:=1;
form2.Chart2.Series[1].tag:=2;
form2.Chart2.Series[4].tag:=5;
form2.Chart8.Series[2].tag:=3;
t12:=l12;
for i:=1 to nk do begin
xe[i]:=x[i]/(x[i]+l12*(1-x[i]));
ye[i]:=y[i]/(y[i]+t12*(1-y[i]));
gamma1:=ye[i]*p[i]/xe[i]/p_1; //gamma1
gamma2:=(1-ye[i])*p[i]/((1-xe[i])*p_2); //gamma2
gl[1,i]:=ln(gamma1);
gl[2,i]:=ln(gamma2);
g[i]:=log10(gamma1/gamma2);
form2.Chart2.Series[4].AddXY(xe[i],g[i]);
form2.Chart2.Series[0].AddXY(xe[i],ln(gamma1));
form2.Chart2.Series[1].AddXY(xe[i],ln(gamma2));
form2.Chart8.Series[2].AddXY(xe[i],p[i]);
end;

//2-вариант расчета ln gamma1,2 в точке азеотропии

setlength(a[1],4);
setlength(a[2],4);
if nk<>0 then begin
polynrecurs(xe,gl[1],nk,3,a[1],r1);
lng1:=fr3(z_az,a[1],3);
polynrecurs(xe,gl[2],nk,3,a[2],r1);
lng2:=fr3(1-z_az,a[2],3);

form2.Chart2.Series[2].clear; form2.Chart2.Series[2].title:='ln gamma1';
form2.Chart2.Series[3].clear; form2.Chart2.Series[3].title:='ln gamma2';
form2.Chart2.Series[2].tag:=3;
form2.Chart2.Series[3].tag:=4;
for i:=1 to n-1 do begin
z1:=i*h;
gamma1:=fr3(z1,a[1],3);
gamma2:=fr3(1-z1,a[2],3);
form2.Chart2.Series[2].AddXY(z1,ln(gamma1));
form2.Chart2.Series[3].AddXY(z1,ln(gamma2));
end;
end;
//3-вариант расчета ln gamma1,2 в точке азеотропии
{    t12:=fx1_(z_az);
    lng1:=-ln(z_az)+h10/r/t10*(1-t10/t12);
    lng2:=-ln(1-z_az)+h20/r/t20*(1-t20/t12);
 }
 //1-вариант расчета ln gamma1,2 в точке азеотропии
lng1:=p_az/p_1;
lng2:=p_az/p_2;
//коэффициенты Редлиха-Кистера
//lng1:=gl[1,5];lng2:=gl[2,5];  //???????
    c:=(lng1/2/sqr(1-z_az)-lng2/2/sqr(z_az));
    b:=lng1/sqr(1-z_az)-(3*z_az-(1-z_az))*c;

form2.Chart2.Series[2].clear; form2.Chart2.Series[2].title:='ln gamma1 R-K';
form2.Chart2.Series[3].clear; form2.Chart2.Series[3].title:='ln gamma1 R-K';
form2.Chart2.Series[5].clear;  form2.Chart2.Series[5].title:='lg gamma1/gamma2 R-K';
form2.Chart8.Series[0].clear; form2.Chart8.Series[0].title:='P(x1) R-K';
form2.Chart8.Series[1].clear;  form2.Chart8.Series[1].title:='P(x1) Стаб.';
form2.Chart8.Series[3].clear;  form2.Chart8.Series[3].title:='P(x1) VE';
form2.Chart8.Series[4].clear;  form2.Chart8.Series[4].title:='P(x1) дифф. R-K';
form2.Chart8.Series[5].clear; form2.Chart1.Series[5].title:='P(x1) м.прог.';
form2.Chart1.Series[0].clear;  form2.Chart1.Series[0].title:='y1(x1)';
form2.Chart1.Series[1].clear; form2.Chart1.Series[1].title:='y1=x1';
form2.Chart1.Series[2].clear; form2.Chart1.Series[2].title:='y1(x1) эксп';
form2.Chart2.Series[2].tag:=3;
form2.Chart2.Series[3].tag:=4;
form2.Chart2.Series[5].tag:=6;
form2.Chart8.Series[0].tag:=1;
form2.Chart8.Series[1].tag:=2;
form2.Chart8.Series[3].tag:=4;
form2.Chart8.Series[4].tag:=5;
form2.Chart8.Series[5].tag:=6;
form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[1].tag:=2;
setlength(pt,n+1);
setlength(xt,n+1);
setlength(z,n+1);
setlength(lg12,n+1);

for i:=1 to n-1 do begin
    z1:=i*h;//xe[i];
    z2:=1-z1;
    lng1:=sqr(z2)*(b+c*(3*z1-z2));
    lng2:=sqr(z1)*(b+c*(z1-3*z2));
    gamma1:=exp(lng1);//exp(gl[1,i]);//
    gamma2:=exp(lng2);//exp(gl[2,i]);//
    z[i]:=z1;
    lg12[i]:=log10(gamma1/gamma2);
   {
    gamma1:=exp(lng1);   //по свойствам чистых компонентов
    gamma2:=exp(lng2);    // и по азеотропным данным
    }
    lg10:=log10(gamma1/gamma2);
    g1:=z1/z2*p_1/p_2*gamma1/gamma2;
    y1:=g1/(1+g1);
    form2.Chart1.Series[0].AddXY(z1,y1);
    form2.Chart1.Series[1].AddXY(z1,z1);
    form2.Chart1.Series[2].AddXY(z1,ye[i]);
    form2.Chart2.Series[2].AddXY(z1,lng1);
    form2.Chart2.Series[3].AddXY(z1,lng2);
    form2.Chart2.Series[5].AddXY(z1,lg10);
     //давление по Ридлеха-Кистера
    p_s:=gamma1*p_2*z1+gamma2*p_1*z2;
//?        p_s:=gamma1*p_1*z1+gamma2*p_2*z2;

    form2.Chart8.Series[0].AddXY(z1,p_s);

    p_a:=p_2*(1-z1)*exp(0.79*(3-2*z1)*z1*z1);
    p_b:=p_1*z1*exp(1.58*sqr(1-z1)*(1-z1));
    p_s:=p_a+p_b;
    y1:=p_b/p_s; //формула в книге Стабникова Теор. основы перегонки и ректификации
    form2.Chart8.Series[1].AddXY(z1,p_s);

    v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
    v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
    ve:=z1*v1+v2*(1-z1);
    p_s:=(v1*p_2*z1+v2*p_1*(1-z1))/abs(ve);
//        p_s:=(v1*p_1*z1+v2*p_2*(1-z1))/abs(ve)+p_1+p_2;
    //давление по избыточному объему
    form2.Chart8.Series[3].AddXY(z1,p_s);
    //pt[i]:=p_s;
end;

//по методу Рунге-Кутта
//h:=1/n;
x1:=h;p_s:=p_1;
form2.Chart8.Series[4].AddXY(1-x1,p_s);
for i:=1 to n-2 do begin
p_s:=runge_kutta4(x1,p_s,h);
x1:=x1+h;
form2.Chart8.Series[4].AddXY(1-x1,p_s);
end;
//по методу прогонки
for i:=0 to n do xt[i]:=i*h;
 progonka(n,h,p_1,p_2,xt,pt);
for i:=0 to n do
form2.Chart8.Series[5].AddXY(1-xt[i],pt[i]);
 (*
form2.Chart2.Series[4].clear;
form2.Chart2.Series[4].title:='y(x1) регр.';
form2.Chart2.Series[4].tag:=5;
setlength(a[3],5);
 xmin1:=0;
if nk<>0 then  begin
h:=(x[n]-x[1])/nk;
//spline3(x,g,n);
//кубический полином
 polynrecurs(x,g,nk,4,a[3],r1);
//точка пересечения с осью х

y0:=fr3(x[1],a[3],4);//fspline(x[1],x,n);
form2.Chart2.Series[4].AddXY(x[1],y0);
for i:=1 to nk do begin
x1:=x[1]+h*i;
y1:=fr3(x1,a[3],4);//fspline(x1,x,n);
if y1*y0<0 then xmin1:=x1;
y0:=y1;
form2.Chart2.Series[4].AddXY(x1,y1);
end;
end  else
begin

  polynrecurs(z,lg12,n-1,4,a[3],r1);
  y0:=fr3(h,a[3],4);//fspline(x[1],x,n);
form2.Chart2.Series[4].AddXY(0,y0);
for i:=0 to n do begin
x1:=h*i;
y1:=fr3(x1,a[3],4);//fspline(x1,x,n);
if y1*y0<0 then xmin1:=x1;
y0:=y1;
form2.Chart2.Series[4].AddXY(x1,y1);
end;
end;
showmessage('x1='+floattostr(xmin1)
+', y1='+floattostr(fr3(xmin1,a[3],4)));//fspline(xmin,x,n)));
//h:=1/nk;
{
//площади через интегралы
 s1:=0;s2:=0;x1:=0;
 s0:=fr3(x1,a,4);
 for i:=1 to nk do
 begin
 x1:=x1+h;
 s:=fr3(x1,a,4);
 if (s0>0) and (s>0) then
  s1:=s1+(s+s0)/2*h
 else
  s2:=s2+abs(s+s0)/2*h;
 if (s0>0) and (s>0) then begin
       x2:=x1+h;
 end;
 s0:=s;
 end;
 r1:=abs(s1)-abs(s2);
}
//
z1:=xmin1;r1:=1;
while abs(r1)>0.01 do begin
    //интегралы
 g1:=fr3(z1,a[3],4);
 s1:=0;s2:=0;
 x1:=h;
 s0:=fr3(x1,a[3],4)-g1;
 for i:=1 to n-1 do
 begin
 x1:=x1+h;
 s:=fr3(x1,a[3],4)-g1;
 if (s0>0) and (s>0) then
  s1:=s1+(s+s0)/2*h
 else
  s2:=s2+abs(s+s0)/2*h;
 if (s0>0) and (s>0) then begin
       xmin2:=x1+h;
 end;
 s0:=s;
 end;
 r1:=abs(s1)-abs(s2);
 if r1<0 then z1:=z1+0.01 else z1:=z1-0.01;
end;

form2.Chart2.Series[3].clear;form2.Chart2.Series[3].tag:=4;form2.Chart2.Series[3].title:='lg gamma1/gamma2_согл';
 for i:=1 to n do
 begin
 x1:=h*i;
 s:=fr3(x1,a[3],4)-g1;
 form2.Chart2.Series[3].AddXY(x1,s);
 end;
 showmessage('после поправки в жидкости S1-S2='+floattostr(abs(r1)));
 l12_:=xmin1/(1-xmin1)/xmin2*(1-xmin2);
 showmessage('x_min1='+floattostr(xmin1)+' x_min2='+floattostr(xmin2)+
' L12='+floattostr(l12));

 //поправка для пара
 x2:=0.5;
 g2:=fr3(x2,a[3],4)-g1; //lg(betta1/betta2)=lg(gamma1/gamma2) при x=0.5
 showmessage('x=0.5 f='+floattostr(g2));

//интегралы
 form2.Chart2.Series[5].clear;form2.Chart2.Series[5].tag:=6; form2.Chart2.Series[5].title:='lg gamma1/gamma2_согл_пар';
 s1:=0;s2:=0;x1:=0;
 s0:=fr3(x1,a[3],4)-g1-g2;
 for i:=2 to n do
 begin
 x1:=x1+h;
 s:=fr3(x1,a[3],4)-g1-g2;
 form2.Chart2.Series[5].AddXY(x1,s);
 if (s0>0) and (s>0) then
  s1:=s1+(s+s0)/2*h
 else
  s2:=s2+abs(s+s0)/2*h;
  s0:=s;
 end;
 showmessage('после поправки в паре S1-S2='+floattostr(s1-s2));
 //betta1/betta2=10^g2
 b1_b2:=math.Power(10,g2);
 //tau1/tau2=lambda12/(betta1/betta2) ассоциация в паре
 g4:=l12_/b1_b2;
showmessage('betta1/betta2='+floattostr(b1_b2)+
' tau1/tau2='+floattostr(g4));


//площади сверху v1 и снизу v2
x1:=0;
//y1:=(fspline(x1,x,n));
//y1:=-0.749*power(x1,3)+ 2.1449*sqr(x1) - 2.5497*(x1) + 0.7627;
y1:= fr3(x1,a[3],4);
v1:=0;//h:=1/nk;
for i:=1 to n do begin
//g1:=(fspline(x1+h,x,n));
//g1:=-0.749*power(x1+h,3)+ 2.1449*sqr(x1+h) - 2.5497*(x1+h) + 0.7627;
g1:=fr3(x1+h,a[3],4);
v1:=v1+((abs(y1)+abs(g1))*abs(h)/2); x1:=x1+h;y1:=g1;
if x1>xmin1 then break;
end;
showmessage('x1='+floattostr(x1)
+', y1='+floattostr(y1)
+', v1='+floattostr(v1));
x1:=xmin1;
//y2:=(fspline(x1,x,n));
//y2:=-0.749*power(x1,3)+ 2.1449*sqr(x1) - 2.5497*(x1) + 0.7627;
y2:=fr3(x1,a[3],4);
v2:=0;
for i:=1 to n do begin
//g1:=(fspline(x1+h,x,n));
//g1:=-0.749*power(x1+h,3)+ 2.1449*sqr(x1+h) - 2.5497*(x1+h) + 0.7627;
g1:=fr3(x1+h,a[3],4);
v2:=v2+((abs(y1)+abs(g1))*abs(h)/2); x1:=x1+h;y1:=g1;
if x1>1 then break;
end;
showmessage('x2='+floattostr(x1)
+', y2='+floattostr(y1)
+', v2='+floattostr(v2));

//переносим в середину
y0:=x[1];
for i:=0 to n do begin
x1:=h*i;
y1:=fr3(x1+h,a[3],4);//fspline(x1,x,n);//-0.749*power(x1+h,3)+ 2.1449*sqr(x1+h) - 2.5497*(x1+h) + 0.7627;
if x1=0.5 then y0:=y1;
end;
b1_b2:=power(10,y0);
showmessage('lg b1/b2='+floattostr(y0)
+' b1/b2='+floattostr(b1_b2)
+' t1/t2='+floattostr(l12/b1_b2));

 *)
//пересчет в эффективные доли
form2.Chart2.Series[4].clear;form2.Chart2.Series[4].title:='lg gamma1/gamma2 эксп';
form2.Chart2.Series[5].clear;form2.Chart2.Series[5].title:='ln gamma1 эксп';
form2.Chart2.Series[6].clear;form2.Chart2.Series[6].title:='ln gamma2эксп';
form2.Chart2.Series[4].tag:=5;
form2.Chart2.Series[5].tag:=6;
form2.Chart2.Series[6].tag:=7;
if nk<>0 then begin
table5.First;
for i:=1 to nk do begin
table5.Edit;
z1:=x[i]/(x[i]+(1-x[i])*l12);
y1:=y[i]/(y[i]+(1-y[i])*l12/b1_b2);
xt[i]:=z1;
yt[i]:=y1;
gamma1:=y1*p[i]/(xt[i]*p_1); //gamma1
gamma2:=(1-y1)*p[i]/(1-xt[i])/p_2; //gamma2
gt[i]:=log10(gamma1/gamma2);
form3.RG.Cells [3,i]:=format('%8.5f',[xt[i]]);
form3.RG.Cells [4,i]:=format('%8.5f',[gt[i]]);
form2.Chart2.Series[4].AddXY(xT[i],gT[i]);
form2.Chart2.Series[5].AddXY(xT[i],ln(gamma1));
form2.Chart2.Series[6].AddXY(xT[i],ln(gamma2));
table5.Next;
end;

//y= -0.6509*x3 + 1.9488x2 - 2.4291x + 0.7203
 x1:=0;
//y1:=(fspline(x1,x,n));
//y1:=-0.6509*power(x1,3)+ 1.9488*sqr(x1) - 2.4291*(x1) + 0.7203;
y1:=fr3(x1,a[3],4);
v1:=0;//h:=1/nk;
for i:=1 to nk do begin
//g1:=(fspline(x1+h,x,n));
//g1:=-0.6509*power(x1+h,3)+ 1.9488*sqr(x1+h) - 2.4291*(x1+h) + 0.7203;
g1:=fr3(x1+h,a[3],4);
v1:=v1+((abs(y1)+abs(g1))*abs(h)/2); x1:=x1+h;y1:=g1;
if x1>xmin1 then break;
end;
showmessage('x1='+floattostr(x1)
+', y1='+floattostr(y1)
+', v1='+floattostr(v1));
x1:=xmin1;
//y2:=(fspline(x1,x,n));
//y2:=-0.6509*power(x1,3)+ 1.9488*sqr(x1) - 2.4291*(x1) + 0.7203;
y2:=fr3(x1,a[3],4);
v2:=0;
for i:=1 to nk do begin
//g1:=(fspline(x1+h,x,n));
//g1:=-0.6509*power(x1+h,3)+ 1.9488*sqr(x1+h) - 2.4291*(x1+h) + 0.7203;
g1:=fr3(x1+h,a[3],4);
v2:=v2+((abs(y1)+abs(g1))*abs(h)/2); x1:=x1+h;y1:=g1;
if x1>1 then break;
end;
showmessage('x2='+floattostr(x1)
+', y2='+floattostr(y1)
+', v2='+floattostr(v2));

//зависимость от состава
form3.GV.Cells[4,0]:='p(x2)';
form3.GV.Cells[5,0]:='pt';
form2.Chart9.Series[0].clear;
form2.Chart8.Series[0].clear;
form2.Chart8.Series[1].clear;
form2.Chart8.Series[2].clear;
form2.Chart8.Series[3].clear;
form2.Chart8.Series[4].clear;
form2.Chart8.Series[5].clear;
form2.Chart9.Series[0].tag:=1;
form2.Chart8.Series[0].tag:=1;
form2.Chart8.Series[1].tag:=2;
form2.Chart8.Series[2].tag:=3;
form2.Chart8.Series[3].tag:=4;
form2.Chart8.Series[4].tag:=5;
form2.Chart8.Series[5].tag:=6;
for i:=1 to nk do begin
x1:=xt[i];//i/nk;
p_a:=p_2*(1-x1)*exp(0.79*(3-2*x1)*x1*x1);
p_b:=p_1*x1*exp(1.58*sqr(1-x1)*(1-x1));
p_s:=p_a+p_b;
y1:=p_b/p_s; //формула в книге Стабникова Теор. основы перегонки и ректификации
form2.Chart9.Series[0].AddXY(x1,y1);
form2.Chart8.Series[1].AddXY(x1,p_s/1000);
form2.Chart8.Series[2].AddXY(x1,p[i]/1000);
v1:=sqr(1-x1)*(a1+a2*(4*x1-1)+a3*(6*x1-1)*(2*x1-1));
v2:=sqr(x1)*(a1+a2*(4*x1-3)+a3*(6*x1-5)*(2*x1-1));
ve:=x1*v1+v2*(1-x1);
pt[i]:=(v2*p_1*(1-x1)+v1*p_2*x1)/ve;
form3.GV.Cells[4,i]:=floattostr(p[i]);
form2.Chart8.Series[0].AddXY(x1,pt[i]);
end;
end;
form3.GV.rowcount:=n+1;

form2.Chart3.Series[0].clear;
form2.Chart3.Series[1].clear;
form2.Chart8.Series[0].clear;
form2.Chart8.Series[1].clear;
form2.Chart8.Series[2].clear;
form2.Chart3.Series[0].tag:=1;
form2.Chart3.Series[1].tag:=2;
form2.Chart8.Series[0].tag:=1;
form2.Chart8.Series[1].tag:=2;
form2.Chart8.Series[2].tag:=3;
flag:=true;
for i:=1 to n-1 do begin
x1:=i*h;//xt[i];//i/nk;
v1:=sqr(1-x1)*(a1+a2*(4*x1-1)+a3*(6*x1-1)*(2*x1-1));
v2:=sqr(x1)*(a1+a2*(4*x1-3)+a3*(6*x1-5)*(2*x1-1));
//ve:=x1*(1-x1)*(a1+a2*(2*x1-1)+a3*sqr(2*x1-1));
ve:=x1*v1+(1-x1)*v2;
y0:=(v2*p_1*(1-x1)+v1*p_2*x1)/(x1*v1+v2*(1-x1));
p_s:=(v2*p_1*(1-x1)+v1*p_2*x1)/ve;
//p_s:=(v2*p_1*(1-x1)+v1*p_2*x1-R*tc*(ln(1-x1)*(1-x1)+x1*ln(x1)))/y1;
p_s:=p_1+p_2+(p_1*x1*v1+p_2*(1-x1)*v2)/abs(ve);
form3.GV.Cells[5,i]:=floattostr(p_s);
form2.Chart8.Series[0].AddXY(x1,y0/1000);
form2.Chart8.Series[1].AddXY(x1,p_s/1000);
form2.Chart3.Series[0].AddXY(x1,(v2*p_2*(1-x1)+v1*p_1*x1));
form2.Chart3.Series[1].AddXY(x1,p_2*ve);
z0:=abs(abs((v2*p_2*(1-x1)+v1*p_1*x1)/1000)-abs(p_2*ve)/1000);
if (z0<=2.5)and(flag) then begin
flag:=false;xx:=x1;
while (z0<=2.5)and(xx<=1)do
begin
xx:=xx+h;
v1:=sqr(1-xx)*(a1+a2*(4*xx-1)+a3*(6*xx-1)*(2*xx-1));
v2:=sqr(xx)*(a1+a2*(4*xx-3)+a3*(6*xx-5)*(2*xx-1));
ve:=xx*v1+(1-xx)*v2;
z0:=abs(abs((v2*p_2*(1-x1)+v1*p_1*x1)/1000)-abs(p_2*ve)/1000);
end;
x_az:=(xx+x1)/2;
end;

end;

form2.Chart1.Series[0].clear;
form2.Chart1.Series[1].clear;
form2.Chart1.Series[2].clear;
form2.Chart1.Series[3].clear;
form2.Chart1.Series[4].clear;
form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[3].tag:=4;
form2.Chart1.Series[4].tag:=5;
if nk<>0 then begin
FOR i:=1 to nk do begin
gamma1:=yt[i]*pt[i]/(xt[i]*p_1); //gamma1
gamma2:=(1-yt[i])*pt[i]/(1-xt[i])/p_2; //gamma2
g[i]:=log10(gamma1/gamma2);

form2.Chart1.Series[4].AddXY(xt[i],g[i]);
form2.Chart1.Series[0].AddXY(xt[i],gt[i]);
form2.Chart1.Series[1].AddXY(xt[i],log10(p_2/p_1));
form2.Chart1.Series[2].AddXY(xt[i],xt[i]);
form2.Chart1.Series[3].AddXY(xt[i],yt[i]);
end;


hk:=1/nk;
x1:=hk;p_s:=p_1;
form2.Chart8.Series[3].AddXY(x1,p_s/1000);
for i:=1 to nk-2 do begin
p_s:=runge_kutta4(x1,p_s,h);
x1:=x1+h;
form2.Chart8.Series[3].AddXY(x1,p_s/1000);
end;

for i:=0 to nk do xt[i]:=i*h;
 progonka(nk,h,p_1,p_2,xt,pt);
for i:=0 to nk do
form2.Chart8.Series[4].AddXY(xt[i],pt[i]/1000);
 end;
form3.PageControl1.ActivePageIndex:=9;
form2.PageControl1.ActivePageIndex:=7;
form2.Show;
end;

procedure TForm4.N3Click(Sender: TObject);
var i,n,nk,m,deltaT,k:integer;
s1,t1,t2,h1,h2,p1,p2,pp,p0,a0,a1,b0,b1,b2,a_ant,b_ant,c_ant,p20,cc,p_tr,tt,v_tr,hh,
a_lg,b_lg,c_lg,d_lg,a_sg,b_sg,c_sg,d_sg,h_kr,h_tr,t_kr,t_tr,p_kr,v_kr,z_kr,p_atm,
pmin,h4,h1k,h1p,t1k,t1p,s0,a1_lg,b1_lg,c1_lg,d1_lg,a1_sg,b1_sg,c1_sg,d1_sg,r1,r2:MyReal;
t,h,ph:array[1..3]of masd;
p:array[0..5]of masd;
p_:masd;
old:string;
begin
//расчет давления по данным зависимости теплоты испарения чистого компонента
// от абсолютной температуры
old:=table1.Bookmark;
h1:=Table1Teplota.value;
h1p:=Table1Teplota.value; //Нплавления
t1p:=Table1Temperature.value+kelvin; //Нплавления
h1k:=Table1H_kipen.value;
t1k:=Table1T_Kelvin.value+kelvin;
t1:=Table1T_Kelvin.value+kelvin; //Т кипения в К
p1:=Table1P_kipen.Value; //Давление кипения кПа
t20:=Table1Temperature.value+kelvin; //Т атм. в К    Tзамерзания
p_tr:=Table1P_tr.Value;//кПа
p_atm:=Table1P_atm.Value;//кПа
a_ant:=Table1A_ant.Value;
b_ant:=Table1B_ant.Value;
c_ant:=Table1C_ant.Value;

a_lg:=Table1A_lg.Value;
b_lg:=Table1b_lg.Value;
c_lg:=Table1c_lg.Value;
d_lg:=Table1d_lg.Value;
a_sg:=Table1A_sg.Value;
b_sg:=Table1b_sg.Value;
c_sg:=Table1c_sg.Value;
d_sg:=Table1d_sg.Value;

h_tr:=Table1H_teplota.Value;
t_kr:=Table1T_kr.Value;
t_tr:=Table1T_tr.Value;

p_kr:=Table1P_kr.Value;// кПа
v_kr:=Table1V_kr.Value; //m^3/моль
 Z_kr:=Table1Z_kr.Value;
if z_kr=0 then begin
try
 z_kr:=1000*p_kr*v_kr/t_kr/r;
 except
 z_kr:=0;
 end;
 showmessage('z_kr='+floattostr(z_kr));
 end;
 m:=strtoint(inputbox(s,'введите кол-во точек интерполяции','5'));
k:=strtoint(inputbox(s,'введите кол-во точек экстраполяции','6'));
deltaT:=strtoint(inputbox(s,'введите шаг изменения температуры','10'));

table6.First;
n:=table6.RecordCount;
setlength(h[1],n+1);
setlength(T[1],n+1);
setlength(Ph[1],n+1);
setlength(Ph[2],n+1);
setlength(Ph[3],n+1);
form2.Chart1.Title.Text.clear;
form2.Chart1.Title.Text.Add('Зависимость теплоты от температуры');
form2.Chart1.leftAxis.Title.Caption:='H, Дж/моль';
form2.Chart1.BottomAxis.Title.Caption:='T, К';
form2.Chart1.Series[0].Clear;
form2.Chart1.Series[1].Clear;
form2.Chart1.Series[2].Clear;
form2.Chart1.Series[3].Clear;
form2.Chart1.Series[4].Clear;
form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[3].tag:=4;
form2.Chart1.Series[4].tag:=5;
form2.Chart1.Series[0].title:='H(t)исп эксп';
form2.Chart1.Series[1].title:='H(t)исп расч';
form2.Chart1.Series[2].title:='H(t)исп эмпир';
form2.Chart1.Series[3].title:='H(t)субл расч';
form2.Chart1.Series[4].title:='H(t)плавл расч';
form2.Chart10.Title.Text.clear;
form2.Chart10.Title.Text.Add('Зависимость энтальпии плавления от давления');
form2.Chart10.leftAxis.Title.Caption:='H, Дж/моль';
form2.Chart10.BottomAxis.Title.Caption:='Р, кПа';
form2.Chart10.Series[0].clear;
form2.Chart10.Series[0].tag:=1;
form2.Chart10.Series[0].title:='H(P)плавл расч';

form2.Chart6.Title.Text.clear;
form2.Chart6.Title.Text.Add('Зависимость давления от температуры');
form2.Chart6.leftAxis.Title.Caption:='Р, кПа';
form2.Chart6.BottomAxis.Title.Caption:='T, К';
form2.Chart6.Series[0].clear;
form2.Chart6.Series[1].clear;
form2.Chart6.Series[2].clear;
form2.Chart6.Series[0].title:='P(t) lg эксп';
form2.Chart6.Series[1].title:='P(t) sg эксп';
form2.Chart6.Series[2].title:='P(t) ls эксп';
form2.Chart6.Series[0].tag:=1;
form2.Chart6.Series[1].tag:=2;
form2.Chart6.Series[2].tag:=3;

form3.RG.ColCount:=16;
form3.RG.RowCount:=n+k+1;
form3.RG.Cells[0,0]:='i';
form3.RG.Cells[1,0]:='T';
form3.RG.Cells[2,0]:='H(T) исп. эксп';
form3.RG.Cells[3,0]:='H(T) исп. расч.';
form3.RG.Cells[4,0]:='|H(T)эксп-Н(T)расч| исп.';
form3.RG.Cells[5,0]:='H(T) субл.';
form3.RG.Cells[6,0]:='H(T) исп. эмпир.';
form3.RG.Cells[7,0]:='|H(T)эмп-Н(T)расч| исп.';

form3.RG.Cells[8,0]:='P(T)lg-модель';
form3.RG.Cells[9,0]:='Р(T)lg-расчет';
form3.RG.Cells[10,0]:='Р(T)lg-Антуан';

form3.RG.Cells[11,0]:='P(T)sg-модель';
form3.RG.Cells[12,0]:='Р(T)sg-расчет';
form3.RG.Cells[13,0]:='P(T)lg-эксп';
form3.RG.Cells[14,0]:='Р(T)sg-эксп';
form3.RG.Cells[15,0]:='Р(T)ls-эксп';

form3.GR.ColCount:=16;
form3.GR.RowCount:=n+k+1;
form3.GR.Cells[0,0]:='i';
form3.GR.Cells[1,0]:='T';
form3.GR.Cells[2,0]:='H(T) исп. эксп';
form3.GR.Cells[3,0]:='H(T) исп. расч.';
form3.GR.Cells[4,0]:='|H(T)эксп-Н(T)расч| исп.';
form3.GR.Cells[5,0]:='H(T) субл.';
form3.GR.Cells[6,0]:='H(T) исп. эмпир.';
form3.GR.Cells[7,0]:='|H(T)эмп-Н(T)расч| исп.';

form3.GR.Cells[8,0]:='P(T)lg-модель';
form3.GR.Cells[9,0]:='Р(T)lg-расчет';
form3.GR.Cells[10,0]:='Р(T)lg-Антуан';

form3.GR.Cells[11,0]:='P(T)sg-модель';
form3.GR.Cells[12,0]:='Р(T)sg-расчет';
form3.GR.Cells[13,0]:='P(T)lg-эксп';
form3.GR.Cells[14,0]:='Р(T)sg-эксп';
form3.GR.Cells[15,0]:='Р(T)ls-эксп';
for i:=1 to N do begin
H[1,i]:=Table6H_isp.Value;
T[1,i]:=Table6T_K.Value;
ph[1,i]:=Table6P_lg.Value;
ph[2,i]:=Table6P_sg.Value;
ph[3,i]:=Table6P_ls.Value;
form2.Chart1.Series[0].AddXY(t[1,i],h[1,i]);
form2.Chart6.Series[0].AddXY(t[1,i],ph[1,i]);
form2.Chart6.Series[1].AddXY(t[1,i],ph[2,i]);
form2.Chart6.Series[2].AddXY(t[1,i],ph[3,i]);
form3.GR.Cells[0,i]:=inttostr(i);
form3.GR.Cells[1,i]:=floattostr(t[1,i]);
form3.GR.Cells[2,i]:=floattostr(h[1,i]);
form3.GR.Cells[12,i]:=floattostr(ph[1,i]);
form3.GR.Cells[13,i]:=floattostr(ph[2,i]);
form3.GR.Cells[14,i]:=floattostr(ph[3,i]);
table6.Next;
end;

// рекурсия
setlength(p_,4);
polynrecurs(t[1],h[1],m,3,p_,r1);
a0:=p_[1];a1:=p_[2];a2:=p_[3];
form3.ur.Cells[0,1]:= 'рекурсия Н исп';
form3.ur.Cells[1,1]:= floattostr (a0);
form3.ur.Cells[2,1]:= floattostr (a1);
form3.ur.Cells[3,1]:= floattostr (a2);
form3.ur.Cells[4,1]:= floattostr (r1);
//сравнение
for i:=1 to n do begin
h2:=a0+a1*t[1,i]+a2*sqr(t[1,i]);
form3.GR.Cells[3,i]:=floattostr(h2);
form3.GR.Cells[4,i]:=floattostr(abs(h2-h[1,i]));
end;
//продолжаем экстраполяцию до 6 точек
setlength(t[2],n+k+1);
setlength(h[2],n+k+1);
for i:=1 to k do begin
t2:=t[1,1]-deltaT*i;
h2:=a0+a1*t2+a2*sqr(t2);
t[2,k+1-i]:=t2;
h[2,k+1-i]:=h2;
end;
for i:=1 to n do begin
t[2,k+i]:=t[1,i];
h[2,k+i]:=h[1,i];
end;
for i:=1 to n+k do begin
form3.RG.Cells[1,i]:=floattostr(t[2,i]);
form3.RG.Cells[2,i]:=floattostr(h[2,i]);
end;

polynrecurs(t[2],h[2],m+k,3,p_,r2);
b0:=p_[1];b1:=p_[2];b2:=p_[3];
form3.ur.Cells[0,2]:= 'экстраполяция Н исп';
form3.ur.Cells[1,2]:= floattostr (b0);
form3.ur.Cells[2,2]:= floattostr (b1);
form3.ur.Cells[3,2]:= floattostr (b2);
form3.ur.Cells[4,2]:= floattostr (r2);
//сравнение
s0:=0;
form2.Chart1.Series[2].clear;
 TRY
h_tr:=h1k/power((t_kr-t1k)/(t_kr-t_tr),sqr(z_kr)*(t1k-t_tr)/(t_kr-t_tr)+z_kr);
except
   h_tr:=0;
end;
showmessage('исп h_tr= '+floattostr(h_tr));
s1:=0;s0:=0;
for i:=1 to n+k do begin
h2:=b0+b1*t[2,i]+b2*sqr(t[2,i]);//Н испарения
h3:=h2+h1p;//Н сублимации= Н испарения+ Н плавления
//h_исп по эмпирической формуле
h4:=h_tr*power((t_kr-t[2,i])/(t_kr-t_tr),sqr(z_kr)*(t[2,i]-t_tr)/(t_kr-t_tr)+z_kr);
form3.RG.Cells[1,i]:=floattostr(t[2,i]);
form3.RG.Cells[2,i]:=floattostr(h[2,i]);
form3.RG.Cells[3,i]:=floattostr(h2);
form3.RG.Cells[4,i]:=floattostr(abs(h2-h[2,i]));
form3.RG.Cells[5,i]:=floattostr(h3);
form3.RG.Cells[6,i]:=floattostr(h4);
form3.RG.Cells[7,i]:=floattostr(abs(h2-h4));
s0:=s0+sqr(h2-h4);
s1:=s1+sqr(h2-h[2,i]);
form2.Chart1.Series[1].AddXY(t[2,i],h2);
form2.Chart1.Series[3].AddXY(t[2,i],h3);
form2.Chart1.Series[2].AddXY(t[2,i],h4);
end;
s0:=sqrt(s0/(n+k-2));
s1:=sqrt(s1/(n+k-2));
showmessage('погрешности для испарения: |H_расч - Н_эмп|='+floattostr(s0)+
 ' |H_эксп - Н_расч|='+floattostr(s1));

//расчет коэффициентов lnP=-A/T+B*lnT+C*T+D
a1_lg:=b0/R;
b1_lg:=b1/R;
c1_lg:=b2/R;
d1_lg:=ln(P1)+a1_lg/T1-b1_lg*ln(T1)-c1_lg*T1;
showmessage('lg: a='+floattostr(a1_lg)+' b='+floattostr(b1_lg)+
' c='+floattostr(c1_lg)+' d='+floattostr(d1_lg));

//расчет давления испарения

form2.Chart6.Series[3].Clear;
form2.Chart6.Series[3].title:='P lg_модел';
form2.Chart6.Series[4].Clear;
form2.Chart6.Series[4].title:='P lg_расч';
form2.Chart6.Series[5].Clear;
form2.Chart6.Series[5].title:='P lg_Антуан';
form2.Chart6.Series[3].tag:=4;
form2.Chart6.Series[4].tag:=5;
form2.Chart6.Series[5].tag:=6;
s0:=0;s1:=0;
for i:=1 to n+k do begin
t0:=t[2,i];
try
p0:=power(10,(-a_lg/t0+b_lg*log10(T0)+C_lg*t0+d_lg))*Pascual/1000;
except
p0:=0;
end;
pp:=exp(-a1_lg/t0+b1_lg*ln(T0)+C1_lg*t0+d1_lg);// кПа;
p2:=exp(a_ant-b_ant/(c_ant+t0))*Pascual/1000;
form3.rg.Cells[8,i]:=floattostr(p0);
form3.rg.Cells[9,i]:=floattostr(pp);
form3.rg.Cells[10,i]:=floattostr(p2);
form2.Chart6.Series[4].AddXY(t[2,i],p0);
form2.Chart6.Series[5].AddXY(t[2,i],pp);
form2.Chart6.Series[6].AddXY(t[2,i],p2);
s0:=s0+sqr(p0-pp);
s1:=s1+sqr(p2-pp);
end;
s0:=sqrt(s0/(n+k-2));
s1:=sqrt(s1/(n+k-2));
showmessage('погрешности для испарения: |P_расч - P_мод|='+floattostr(s0)+
 ' |Р_рас - Р_Ант|='+floattostr(s1));

nk:=form1.Fn.Value;
setlength(h[3],n+k+1);
for i:=1 to n do begin
h[3,i]:=h[1,i]+h1p;    //Н сублимации
end;

polynrecurs(t[1],h[3],m,3,p_,r1);
a0:=p_[1];a1:=p_[2];a2:=p_[3];
form3.ur.Cells[0,3]:= 'рекурсия Н субл.';
form3.ur.Cells[1,3]:= floattostr (a0);
form3.ur.Cells[2,3]:= floattostr (a1);
form3.ur.Cells[3,3]:= floattostr (a2);
form3.ur.Cells[4,3]:= floattostr (r1);
//сравнение
for i:=1 to n do begin
h2:=a0+a1*t[1,i]+a2*sqr(t[1,i]);
form3.gr.Cells[5,i]:=floattostr(h[3,i]);
form3.gr.Cells[6,i]:=floattostr(h2);
form3.gr.Cells[7,i]:=floattostr(abs(h2-h[3,i]));
end;

//продолжаем экстраполяцию до 6 точек
setlength(h[3],n+k+1);
for i:=1 to k do begin
t2:=t[1,1]-deltaT*i;
h3:=a0+a1*t2+a2*sqr(t2);
t[2,k+1-i]:=t2;
h[3,k+1-i]:=h3;
end;
for i:=1 to n do begin
t[2,k+i]:=t[1,i];
h[3,k+i]:=h[1,i]+h1p;
end;
for i:=1 to n+k do begin
form3.RG.Cells[1,i]:=floattostr(t[2,i]);
form3.RG.Cells[5,i]:=floattostr(h[3,i]);
end;

polynrecurs(t[2],h[3],m+k,3,p_,r2);
b0:=p_[1];b1:=p_[2];b2:=p_[3];
form3.ur.Cells[0,4]:= 'экстраполяция Н субл.';
form3.ur.Cells[1,4]:= floattostr (b0);
form3.ur.Cells[2,4]:= floattostr (b1);
form3.ur.Cells[3,4]:= floattostr (b2);
form3.ur.Cells[4,4]:= floattostr (r2);
 form3.ur.colcount:=5;
 form3.ur.rowcount:=5;
//сравнение

for i:=1 to n+k do begin
h3:=b0+b1*t[2,i]+b2*sqr(t[2,i]);//Н сублимации sg
form3.RG.Cells[5,i]:=floattostr(h3);
end;
//расчет коэффициентов lnP=-A/T+B*lnT+C*T+D
a1_sg:=b0/R;
b1_sg:=b1/R;
c1_sg:=b2/R;
p20:=exp(-a1_lg/t20+b1_lg*ln(T20)+C1_lg*t20+d1_lg);// кПа; из кривой P_lg при Тплавл (замерзания)
d1_sg:=ln(P20)+a1_sg/T20-b1_sg*ln(T20)-c1_sg*T20;
showmessage('sg: a='+ floattostr(a1_sg)+' b='+floattostr(b1_sg)+
' c='+floattostr(c1_sg)+' d='+floattostr(d1_sg));
  if (Table1A_lg.Value=0) then
  begin
table1.Edit;
Table1A_lg.Value:=a1_lg;
Table1b_lg.Value:=b1_lg;
Table1c_lg.Value:=c1_lg;
Table1d_lg.Value:=d1_lg;
table1.post;
end;
  if (Table1A_sg.Value=0) then
  begin
table1.Edit;
Table1A_sg.Value:=a1_sg;
Table1b_sg.Value:=b1_sg;
Table1c_sg.Value:=c1_sg;
Table1d_sg.Value:=d1_sg;
table1.Post;
  end;
//расчет давления sg
form2.Chart6.Series[6].Clear;
form2.Chart6.Series[6].title:='P sg_модел';
form2.Chart6.Series[7].Clear;
form2.Chart6.Series[7].title:='P sg_расч';
form2.Chart6.Series[6].tag:=7;
form2.Chart6.Series[7].tag:=8;
s0:=0;
for i:=1 to n+k do begin
try
p0:=power(10,(-a_sg/t[2,i]+b_sg*log10(T[2,i])+C_sg))*Pascual/1000;
except
p0:=0;
end;
pp:=exp(-a1_sg/t[2,i]+b1_sg*ln(T[2,i])+C1_sg*t[2,i]+d1_sg);//кПа;
form3.RG.Cells[10,i]:=floattostr(p0);
form3.RG.Cells[11,i]:=floattostr(pp);
form2.Chart6.Series[6].AddXY(t[2,i],p0);
form2.Chart6.Series[7].AddXY(t[2,i],pp);
s0:=s0+sqr(p0-pp);
end;
s0:=sqrt(s0/(n+k-2));
showmessage('погрешности для сублимации: |P_расч - P_мод|='+floattostr(s0));

// все зависимости на одном графике
form2.Chart2.Title.Text.clear;
form2.Chart2.Title.Text.Add('Зависимость давления от температуры');
form2.Chart2.leftAxis.Title.Caption:='P, кПа';
form2.Chart2.BottomAxis.Title.Caption:='T, К';
form2.Chart2.Series[0].clear;
form2.Chart2.Series[0].title:='P(T)lg_model';
form2.Chart2.Series[1].clear;
form2.Chart2.Series[1].title:='P(T)sg_model';
form2.Chart2.Series[2].clear;
form2.Chart2.Series[2].title:='P(T)lg_расч';
form2.Chart2.Series[3].clear;
form2.Chart2.Series[3].title:='P(T)sg_расч';
form2.Chart2.Series[4].clear;
form2.Chart2.Series[4].title:='P(T)lg_Антуан';
form2.Chart2.Series[5].clear;
form2.Chart2.Series[5].title:='P(T)плавл';

form2.Chart2.Series[0].tag:=1;
form2.Chart2.Series[1].tag:=2;
form2.Chart2.Series[2].tag:=3;
form2.Chart2.Series[3].tag:=4;
form2.Chart2.Series[4].tag:=5;
form2.Chart2.Series[5].tag:=6;
form3.vd.rowcount:=nk+1;
form3.vd.colcount:=8;
setlength(p[0],nk+1);
setlength(p[1],nk+1);
setlength(p[2],nk+1);
setlength(p[3],nk+1);
setlength(p[4],nk+1);
setlength(p[5],nk+1);


form3.vd.Cells[0,0]:='T,K';
form3.vd.Cells[1,0]:='P(T)lg_model';
form3.vd.Cells[2,0]:='P(T)sg_model';
form3.vd.Cells[3,0]:='P(T)lg_расч';
form3.vd.Cells[4,0]:='P(T)sg_расч';
form3.vd.Cells[5,0]:='P(T)lg_Антуан';
form3.vd.Cells[6,0]:='P(T)плавл';
form3.vd.Cells[7,0]:='H(P)плавл';

s0:=(t[2,n+k]-t[2,1])/nk;
pmin:=0;
for i:=1 to nk do begin
tt:=t[2,1]+s0*(i-1);
try
p[0,i]:=power(10,(-a_lg/tt+b_lg*log10(Tt)+C_lg*tt+d_lg))*Pascual/1000;
except
p[0,i]:=0;
end;
try
p[1,i]:=power(10,(-a_sg/tt+b_sg*log10(Tt)+C_sg))*Pascual/1000;
except
p[1,i]:=0;
end;
p[2,i]:=exp(-a1_lg/tt+b1_lg*ln(Tt)+C1_lg*tt+d1_lg);// kПа;
p[3,i]:=exp(-a1_sg/tt+b1_sg*ln(Tt)+C1_sg*tt+d1_sg);// kПа;
if (p[2,i]<p[3,i]) and (pmin=0) then
begin
pmin:= 1;
t0:=(tt+t[2,1]+s0*(i-2))/2;
p0:=exp(-a1_lg/t0+b1_lg*ln(T0)+C1_lg*t0+d1_lg);
end;
p[4,i]:=exp(a_ant-b_ant/(c_ant+tt))*Pascual/1000;
form3.vd.Cells[0,i]:=floattostr(tt);
form3.vd.Cells[1,i]:=floattostr(p[0,i]);
form3.vd.Cells[2,i]:=floattostr(p[1,i]);
form3.vd.Cells[3,i]:=floattostr(p[2,i]);
form3.vd.Cells[4,i]:=floattostr(p[3,i]);
form3.vd.Cells[5,i]:=floattostr(p[4,i]);

form2.Chart2.Series[0].AddXY(tt,p[0,i]);
form2.Chart2.Series[1].AddXY(tt,p[1,i]);
form2.Chart2.Series[2].AddXY(tt,p[2,i]);
form2.Chart2.Series[3].AddXY(tt,p[3,i]);
form2.Chart2.Series[4].AddXY(tt,p[4,i]);
end;
if pmin=1 then begin
   showmessage('расчет по пересеч lg-sg: P_tr='+floattostr(P0)+ ' кПа T_tr='+floattostr(t0)+' К');
   p_tr:=p0;
   t_tr:=t0;
   end ;

Cc:=h1p/r/t1p;  //коэфф. в формуле Симона
try
v_tr:=h_tr/cc/p_tr/1000;     // м^3/моль
except
v_tr:=0;
end;
showmessage('V_tr='+floattostr(v_tr)+' м^3/моль');
p0:= -27*p_kr;    // P0 при Т->0
T0:=t_tr/exp(ln(-p_tr/p0+1)/cc);  //уравнение Симона при Р=0
showmessage('P0='+floattostr(P0)+ 'кПа; T0='+floattostr(t0)+
' К; C='+floattostr(cc));
for i:=1 to nk do begin
tt:=t[2,1]+s0*(i-1);
p[5,i]:=-p0*(power(tt/t0,cc)-1);
hh:=cc*tt*r; //
form3.vd.Cells[6,i]:=floattostr(p[5,i]);
form3.vd.Cells[7,i]:=floattostr(hh);
form2.Chart2.Series[5].AddXY(tt,p[5,i]);
form2.Chart10.Series[0].AddXY(p[5,i],hh);
form2.Chart1.Series[4].AddXY(tt,hh);
end;
if Table1P0.Value=0 then
begin
table1.Edit;
Table1P0.Value:=p0;
table1.Post;
end;
if Table1t0.Value=0 then
begin
table1.Edit;
Table1t0.Value:=t0;
table1.Post;
end;
if Table1T_tr.Value=0 then
begin
table1.Edit;
Table1T_tr.Value:=t_tr;
table1.Post;
end;
if Table1Z_kr.Value=0 then
begin
table1.Edit;
Table1Z_kr.Value:=z_kr;
table1.Post;
end;
if Table1P_tr.Value=0 then
begin
table1.Edit;
Table1P_tr.Value:=p_tr;
table1.Post;
end;
form3.PageControl1.ActivePageIndex:=2;
form2.PageControl1.ActivePageIndex:=1;
form2.Show;
form3.Show;
end;

procedure TForm4.CpABTCT2DT32Click(Sender: TObject);
var a,b,c,d,cp,t0:myreal;
begin
//расчет Cp=A+B*T +C*T^2+D*T^3
a:=Table1A_Cp.Value;
b:=Table1B_Cp.Value;
c:=Table1C_Cp.Value;
d:=Table1D_Cp.Value;
T0:=Table1Temperature.Value+Kelvin;
cp:=a+b*t0+c*sqr(t0)+d*sqr(t0)*t0;
Table1.Edit;
Table1Cp_mol.Value:=cp;
table1.post;
end;

procedure TForm4.CpABTCT23Click(Sender: TObject);
var a,b,c,cp,t0:myreal;
begin
//расчет Cp=A+B*T +C/T^2
a:=Table1A_Cp.Value;
b:=Table1B_Cp.Value;
c:=Table1C_Cp.Value;
T0:=Table1Temperature.Value+Kelvin;
cp:=a+b*t0+c/sqr(t0);
Table1.Edit;
Table1Cp_mol.Value:=cp;
table1.post;
end;

procedure TForm4.CpABTCT24Click(Sender: TObject);
var a,b,c,cp,t0:myreal;
begin
//расчет Cp=A+B/T +C/T^2
a:=Table1A_Cp.Value;
b:=Table1B_Cp.Value;
c:=Table1C_Cp.Value;
T0:=Table1Temperature.Value+Kelvin;
cp:=a+b/t0+c/sqr(t0);
Table1.Edit;
Table1Cp_mol.Value:=cp;
table1.post;
end;

procedure TForm4.const1Click(Sender: TObject);
var cp,t0,a,b,c,d,h0,h,t,m:myreal;
 old,nameold:string;
begin
old:=table1.Bookmark;
nameold:=table1name.Value;
a:=Table1A_Cp.Value;
b:=Table1B_Cp.Value;
c:=Table1C_Cp.Value;
d:=Table1D_Cp.Value;
T0:=Table1Temperature.Value+Kelvin;
H0:=Table1Teplota.Value;
m:=Table1MolMassa.Value;
t:=strtofloat(inputbox('Ввод данных','Введите температуру плавления (в С)',floattostr(1.5)))+kelvin;
H:=h0+a*(t-t0)+b*(sqr(t)-sqr(t0))/2+c*(sqr(t)*t-sqr(t0)*t0)/3+
d*(sqr(t)*sqr(t)-sqr(t0)*sqr(t0))/4;
cp:=a+b*t+c*sqr(t)+d*sqr(t)*t;
t:=t-kelvin;
Table1.Append;
Table1Name.Value:=nameold+'при T='+floattostr(t)+'C';
Table1Teplota.Value:=H;
Table1Temperature.Value:=t;
Table1MolMassa.Value:=m;
Table1Cp_mol.Value:=cp;
Table1A_Cp.Value:=a;
Table1B_Cp.Value:=b;
Table1C_Cp.Value:=c;
Table1D_Cp.Value:=d;
table1.post;
end;

procedure TForm4.const21Click(Sender: TObject);
var cp,t0,a,b,c,d,h0,h,t,m:myreal;
 old,nameold:string;
begin
old:=table1.Bookmark;
nameold:=table1name.Value;
a:=Table1A_Cp.Value;
b:=Table1B_Cp.Value;
c:=Table1C_Cp.Value;
d:=Table1D_Cp.Value;
T0:=Table1Temperature.Value+Kelvin;
H0:=Table1Teplota.Value;
m:=Table1MolMassa.Value;
t:=strtofloat(inputbox('Ввод данных','Введите температуру плавления (в С)',floattostr(1.5)))+kelvin;
H:=h0+a*(t-t0)+b*(sqr(t)-sqr(t0))/2-c*(1/t-1/t0);
cp:=a+b*t+c/sqr(t);
t:=t-kelvin;
Table1.Append;
Table1Name.Value:=nameold+'при T='+floattostr(t)+'C';
Table1Teplota.Value:=H;
Table1Temperature.Value:=t;
Table1MolMassa.Value:=m;
Table1Cp_mol.Value:=cp;
Table1A_Cp.Value:=a;
Table1B_Cp.Value:=b;
Table1C_Cp.Value:=c;
Table1D_Cp.Value:=d;
table1.post;

end;

procedure TForm4.const31Click(Sender: TObject);
var cp,t0,a,b,c,d,h0,h,t,m:myreal;
 old,nameold:string;
begin
old:=table1.Bookmark;
nameold:=table1name.Value;
a:=Table1A_Cp.Value;
b:=Table1B_Cp.Value;
c:=Table1C_Cp.Value;
d:=Table1D_Cp.Value;
T0:=Table1Temperature.Value+Kelvin;
H0:=Table1Teplota.Value;
m:=Table1MolMassa.Value;
t:=strtofloat(inputbox('Ввод данных','Введите температуру плавления (в С)',floattostr(1.5)))+kelvin;
H:=h0+a*(t-t0)+b*(ln(t)-ln(t0))-c*(1/t-1/t0);
cp:=a+b/t+c/sqr(t);
t:=t-kelvin;
Table1.Append;
Table1Name.Value:=nameold+'при T='+floattostr(t)+'C';
Table1Teplota.Value:=H;
Table1Temperature.Value:=t;
Table1MolMassa.Value:=m;
Table1Cp_mol.Value:=cp;
Table1A_Cp.Value:=a;
Table1B_Cp.Value:=b;
Table1C_Cp.Value:=c;
Table1D_Cp.Value:=d;
table1.post;
end;

procedure TForm4.N4Click(Sender: TObject);
label 1,2;
var nk,m,n1,n2,i1,i2,i,n,j,k,l:integer;
x1,x2,g60,g70,l12,etta1,etta2,q1,q2,Hh,Hh1,Hh2,Ffz1,Ffx1,Ffq1,
z1,z2,y1,y2,s1,s2,l12_, w,ge,minz,minq,mint,
g4,g5,g6,g7,x1_e,x1_m,lambda12,t12,lnx1,lnx2,w1,w2,w1_,x1_,minx1,
q1_,minx2,w2_,m12,g0,tg1,tg2,tg,x2_,q2_,
g3,H1_,H2_,h,s,t1,t2,h1,h2,m1,m2,p0,p10,p20,l1,l2,lng1,lng2,
r1,r2,r3,r4,a0,a1,b0,b1,fmin,minx,g1,g2,fminr,minxr:MyReal;
name1,name2:string;
a,p1,p2,p3,p4:masD;
a_,b_,z:array[1..4]of masd;

old:string;
begin
// расчет логарифмов активности твердое-жидкость
old:=table2.Bookmark;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
p0:=Table2Pl_cmecu.Value;
p10:=Table2P1_0.Value;
p20:=Table2P2_0.Value;
l1:=Table2Lambda1.Value;
l2:=Table2Lambda2.Value;
table1.FindKey([i1]);
name1:=Table1Name.Value;
h1:=Table1Teplota.value;    //теплота плавления (при переходе из твердого в жидкое состояние)
hs1:=Table1H_teplota.value;  //теплота смешения (при бесконечном разбавлении)
hk1:=Table1H_kipen.value;    //теплота испарения  (при переходе из жидкого в парообразное состояние)
t1:=Table1Temperature.value+kelvin; //температура плавления
t10:=Table1T_Kelvin.Value+kelvin;   //температура кипения
h10:=h1/l1;
m1:=Table1MolMassa.value;
a10:=Table1A_ant.Value;
b10:=Table1B_ant.Value;
c10:=Table1C_ant.Value;
table1.FindKey([i2]);
name2:=Table1Name.Value;
a20:=Table1A_ant.Value;
b20:=Table1B_ant.Value;
c20:=Table1C_ant.Value;
h2:=Table1Teplota.value;
hs2:=Table1H_teplota.value;
hk2:=Table1H_kipen.value;
h20:=h2/l2;
t2:=Table1Temperature.value+kelvin;
t20:=Table1T_Kelvin.Value+kelvin;
m2:=Table1MolMassa.value;
m12:=m1/m2;
table1.FindKey([i1]);
table2.Bookmark:=old;
n:=table3.RecordCount;
setlength(xm[1],n+1);
setlength(xm[2],n+1);
setlength(xv[1],n+1);
setlength(xv[2],n+1);

setlength(t[1],n+1);
setlength(t[2],n+1);
setlength(t[3],n+1);
setlength(g[1],n+1);
setlength(g[2],n+1);
setlength(gl[1],n+1);
setlength(gl[2],n+1);
form2.Chart1.Series[0].Clear;
form2.Chart1.Series[1].Clear;
form2.Chart6.Series[0].Clear;
form2.Chart6.Series[1].Clear;

n1:=0;n2:=0;
table3.First;
for i:=1 to N do begin
if Table3X1mas.Value<>0 then begin
   table3.Edit;Table3X2mas.value:=1-Table3X1mas.Value;table3.post;end
else if Table3X2mas.value<>0 then begin
   table3.Edit;Table3X1mas.Value:=1-Table3X2mas.value;table3.post; end;
if (Table3X1mas.Value<>0) and (Table3X2mas.value<>0) then begin
if Table3X1mol.Value=0 then begin
 table3.Edit;
 Table3X1mol.Value:=Table3X1mas.Value/m1/(Table3X1mas.Value/m1+Table3X2mas.value/m2);
 if Table3X2mol.value=0 then Table3X2mol.value:=1-table3X1mol.Value;
 table3.Post;
end else begin
 table3.Edit;
 Table3X2mol.value:=1-table3X1mol.Value;
 table3.post;
end;
end
else begin
   if Table3X1mol.Value<>0 then
   begin
     table3.Edit;
     Table3X2mol.value:=1-Table3X1mol.Value;
     Table3X1mas.Value:=Table3X1mol.Value/(Table3X1mol.Value+Table3X2mol.value*m2/m1);
     Table3X2mas.value:=1-Table3X1mas.Value;
     table3.post;
   end else
   if Table3X2mol.value<>0 then
   begin
     table3.Edit;
     Table3X1mol.Value:=1-Table3X2mol.value;
     Table3X1mas.Value:=Table3X1mol.Value/(Table3X1mol.Value+Table3X2mol.value*m2/m1);
     Table3X2mas.value:=1-Table3X1mas.Value;
     table3.post;
   end;
end;
xm[1,i]:=Table3X1mol.Value;
xm[2,i]:=Table3X2mol.value;
xv[1,i]:=Table3X1mas.Value;
xv[2,i]:=Table3X2mas.value;

table3.Edit;
if Table3T1C.Value<>0 then begin
   inc(n1);
   Table3T1K.Value:=Table3t1c.Value+Kelvin;
   t[1,i]:=Table3T1K.Value;
   form2.Chart1.Series[0].AddXY(xm[1,i],t[1,i]);
   form2.Chart6.Series[0].AddXY(xv[1,i],t[1,i]);
end;
if Table3T2C.Value<>0 then begin
   inc(n2);
   Table3T2K.Value:=Table3t2c.Value+Kelvin;
   t[2,i]:=Table3T2K.Value;
   form2.Chart1.Series[1].AddXY(xm[1,i],t[2,i]);
   form2.Chart6.Series[1].AddXY(Xv[1,i],t[2,i]);
end;

table3.post;
table3.Next;
end;

//расчет логарифмов активности по данным эксперимента
form2.Chart2.Title.Text.clear;
form2.Chart2.Title.Text.Add('Логарифмы активности');
form2.Chart2.Title.Text.Add(name1+' - '+name2);
form2.Chart2.LeftAxis.Title.Caption:='Log';
form2.Chart2.BottomAxis.Title.Caption:='x1';

form2.Chart2.Series[0].clear;form2.Chart2.Series[0].title:='Ln(g1)экс.';
form2.Chart2.Series[1].clear;form2.Chart2.Series[1].title:='Ln(g2)экс.';
form2.Chart2.Series[2].clear;form2.Chart2.Series[2].title:='Lg(g1/g2)экс.';
table3.First;
For i:=1 to n do begin
   table3.Edit;
if Table3T1C.Value<>0 then begin
   gl[1,i]:=H1/R/T1*(1-T1/T[1,i])-ln(Xm[1,i]); //ln(gamma1)
   gl[2,i]:=H2/R/T2*(1-T2/T[1,i])-ln(Xm[2,i]); //ln(gamma2)
   g[1,i]:=exp(gl[1,i]);
   g[2,i]:=exp(gl[2,i]);
   form2.Chart2.Series[0].AddXY(xm[1,i],gl[1,i]);
   form2.Chart2.Series[2].AddXY(xm[1,i],log10(G[1,i]/g[2,i]));
   Table3Gamma1.Value:=g[1,i];
   Table3Gamma2.Value:=g[2,i];
   Table3LnGamma1.Value:=gl[1,i];
   Table3lngamma2.Value:=gl[2,i];
end;
if Table3T2C.Value<>0 then begin
   gl[1,i]:=H1/R/T1*(1-T1/T[2,i])-ln(Xm[1,i]);
   gl[2,i]:=H2/R/T2*(1-T2/T[2,i])-ln(Xm[2,i]);
   g[1,i]:=exp(gl[1,i]);
   g[2,i]:=exp(gl[2,i]);
   form2.Chart2.Series[1].AddXY(xm[1,i],gl[2,i]);
   form2.Chart2.Series[2].AddXY(xm[1,i],log10(G[1,i]/g[2,i]));
   Table3Gamma1.Value:=g[1,i];
   Table3Gamma2.Value:=g[2,i];
   Table3Lngamma1.Value:=gl[1,i];
   Table3lngamma2.Value:=gl[2,i];
end;
table3.Post;
table3.Next;
end;


form3.RG.ColCount:=13;
form3.RG.RowCount:=n+1;
form3.RG.Cells[0,0]:='i';
form3.RG.Cells[1,0]:='X1m';
form3.RG.Cells[2,0]:='X2m';
form3.RG.Cells[3,0]:='Ln1';
form3.RG.Cells[4,0]:='Ln2';
form3.RG.Cells[5,0]:='T1';
form3.RG.Cells[6,0]:='T2';
form3.RG.Cells[7,0]:='X1v';
form3.RG.Cells[8,0]:='X2v';
form3.RG.Cells[9,0]:='Gamma1';
form3.RG.Cells[10,0]:='Gamma2';
form3.RG.Cells[11,0]:='Ln(G1)';
form3.RG.Cells[12,0]:='Ln(G2)';
for i:=1 to n do begin
form3.RG.Cells[0,i]:=inttostr(i);
form3.RG.Cells[1,i]:=floattostr(xm[1,i]);
form3.RG.Cells[2,i]:=floattostr(xm[2,i]);
form3.RG.Cells[5,i]:=floattostr(t[1,i]);
form3.RG.Cells[6,i]:=floattostr(t[2,i]);
form3.RG.Cells[7,i]:=floattostr(xv[1,i]);
form3.RG.Cells[8,i]:=floattostr(xv[2,i]);
form3.RG.Cells[9,i]:=floattostr(g[1,i]);
form3.RG.Cells[10,i]:=floattostr(g[2,i]);
form3.RG.Cells[11,i]:=floattostr(gl[1,i]);
form3.RG.Cells[12,i]:=floattostr(gl[2,i]);
end;
{

//прогноз по k точкам
  k:=3;
//левая ветвь ликвидуса
setlength(z[1],k+1);
setlength(z[2],k+1);
setlength(p1,3);
for i:=1 to k do begin
  z[1,i]:=1000/t[1,i];
  z[2,i]:=gl[1,i];
end;
//рекурсия для Т
polynrecurs(z[1],z[2],k,2,p1,r1);
a0:=p1[1];a1:=p1[2];

form3.UR.cells[1,4]:=inttostr(k);

 k:=3;//количество точек
//правая ветвь ликвидуса
setlength(z[3],k+1);
setlength(z[4],k+1);
for i:=1 to k do begin
  z[3,i]:=1000/t[2,n-i+1];
  z[4,i]:=gl[2,n-i+1];
end;
//рекурсия для Т
polynrecurs(z[3],z[4],k,2,p1,r2);
b0:=p1[1];b1:=p1[2];

//энтальпия смешения при бесконечном разбавлении
H2_:=1000*a1*R;
H1_:=1000*b1*R;
H10:=abs(H1_);
H20:=abs(H2_);
etta1:=H10/H1;etta2:=H20/H2;
 form3.UR.cells[0,0]:='H_';
 form3.UR.cells[0,1]:='a0';
 form3.UR.cells[0,2]:='a1';
 form3.UR.cells[0,3]:='R';
 form3.UR.cells[0,4]:='k';
 form3.UR.cells[1,1]:=floattostr(a0);
 form3.UR.cells[1,2]:=floattostr(a1);
 form3.UR.cells[1,3]:=floattostr(r1);
 form3.UR.cells[1,0]:=floattostr(H1_);
 form3.UR.cells[2,1]:=floattostr(b0);
 form3.UR.cells[2,2]:=floattostr(b1);
 form3.UR.cells[2,3]:=floattostr(r2);
 form3.UR.cells[2,0]:=floattostr(H2_);
 form3.UR.cells[1,4]:=floattostr(etta1);
 form3.UR.cells[2,4]:=floattostr(etta2);

 }
setlength(z[1],n+1);
setlength(z[2],n+1);
setlength(z[3],n+1);
setlength(a,5);
setlength(p1,4);
setlength(p2,4);
setlength(p3,4);
setlength(p4,4);
for i:=1 to n do begin
  z[2,i]:=log10(g[1,i]/g[2,i]);
  z[1,i]:=xm[1,i];
 end;
polynrecurs(z[1],z[2],n,4,a,r1);
//точка минимума
form2.Chart2.Series[5].clear;
form2.Chart2.Series[5].title:='Lg G1/G2';
fmin:=10000;minx:=-1;
K:=form1.fn.Value;
h:=1/k;
s:=0;
fmin:=fr3(h,a,4);
for i:=1 to k-1 do
begin
 s:=s+h;
 g3:=fr3(s,a,4);
 if fmin*g3<0 then begin
   minx:=s;
 end;
 fmin:=g3;
 form2.Chart2.Series[5].addxy(s,g3);
end;
showmessage('Мод. Xmin='+floattostr(minx)+' Logmin='+floattostr(fmin));


//регрессия для левой ветви ликвидуса
//прогноз по k точкам
  k:=5;
1:
//левая ветвь ликвидуса

for i:=1 to k do begin
  z[1,i]:=xm[1,n1+1-i];
  z[2,i]:=T[1,n1+1-i];
  z[3,i]:=gl[1,n1+1-i];
end;
//рекурсия для Т
polynrecurs(z[1],z[2],k,3,p1,r1);
polynrecurs(z[1],z[3],k,3,p2,r2);
k:=k+1;
if ((abs(r2)>1) or (abs(r1)>1)) and (k<=n1) then goto 1;
if ((abs(r1)>1) or (abs(r2)>1)) and (k>n1) then begin
showmessage('Квадратичная регрессия не удовлетворяет условиям!');
exit;
end;
 form3.UR.cells[1,4]:=inttostr(k-1);

 k:=5;//количество точек
2:
//правая ветвь ликвидуса
for i:=1 to k do begin
  z[1,i]:=xm[1,n1+i];
  z[2,i]:=T[2,n1+i];
  z[3,i]:=gl[2,n1+i];
end;
//рекурсия для Т
polynrecurs(z[1],z[2],k,3,p3,r3);
polynrecurs(z[1],z[3],k,3,p4,r4);
k:=k+1;
if ((abs(r3)>1) or (abs(r4)>1)) and (k<=n2) then goto 2;
if ((abs(r3)>1) or (abs(r4)>1)) and (k>n2) then begin
showmessage('Квадратичная регрессия не удовлетворяет условиям!');
exit;
end;
 form2.Chart1.Series[2].clear;
 form2.Chart1.Series[3].clear;
 minxr:=1.0e+30; k:=500;h:=1/k;
 for i:=1 to k-1 do begin
 s:=i*h;
 g1:=fr3(s,p1,3);
 g2:=fr3(s,p3,3);
 form3.VD.Cells[0,i+1]:=inttostr(i);
 form3.VD.Cells[3,i+1]:=floattostr(g1);
 form3.VD.Cells[4,i+1]:=floattostr(g2);
 form2.Chart1.Series[2].addxy(s,g1);
 form2.Chart1.Series[3].addxy(s,g2);
 if abs(g1-g2)<minxr then begin
    if g1<g2 then mint:=g1 else mint:=g2;
    minx:=s;
    minxr:=abs(g1-g2);
 end;
 end;
 x1_e:=minx;//точка минимума по эксперименту
showmessage('Эксп. Xmin='+floattostr(minx)+' Tmin='+floattostr(mint));
 form2.Chart2.Series[3].clear;
 form2.Chart2.Series[4].clear;
 minxr:=1.0e+30; k:=500;h:=1/k;
 for i:=1 to k-1 do begin
 s:=i*h;
 g1:=fr3(s,p2,3);
 g2:=fr3(s,p4,3);
 form3.VD.Cells[0,i+1]:=inttostr(i);
 form3.VD.Cells[3,i+1]:=floattostr(g1);
 form3.VD.Cells[4,i+1]:=floattostr(g2);
 form2.Chart2.Series[3].addxy(s,g1);
 form2.Chart2.Series[4].addxy(s,g2);
 if abs(g1-g2)<minxr then begin
    if g1<g2 then mint:=g1 else mint:=g2;
    minx:=s;
    minxr:=abs(g1-g2);
 end;
 end;
 x1_e:=minx;//точка минимума по эксперименту
showmessage('Эксп. Xmin='+floattostr(minx)+' Tmin='+floattostr(mint));

//x1_e:=minx;//точка минимума по эксперименту


//точка минимума по модели
form2.Chart1.Series[4].clear;
form2.Chart1.Series[4].title:='T(xm)_m';
fmin:=10000;minx:=-1;
K:=form1.fn.Value;
h:=1/k;
s:=0;
for i:=1 to k-1 do
begin
 s:=s+h;
 g3:=fx1_(s);
 if fmin>g3 then begin
   fmin:=g3;
   minx:=s;
 end;
 form2.Chart1.Series[4].addxy(s,g3);
end;
showmessage('Мод. Xmin='+floattostr(minx)+' Tmin='+floattostr(fmin));
x1_m:=minx;//точка минимума по модели
lambda12:=x1_e/(1-x1_e)*(1-x1_m)/x1_m;
//lambda12:=etta2/etta1;
showmessage('lambda='+floattostr(lambda12));

 form3.UR.RowCount:=6;form3.UR.colcount:=5;
 form3.UR.cells[1,5]:=floattostr(x1_e);
 form3.UR.cells[2,5]:=floattostr(x1_m);
 form3.UR.cells[0,5]:=floattostr(lambda12);
 form3.UR.cells[3,5]:=floattostr(etta1);
 form3.UR.cells[4,5]:=floattostr(etta2);

//пересчет в экспериментальные мольные доли
// h10:=h1/l1;h20:=h2/l2;t10:=t1;t20:=t2;        //???
  form3.RT.ColCount:=13;
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
  form3.RT.cells[10,0]:='M(z)';
  form3.RT.cells[11,0]:='H0';
  form3.RT.cells[12,0]:='HL';
  form2.Chart1.series[5].clear;form2.Chart1.series[5].title:='T(z1)эфф.';
  form2.Chart1.series[6].clear;form2.Chart1.series[6].title:='T(x1)экс.';
  form2.Chart1.series[7].clear;form2.Chart1.series[7].title:='T(q1)вес.';
  fmin:=1000;minx:=-1;minz:=-1;minq:=-1;
  for i:=2 to k-1 do begin
z1:=i*h;z2:=(1-z1);
//экспериментальные мольные доли
x1:=z1/(z1+z2/lambda12);
x2:=z2/(z2+z1*lambda12);
//весовые доли
q1:=x1/(x1+(m2)/(m1)*x2);
q2:=x2/(x2+(m1)/(m2)*x1);
//q1:=x1/(x1+m2/m1*x2);
//q2:=x2/(x2+m1/m2*x1);
Hh :=m1*q1+m2*q2;
hh1:=z1*h1+z2*h2;
hh2:=z1*h10+z2*h20;
ffz1:=fx1_(z1);
if fmin>ffz1 then begin
   fmin:=ffz1;
   minx:=x1;   minz:=z1;   minq:=q1;
 end;
form2.Chart1.series[5].AddXY(z1,ffz1); //-kelvin
form2.Chart1.series[6].AddXY(x1,ffz1);
form2.Chart1.series[7].AddXY(q1,ffz1);
 form3.RT.cells[1,i]:=floattostr(Z1);
 form3.RT.cells[2,i]:=floattostr(Z2);
 form3.RT.cells[3,i]:=floattostr(ffz1);
 form3.RT.cells[4,i]:=floattostr(x1);
 form3.RT.cells[5,i]:=floattostr(x2);
 form3.RT.cells[6,i]:=floattostr(ffx1);
 form3.RT.cells[7,i]:=floattostr(q1);
 form3.RT.cells[8,i]:=floattostr(q2);
 form3.RT.cells[9,i]:=floattostr(ffq1);
 form3.RT.cells[10,i]:=floattostr(Hh);
 form3.RT.cells[11,i]:=floattostr(hh1);
 form3.RT.cells[12,i]:=floattostr(hh2);
end;
 showmessage('Мод. Tmin='+floattostr(ffz1)+
 ' X_эфф='+floattostr(minz)+
 ' X_эсп='+floattostr(minx)+
 ' X_масс='+floattostr(minq)
 );

//находим А, В по модели Ван-Лаара
 p10:=exp(a10-b10/(c10+T10));
 p20:=exp(a20-b20/(c20+T20));
 a1:=log10(p10/p20)/(2*minz-1);
 b1:=a1;
  s:=0;
 form2.Chart2.Series[0].clear;form2.Chart2.Series[0].title:='ln(G1)m';
 form2.Chart2.Series[1].clear;form2.Chart2.Series[1].title:='ln(G2)m';
 form2.Chart2.Series[2].clear;form2.Chart2.Series[2].title:='Lg(G1/G2)мод.';
 form2.Chart5.Series[2].clear;form2.Chart5.Series[2].title:='GE_m';
     form2.Chart1.Title.Text.Clear;
    form2.Chart1.Title.Text.Add(name1+'-'+name2);
    form2.Chart1.LeftAxis.Title.Caption:='T, K';
    form2.Chart1.BottomAxis.Title.Caption:='доли 1-го компонента';
form2.Chart1.Series[6].clear;form2.Chart1.Series[6].Title:='T(эфф.м.д.)';
form2.Chart1.Series[7].clear;form2.Chart1.Series[7].Title:='Т(эксп.м.д.)';
form2.Chart1.Series[8].clear;form2.Chart1.Series[8].Title:='Т(масс.д.)';
form2.Chart1.Series[9].clear;form2.Chart1.Series[9].Title:='Тm';
 l12:=lambda12;
 find(l1,l2,l12);
//h10:=h1_/l1;h20:=h2_/l2;
x1_:=1;x2_:=1; w1_:=1;w2_:=1;q1_:=1;q2_:=1;
 for i:=1 to k-1 do begin
    z1:=i*h; s:=z1;
    //s:=z1/(z1+l12*(1-z1));
   // s:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
    g1:=power(10,a1*sqr(1-s));// gamma1
    g2:=power(10,a1*sqr(s)); // gamma2
    t12:=fx1_(z1);
    lnx1:=h10/r/t10*(1-t10/t12)-ln(g1);
    lnx2:=-h20/r/t20*(1-t20/t12)-ln(g2);
    form2.Chart2.Series[0].addxy(s,ln(g1));
    form2.Chart2.Series[1].addxy(s,ln(g2));
    try
    form2.Chart2.Series[2].addxy(s,log10(g1/g2));
    except

    end;
    ge:=s*ln(g1)+(1-s)*ln(g2);//избыточная энергия Гиббса
    form2.Chart5.Series[2].addxy(s,ge);
    w1:=exp(lnx1);  //левая ветвь
    w2:=exp(lnx2);  //правая ветвь
    form2.Chart1.Series[9].AddXY(w1,t12);
    if w1>w1_ then
    form2.Chart1.Series[6].AddXY(w1,t12);
    if w2>w2_ then
    form2.Chart1.Series[6].AddXY(1-w2,t12);
    w1_:=w1;w2_:=w2;
    if abs(w1-(1-w2))<=minx then begin
    minx:=abs(w1-(1-w2));
    g0:=w1;
    tg:=t12;
    end;

    //экспериментальные мольные доли
    x1:=w1/(w1+(1-w1)/l12);
    x2:=w2/((1-w2)/l12+w2);
    if x1>x1_ then
    form2.Chart1.Series[7].AddXY(x1,t12);
    if x2>x2_ then
    form2.Chart1.Series[7].AddXY(1-x2,t12);
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
    form2.Chart1.Series[9].AddXY(q1,t12);
   if q2>q2_ then
    form2.Chart1.Series[10].AddXY(1-q2,t12);
    q1_:=q1;q2_:=q2;
    if abs(q1-(1-q2))<=minx2 then begin
    minx2:=abs(q1-(1-q2));
    g2:=q1;
    tg2:=t12;
    end;
end;
showmessage('zmin='+floattostr(g0)+' Tmin='+floattostr(tg)+#13+
'xmin='+floattostr(g1)+' Tmin='+floattostr(tg1)+#13+
'qmin='+floattostr(g2)+' Tmin='+floattostr(tg2));

form3.PageControl1.ActivePageIndex:=2;
form2.PageControl1.ActivePageIndex:=1;

form2.Show;
form3.Show;
end;

procedure TForm4.N5Click(Sender: TObject);
var old:string;
i,n:integer;
a10,b10,c10,a20,b20,c20,d1,d2,d3,g1,s,t0:Myreal;
xm,ym,he:array[1..2]of masd;
begin
//коэффициенты ряда Редлиха-Кистера для засисимости H_E(x1)
old:=table2.Bookmark;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
table1.FindKey([i1]);
h1:=Table1Teplota.value; //теплота плавления
t1:=Table1Temperature.value+kelvin; //температура плавления
t10:=Table1T_Kelvin.Value+kelvin;   //температура кипения
m1:=Table1MolMassa.value;
a10:=Table1A_ant.Value;
b10:=Table1B_ant.Value;
c10:=Table1C_ant.Value;
table1.FindKey([i2]);
a20:=Table1A_ant.Value;
b20:=Table1B_ant.Value;
c20:=Table1C_ant.Value;
h2:=Table1Teplota.value;
t2:=Table1Temperature.value+kelvin;
t20:=Table1T_Kelvin.Value+kelvin;
m2:=Table1MolMassa.value;
table1.FindKey([i1]);
table2.Bookmark:=old;
T0:=Table2TC_cmecu.Value;
n:=table8.RecordCount;
setlength(xm[1],n+1);
setlength(xm[2],n+1);
setlength(ym[1],n+1);
setlength(ym[2],n+1);
setlength(he[1],n+1);

table8.First;
 for i:=1 to N do begin
if Table8X2mol.value=0 then begin
 table8.Edit;
Table8X2mol.value:=1-table8X1mol.Value;
 table8.post;
end;
if Table8X1mol.Value=0 then begin
 table8.Edit;
Table8X1mol.Value:=1-table8X2mol.value;
 table8.post;
end;
if Table8y2mol.Value=0 then begin
 table8.Edit;
Table8y2mol.Value:=1-table8y1mol.Value;
 table8.post;
end;
if Table8y1mol.Value=0 then begin
 table8.Edit;
Table8y1mol.Value:=1-table8y2mol.Value;
 table8.post;
end;
if Table8y1mol.Value<>0 then ym[1,i]:=Table8y1mol.Value;
if Table8y2mol.Value<>0 then ym[2,i]:=Table8y2mol.Value;
if Table8X1mol.Value<>0 then xm[1,i]:=Table8X1mol.Value;
if Table8X2mol.value<>0 then xm[2,i]:=Table8X2mol.value;

if Table8he.Value<>0 then
he[1,i]:=Table8he.Value
else begin
showmessage('Неполные данные!');
exit;
end;
table8.Next;
end;
Redlehrecurs(xm[1],he[1],n,d1,d2,d3);
table2.Edit;
Table2A1.Value:=d1;
Table2A2.Value:=d2;
Table2A3.Value:=d3;
table2.Post;
form3.UR.Cells[0,0]:='T0';
form3.UR.Cells[1,0]:='D1';
form3.UR.Cells[2,0]:='D2';
form3.UR.Cells[3,0]:='D3';
k:=1;
while form3.UR.Cells[0,k]<>'' do inc(k);
form3.UR.Cells[0,k]:=floattostr(T0);
form3.UR.Cells[1,k]:=floattostr(d1);
form3.UR.Cells[2,k]:=floattostr(d2);
form3.UR.Cells[3,k]:=floattostr(d3);
form3.UR.rowcount:=k+1;

form3.RG.RowCount:=N+1;
form3.RG.colcount:=4;
form2.Chart1.Series[0].Clear;
form2.Chart1.Series[1].Clear;
for i:=1 to n do begin
s:=xm[1,i];
g1:=s*(1-s)*(d1+d2*(2*s-1)+d3*sqr(2*s-1));
form3.RG.Cells[1,i]:=floattostr(s);
form3.RG.Cells[2,i]:=floattostr(he[1,i]);
form3.RG.Cells[3,i]:=floattostr(g1);
form2.Chart1.Series[0].AddXY(s,he[1,i]);
form2.Chart1.Series[1].AddXY(s,g1);
end;
end;


procedure TForm4.N6Click(Sender: TObject);
var
 flag:boolean;
i,i1,i2,i0,nk,n,imax,j:integer;
ro1,ro2,p1_0,p2_0,ve1_0,ve2_0,betta1,betta2,betta,
gamma1,gamma2,L12,f1,f2,g1,g2,l1,l2,h,ve,cc, n12,n1,n2,
b1_b2,y0,xmin1,xmin2,z1,s1,s2,s0,l12_,z2,e,lg1,lg2,
y1,x1,p_s,p_a,p_b,r1,xx,g3,g4,c,b,lg10,zmin1,g0,lgg12,asd,ge,epss,zmin2,r0,d,lgg1,lgg2,gg1,gg2,
t12,tk1,tk2,v1e,v2e,s,v1,v2,y2,p_az,g_az,z_az,x_az,lng1,lng2:MyReal;
p,y,x:masd;
old:string;
a:masd;
gl,g,gt,z:array[1..2]of masd;
begin
//расчет давления по избыточному объему
n:=main.Form1.fn.value;
old:=table2.Bookmark;
i0:=Table2Id.Value;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
ro1:=Table2ro1.Value;
ro2:=Table2ro2.Value;
l1:=Table2Lambda1.Value;
l2:=Table2Lambda2.Value;
tc:=table2tc_cmecu.value+Kelvin;
table1.FindKey([i1]);
a10:=Table1A_ant.Value;
b10:=Table1B_ant.Value;
c10:=Table1C_ant.Value;
h1:=Table1Teplota.AsFloat;
m1:=Table1MolMassa.AsFloat;
TK1:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i2]);
a20:=Table1A_ant.Value;
b20:=Table1B_ant.Value;
c20:=Table1C_ant.Value;
h2:=Table1Teplota.AsFloat;
m2:=Table1MolMassa.AsFloat;
TK2:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i1]);
table2.Bookmark:=old;
nk:=table5.RecordCount;
t0:=Table2TC_cmecu.Value;
a1:=table2a1.value;
a2:=table2a2.value;
a3:=table2a3.value;
ve1_0:=Table2VE1_0.Value;
ve2_0:=Table2VE2_0.Value;
L12:=table2lambda12.value;
IF L12=0 THEN l12:=l1/l2;
p1_0:=Table2p1_0.Value/1000;
p2_0:=Table2p2_0.Value/1000;

setlength(z[1],n+1);
setlength(z[2],n+1);
setlength(g[1],n+1);
setlength(g[2],n+1);
setlength(gl[1],n+1);
setlength(gl[2],n+1);

//термодинамическое согласование
    form3.ts.colcount:=11;
    form3.ts.rowcount:=n+1;
    form3.ts.cells[0,0]:='i';
    form3.ts.cells[1,0]:='z1';
    form3.ts.cells[2,0]:='z2';
    form3.ts.cells[3,0]:='Ve1';
    form3.ts.cells[4,0]:='Ve2';
    form3.ts.cells[5,0]:='Ve';
    form3.ts.cells[6,0]:='gamma1';
    form3.ts.cells[7,0]:='gamma2';
    form3.ts.cells[8,0]:='Ln gamma1';
    form3.ts.cells[9,0]:='Ln gamma2';
    form3.ts.cells[10,0]:='Lg gamma1/gamma2';
    form2.Chart2.Series[0].clear;form2.Chart2.Series[0].title:='Ln(G1)';
    form2.Chart2.Series[1].clear;form2.Chart2.Series[1].title:='Ln(G2)';
    form2.Chart2.Series[2].clear;form2.Chart2.Series[2].title:='Lg(G1/G2)';
    form2.Chart2.Series[0].tag:=1;
    form2.Chart2.Series[1].tag:=2;
    form2.Chart2.Series[2].tag:=3;
    zmin1:=-1;
    g0:=1;flag:=true;
    h:=1/n;
    for i:=1 to n-1 do begin
    z[1,i]:=i*h;
    z1:=z[1,i];
    z2:=1-z1;
    z[2,i]:=z1/(z1+z2*l12);
    try
    v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
    v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
    ve:=z1*v1+z2*v2;
    g1:=p2_0*v1/p1_0/ve;
    g2:=p1_0*v2/p2_0/ve;
    lgG12:=math.Log10(g1/g2);
    g[1,i]:=g1;
    g[2,i]:=g2;
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
    form3.ts.cells[0,i]:=inttostr(i);
    form3.ts.cells[1,i]:=format('%5.4f',[z1]);
    form3.ts.cells[2,i]:=format('%5.4f',[z2]);
    form3.ts.cells[3,i]:=format('%8.6f',[ve]);
    form3.ts.cells[4,i]:=format('%8.6f',[ve]);
    form3.ts.cells[5,i]:=format('%8.6f',[ve]);
    form3.ts.cells[6,i]:=format('%8.6f',[g1]);
    form3.ts.cells[7,i]:=format('%8.6f',[g2]);
    form3.ts.cells[8,i]:=format('%8.6f',[ln(g1)]);
    form3.ts.cells[9,i]:=format('%8.6f',[ln(g2)]);
    form3.ts.cells[10,i]:=format('%8.6f',[lgG12]);
    form2.Chart2.Series[0].AddXY(z1,ln(g1));
    form2.Chart2.Series[1].AddXY(z1,ln(g2));
    form2.Chart2.Series[2].AddXY(z1,lgg12);
    end;
  showmessage('до согласования: zmin='+floattostr(zmin1));
//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
    form3.UR.rowcount:=2;
    form3.UR.Cells[1,0]:='a0';
    form3.UR.Cells[2,0]:='a1';
    form3.UR.Cells[3,0]:='a2';
    form3.UR.Cells[4,0]:='a3';
    form3.UR.Cells[5,0]:='r';
    form3.UR.Cells[1,1]:=format('%8.6f',[a[1]]);
    form3.UR.Cells[2,1]:=format('%8.6f',[a[2]]);
    form3.UR.Cells[3,1]:=format('%8.6f',[a[3]]);
    form3.UR.Cells[4,1]:=format('%8.6f',[a[4]]);
    form3.UR.Cells[5,1]:=format('%8.6f',[r1]);
    z1:=zmin1;r1:=1;
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
 if (abs(r1)<=epss*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
  showmessage('поправка после согласования='+floattostr(g1)+chr(13)+
  ' s1='+floattostr(s1)+' s2='+floattostr(s2)+chr(13)+
  ' |s1-s2|='+floattostr(r1)+ ' zmin='+floattostr(zmin2));
l12:=zmin1/(1-zmin1)*zmin2/(1-zmin2);
betta:=power(10,g1);
betta1:=1; betta2:=betta/betta1;
  showmessage('lambda12='+floattostr(l12)+' betta='+floattostr(betta)+
  ' betta1='+floattostr(betta1)+' betta2='+floattostr(betta2)+chr(13));
n12:=l12/betta;
find(n1,n2,n12);
showmessage('n1/n2='+floattostr(n12)+' n1='+floattostr(n1)+
  ' n2='+floattostr(n2));
//согласованные gamma1, gamma2, lg gamma1/gamma2
setlength(z[2],n+1);
   for i:=1 to n-1 do begin
   gl[2,i]:=gl[1,i]-g1;
   g[1,i]:=g[1,i]/betta1;
   g[2,i]:=g[2,i]*betta2;
   z[2,i]:=z[1,i]/(z[1,i]+l12*(1-z[1,i]));
   end;
{
   polynrecurs(z[1],gl[2],n-1,4,a,r1);
   form3.UR.rowcount:=3;
    form3.UR.Cells[1,2]:=format('%8.6f',[a[1]]);
    form3.UR.Cells[2,2]:=format('%8.6f',[a[2]]);
    form3.UR.Cells[3,2]:=format('%8.6f',[a[3]]);
    form3.UR.Cells[4,2]:=format('%8.6f',[a[4]]);
    form3.UR.Cells[5,2]:=format('%8.6f',[r1]);
   d:=-a[4]/16;
   c:=-(a[3]-24*d)/6;
   b:=-(a[2]+10*d-6*c)/2;
   for i:=1 to n-1 do
   begin
   z1:=z[1,i];
   lgg1:=sqr(1-z1)*(b+c*(4*z1-1)+d*(12*sqr(z1)-8*z1+1));
   lgg2:=sqr(z1)*(b+c*(4*z1-3)+d*(12*sqr(z1)-16*z1+5));
   g[1,i]:=power(10,lgg1);
   g[2,i]:=power(10,lgg2);
   end;
 }
//проверка после согласования
 r1:=1;
 s1:=0;s2:=0;
 lng1:=ln(g[1,1]);
 lng2:=ln(g[2,1]);
 gg1:=exp(lng1);gg2:=exp(lng2);
 lgg12:=log10(gg1/gg2);
 for i:=2 to n-1 do
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

  showmessage('проверка согласования:'+
  ' s1='+floattostr(s1)+' s2='+floattostr(s2)+chr(13)+
  ' |s1-s2|='+floattostr(r1));

 if (abs(r1)>=epss*5)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;

    form2.Chart2.Series[3].clear; form2.Chart2.Series[3].title:='G1 согл';
    form2.Chart2.Series[4].clear; form2.Chart2.Series[4].title:='G2 согл';
    form2.Chart2.Series[5].clear; form2.Chart2.Series[5].title:='lg G1/G2 согл';
    form2.Chart2.Series[6].clear; form2.Chart2.Series[6].title:='lg P2_0/P1_0';
    form2.Chart2.Series[3].tag:=4;
    form2.Chart2.Series[4].tag:=5;
    form2.Chart2.Series[5].tag:=6;
    form2.Chart2.Series[6].tag:=7;
    form3.ts.colcount:=17;
    form3.ts.cells[11,0]:='g1 согл';
    form3.ts.cells[12,0]:='g2 согл';
    form3.ts.cells[13,0]:='ln g1 согл';
    form3.ts.cells[14,0]:='ln g2 согл';
    form3.ts.cells[15,0]:='lg g1/g2 согл';
    form3.ts.cells[16,0]:='lg P2_0/P1_0';
    lgg12:=log10(p2_0/p1_0);
    for i:=1 to n-1 do begin
    form3.ts.cells[11,i]:=format('%8.6f',[g[1,i]]);
    form3.ts.cells[12,i]:=format('%8.6f',[g[2,i]]);
    form3.ts.cells[13,i]:=format('%8.6f',[ln(g[1,i])]);
    form3.ts.cells[14,i]:=format('%8.6f',[ln(g[2,i])]);
    form3.ts.cells[15,i]:=format('%8.6f',[gl[2,i]]);
    form3.ts.cells[16,i]:=format('%8.6f',[lgg12]);
    form2.Chart2.Series[3].AddXY(z[1,i],g[1,i]);
    form2.Chart2.Series[4].AddXY(z[1,i],g[2,i]);
    form2.Chart2.Series[5].AddXY(z[1,i],gl[2,i]);
    form2.Chart2.Series[6].AddXY(z[1,i],lgg12);
   end;
 //поиск азеотропа по пересечению lg p2_0/p1_0 и lg gamma1/gamma2 согласованные
 z_az:=-1;lgg12:=log10(p2_0/p1_0);
 flag:=gl[2,1]<lgg12; j:=1;
 for i:=2 to n-1 do
 if (flag and (gl[2,i]>lgg12))or (not flag and (gl[2,i]<lgg12)) then begin
 z_az:=z[1,i];
 j:=i; break;
 end;

if z_az=-1 then begin
showmessage('азеотроп не обнаружен!');
exit;
end;

z_az:=(lgg12-gl[2,j-1])/(gl[2,j-1]-gl[2,j])*(z[1,j-1]-z[1,j])+z[1,j-1];
z1:=z_az;
x1:=z_az/(z_az+l12*(1-z_az)); //эфф.м.д.
{
lgg1:=sqr(1-z1)*(b+c*(4*z1-1)+d*(12*sqr(z1)-8*z1+1));
lgg2:=sqr(z1)*(b+c*(4*z1-3)+d*(12*sqr(z1)-16*z1+5));
g1:=power(10,lgg1);
g2:=power(10,lgg2);
}

 v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
 v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
 ve:=z1*v1+z2*v2;
 g1:=p2_0*v1/p1_0/ve/betta1;
 g2:=p1_0*v2/p2_0/ve*betta2;

p_az:=z1*g1*p1_0+(1-z1)*g2*p2_0;
lng1:=log10(p_az/p1_0);
lng2:=log10(p_az/p2_0);

showmessage('z_az='+floattostr(z1)+' x_az='+floattostr(x1)+chr(13)+
' P_az='+floattostr(p_az)+' gamma1='+floattostr(g1)+' gamma2='+floattostr(g2));

table2.Edit;
Table2X1_az.Value:=z1;
Table2P.Value:=p_az/pascual*1000;
table2.post;

//1-вариант расчета ln gamma1,2 в точке азеотропии

//расчет коэффициентов Редлиха-Кистера
c:=(lng1/2/sqr(1-z1)-lng2/2/sqr(z1));
b:=lng1/sqr(1-z1)-(3*z1-(1-z1))*c;

//расчет коэффициентов c,b по модели Ван-Лаара
    e:=sqr(lng1+lng2*(1-z1)/z1)/lng1;
    d:=sqr(lng2+lng1*z1/(1-z1))/lng2;
 if abs(l12-d/e)<=eps then   flag:=true else flag:=false;
//построение и расчет давления смеси по разным моделям
form2.Chart8.Series[1].clear;form2.Chart8.Series[1].title:='P(x1)R-K';
form2.Chart8.Series[2].clear;form2.Chart8.Series[2].title:='P(x1)V-L';
form2.Chart8.Series[3].clear;form2.Chart8.Series[3].title:='P(x1)Cтаб';
form2.Chart8.Series[4].clear;form2.Chart8.Series[4].title:='P(y1)R-K';
form2.Chart8.Series[5].clear;form2.Chart8.Series[5].title:='P(y1)V-L';
form2.Chart8.Series[6].clear;form2.Chart8.Series[6].title:='P(y2)VE';
form2.Chart8.Series[7].clear;form2.Chart8.Series[6].title:='P(z1)R-K';
form2.Chart9.Series[0].clear;form2.Chart9.Series[0].title:='y=x';
form2.Chart9.Series[1].clear;form2.Chart9.Series[1].title:='y(x)R-K';
form2.Chart9.Series[2].clear;form2.Chart9.Series[2].title:='y(x)V-L';
form2.Chart9.Series[3].clear;form2.Chart9.Series[3].title:='y(x)Cтаб';
form2.Chart8.Series[1].tag:=2;
form2.Chart8.Series[2].tag:=3;
form2.Chart8.Series[3].tag:=4;
form2.Chart8.Series[4].tag:=5;
form2.Chart8.Series[5].tag:=6;
form2.Chart8.Series[6].tag:=7;
form2.Chart8.Series[7].tag:=8;
form2.Chart9.Series[0].tag:=1;
form2.Chart9.Series[1].tag:=2;
form2.Chart9.Series[2].tag:=3;
form2.Chart9.Series[3].tag:=4;
form2.Chart2.Series[7].clear;form2.Chart2.Series[7].title:='G1 R-K';
form2.Chart2.Series[8].clear;form2.Chart2.Series[8].title:='G2 R-K';
form2.Chart2.Series[9].clear;form2.Chart2.Series[9].title:='lg(G1/G2) R-K';
form2.Chart2.Series[7].tag:=8;
form2.Chart2.Series[8].tag:=9;
form2.Chart2.Series[9].tag:=10;
form2.Chart2.Series[10].clear;form2.Chart2.Series[10].title:='G1 V-L';
form2.Chart2.Series[11].clear;form2.Chart2.Series[11].title:='G2 V-L';
form2.Chart2.Series[12].clear;form2.Chart2.Series[12].title:='lg(G1/G2)V-L';
form2.Chart2.Series[10].tag:=11;
form2.Chart2.Series[11].tag:=12;
form2.Chart2.Series[12].tag:=13;
form2.Chart8.Series[0].clear;form2.Chart8.Series[0].title:='P(x1)VE';
form2.Chart8.Series[0].tag:=1;
form2.Chart9.Series[4].clear;form2.Chart9.Series[4].title:='y(x2)VE';
form2.Chart9.Series[4].tag:=5;
form2.Chart9.Series[5].clear;form2.Chart9.Series[5].title:='lg(G1/G2)согл';
form2.Chart9.Series[5].tag:=6;
form2.Chart9.Series[6].clear;form2.Chart9.Series[6].title:='lg(P2_0/P1_0)';
form2.Chart9.Series[6].tag:=7;
    form3.PS.colcount:=22;
    form3.PS.rowcount:=n+1;
    form3.PS.Cells[0,0]:='i';
    form3.PS.Cells[1,0]:='x1';
    form3.PS.Cells[2,0]:='x2';
    form3.PS.Cells[3,0]:='y1_Редл.-Кист.';
    form3.PS.Cells[4,0]:='y2_Редл.-Кист.';
    form3.PS.Cells[5,0]:='gamma1_Редл.-Кист.';
    form3.PS.Cells[6,0]:='gamma2_Редл.-Кист.';
    form3.PS.Cells[7,0]:='lg(gamma1/gamma2)_Редл.-Кист.';
    form3.PS.Cells[8,0]:='P_Редл.-Кист.';
    form3.PS.Cells[9,0]:='x1_эфф.м.д.';
    form3.PS.Cells[10,0]:='x2_эфф.м.д.';
    form3.PS.Cells[11,0]:='y1_Ван-Лаар';
    form3.PS.Cells[12,0]:='y2_Ван-Лаар';
    form3.PS.Cells[13,0]:='gamma1_Ван-Лаар';
    form3.PS.Cells[14,0]:='gamma2_Ван-Лаар';
    form3.PS.Cells[15,0]:='lg(gamma1/gamma2)_Ван-Лаар';
    form3.PS.Cells[16,0]:='P_Ван-Лаар';
    form3.PS.Cells[17,0]:='y1_Стабн.';
    form3.PS.Cells[18,0]:='y2_Стабн.';
    form3.PS.Cells[19,0]:='P1_Стабн.';
    form3.PS.Cells[20,0]:='P2_Стабн.';
    form3.PS.Cells[21,0]:='P_Стабн.';
form2.Chart1.Series[2].clear;form2.Chart1.Series[2].title:='H1(x1)';
form2.Chart1.Series[3].clear;form2.Chart1.Series[3].title:='H2(x2)';
form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[3].tag:=4;
z_az:=-1;P_az:=0;
for i:=1 to n-1 do begin
    z1:=z[1,i];
    z2:=1-z1;
    x1:=z[2,i]; //l12 введенная
    x2:=1-x1;
    x1:=z1/(z1+l12*z2);//эффективные мол. д.
    x2:=1-x1;
    form2.Chart9.Series[0].AddXY(z1,z1);
    lng1:=sqr(z2)*(b+c*(3*z1-z2)); //формула Редлиха-Кистера
    lng2:=sqr(z1)*(b+c*(z1-3*z2));
   // lng1:=sqr(x2)*(b+c*(3*x1-x2)); //формула Редлиха-Кистера
  //  lng2:=sqr(x1)*(b+c*(x1-3*x2));

    gamma1:=exp(lng1);
    gamma2:=exp(lng2);
    lg10:=log10(gamma1/gamma2);
    g0:=z1/z2*p1_0/p2_0*gamma1/gamma2;
    y1:=g0/(1+g0);
    // g0:=z2/z1*p1_0/p2_0*gamma1/gamma2;
   //  y1:=1/(1+g0);
    form2.Chart9.Series[1].AddXY(z1,y1);
    form2.Chart2.Series[7].AddXY(z1,gamma1);
    form2.Chart2.Series[8].AddXY(z1,gamma2);
    form2.Chart2.Series[9].AddXY(z1,lgg12);
    form3.PS.Cells[0,i]:=inttostr(i);
    form3.PS.Cells[1,i]:=format('%5.4f',[z1]);
    form3.PS.Cells[2,i]:=format('%5.4f',[z2]);
    form3.PS.Cells[3,i]:=format('%5.4f',[y1]);
    form3.PS.Cells[4,i]:=format('%5.4f',[1-y1]);
    form3.PS.Cells[5,i]:=format('%8.6f',[gamma1]);
    form3.PS.Cells[6,i]:=format('%8.6f',[gamma2]);
    form3.PS.Cells[7,i]:=format('%8.6f',[lgg12]);
    //давление по Ридлеха-Кистера
    p_s:=gamma1*p1_0*z1+gamma2*p2_0*z2;
    form2.Chart8.Series[1].AddXY(z1,p_s);
    form2.Chart8.Series[7].AddXY(x1,p_s);
    form2.Chart8.Series[4].AddXY(y1,p_s);
    form3.PS.Cells[8,i]:=format('%8.6f',[p_s]);
    if(abs(y1-z1)<=0.01) then begin
     p_az:=p_s;
     z_az:=z1;
    end;
  //  if flag then begin
    lg1:=e*sqr(d*z2/(e*z1+d*z2));//формула Ван-Лаара
    lg2:=d*sqr(e*z1/(e*z1+d*z2));
  //  end else begin
 //   lg1:=sqr(z2)*(e+2*z1*(d/l12-e));//формула Ван-Лаара
 //  lg2:=sqr(z1)*(d+2*z2*(e*l12-d));
 //  end;
    g1:=power(10,lg1); // ?
    g2:=power(10,lg2); //?
    lgg12:=log10(g1/g2);
    g0:=z1/z2*p1_0/p2_0*g1/g2;
    y1:=g0/(1+g0);
//     g0:=z2/z1*p1_0/p2_0*g1/g2;
//    y1:=1/(1+g0);
    form2.Chart9.Series[2].AddXY(z1,y1);
    form2.Chart2.Series[10].AddXY(z1,g1);
    form2.Chart2.Series[11].AddXY(z1,g2);
    form2.Chart2.Series[12].AddXY(z1,lgg12);
    //давление по Ван-Лаару
    p_s:=g1*p1_0*z1+g2*p2_0*z2;
    form2.Chart8.Series[2].AddXY(z1,p_s);
    form2.Chart8.Series[5].AddXY(y1,p_s);
    form3.PS.Cells[9,i]:=format('%5.4f',[x1]);
    form3.PS.Cells[10,i]:=format('%5.4f',[1-x1]);
    form3.PS.Cells[11,i]:=format('%5.4f',[y1]);
    form3.PS.Cells[12,i]:=format('%5.4f',[1-y1]);
    form3.PS.Cells[13,i]:=format('%8.6f',[g1]);
    form3.PS.Cells[14,i]:=format('%8.6f',[g2]);
    form3.PS.Cells[15,i]:=format('%8.6f',[lgg12]);
    form3.PS.Cells[16,i]:=format('%8.6f',[p_s]);
    p_a:=p2_0*(1-z1)*exp(0.79*(3-2*z1)*z1*z1);
    p_b:=p1_0*z1*exp(1.58*sqr(1-z1)*(1-z1));
    p_s:=p_a+p_b;
    y1:=p_b/p_s; //формула в книге Стабникова Теор. основы перегонки и ректификации
    form3.PS.Cells[17,i]:=format('%5.4f',[y1]);
    form3.PS.Cells[18,i]:=format('%5.4f',[1-y1]);
    form3.PS.Cells[19,i]:=format('%8.6f',[p_a]);
    form3.PS.Cells[20,i]:=format('%8.6f',[p_b]);
    form3.PS.Cells[21,i]:=format('%8.6f',[p_s]);
    form2.Chart9.Series[3].AddXY(z1,y1);
    form2.Chart8.Series[3].AddXY(z1,p_s);

     v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
     v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
     ve:=z1*v1+z2*v2;
     g1:=p2_0*v1/p1_0/ve/betta1;
     g2:=p1_0*v2/p2_0/ve*betta2;
     p_s:=(z1*v1*p2_0+z2*v2*p1_0)/ve;
     g0:=z1/z2*p1_0/p2_0*g1/g2;
     y1:=g0/(1+g0);
    // g0:=z2/z1*p1_0/p2_0*g1/g2;
    // y1:=1/(1+g0);
    form2.Chart8.Series[0].AddXY(z1,p_s);
    //form2.Chart8.Series[6].AddXY((1-y1),p_s);
    //form2.Chart8.Series[7].AddXY(x1,p_s);
    form2.Chart8.Series[6].AddXY((1-y1),p_s);

     form2.Chart9.Series[4].AddXY(z2,y1);

    // v1:=sqr(1-x1)*(a1+a2*(4*x1-1)+a3*(6*x1-1)*(2*x1-1));
    // v2:=sqr(x1)*(a1+a2*(4*x1-3)+a3*(6*x1-5)*(2*x1-1));
    // ve:=x1*v1+x2*v2;
     h1:=p2_0*ve;
     h2:=z1*p1_0*v1+(1-z1)*p2_0*v2;
     form2.Chart1.Series[2].AddXY(z1,h1);  //h1(z1)
     form2.Chart1.Series[3].AddXY(z1,h2);  //h2(z1)

     form2.Chart9.Series[5].AddXY(z1,gl[2,i]);
     form2.Chart9.Series[6].AddXY(z1,log10(p2_0/p1_0));
end;
try
x_az:= z_az/(z_az+l12*(1-z_az));
except
x_az:=-1;
end;
showmessage('z_az='+floattostr(z_az)+' x_az='+floattostr(x_az)+' P_az='+floattostr(P_az));
form3.PageControl1.ActivePageIndex:=14;
form2.PageControl1.ActivePageIndex:=7;
form2.Show; form3.Show;
end;

procedure TForm4.Form1muneN7Click(Sender: TObject);
var
i:integer;
a0,a1,b0,b1,r1,r2,h1,t1,h2,t2:myreal;
X,Y,p1,p2:masD;

begin
//теплота плавления
   form3.gh.cells[1,0]:='a0';
   form3.gh.cells[2,0]:='a1';
   form3.gh.cells[3,0]:='r1';
   form3.gh.cells[4,0]:='b0';
   form3.gh.cells[5,0]:='b1';
   form3.gh.cells[6,0]:='r2';
   form3.gh.cells[7,0]:='H';
   form3.gh.cells[8,0]:='T,K';
   form3.gh.cells[9,0]:='T,C';
   form3.gh.cells[0,1]:='1';
   form3.gh.cells[0,2]:='2';
   form3.gh.ColCount:=10;
   k:=table3.RecordCount;
   setlength(x,k+1);
   setlength(y,k+1);
   setlength(p1,3);
   setlength(p2,3);

   table3.First;
   for i:=1 to 5 do begin
   y[i]:=ln(Table3X1mol.Value);
   x[i]:=1000/(Table3T1k.value);
   table3.next;
   end;
   polynrecurs(x,y,5,2,p1,r1);
   polynrecurs(y,x,5,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   //linrecurs(x,y,3,a0,a1,r1);
   //linrecurs(y,x,3,b0,b1,r2);
   H1:=a1*r*1000;
   T1:=1000/b0;
   form3.gh.cells[1,1]:=floattostr(a0);
   form3.gh.cells[2,1]:=floattostr(a1);
   form3.gh.cells[3,1]:=floattostr(r1);
   form3.gh.cells[4,1]:=floattostr(b0);
   form3.gh.cells[5,1]:=floattostr(b1);
   form3.gh.cells[6,1]:=floattostr(r2);
   form3.gh.cells[7,1]:=floattostr(h1);
   form3.gh.cells[8,1]:=floattostr(t1);
   form3.gh.cells[9,1]:=floattostr(t1-kelvin);
  { showmessage('a0='+floattostr(a0)+' a1='+floattostr(a1));
   showmessage('b0='+floattostr(b0)+' b1='+floattostr(b1));
   showmessage('h1='+floattostr(h1)+' t1='+floattostr(t1));
   }
   j:=1;
   table3.last;
   for i:=k downto k-4 do begin
   y[j]:=ln(Table3X2mol.value);
   try
   x[j]:=1000/Table3T2k.value;
   except
      x[j]:=1000/Table3T1k.value;
      end;
   table3.Prior;
   j:=j+1;
   end;
    polynrecurs(x,y,5,2,p1,r1);
   polynrecurs(y,x,5,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
//   linrecurs(x,y,3,a0,a1,r1);
//   linrecurs(y,x,3,b0,b1,r2);
   T2:=1000/b0;
   H2:=a1*r*1000;
{   showmessage('a0='+floattostr(a0)+' a1='+floattostr(a1));
   showmessage('b0='+floattostr(b0)+' b1='+floattostr(b1));
   showmessage('h2='+floattostr(h2)+' t2='+floattostr(t2));
}
     form3.gh.cells[1,2]:=floattostr(a0);
   form3.gh.cells[2,2]:=floattostr(a1);
   form3.gh.cells[3,2]:=floattostr(r1);
   form3.gh.cells[4,2]:=floattostr(b0);
   form3.gh.cells[5,2]:=floattostr(b1);
   form3.gh.cells[6,2]:=floattostr(r2);
   form3.gh.cells[7,2]:=floattostr(h2);
   form3.gh.cells[8,2]:=floattostr(t2);
   form3.gh.cells[9,2]:=floattostr(t2-kelvin);
   form3.PageControl1.TabIndex:=8;
   Form3.Show;
end;

procedure TForm4.N7Click(Sender: TObject);
var i:integer;
    mint,minx,ga,gb,gib:myReal;
    xm:array [1..2]of masd;
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
Ga:=-3194;Gb:=-2905;  //?
k:=table3.RecordCount-1;
form3.SG.RowCount:=k+2;
setlength(xm[1],k+1);
setlength(xm[2],k+1);
table3.First;
for i:=0 to k do begin
  xm[1,i]:=Table3X1mol.Value;
  xm[2,i]:=Table3X2mol.value;
  table3.Next;
end;

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
 form2.PageControl1.TabIndex:=4;
 form3.PageControl1.TabIndex:=6;
 form3.show;
 form2.show;
end;

procedure TForm4.menux1Click(Sender: TObject);
var nk,m,n1,n2,i1,i2,i,n,j1,k,k_,flag:integer;
h,s,mint,z1,t1,t2,h1,h2,m1,m2,r1,r2,min,m12,delta_q,
minx,x0,h1_,h2_,t1_,t2_,minq,minq1,mint3,sq,hp1,hp2,
a_lin,b_lin,minz,delta_x, delta_t,min0,q1,q2,g3,tauq,
g1,g2,w2,l1,l2,z2,k1,k2,k12,tau,minx1,mint1,
lnx1,lnx2,lng1,lng2,c,d,w1,zmin1,t12:MyReal;
p1,p2,p3,p4:masd;
xv,xm,t,z,ym,yv:array[1..4]of masd;
old:string;
begin
// Построение кривой T(x) жидкость-твердое
old:=table2.Bookmark;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
table1.FindKey([i1]);
h1:=Table1Teplota.value;hp1:=h1;
t1:=Table1Temperature.value+kelvin;
t10:=Table1T_Kelvin.value+kelvin;
m1:=Table1MolMassa.value;
table1.FindKey([i2]);
h2:=Table1Teplota.value; hp2:=h2;
t2:=Table1Temperature.value+kelvin;
t20:=Table1T_Kelvin.value+kelvin;
m2:=Table1MolMassa.value;
table1.FindKey([i1]);
table2.Bookmark:=old;
l1:=Table2Lambda1.Value;
l2:=Table2lambda2.Value;
k1:=Table2k1.Value;
k2:=Table2k2.Value;
k12:=k1/k2;
table3.First;
m:=form1.fn.value;
h:=1/m;
n:=table3.RecordCount;
setlength(xm[1],n+1);
setlength(xm[2],n+1);
setlength(xv[1],n+1);
setlength(xv[2],n+1);
setlength(ym[1],n+1);
setlength(ym[2],n+1);
setlength(yv[1],n+1);
setlength(yv[2],n+1);
setlength(t[1],n+1);
setlength(t[2],n+1);
setlength(z[1],n+1);
setlength(z[2],n+1);
setlength(z[3],n+1);
setlength(z[4],n+1);
setlength(p1,4);
setlength(p2,4);
setlength(p3,4);
setlength(p4,4);
form2.Chart2.Series[1].clear;form2.Chart2.Series[1].tag:=2;
form2.Chart2.Series[0].clear;form2.Chart2.Series[0].tag:=1;
form2.Chart1.Series[1].clear;form2.Chart1.Series[1].tag:=2;form2.Chart1.Series[1].title:='T2(x1_мол.)_эксп.';
form2.Series1.pointer.visible:=true;
form2.Chart1.Series[0].clear;form2.Chart1.Series[0].tag:=1;form2.Chart1.Series[0].title:='T1(x1_мол.)_эксп.';
form2.Series3.pointer.visible:=true;
form2.Chart1.Series[2].clear;form2.Chart1.Series[2].tag:=3;form2.Chart1.Series[2].title:='T1(x1_масс.)_эксп.';
form2.Series8.pointer.visible:=true;
form2.Chart1.Series[3].clear;form2.Chart1.Series[3].tag:=4;form2.Chart1.Series[3].title:='T2(x1_масс.)_эксп.';
form2.Series9.pointer.visible:=true;
n1:=0;n2:=0;
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
Table3X1mas.Value:=Table3X1mol.Value*m1/(Table3X1mol.Value*m1+Table3X2mol.value*m2);
Table3X2mas.value:=Table3X2mol.value*m2/(Table3X1mol.Value*m1+Table3X2mol.value*m2);
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
   inc(n1);
   if (Table3T1C.Value<>0) then Table3T1K.Value:=Table3t1c.Value+Kelvin
   else Table3T1c.Value:=Table3t1k.Value-Kelvin;
   t[1,i]:=Table3T1K.Value;
   form2.Chart1.Series[0].AddXY(xm[1,i],t[1,i]);
   form2.Chart1.Series[2].AddXY(xv[1,i],t[1,i]);
end;
if (Table3T2C.Value<>0)or(Table3T2K.Value<>0 ) then begin
    inc(n2);
   if Table3T2c.Value<>0 then Table3T2K.Value:=Table3t2c.Value+Kelvin
   else Table3T2c.Value:=Table3t2k.Value-Kelvin;
   t[2,i]:=Table3T2K.Value;
   form2.Chart1.Series[1].AddXY(xm[1,i],t[2,i]);
   form2.Chart1.Series[3].AddXY(Xv[1,i],t[2,i]);
end;
 
table3.post;
table3.Next;
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
for i:=1 to n do begin
form3.RG.Cells[0,i]:=inttostr(i);
form3.RG.Cells[1,i]:=floattostr(xm[1,i]);
form3.RG.Cells[2,i]:=floattostr(xm[2,i]);
form3.RG.Cells[5,i]:=floattostr(t[1,i]);
form3.RG.Cells[6,i]:=floattostr(t[2,i]);
form3.RG.Cells[7,i]:=floattostr(xv[1,i]);
form3.RG.Cells[8,i]:=floattostr(xv[2,i]);
end;
//теплота плавления
   form3.gh.cells[1,0]:='a0';
   form3.gh.cells[2,0]:='a1';
   form3.gh.cells[3,0]:='r1';
   form3.gh.cells[4,0]:='b0';
   form3.gh.cells[5,0]:='b1';
   form3.gh.cells[6,0]:='r2';
   form3.gh.cells[7,0]:='H';
   form3.gh.cells[8,0]:='T,K';
   form3.gh.cells[9,0]:='T,C';
   form3.gh.cells[0,1]:='1';
   form3.gh.cells[0,2]:='2';
   form3.gh.ColCount:=10;
   nk:=table3.RecordCount;

 //прогноз по 3 крайним точкам, линейная рекурсия
if n1<=3 then k:=n1 else k:=3;
//левая ветвь ликвидуса
for i:=1 to k do begin
  //z[1,i]:=xm[1,n-n2-i+1];
 // z[2,i]:=t[1,n-n2-i+1];
   z[1,i]:=xm[1,i];
  z[2,i]:=t[1,i];
end;
//рекурсия для Т
//recurs(z[1],z[2],k,a0,a1,a2,r1);
polynrecurs(z[1],z[2],k,2,p1,r1);

//правая ветвь ликвидуса
if n2<=3 then k:=n2 else k:=3;
for i:=1 to k do begin
  z[3,i]:=1-xm[2,n-i+1];
  z[4,i]:=t[2,n-i+1];
end;
//рекурсия для Т
//recurs(z[3],z[4],k,b0,b1,b2,r2);
if n2<>0 then polynrecurs(z[3],z[4],k,2,p2,r2);
  for i:=1 to 3 do begin
   z[2,i]:=ln(Xm[1,i]);
   z[1,i]:=1000/(T[1,i]);
   end;
   polynrecurs(z[1],z[2],3,2,p3,r1);
   polynrecurs(z[2],z[1],3,2,p4,r2);
   a0:=p3[1];a1:=p3[2];
   b0:=p4[1];b1:=p4[2];
   //linrecurs(x,y,3,a0,a1,r1);
   //linrecurs(y,x,3,b0,b1,r2);
   H1_:=a1*r*1000;
   T1_:=1000/b0;
   form3.gh.cells[1,1]:=floattostr(a0);
   form3.gh.cells[2,1]:=floattostr(a1);
   form3.gh.cells[3,1]:=floattostr(r1);
   form3.gh.cells[4,1]:=floattostr(b0);
   form3.gh.cells[5,1]:=floattostr(b1);
   form3.gh.cells[6,1]:=floattostr(r2);
   form3.gh.cells[7,1]:=floattostr(h1_);
   form3.gh.cells[8,1]:=floattostr(t1_);
   form3.gh.cells[9,1]:=floattostr(t1_-kelvin);
  { showmessage('a0='+floattostr(a0)+' a1='+floattostr(a1));
   showmessage('b0='+floattostr(b0)+' b1='+floattostr(b1));
   showmessage('h1='+floattostr(h1)+' t1='+floattostr(t1));
   }
   for i:=n2 downto n2-2 do begin
   z[2,i]:=ln(1-Xm[2,n1+i]);
   z[1,i]:=1000/T[2,n1+i];
   end;
   polynrecurs(z[1],z[2],3,2,p3,r1);
   polynrecurs(z[2],z[1],3,2,p4,r2);
   a0:=p3[1];a1:=p3[2];
   b0:=p4[1];b1:=p4[2];
//   linrecurs(x,y,3,a0,a1,r1);
//   linrecurs(y,x,3,b0,b1,r2);
   T2_:=1000/b0;
   H2_:=a1*r*1000;
{   showmessage('a0='+floattostr(a0)+' a1='+floattostr(a1));
   showmessage('b0='+floattostr(b0)+' b1='+floattostr(b1));
   showmessage('h2='+floattostr(h2)+' t2='+floattostr(t2));
}
   form3.gh.cells[1,2]:=floattostr(a0);
   form3.gh.cells[2,2]:=floattostr(a1);
   form3.gh.cells[3,2]:=floattostr(r1);
   form3.gh.cells[4,2]:=floattostr(b0);
   form3.gh.cells[5,2]:=floattostr(b1);
   form3.gh.cells[6,2]:=floattostr(r2);
   form3.gh.cells[7,2]:=floattostr(h2_);
   form3.gh.cells[8,2]:=floattostr(t2_);
   form3.gh.cells[9,2]:=floattostr(t2_-kelvin);
    form2.Chart3.Series[0].Clear;
 form2.Chart3.Series[1].Clear;
 form2.Chart3.Series[2].Clear;
 form2.Chart3.Series[3].Clear;
 form2.Chart3.Series[4].Clear;

  form2.Chart3.Series[1].tag:=2;
 form2.Chart3.Series[2].tag:=3;
 form2.Chart3.Series[3].tag:=4;
 form2.Chart3.Series[4].tag:=5;
 form2.Chart3.Series[2].Title:='T1-эксп.';
  form2.Chart3.Series[3].Title:='T2-эксп.';
 form2.Chart3.Series[0].Title:='T1-рекурс.';
  form2.Chart3.Series[1].Title:='T2-рекурс.';
   form2.Chart3.Series[4].Title:='T-теор.';
for i:=1 to N1 do begin
   form2.Chart3.Series[2].AddXY(xm[1,i],t[1,i]);
end;
for i:=n1+1 to N do begin
   form2.Chart3.Series[3].AddXY(1-xm[2,i],t[2,i]);
end;
   h10:=abs(h1_);h20:=abs(h2_);
   //t10:=t1;t20:=t2;
   t10:=t1_;t20:=t2_;
  flag:=1;
  min:=1.0e+30;minx:=-1; mint:=1.0e+30;min0:=mint;
 for i:=1 to m-1 do begin
 s:=i/m;
 g1:=fr3(s,p1,2);//a0+a1*(s)+a2*sqr(s);
 g2:=fr3(s,p2,2);//b0+b1*(s)+b2*sqr(s);
  t0:=fx1_(s);
  form2.Chart3.Series[4].addxy(s,t0);
  if min0>t0 then begin
     min0:=t0;
     minz:=s;
  end;

 form3.VD.Cells[0,i+1]:=inttostr(i);
 form3.VD.Cells[3,i+1]:=floattostr(g1);
 form3.VD.Cells[4,i+1]:=floattostr(g2);
 form2.Chart3.Series[0].addxy(s,g1);
 form2.Chart3.Series[1].addxy(s,g2);
  if (abs(g1-g2)<min)and(g1>=g2) then begin
    mint:=g1;
    minx:=s;
    min:=abs(g1-g2);
 end;
 end;
 showmessage('Теор: x1_min='+floattostr(minz)+' T_K_min='+floattostr(min0));
 showmessage('Рекурсия:x1_min='+floattostr(minx)+' T_K_min='+floattostr(mint));

 lm2:=(1-minx)/(minx);
 showmessage('L12_эксп ='+floattostr(lm2));
 form3.rt.cells[2,0]:='эксп';
 form3.rt.cells[2,1]:=floattostr(minx);
 form3.rt.cells[2,2]:=floattostr(1-minx);
 form3.rt.cells[2,3]:=floattostr(lm2);
 form3.rt.cells[2,4]:=floattostr(mint);

//прогноз по 5 внутренним точкам, квадратичная рекурсия
if n1<=5 then k:=n1 else k:=5;
//левая ветвь ликвидуса
for i:=1 to k do begin
  z[1,i]:=xm[1,n-n2-i+1];
  z[2,i]:=t[1,n-n2-i+1];
end;
//рекурсия для Т
//recurs(z[1],z[2],k,a0,a1,a2,r1);
polynrecurs(z[1],z[2],k,3,p1,r1);

//правая ветвь ликвидуса
//
if n2<=5 then k:=n2 else k:=5;
for i:=1 to k do begin
  z[3,i]:=1-xm[2,n1+i];
  z[4,i]:=t[2,n1+i];
end;
//рекурсия для Т
//recurs(z[3],z[4],k,b0,b1,b2,r2);
if n2<>0 then polynrecurs(z[3],z[4],k,3,p2,r2);

 form3.UR.cells[1,0]:='T1';
 form3.UR.cells[0,1]:='a0';
 form3.UR.cells[0,2]:='a1';
 form3.UR.cells[0,3]:='a2';
 form3.UR.cells[0,4]:='R';
 form3.UR.cells[1,1]:=floattostr(p1[1]);
 form3.UR.cells[1,2]:=floattostr(p1[2]);
 form3.UR.cells[1,3]:=floattostr(p1[3]);
 form3.UR.cells[1,4]:=floattostr(r1);
 form3.UR.cells[2,0]:='T2';
 form3.UR.cells[2,1]:=floattostr(p2[1]);
 form3.UR.cells[2,2]:=floattostr(p2[2]);
 form3.UR.cells[2,3]:=floattostr(p2[3]);
 form3.UR.cells[2,4]:=floattostr(r2);
   
 form3.VD.RowCount:=N+1;
 form3.VD.Cells[0,0]:='i';
 form3.VD.Cells[1,0]:='X1';
 form3.VD.Cells[3,0]:='T(X1)';
 form3.VD.Cells[2,0]:='X2';
 form3.VD.Cells[4,0]:='T(X2)';

form2.Chart1.Series[5].clear;
form2.Chart1.Series[6].clear;
form2.Chart1.Series[5].tag:=6;
form2.Chart1.Series[6].tag:=7;
form2.Chart1.Series[7].clear;
form2.Chart1.Series[7].tag:=8;
     form2.Chart1.Series[4].clear;
     form2.Chart1.Series[4].tag:=5;
     form2.Chart1.Series[4].Title:='T(x_эксп)-расчет';
      form2.Chart1.Series[5].Title:='T1(x_эксп)_rekurs';
       form2.Chart1.Series[6].Title:='T2(x_эксп)_rekurs';
min:=1.0e+30;minx:=-1; mint:=1.0e+30;
min0:=min; minz:=-1;
 h10:=h1;h20:=h2;
 t10:=t1;t20:=t2;
flag:=1;
for i:=1 to m-1 do begin
z1:=i/m;
g1:=fr3(z1,p1,3);
g2:=fr3(z1,p2,3);
{form2.Chart1.Series[5].AddXY(z1,g1);
form2.Chart1.Series[6].AddXY(z1,g2);  }
if (g1>=g2)and (flag=1) then begin
form2.Chart1.Series[5].AddXY(z1,g1);end
else begin
if flag=1 then flag:=2;
if (g2>g1)and (flag=2) then begin
form2.Chart1.Series[6].AddXY(z1,g2);end
else flag:=-1;
end;

if (abs(g1-g2)<min)and(g1>=g2)then begin
    mint:=g1;
    minx:=z1;
    min:=abs(g1-g2);
 end;

 t0:=fx1_(z1);
  form2.Chart1.Series[7].addxy(z1,t0);
 if min0>t0 then begin
     min0:=t0;
     minz:=z1;
  end;
end;
showmessage('Теор: x1_min='+floattostr(minz)+' T_K_min='+floattostr(min0));
showmessage('Рекурсия:x1_min='+floattostr(minx)+' T_K_min='+floattostr(mint));

 //вычисление погрешности
   h10:=hp1/l1;h20:=hp2/l2;
   t10:=t1;t20:=t2;
   try
   zmin1:= Table2X1.Value;
   t12:=Table2t.Value;
    //расчет коэффициентов по модели Редлиха-Кистера
    lng1:=-ln(zmin1)+h10/r/t10*(1-t10/t12);  //?
    lng2:=-ln(1-zmin1)+h20/r/t20*(1-t20/t12);//?
    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    d:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;
    min:=1;minx1:=1;mint1:=1;s:=0;k:=0;
    minq:=1;minq1:=1;mint3:=1;sq:=0;k_:=0;
    m12:=m1*k1/m2/k2;
    form2.Chart1.Series[7].clear;
    form2.Chart1.Series[7].tag:=8;
    form2.Chart1.Series[4].clear;
    form2.Chart1.Series[4].tag:=5;
    form2.Chart1.Series[7].title:='T(x_mass)_мод.';
    form2.Chart1.Series[4].title:='T(x_exp)_мод.';
    for i:=1 to m-1 do begin
  //z1:=Xm[1,i]/(xm[1,i]+xm[2,i]*k12);
   z1:=i*h;
   z2:=1-z1;
   g1:=fx1_(z1);
   lng1:=sqr(z2)*(d+c*(3*z1-z2));
   lng2:=sqr(z1)*(d+c*(z1-3*z2));
   lnx1:=h10/r/t10*(1-t10/g1)-lng1;
   lnx2:=h20/r/t20*(1-t20/g1)-lng2;
   w1:=exp(lnx1);  //левая ветвь
   w2:=exp(lnx2);  //правая ветвь
   //экспериментальные мольные доли
   x1:=w1/(w1+(1-w1)/k12);
   x2:=w2/((1-w2)*k12+w2); //?
   form2.Chart1.Series[4].AddXY(x1,g1);
   form2.Chart1.Series[4].AddXY(1-x2,g1);
   J1:=poisk_mas(x1,xm[2],n2);
   if (j1>0) then begin
    a_lin:=(t[2,J1+1]-t[2,j1])/(xm[2,j1+1]-xm[2,j1]);
    b_lin:=t[2,J1]-a_lin*xm[2,j1];
    g2:=a_lin*x1+b_lin;
    inc(k);  s:=s+sqr(g1-g2);
   end else begin
   J1:=poisk_mas(1-x2,xm[1],n1);
   if (j1>0) then begin
    a_lin:=(t[1,J1+1]-t[1,j1])/(xm[1,j1+1]-xm[1,j1]);
    b_lin:=t[1,J1+1]-a_lin*xm[1,j1+1];
    g2:=a_lin*(1-x2)+b_lin;
    inc(k);  s:=s+sqr(g1-g2);
   end;

   end;
    if abs(x1-(1-x2))<=min then begin
    min:=abs(x1-(1-x2));
    minx1:=x1;
    mint1:=t12;
    end;
    //массовые доли
    q1:=x1/(x1+(1-x1)/m12);
    q2:=x2/((1-x2)*m12+x2); //?
//    if (q1>=a) and (q1<=b) {and (q1>=q1_)} then
    form2.Chart1.Series[7].AddXY(q1,g1);
//    if (q2>=a) and (q2<=b) {and (q2<=q2_)} then   //? (q2>=q2_)
    form2.Chart1.Series[7].AddXY(1-q2,g1);
   J1:=poisk_mas(q1,xv[2],n2);
   if (j1>0) then begin
    a_lin:=(t[2,J1+1]-t[2,j1])/(xv[2,j1+1]-xv[2,j1]);
    b_lin:=t[2,J1]-a_lin*xv[2,j1];
    g2:=a_lin*q1+b_lin;
    inc(k_);  sq:=sq+sqr(g1-g2);
   end else begin
   J1:=poisk_mas(1-q2,xv[1],n1);
   if (j1>0) then begin
    a_lin:=(t[1,J1+1]-t[1,j1])/(xv[1,j1+1]-xv[1,j1]);
    b_lin:=t[1,J1+1]-a_lin*xv[1,j1+1];
    g2:=a_lin*(1-q2)+b_lin;
    inc(k_);  sq:=sq+sqr(g1-g2);
   end;

   end;
    if abs(q1-(1-q2))<=minq then begin
    minq:=abs(q1-(1-q2));
    minq1:=q1;
    mint3:=t12;
    end;
   end;
   tau:=sqrt(s/(k-2));
   tauq:=sqrt(sq/(k_-2));
   minq:=minx/(minx+(1-minx)/m12);
   delta_q:=abs(minq-minq1)/minq*100;
   delta_x:=abs(minx-minx1)/minx*100;
   delta_t:=abs(mint-mint1)/mint*100;
   showmessage('Модель:exp x1_min='+floattostr(minx1)+' T_K_min='+floattostr(mint1)+chr(13)+
   'Модель:mass x1_min='+floattostr(minq1)+' T_K_min='+floattostr(mint3));
   showmessage('sigma_exp='+floattostr(tau)+ ' sigma_mass='+floattostr(tauq)+ chr(13)+
   'По рекурсии: abs_x='+floattostr(abs(minx-minx1))+ ' otn_x='+floattostr(delta_x)+chr(13)+
   ' abs_q='+floattostr(abs(minq-minq1))+ ' otn_q='+floattostr(delta_q)+chr(13)+
   ' abs_T='+floattostr(abs(mint-mint1))+' otn_T='+floattostr(delta_t));
   try
   minx:=strtofloat(form1.edit1.text);
   mint:=strtofloat(form1.edit2.text);
   minq:=minx/(minx+(1-minx)/m12);
   delta_x:=abs(minx-minx1)/minx*100;
   delta_q:=abs(minq-minq1)/minq*100;
   delta_t:=abs(mint-mint1)/mint*100;
   showmessage('По эксперименту: abs_x='+floattostr(abs(minx-minx1))+ ' otn_x='+floattostr(delta_x)+chr(13)+
   ' abs_q='+floattostr(abs(minq-minq1))+ ' otn_q='+floattostr(delta_q)+chr(13)+
   ' abs_T='+floattostr(abs(mint-mint1))+' otn_T='+floattostr(delta_t));
   except
    showmessage('Нет данных о точке эвтектике по эксперименту!');
   end;
   except
     showmessage('В базе данных нет данных о точке эвтектике!');
   end;
end;

procedure TForm4.N8Click(Sender: TObject);
label 1,2;
var
flag:boolean;
nk,m,n1,n2,i1,i2,i,n,j,k,l:integer;
x1,x2,g60,g70,l12,etta1,etta2,q1,q2,Hh,Hh1,Hh2,Ffz1,Ffx1,Ffq1,
z1,z2,y1,y2,s1,s2,l12_, w,ge,minz,minq,
g4,g5,g6,g7,x1_e,x1_m,lambda12,t12,lnx1,lnx2,w1,w2,w1_,x1_,minx1,
q1_,minx2,w2_,m12,g0,tg1,tg2,tg,x2_,q2_,
g3,H1_,H2_,h,s,t1,t2,h1,h2,m1,m2,p0,p10,p20,l1,l2,lng1,lng2,
r1,r2,a0,a1,b0,b1,fmin,minx,g1,g2,fminr,minxr:MyReal;
name1,name2:string;
a,p1,p2:masD;
a_,b_,z:array[1..4]of masd;

old:string;
begin
// расчет логарифмов активности жидкость-пар
old:=table2.Bookmark;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
p0:=Table2Pl_cmecu.Value;
p10:=Table2P1_0.Value;
p20:=Table2P2_0.Value;
l1:=Table2Lambda1.Value;
l2:=Table2Lambda2.Value;
table1.FindKey([i1]);
name1:=Table1Name.Value;
h1:=Table1Teplota.value;    //теплота плавления (при переходе из твердого в жидкое состояние)
hs1:=Table1H_teplota.value;  //теплота смешения (при бесконечном разбавлении)
hk1:=Table1H_kipen.value;    //теплота испарения  (при переходе из жидкого в парообразное состояние)
t1:=Table1Temperature.value+kelvin; //температура плавления
t10:=Table1T_Kelvin.Value+kelvin;   //температура кипения
h10:=hs1;//h1/l1;
m1:=Table1MolMassa.value;
a10:=Table1A_ant.Value;
b10:=Table1B_ant.Value;
c10:=Table1C_ant.Value;
table1.FindKey([i2]);
name2:=Table1Name.Value;
a20:=Table1A_ant.Value;
b20:=Table1B_ant.Value;
c20:=Table1C_ant.Value;
h2:=Table1Teplota.value;
hs2:=Table1H_teplota.value;
hk2:=Table1H_kipen.value;
h20:=hs2;//h2/l2;
t2:=Table1Temperature.value+kelvin;
t20:=Table1T_Kelvin.Value+kelvin;
m2:=Table1MolMassa.value;
m12:=m1/m2;
table1.FindKey([i1]);
table2.Bookmark:=old;
n:=table3.RecordCount;
setlength(xm[1],n+1);
setlength(xm[2],n+1);
setlength(xv[1],n+1);
setlength(xv[2],n+1);
setlength(ym[1],n+1);
setlength(ym[2],n+1);
setlength(yv[1],n+1);
setlength(yv[2],n+1);

setlength(t[1],n+1);
setlength(t[2],n+1);
setlength(t[3],n+1);
setlength(g[1],n+1);
setlength(g[2],n+1);
setlength(gl[1],n+1);
setlength(gl[2],n+1);
form2.Chart1.Title.Text.clear;
form2.Chart1.Title.Text.Add('Температура кипения');
form2.Chart1.Title.Text.Add(name1+' - '+name2);
form2.Chart1.LeftAxis.Title.Caption:='T,K';
form2.Chart1.BottomAxis.Title.Caption:='x1,mol';
form2.Chart6.Title.Text.clear;
form2.Chart6.Title.Text.Add('Температура кипения');
form2.Chart6.Title.Text.Add(name1+' - '+name2);
form2.Chart6.LeftAxis.Title.Caption:='T,K';
form2.Chart6.BottomAxis.Title.Caption:='x1,mol';
form2.Chart1.Series[0].clear;form2.Chart1.Series[0].title:='T(x_mол)экс.';
form2.Chart1.Series[1].clear;form2.Chart1.Series[1].title:='T(x_mол)экс.';
form2.Chart6.Series[0].clear;form2.Chart2.Series[0].title:='T(x_macc)экс.';

table3.First;
for i:=1 to N do begin
if Table3X1mas.Value<>0 then begin
   table3.Edit;Table3X2mas.value:=1-Table3X1mas.Value;table3.post;end
else if Table3X2mas.value<>0 then begin
   table3.Edit;Table3X1mas.Value:=1-Table3X2mas.value;table3.post; end;
if (Table3X1mas.Value<>0) and (Table3X2mas.value<>0) then begin
if (Table3X1mol.Value=0)and( Table3X1mol.Value=0)then begin
 // showmessage('Неполные данные!');
//  exit;
end;
if Table3X1mol.Value=0 then begin
 table3.Edit;
 Table3X1mol.Value:=Table3X1mas.Value/m1/(Table3X1mas.Value/m1+Table3X2mas.value/m2);
 if Table3X2mol.value=0 then Table3X2mol.value:=1-table3X1mol.Value;
 table3.Post;
end else begin
 table3.Edit;
 Table3X2mol.value:=1-table3X1mol.Value;
 table3.post;
end;
end
else begin
   if Table3X1mol.Value<>0 then
   begin
     table3.Edit;
     Table3X2mol.value:=1-Table3X1mol.Value;
     Table3X1mas.Value:=Table3X1mol.Value/(Table3X1mol.Value+Table3X2mol.value*m2/m1);
     Table3X2mas.value:=1-Table3X1mas.Value;
     table3.post;
   end else
   if Table3X2mol.value<>0 then
   begin
     table3.Edit;
     Table3X1mol.Value:=1-Table3X2mol.value;
     Table3X1mas.Value:=Table3X1mol.Value/(Table3X1mol.Value+Table3X2mol.value*m2/m1);
     Table3X2mas.value:=1-Table3X1mas.Value;
     table3.post;
   end;
end;
xm[1,i]:=Table3X1mol.Value;
xm[2,i]:=Table3X2mol.value;
xv[1,i]:=Table3X1mas.Value;
xv[2,i]:=Table3X2mas.Value;

if Table3y1mas.value<>0 then begin
   table3.Edit;Table3y2mas.Value:=1-Table3y1mas.value;table3.post;end
else if Table3y2mas.Value<>0 then begin
   table3.Edit;Table3y1mas.value:=1-Table3y2mas.Value;table3.post; end;
if (Table3y1mas.value<>0) and (Table3y2mas.Value<>0) then begin
if (Table3y1mol.Value=0)and( Table3y1mol.Value=0)then begin
//  showmessage('Неполные данные!');
 // exit;
end;
 if Table3y1mol.Value=0 then begin
  table3.Edit;
  Table3y1mol.Value:=Table3y1mas.value/m1/(Table3y1mas.value/m1+Table3y2mas.Value/m2);
  if Table3y2mol.value=0 then Table3y2mol.Value:=1-table3y1mol.value;
  table3.Post;
 end else begin
  table3.Edit;
  Table3y2mol.value:=1-table3y1mol.value;
  table3.post;
 end;
end
else begin
   if Table3y1mol.value<>0 then
   begin
     table3.Edit;
     Table3y2mol.Value:=1-Table3y1mol.value;
     Table3y1mas.value:=Table3y1mol.value/(Table3y1mol.value+Table3y2mol.Value*m2/m1);
     Table3y2mas.Value:=1-Table3y1mas.value;
     table3.post;
   end else
   if Table3y2mol.Value<>0 then
   begin
     table3.Edit;
     Table3y1mol.value:=1-Table3y2mol.Value;
     Table3y1mas.value:=Table3y1mol.value/(Table3y1mol.value+Table3y2mol.Value*m2/m1);
     Table3y2mas.Value:=1-Table3y1mas.value;
     table3.post;
   end;
end;
ym[1,i]:=Table3y1mol.value;
ym[2,i]:=Table3y2mol.value;
yv[1,i]:=Table3y1mas.value;
yv[2,i]:=Table3y2mas.value;
table3.Edit;
if Table3T1C.Value<>0 then begin
   Table3T1K.Value:=Table3t1c.Value+Kelvin;
   t[1,i]:=Table3T1K.Value;
   form2.Chart1.Series[0].AddXY(xm[1,i],t[1,i]);
   form2.Chart6.Series[0].AddXY(xv[1,i],t[1,i]);
   if fmin>t[1,i] then begin
        fmin:=t[1,i];
        minx:=xm[1,i];
   end;
   t[3,i]:=Table3T1K.Value;
end else
if Table3T2C.Value<>0 then begin
   Table3T2K.Value:=Table3t2c.Value+Kelvin;
   t[2,i]:=Table3T2K.Value;
   form2.Chart1.Series[0].AddXY(xm[1,i],t[2,i]);
   form2.Chart6.Series[0].AddXY(Xv[1,i],t[2,i]);
   t[3,i]:=Table3T2K.Value;
end else begin
table3.post;
//showmessage('Неполные данные!');
//exit;
end;
table3.post;
table3.next;
end;
//расчет логарифмов активности
form2.Chart2.Title.Text.Clear;
form2.Chart2.Title.Text.Add('Логарифмы активности');
form2.Chart2.Title.Text.Add(name1+' - '+name2);
form2.Chart2.LeftAxis.Title.Caption:='Log';
form2.Chart2.BottomAxis.Title.Caption:='x1';
form2.Chart2.Series[0].clear;form2.Chart2.Series[0].title:='Ln(g1)экс.';
form2.Chart2.Series[1].clear;form2.Chart2.Series[1].title:='Ln(g2)экс.';
form2.Chart2.Series[2].clear;form2.Chart2.Series[2].title:='Lg(g1/g2)экс.';

table3.First;
flag:=false;
for i:=1 to n do begin
table3.edit;
if Table3Gamma1.Value<>0 then begin
   flag:=true;
   g[1,i]:=Table3Gamma1.Value;
   Table3lngamma1.Value:=ln(Table3Gamma1.Value);
   gl[1,i]:=ln(Table3Gamma1.Value);
   form2.Chart2.Series[0].addxy(xm[1,i],gl[1,i]);
end else
if (h10<>0)and (h20<>0)then begin
z1:=xm[1,i];
t12:=t[1,i];
lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
Table3Gamma1.Value:=exp(lng1);
Table3lngamma1.Value:=lng1;
  g[1,i]:=exp(lng1);
  gl[1,i]:=lng1;
  form2.Chart2.Series[0].addxy(xm[1,i],gl[1,i]);
end;

if Table3Gamma2.Value<>0 then begin
   flag:=true;
   g[2,i]:=Table3Gamma2.Value;
   Table3lngamma2.Value:=ln(Table3Gamma2.Value);
   gl[2,i]:=ln(Table3Gamma2.Value);
   form2.Chart2.Series[1].addxy(xm[1,i],gl[2,i]);
end else
if (h10<>0)and (h20<>0)then begin
z1:=xm[2,i];
t12:=t[1,i];
lng2:=-ln(z1)-h20/r/t20*(1-t20/t12);
Table3lngamma2.Value:=lng2;
Table3Gamma2.Value:=exp(lng2);
  g[2,i]:=exp(lng2);
  gl[2,i]:=lng2;
  form2.Chart2.Series[1].addxy(xm[1,i],gl[2,i]);
end;

table3.post;
if  (Table3Gamma2.Value<>0) and (Table3Gamma1.Value<>0) then
form2.Chart2.Series[2].addxy(xm[1,i],log10(G[1,i]/g[2,i]));

table3.Next;
end;

//расчет теплоты испарения чистых компонент по линейной формуле
//теплоты смешения при бесконечном разбавлении


if (h10=0)or(h20=0) then begin
 form3.gh.cells[0,0]:='№';
 form3.gh.cells[0,1]:='1';
 form3.gh.cells[0,2]:='2';
 form3.gh.cells[1,0]:='a0';
 form3.gh.cells[2,0]:='a1';
 form3.gh.cells[3,0]:='R1';
 form3.gh.cells[4,0]:='b0';
 form3.gh.cells[5,0]:='b1';
 form3.gh.cells[6,0]:='R2';
 form3.gh.cells[7,0]:='H0';
 form3.gh.cells[8,0]:='T,K';
 form3.gh.cells[9,0]:='T,C';
 form3.gh.cells[10,0]:='etta';
 form3.gh.rowcount:=3;
 form3.gh.colcount:=12;
if flag then begin  //если есть данные Gamma1, Gamma2, но нет H
k:=10;
setlength(z[1],k+1);
setlength(z[2],k+1);
setlength(z[3],k+1);
setlength(z[4],k+1);
setlength(p1,3);
setlength(p2,3);

for i:=1 to k do begin
    z[1,i]:=1000/t[3,n-i+1];
    z[2,i]:=gl[1,n-i+1];
end;
   polynrecurs(z[1],z[2],k,2,p1,r1);
   polynrecurs(z[2],z[1],k,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   H1_:=a1*r*1000;h10:=abs(h1_);
   T1:=1000/b0;
   form3.gh.cells[1,1]:=floattostr(a0);
   form3.gh.cells[2,1]:=floattostr(a1);
   form3.gh.cells[3,1]:=floattostr(r1);
   form3.gh.cells[4,1]:=floattostr(b0);
   form3.gh.cells[5,1]:=floattostr(b1);
   form3.gh.cells[6,1]:=floattostr(r2);
   form3.gh.cells[7,1]:=floattostr(h1_);
   form3.gh.cells[8,1]:=floattostr(t1);
   form3.gh.cells[9,1]:=floattostr(t1-kelvin);
for i:=1 to k do begin
    z[3,i]:=1000/t[3,i];
    z[4,i]:=gl[2,i];
end;
   polynrecurs(z[3],z[4],k,2,p1,r1);
   polynrecurs(z[4],z[3],k,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   H2_:=a1*r*1000;h20:=abs(h2_);
   T2:=1000/b0;

   etta1:=H10/H1;etta2:=H20/H2;
   form3.gh.cells[1,2]:=floattostr(a0);
   form3.gh.cells[2,2]:=floattostr(a1);
   form3.gh.cells[3,2]:=floattostr(r1);
   form3.gh.cells[4,2]:=floattostr(b0);
   form3.gh.cells[5,2]:=floattostr(b1);
   form3.gh.cells[6,2]:=floattostr(r2);
   form3.gh.cells[7,2]:=floattostr(h2_);
   form3.gh.cells[8,2]:=floattostr(t2);
   form3.gh.cells[9,2]:=floattostr(t2-kelvin);
   form3.gh.cells[10,1]:=floattostr(etta1);
   form3.gh.cells[10,2]:=floattostr(etta2);
end  else
 begin
//если нет данных о Gamma1,2 и теплота смешения не известна,
//то находим из линейной регрессии
//делаем прогноз по 3 крайним точкам

setlength(z[1],4);
setlength(z[2],4);
setlength(p1,3);
setlength(p2,3);
   j:=1;
for i:=n downto n-2 do begin
  // for i:=1 to 3 do begin
   z[2,j]:=ln(xm[2,j]);
   z[1,j]:=1000/t[3,j];
      j:=j+1;
   end;
   polynrecurs(z[1],z[2],3,2,p1,r1);
   polynrecurs(z[2],z[1],3,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   H2_:=a1*r*1000;h20:=abs(h2_);
   T2:=1000/b0;

   j:=1;
   for i:=n downto n-2 do begin
   z[2,j]:=ln(xm[1,i]);
   z[1,j]:=1000/t[3,i];
   j:=j+1;
   end;
   polynrecurs(z[1],z[2],3,2,p1,r1);
   polynrecurs(z[2],z[1],3,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   T1:=1000/b0;
   H1_:=a1*r*1000; h10:=abs(h1_);
   etta1:=H10/H1;etta2:=H20/H2;
   form3.gh.cells[1,1]:=floattostr(a0);
   form3.gh.cells[2,1]:=floattostr(a1);
   form3.gh.cells[3,1]:=floattostr(r1);
   form3.gh.cells[4,1]:=floattostr(b0);
   form3.gh.cells[5,1]:=floattostr(b1);
   form3.gh.cells[6,1]:=floattostr(r2);
   form3.gh.cells[7,1]:=floattostr(h1_);
   form3.gh.cells[8,1]:=floattostr(t1);
   form3.gh.cells[9,1]:=floattostr(t1-kelvin);
   form3.gh.cells[1,2]:=floattostr(a0);
   form3.gh.cells[2,2]:=floattostr(a1);
   form3.gh.cells[3,2]:=floattostr(r1);
   form3.gh.cells[4,2]:=floattostr(b0);
   form3.gh.cells[5,2]:=floattostr(b1);
   form3.gh.cells[6,2]:=floattostr(r2);
   form3.gh.cells[7,2]:=floattostr(h2_);
   form3.gh.cells[8,2]:=floattostr(t2);
   form3.gh.cells[9,2]:=floattostr(t2-kelvin);
   form3.gh.cells[10,1]:=floattostr(etta1);
   form3.gh.cells[10,2]:=floattostr(etta2);
//if not flag then begin
form2.Chart3.Title.Text.Clear;
form2.Chart3.Title.Text.Add('Логарифмы активности');
form2.Chart3.Title.Text.Add(name1+' - '+name2);
form2.Chart3.LeftAxis.Title.Caption:='Log';
form2.Chart3.BottomAxis.Title.Caption:='X1';
form2.Chart3.Series[0].clear;form2.Chart3.Series[0].Title:='Ln G1';
form2.Chart3.Series[1].clear;form2.Chart3.Series[1].Title:='Ln G2';
form2.Chart3.Series[2].clear;form2.Chart3.Series[2].Title:='Lg G1/G2';
for i:=1 to n do begin
z1:=xm[1,i];
t12:=t[3,i];
lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
g[1,i]:=exp(lng1);
gl[1,i]:=lng1;
z2:=1-z1;
lng2:=-ln(z2)-h20/r/t20*(1-t20/t12);
g[2,i]:=exp(lng2);
gl[2,i]:=lng2;
form2.Chart3.Series[0].addxy(z1,gl[1,i]);
form2.Chart3.Series[1].addxy(z1,gl[2,i]);
form2.Chart3.Series[2].addxy(z1,log10(G[1,i]/g[2,i]));
end;
end;
end;
//точка минимума по эксперименту
fmin:=10000;minx:=-1;
for i:=1 to n do
begin
   s:=xm[1,i];
   g1:=t[3,i];
   if fmin>g1 then begin
        fmin:=g1;
        minx:=s;
   end;
end;
showmessage('Эксп. Xmin='+floattostr(minx)+' Tmin='+floattostr(fmin));
x1_e:=minx;
//точка минимума по модели
form2.Chart1.Series[2].clear;
form2.Chart1.Series[2].title:='T(xm)_m';
fmin:=10000;minx:=-1;
K:=form1.fn.Value;
h:=1/k;
s:=0;
for i:=1 to k-1 do
begin
 s:=s+h;
 g3:=fx1_(s);
 if fmin>g3 then begin
   fmin:=g3;
   minx:=s;
 end;
 form2.Chart1.Series[2].addxy(s,g3);
end;
showmessage('Мод. Xmin='+floattostr(minx)+' Tmin='+floattostr(fmin));
x1_m:=minx;//точка минимума по модели
lambda12:=x1_e/(1-x1_e)*(1-x1_m)/x1_m;
showmessage('lambda12='+floattostr(lambda12));

//термодинамическое согласование
form2.Chart2.Series[3].clear;form2.Chart2.Series[3].Title:='Ln G1/G2, S1#S2';
form2.Chart2.Series[4].clear;form2.Chart2.Series[4].Title:='Ln G1/G2, S1=S2';
form2.Chart2.Series[5].clear;form2.Chart2.Series[5].Title:='Lg G1/G2, согл.';

//кубический полином
setlength(z[1],n+1);
for i:=1 to n do z[1,i]:=math.Log10(g[1,i]/g[2,i]);
setlength(a,5);
polynrecurs(xm[1],z[1],n,4,a,r1);
 g1:=0;
 k:=form1.Fn.Value;
 h:=1/k;
 form2.Chart2.Series[3].clear;
 s1:=0;s2:=0;
 z2:=h;
 g60:=fr3(z2,a,4);
 for i:=2 to k-1 do
 begin
 z1:=i*h;
 g6:=fr3(z1,a,4);
 form2.Chart2.Series[3].AddXY(z1,g6);
 if (g60>0) and (g6>0) then begin
  s1:=s1+((g6+g60)/2*(z1-z2));
  x1:=z1;
 end
 else
  s2:=s2+abs(g6+g60)/2*(z1-z2);
 g60:=g6;z2:=z1;
 end;

repeat
//интегралы
 form2.Chart2.Series[4].clear;
 s1:=0;s2:=0;
 z2:=h;
 g60:=fr3(z2,a,4)-g1;
 for i:=2 to k-1 do
 begin
 z1:=i*h;
 g6:=fr3(z1,a,4)-g1;
 form2.Chart2.Series[4].AddXY(z1,g6);
 if (g60>0) and (g6>0) then begin
  s1:=s1+(g6+g60)/2*(z1-z2);
  x2:=z1;
 end
 else
  s2:=s2+abs(g6+g60)/2*(z1-z2);
 g60:=g6;z2:=z1;
 end;
  if s1>s2 then g1:=g1+0.01;
  if s1<s2 then g1:=g1-0.01;
 until abs(s1-s2)<=1.0e-2;
 showmessage('Площадь интегралов S1-S2='+floattostr(s1-s2));
 showmessage('Поправка g1='+floattostr(g1));
l12:=x1/(1-x1)/x2*(1-x2);
 showmessage('X_экс='+floattostr(x1)+' X_мод='+floattostr(x2)+
' L12='+floattostr(l12));
 exit;
 form3.UR.RowCount:=8;
 form3.UR.cells[1,7]:=floattostr(x1);
 form3.UR.cells[2,7]:=floattostr(x2);
 form3.UR.cells[0,7]:=floattostr(l12);

 //2-й вариант
 {FormInput.Label1.Caption:='Введите точку минимума избыточного объема';
 FormInput.Edit1.Text:=floattostr(0.428);
 FormInput.Showmodal;
 x2:=strtofloat(FormInput.Edit1.Text);
 g1:=fr3(x2,a,4);//поправка в жидкости
 showmessage('поправка в жидкости g1='+floattostr(g1));

 g1:=fr3(xm[1,1],a,4)-g1;
 //интегралы
 form2.Chart2.Series[5].clear;
 s1:=0;s2:=0;
 g60:=fr3(xm[1,1],a,4)-g1;
 for i:=2 to n do
 begin
 g6:=fr3(xm[1,i],a,4)-g1;
 form2.Chart2.Series[5].AddXY(xm[1,i],g6);
 if (g60>0) and (g6>0) then
  s1:=s1+(g6+g60)/2*(xm[1,i]-xm[1,i-1])
 else
  s2:=s2+abs(g6+g60)/2*(xm[1,i]-xm[1,i-1]);
 g60:=g6;g70:=g7;
 end;
 showmessage('после поправки в жидкости S1-S2='+floattostr(s1-s2));
 l12:=x1/(1-x1)/x2*(1-x2);
 showmessage('X_экс='+floattostr(x1)+' X_мод='+floattostr(x2)+
' L12='+floattostr(l12));
 form3.UR.RowCount:=8;
 form3.UR.cells[1,7]:=floattostr(x1);
 form3.UR.cells[2,7]:=floattostr(x2);
 form3.UR.cells[0,7]:=floattostr(l12);
}

l12_:=l12;
//поправка для пара
 x2:=0.5;
 g2:=fr3(x2,a,4)-g1; //lg(betta1/betta2)=lg(gamma1/gamma2) при x=0.5
  showmessage('x=0.5 f='+floattostr(g2));

//интегралы
 form2.Chart2.Series[5].clear;
 s1:=0;s2:=0;
 g60:=fr3(xm[1,1],a,4)-g1-g2;
 for i:=2 to n do
 begin
 g6:=fr3(xm[1,i],a,4)-g1-g2;
 form2.Chart2.Series[5].AddXY(xm[1,i],g6);
 if (g60>0) and (g6>0) then
  s1:=s1+(g6+g60)/2*(xm[1,i]-xm[1,i-1])
 else
  s2:=s2+abs(g6+g60)/2*(xm[1,i]-xm[1,i-1]);
 g60:=g6;g70:=g7;
 end;
 showmessage('после поправки в паре S1-S2='+floattostr(s1-s2));
 lambda12:=x1/(1-x1)/x2*(1-x2);
 showmessage('X_экс='+floattostr(x1)+' X_мод='+floattostr(x2)+
' L12='+floattostr(lambda12));
 form3.UR.RowCount:=9;
 form3.UR.cells[1,8]:=floattostr(x1);
 form3.UR.cells[2,8]:=floattostr(x2);
 form3.UR.cells[0,8]:=floattostr(l12);
 //betta1/betta2=10^g2
 g3:=math.Power(10,g2);
 //tau1/tau2=lambda12/(betta1/betta2) ассоциация в паре
 g4:=l12_/g3;
showmessage('betta1/betta2='+floattostr(g3)+
' tau1/tau2='+floattostr(g4));
 form3.UR.RowCount:=10;
 form3.UR.cells[1,9]:=floattostr(g3);
 form3.UR.cells[2,9]:=floattostr(g4);

SetLength(xm[3],N+1);
for i:=1 to n do
xm[3,i]:=xm[1,i]/(xm[1,i]+l12*(1-xm[1,i]));
{
//пересчет H после согласования
form3.gh.rowcount:=5;
setlength(z[1],4);
setlength(z[2],4);
setlength(p1,3);
setlength(p2,3);
   for i:=1 to 3 do begin
   z[2,i]:=ln(xm[2,i]);
   z[1,i]:=1000/t[3,i];
   end;
   polynrecurs(z[1],z[2],3,2,p1,r1);
   polynrecurs(z[2],z[1],3,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   H2_:=a1*r*1000;h20:=abs(h2_);
   T2:=1000/b0;

   j:=1;
   for i:=n downto n-2 do begin
   z[2,j]:=ln(xm[1,i]);
   z[1,j]:=1000/t[3,i];
   j:=j+1;
   end;
   polynrecurs(z[1],z[2],3,2,p1,r1);
   polynrecurs(z[2],z[1],3,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   T1:=1000/b0;
   H1_:=a1*r*1000; h10:=abs(h1_);
   etta1:=H10/H1;etta2:=H20/H2;
   {
setlength(z[1],4);
setlength(z[2],4);

   for i:=1 to 3 do begin
   s:=xm[1,i]/(xm[1,i]+l12*(1-xm[1,i]));
   z[2,i]:=ln(s);
   z[1,i]:=1000/t[3,i];
   end;
   polynrecurs(z[1],z[2],3,2,p1,r1);
   polynrecurs(z[2],z[1],3,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   H1_:=a1*r*1000;h10:=abs(h1_);
   T1:=1000/b0;

   j:=1;
   for i:=n downto n-2 do begin
   s:=xm[1,i]/(xm[1,i]+l12*(1-xm[1,i]));
   z[2,j]:=ln(1-s);
   z[1,j]:=1000/t[3,i];
   j:=j+1;
   end;
   polynrecurs(z[1],z[2],3,2,p1,r1);
   polynrecurs(z[2],z[1],3,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   T2:=1000/b0;
   H2_:=a1*r*1000; h20:=abs(h2_);
   etta1:=H10/H1;etta2:=H20/H2;  }
   form3.gh.cells[1,3]:=floattostr(a0);
   form3.gh.cells[2,3]:=floattostr(a1);
   form3.gh.cells[3,3]:=floattostr(r1);
   form3.gh.cells[4,3]:=floattostr(b0);
   form3.gh.cells[5,3]:=floattostr(b1);
   form3.gh.cells[6,3]:=floattostr(r2);
   form3.gh.cells[7,3]:=floattostr(h1_);
   form3.gh.cells[8,3]:=floattostr(t1);
   form3.gh.cells[9,3]:=floattostr(t1-kelvin);
   form3.gh.cells[1,4]:=floattostr(a0);
   form3.gh.cells[2,4]:=floattostr(a1);
   form3.gh.cells[3,4]:=floattostr(r1);
   form3.gh.cells[4,4]:=floattostr(b0);
   form3.gh.cells[5,4]:=floattostr(b1);
   form3.gh.cells[6,4]:=floattostr(r2);
   form3.gh.cells[7,4]:=floattostr(h2_);
   form3.gh.cells[8,4]:=floattostr(t2);
   form3.gh.cells[9,4]:=floattostr(t2-kelvin);
   form3.gh.cells[10,3]:=floattostr(etta1);
   form3.gh.cells[10,4]:=floattostr(etta2);

//пересчет логарифмов активности после согласования
form2.Chart2.Series[3].clear;form2.Chart2.Series[3].Title:='Ln G1,eff';
form2.Chart2.Series[4].clear;form2.Chart2.Series[4].Title:='Ln G2,eff';
form2.Chart2.Series[5].clear;form2.Chart2.Series[5].Title:='Lg G1/G2,eff';


form2.Chart3.Series[3].clear;form2.Chart3.Series[3].Title:='Ln G1,eff';
form2.Chart3.Series[4].clear;form2.Chart3.Series[4].Title:='Ln G2,eff';
form2.Chart3.Series[5].clear;form2.Chart3.Series[5].Title:='Lg G1/G2,eff';

for i:=1 to n do begin
z1:=xm[1,i]/(xm[1,i]+l12*(1-xm[1,i]));
t12:=t[3,i];
lng1:=-ln(z1)+h10/r/t10*(1-t10/t12);
z2:=1-z1;
lng2:=-ln(z2)-h20/r/t20*(1-t20/t12);
form2.Chart2.Series[3].addxy(z1,gl[1,i]);
form2.Chart2.Series[4].addxy(z1,gl[2,i]);
form2.Chart2.Series[5].addxy(z1,log10(G[1,i]/g[2,i]));

form2.Chart3.Series[3].addxy(z1,lng1);
form2.Chart3.Series[4].addxy(z1,lng2);
form2.Chart3.Series[5].addxy(z1,log10(exp(lng1)/exp(lng2)));
end;


//точка минимума по эксперименту после согласования
form2.Chart1.Series[1].clear;
form2.Chart1.Series[1].title:='T(x_m)_экс';
fmin:=10000;minx:=-1;
for i:=1 to n do
begin
   s:=xm[1,i]/(xm[1,i]+l12*(1-xm[1,i]));;
   g1:=t[3,i];
   form2.Chart1.Series[6].addxy(s,g1);
   if fmin>g1 then begin
        fmin:=g1;
        minx:=s;
   end;
end;
x1_e:=minx;
showmessage('После согласования: эксп. Xmin='+floattostr(minx)+' Tmin='+floattostr(fmin));
//точка минимума по модели
form2.Chart1.Series[2].clear;
form2.Chart1.Series[2].title:='T(xm)_m';
fmin:=10000;minx:=-1;
K:=form1.fn.Value;
h:=1/k;
s:=0;
for i:=1 to k-1 do
begin
 s:=s+h;
 g3:=fx1_(s);
 if fmin>g3 then begin
   fmin:=g3;
   minx:=s;
 end;
 form2.Chart1.Series[2].addxy(s,g3);
end;
showmessage('Мод. Xmin='+floattostr(minx)+' Tmin='+floattostr(fmin));
x1_m:=minx;//точка минимума по модели
lambda12:=x1_e/(1-x1_e)*(1-x1_m)/x1_m;
showmessage('lambda12='+floattostr(lambda12));

lambda12:=l12;  //?

form2.Chart9.Series[0].Clear;
form2.Chart9.Series[1].Clear;
form2.Chart9.Series[2].Clear;
form2.Chart10.Series[0].Clear;
form2.Chart10.Series[1].Clear;
form2.Chart1.Series[5].Clear;
form2.Chart1.Series[3].Clear;
form2.Chart1.Series[4].Clear;

 s:=0;
for i:=1 to N do begin
//эффективные мольные доли
 s:=xm[1,i];
 z1:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
 z2:=1-z1;
 g3:=fx1_(z1);
 p_1:=p_antuan(g3,a10,b10,c10);
 p_2:=p_antuan(g3,a20,b20,c20);
 g1:=ln_gamma(h10,t10,g3,z1)/10;//ln gamma
 g2:=ln_gamma(-h20,t20,g3,z2)/10;      //?
 g6:=exp(g1);g7:=exp(g2); // gamma
 g5:=z1/z2*p_1/p_2*g6/g7;
 y1:=g5/(1+g5);
 y2:=1-y1;
 g7:=fx1_(y1);//T(y1)

 g4:=abs(t[3,i]-g3)/t[3,i]*100;//относительная погрешность Тэксп-Тмодел
 s:=s+g4/n;//средняя погрешность
 form3.RG.Cells[j+1,i]:=floattostr(z1);
 form3.RG.Cells[j+2,i]:=floattostr(z2);
 form3.RG.Cells[j+3,i]:=floattostr(g3);
 form3.RG.Cells[j+4,i]:=floattostr(g4);
 form3.RG.Cells[j+5,i]:=floattostr(p_1);
 form3.RG.Cells[j+6,i]:=floattostr(p_2);
 form3.RG.Cells[j+7,i]:=floattostr(g1);
 form3.RG.Cells[j+8,i]:=floattostr(g2);
 form3.RG.Cells[j+9,i]:=floattostr(g5);
 form3.RG.Cells[j+10,i]:=floattostr(g6);
 form3.RG.Cells[j+11,i]:=floattostr(y1);
 form3.RG.Cells[j+12,i]:=floattostr(y2);
 form3.RG.Cells[j+13,i]:=floattostr(g7);

 form2.Chart1.Series[5].addxy(z1,T[3,i]);
 form2.Chart1.Series[3].addxy(z1,g3);
 form2.Chart1.Series[4].addxy(z1,g7);
 form2.Chart9.Series[1].addxy(z1,y1);
 form2.Chart9.Series[0].addxy(z1,z1);
 form2.Chart9.Series[2].addxy(z1,ym[1,i]);
 form2.Chart10.Series[0].addxy(g3,p_1);
 form2.Chart10.Series[1].addxy(g3,p_2);
end;
showmessage('Sr=Тэкс-Тмод в эфф. долях='+floattostr(s));
form2.Chart1.Series[5].Title:='T(z)_эксп';
form2.Chart1.Series[3].Title:='T(z)_мод';
form2.Chart1.Series[4].Title:='T(y)';
form2.Chart1.LeftAxis.Title.Caption:='Температура, K';  //K
form2.Chart1.BottomAxis.Title.Caption:='Мольная доля 1-го компонента';
//form2.Chart3.LeftAxis.Title.Caption:='Температура, K';  //K
//form2.Chart3.BottomAxis.Title.Caption:='Весовая доля 1-го компонента';
i:=1;
 s:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
 g1:=h10/r/t10*(1-t10/g3)-ln(s);
 g2:=-h20/r/t20*(1-t20/g3)-ln(1-s);
 g70:=math.Log10(exp(g1)/exp(g2));
 g60:=math.Log10(g[1,i]/g[2,i]);
 form2.Chart2.Series[3].clear;
 form2.Chart2.Series[4].clear;
 form2.Chart2.Series[5].clear;
 form2.Chart2.Series[3].AddXY(s,g1);
 form2.Chart2.Series[4].AddXY(s,g2);
 form2.Chart2.Series[5].AddXY(s,g70);

 for i:=2 to N do begin
 s:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
 g3:=fx1_(s);
 g1:=h10/r/t10*(1-t10/g3)-ln(s);
 g2:=-h20/r/t20*(1-t20/g3)-ln(1-s);
 g5:=gl[1,i];g4:=gl[2,i];
 g6:=math.Log10(g[1,i]/g[2,i]);
 g7:=math.Log10(exp(g1)/exp(g2));
 if g6*g60<0 then begin
 x1:=xm[1,i];//x1:=s;
 end;
 if g7*g70<0 then begin
 x1:=xm[1,i];//x2:=s;
 end;
 g60:=g6;g70:=g7;
 form2.Chart2.Series[3].AddXY(s,g1);
 form2.Chart2.Series[4].AddXY(s,g2);
 form2.Chart2.Series[5].AddXY(s,g7);
end;
l12:=x1/(1-x1)/x2*(1-x2);
 showmessage('X_экс='+floattostr(x1)+' X_мод='+floattostr(x2)+
' L12='+floattostr(l12));
 form3.UR.RowCount:=7;
 form3.UR.cells[1,6]:=floattostr(x1);
 form3.UR.cells[2,6]:=floattostr(x2);
 form3.UR.cells[0,6]:=floattostr(l12);

//пересчет в эффективные мольные доли
 form3.UR.RowCount:=6;form3.UR.colcount:=5;
 form3.UR.cells[1,5]:=floattostr(x1_e);
 form3.UR.cells[2,5]:=floattostr(x1_m);
 form3.UR.cells[0,5]:=floattostr(lambda12);
 form3.UR.cells[3,5]:=floattostr(etta1);
 form3.UR.cells[4,5]:=floattostr(etta2);

//пересчет в экспериментальные мольные доли
//  h10:=h1/l1;h20:=h2/l2;t10:=t1;t20:=t2;        //???
  form3.RT.ColCount:=13;
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
  form3.RT.cells[10,0]:='M(z)';
  form3.RT.cells[11,0]:='H0';
  form3.RT.cells[12,0]:='HL';
  form2.Chart1.series[3].clear;form2.Chart1.series[3].title:='T(z1)эфф.';
  form2.Chart1.series[4].clear;form2.Chart1.series[4].title:='T(x1)экс.';
  form2.Chart1.series[5].clear;form2.Chart1.series[5].title:='T(q1)вес.';
  fmin:=1000;minx:=-1;minz:=-1;minq:=-1;
  for i:=2 to k-1 do begin
z1:=i*h;z2:=(1-z1);
//экспериментальные мольные доли
x1:=z1/(z1+z2/lambda12);
x2:=z2/(z2+z1*lambda12);
//весовые доли
q1:=x1/(x1+(m2)/(m1)*x2);
q2:=x2/(x2+(m1)/(m2)*x1);
//q1:=x1/(x1+m2/m1*x2);
//q2:=x2/(x2+m1/m2*x1);
Hh :=m1*q1+m2*q2;
hh1:=z1*h1+z2*h2;
hh2:=z1*h10+z2*h20;
ffz1:=fx1_(z1);
if fmin>ffz1 then begin
   fmin:=ffz1;
   minx:=x1;   minz:=z1;   minq:=q1;
 end;
form2.Chart1.series[3].AddXY(z1,ffz1); //-kelvin
form2.Chart1.series[4].AddXY(x1,ffz1);
form2.Chart1.series[5].AddXY(q1,ffz1);
 form3.RT.cells[1,i]:=floattostr(Z1);
 form3.RT.cells[2,i]:=floattostr(Z2);
 form3.RT.cells[3,i]:=floattostr(ffz1);
 form3.RT.cells[4,i]:=floattostr(x1);
 form3.RT.cells[5,i]:=floattostr(x2);
 form3.RT.cells[6,i]:=floattostr(ffx1);
 form3.RT.cells[7,i]:=floattostr(q1);
 form3.RT.cells[8,i]:=floattostr(q2);
 form3.RT.cells[9,i]:=floattostr(ffq1);
 form3.RT.cells[10,i]:=floattostr(Hh);
 form3.RT.cells[11,i]:=floattostr(hh1);
 form3.RT.cells[12,i]:=floattostr(hh2);
end;
 showmessage('Мод. Tmin='+floattostr(ffz1)+
 ' X_эфф='+floattostr(minz)+
 ' X_эсп='+floattostr(minx)+
 ' X_масс='+floattostr(minq)
 );

//GE- избыточная энергия Гиббса после согласованности
 form2.Chart2.Series[0].clear;
 form2.Chart2.Series[1].clear;
 form2.Chart2.Series[2].clear;
 form2.Chart5.Series[2].clear;

 form2.Chart2.Series[0].Title:='ln(G1(x_ef))';
 form2.Chart2.Series[1].Title:='ln(G2(x_ef))';
 form2.Chart2.Series[2].Title:='log(G1/G2)';
 form2.Chart5.Series[2].Title:='GE(x_ef)' ;
 for i:=1 to N do begin
    s:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
  form2.Chart2.Series[0].addxy(s,gl[1,i]);
  form2.Chart2.Series[1].addxy(s,gl[2,i]);
  form2.Chart2.Series[2].addxy(s,log10(G[1,i]/g[2,i]));
    ge:=R*t[3,i]*(s*gl[1,i]+(1-s)*gl[2,i]);//избыточная энергия Гиббса
    form2.Chart5.Series[2].addxy(s,ge);
 end;
 // расчет относительной летучести a=(p1/p2*gamma1/gamm2)
 // если =1 то это точка азеотропии
  form2.Chart8.Series[0].clear;
  z1:=0;
 for i:=1 to N do begin
 //эффективные мольные доли
 s:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
 //g6:=fr3(s,a,4)-g1-g2;
 //g3:=math.Power(10,g6);
 g3:=g[1,i]/g[2,i];
 g4:=t[3,i];
 p_1:=p_antuan(g4,a10,b10,c10);
 p_2:=p_antuan(g4,a20,b20,c20);
 g5:=p_1/p_2*g3;
 if abs(g5-1)<=0.01 then begin z1:=T[3,i];z2:=s end;
 form2.Chart8.Series[0].addxy(s,g5);
 end;
 if z1<>0 then showmessage('при a=1: T='+floattostr(z1)+' x_mol='+floattostr(z2));

 //сравнение с формулой Марийе
 form2.Chart4.Series[0].Clear;
 form2.Chart4.Series[1].Clear;
 form2.Chart4.Series[2].clear;
h:=1/k;
z1:=h;
s:=0;
for i:=1 to k-1 do begin
  z1:=z1+h;
  g1:=78.4+(1-z1)/z1*sqrt(0.22*z1*100)+kelvin;//формула Марийе
  g2:=fx1_(z1);
  form2.Chart4.Series[0].addxy(z1,g1);
  form2.Chart4.Series[1].addxy(z1,g2);
  g4:=abs(g1-g2)/g1*100;//относительная погрешность Тэксп-Тмодел
  s:=s+g4/(k-1);//средняя погрешность
end;
showmessage('Sr=Тмар-Тмод в вес. долях='+floattostr(s));
 s:=0; s1:=0;
for i:=1 to n do begin
  z1:=xv[1,i];
  g1:=78.4+(1-z1)/z1*sqrt(0.22*z1*100)+kelvin;//формула Марийе
  g2:=fx1_(z1);
  g3:=t[3,i];
  //form2.Chart3.Series[0].addxy(a,g1);
  //form2.Chart3.Series[1].addxy(a,g2);
  form3.RG.Cells[j+14,i]:=floattostr(g1);
  form2.Chart4.Series[2].addxy(z1,g3);
  g4:=abs(g1-g3)/g3*100;//относительная погрешность Тэксп-Тмодел
  s:=s+g4/n;//средняя погрешность
  s1:=s1+abs(g2-g3)/g3*100/n;
end;
showmessage('Sr=Tэкс-Тмар в вес. долях ='+floattostr(s));
showmessage('Sr=Tэкс-Тмод в вес. долях ='+floattostr(s1));
form3.PageControl1.ActivePageIndex:=2;
form2.PageControl1.ActivePageIndex:=1;

form2.Show;
form3.Show;
exit;
{
 FormInput.Label1.Caption:='Введите точку минимума избыточного объема';
 FormInput.Edit1.Text:=floattostr(0.428);
 FormInput.Showmodal;
 x2:=strtofloat(FormInput.Edit1.Text);
 //x2:=0.428;//минимум избыточного объема
 g1:=fr3(x2,a,4);//поправка в жидкости
 showmessage('f='+floattostr(g1));

 g1:=fr3(xm[1,1],a,4)-g1;
 //интегралы
 form2.Chart2.Series[5].clear;
 s1:=0;s2:=0;
 g60:=fr3(xm[1,1],a,4)-g1;
 for i:=2 to n do
 begin
 g6:=fr3(xm[1,i],a,4)-g1;
 form2.Chart2.Series[5].AddXY(xm[1,i],g6);
 if (g60>0) and (g6>0) then
  s1:=s1+(g6+g60)/2*(xm[1,i]-xm[1,i-1])
 else
  s2:=s2+abs(g6+g60)/2*(xm[1,i]-xm[1,i-1]);
 g60:=g6;g70:=g7;
 end;
 showmessage('после поправки в жидкости S1-S2='+floattostr(s1-s2));
 l12:=x1/(1-x1)/x2*(1-x2);
 showmessage('X_экс='+floattostr(x1)+' X_мод='+floattostr(x2)+
' L12='+floattostr(l12));
 form3.UR.RowCount:=8;
 form3.UR.cells[1,7]:=floattostr(x1);
 form3.UR.cells[2,7]:=floattostr(x2);
 form3.UR.cells[0,7]:=floattostr(l12);
l12_:=l12;

//поправка для пара
 x2:=0.5;
 g2:=fr3(x2,a,4)-g1; //lg(betta1/betta2)=lg(gamma1/gamma2) при x=0.5
  showmessage('x=0.5 f='+floattostr(g2));

//интегралы
 form2.Chart2.Series[5].clear;
 s1:=0;s2:=0;
 g60:=fr3(xm[1,1],a,4)-g1-g2;
 for i:=2 to n do
 begin
 g6:=fr3(xm[1,i],a,4)-g1-g2;
 form2.Chart2.Series[5].AddXY(xm[1,i],g6);
 if (g60>0) and (g6>0) then
  s1:=s1+(g6+g60)/2*(xm[1,i]-xm[1,i-1])
 else
  s2:=s2+abs(g6+g60)/2*(xm[1,i]-xm[1,i-1]);
 g60:=g6;g70:=g7;
 end;
 showmessage('после поправки в паре S1-S2='+floattostr(s1-s2));
 l12:=x1/(1-x1)/x2*(1-x2);
 showmessage('X_экс='+floattostr(x1)+' X_мод='+floattostr(x2)+
' L12='+floattostr(l12));
 form3.UR.RowCount:=9;
 form3.UR.cells[1,8]:=floattostr(x1);
 form3.UR.cells[2,8]:=floattostr(x2);
 form3.UR.cells[0,8]:=floattostr(l12);
 //betta1/betta2=10^g2
 g3:=math.Power(10,g2);
 //tau1/tau2=lambda12/(betta1/betta2) ассоциация в паре
 g4:=l12_/g3;
showmessage('betta1/betta2='+floattostr(g3)+
' tau1/tau2='+floattostr(g4));
form3.UR.RowCount:=10;
 form3.UR.cells[1,9]:=floattostr(g3);
 form3.UR.cells[2,9]:=floattostr(g4);

 // расчет относительной летучести a=(p1/p2*gamma1/gamm2)
 // если =1 то это точка азеотропии
  form2.Chart8.Series[0].clear;
  z1:=0;
 for i:=1 to N do begin
 //эффективные мольные доли
 s:=xm[1,i];
 //g6:=fr3(s,a,4)-g1-g2;
 //g3:=math.Power(10,g6);
 g3:=g[1,i]/g[2,i];
 g4:=t[3,i];
 p_1:=p_antuan(g4,a10,b10,c10);
 p_2:=p_antuan(g4,a20,b20,c20);
 g5:=p_1/p_2*g3;
 if abs(g5-1)<=0.01 then begin z1:=T[3,i];z2:=s end;
 form2.Chart8.Series[0].addxy(s,g5);
 end;
 if z1<>0 then showmessage('при a=1: T='+floattostr(z1)+' x_mol='+floattostr(z2));

 }

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
(*
 setlength(a_[1],7); setlength(a_[2],7); setlength(a_[3],7);
 setlength(b_[1],7); setlength(b_[2],7); setlength(b_[3],7);
 setlength(z[1],7);
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
 polynrecurs(z[1],a_[1],6,6,b_[1],r1);
 polynrecurs(z[1],a_[2],6,6,b_[2],r1);
 polynrecurs(z[1],a_[3],6,6,b_[3],r1);
 k:=50;
 form2.Chart7.Series[0].Clear;

 for i:=0 to k do begin
 s:=i/k;
 w:=s*(1-s)*(a_[1,6]+a_[2,6]*(2*s-1)+a_[3,6]*sqr(2*s-1));
 form2.Chart7.Series[0].addxy(s,w);
 end;


 p_1:=0.103;//P0
 p_2:=0.0133;//P
 z1:=315.75;//Tsr
 h:=(p_2-p_1)/ln(10)/R/z1;
 p_1:=p_antuan(z1,a10,b10,c10);
 p_2:=p_antuan(z1,a20,b20,c20);

 form2.Chart2.Series[6].Clear;

 form2.Chart9.Series[0].Clear;
 form2.Chart9.Series[1].Clear;
 form2.Chart9.Series[2].Clear;

 for i:=1 to n do begin
 s:=xm[1,i];
 try
 g1:=math.Log10(g[1,i]/g[2,i]);
 except
 g1:=0;
 end;
 g2:=0;
 for j:=1 to 3 do begin
 g4:=0; w:=1;
  for l:=1 to 6 do begin
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
 *)
 {

exit;



//прогноз по k точкам
  k:=3;nk:=k+n;
1:
//левая ветвь ликвидуса
setlength(z[1],k+1);
setlength(z[2],k+1);
for i:=1 to k do begin
  z[1,i]:=1000/t[1,i];
  z[2,i]:=gl[1,i];
end;
//рекурсия для Т
polynrecurs(z[1],z[2],k,2,p1,r1);
a0:=p1[1];a1:=p1[2];
k:=k-1;
if (abs(r2)>1) and (k>1) then goto 1;
if (abs(r1)>1)and (k=1) then begin
showmessage('Линейная регрессия не удовлетворяет условиям!');
end;

 form3.UR.cells[1,4]:=inttostr(k+1);

 k:=3;//количество точек
2:
//правая ветвь ликвидуса
setlength(z[3],k+1);
setlength(z[4],k+1);
for i:=1 to k do begin
 try
  z[3,i]:=1000/t[2,n-i+1];
 except
   z[3,i]:=1000/t[3,n-i+1];
 end;
  z[4,i]:=gl[2,n-i+1];
end;
//рекурсия для Т
polynrecurs(z[3],z[4],k,2,p1,r2);
b0:=p1[1];b1:=p1[2];
k:=k-1;
if (abs(r2)>1)and (k>1) then goto 2;
if (abs(r2)>1)and (k=1) then begin
showmessage('Линейная регрессия не удовлетворяет условиям!');
end;

//энтальпия смешения при бесконечном разбавлении
H2_:=1000*a1*R;
H1_:=1000*b1*R;
H10:=abs(H1_);
H20:=abs(H2_);
etta1:=H10/H1;etta2:=H20/H2;
 form3.UR.cells[0,0]:='H_';
 form3.UR.cells[0,1]:='a0';
 form3.UR.cells[0,2]:='a1';
 form3.UR.cells[0,3]:='R';
 form3.UR.cells[0,4]:='k';
 form3.UR.cells[1,1]:=floattostr(a0);
 form3.UR.cells[1,2]:=floattostr(a1);
 form3.UR.cells[1,3]:=floattostr(r1);
 form3.UR.cells[1,0]:=floattostr(H1_);
 form3.UR.cells[2,1]:=floattostr(b0);
 form3.UR.cells[2,2]:=floattostr(b1);
 form3.UR.cells[2,3]:=floattostr(r2);
 form3.UR.cells[2,0]:=floattostr(H2_);
 form3.UR.cells[1,4]:=floattostr(etta1);
 form3.UR.cells[2,4]:=floattostr(etta2);
// form3.UR.cells[2,4]:=inttostr(k+1);

 form2.Chart4.Series[0].Clear;form2.Chart4.Series[0].title:='Ln(G1_t)';
 form2.Chart4.Series[1].Clear;form2.Chart4.Series[1].title:='Ln(G2_t)';
 form2.Chart4.Series[2].Clear;form2.Chart4.Series[2].title:='Ln(G1_m)';
 form2.Chart4.Series[3].Clear;form2.Chart4.Series[3].title:='Ln(G2_m)';

 form3.VD.RowCount:=N+1;
 form3.VD.Cells[0,0]:='i';
 form3.VD.Cells[1,0]:='X1';
 form3.VD.Cells[3,0]:='T(X1)';
 form3.VD.Cells[2,0]:='X2';
 form3.VD.Cells[4,0]:='T(X2)';
 //? как вывести ветви правильно
 s1:=1000/t[3,n];
 for i:=1 to 3 do begin
 s:=1000/t[3,i];
 g1:=a0+a1*s;
 g2:=b0+b1*s;
 form3.VD.Cells[1,0]:=floattostr(s);
 form3.VD.Cells[3,0]:=floattostr(gl[1,i]);
 form3.VD.Cells[4,0]:=floattostr(gl[2,i]);
 form3.VD.Cells[5,0]:=floattostr(a0+a1*s);
 form3.VD.Cells[6,0]:=floattostr(b0+b1*s);
 form2.Chart4.Series[0].addxy(s,gl[1,i]);
 form2.Chart4.Series[1].addxy(s1-s,gl[2,i]);
 form2.Chart4.Series[2].addxy(s,g1);
 form2.Chart4.Series[3].addxy(s1-s,g2);
 end;

// согласование по логарифму активности

 i:=1;
 s:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
 g1:=h10/r/t10*(1-t10/g3)-ln(s);
 g2:=-h20/r/t20*(1-t20/g3)-ln(1-s);
 g70:=math.Log10(exp(g1)/exp(g2));
 g60:=math.Log10(g[1,i]/g[2,i]);
 setlength(z[1],n+1);
 z[1,1]:=g60;
 for i:=2 to N do begin
 s:=xm[1,i];//
 s:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
 g3:=fx1_(s);
 g1:=h10/r/t10*(1-t10/g3)-ln(s);
 g2:=-h20/r/t20*(1-t20/g3)-ln(1-s);
// g5:=h1_*(1-t10/T[1,i])/r/t10-ln(s);
// g4:=h2_*(1-t20/T[1,i])/r/t20-ln(1-s);
 g5:=gl[1,i];g4:=gl[2,i];
 g6:=math.Log10(g[1,i]/g[2,i]);
 z[1,i]:=g6;
 g7:=math.Log10(exp(g1)/exp(g2));
 if g6*g60<0 then begin
 x1:=xm[1,i];
 end;
 if g7*g70<0 then begin
// x2:=s;
 x2:=xm[1,i];
 end;
 g60:=g6;g70:=g7;
 form2.Chart2.Series[2].AddXY(s,g1);
 form2.Chart2.Series[3].AddXY(s,g2);
 form2.Chart2.Series[0].AddXY(xm[1,i],g5);
 form2.Chart2.Series[1].AddXY(xm[1,i],g4);
 form2.Chart2.Series[4].AddXY(xm[1,i],g6);
// form2.Chart2.Series[5].AddXY(s,g7);

end;

l12:=x1/(1-x1)/x2*(1-x2);
 showmessage('X_экс='+floattostr(x1)+' X_мод='+floattostr(x2)+
' L12='+floattostr(l12));
 form3.UR.RowCount:=7;
 form3.UR.cells[1,6]:=floattostr(x1);
 form3.UR.cells[2,6]:=floattostr(x2);
 form3.UR.cells[0,6]:=floattostr(l12);


//????
x1_e:=minx;//точка минимума по эксперименту

//точка минимума по модели
form2.Chart1.Series[2].clear;
form2.Chart1.Series[2].title:='T(xm)_m';
fmin:=10000;minx:=-1;
K:=form1.fn.Value;
h:=1/k;
s:=0;
for i:=1 to k-1 do
begin
 s:=s+h;
 g3:=fx1_(s);
 if fmin>g3 then begin
   fmin:=g3;
   minx:=s;
 end;
 form2.Chart1.Series[2].addxy(s,g3);
end;
showmessage('Мод. Xmin='+floattostr(minx)+' Tmin='+floattostr(fmin));
x1_m:=minx;//точка минимума по модели
lambda12:=x1_e/(1-x1_e)*(1-x1_m)/x1_m;
//lambda12:=etta2/etta1;
showmessage('lambda='+floattostr(lambda12));

 form3.UR.RowCount:=6;form3.UR.colcount:=5;
 form3.UR.cells[1,5]:=floattostr(x1_e);
 form3.UR.cells[2,5]:=floattostr(x1_m);
 form3.UR.cells[0,5]:=floattostr(lambda12);
 form3.UR.cells[3,5]:=floattostr(etta1);
 form3.UR.cells[4,5]:=floattostr(etta2);

//пересчет в экспериментальные мольные доли
// h10:=h1/l1;h20:=h2/l2;t10:=t1;t20:=t2;        //???
  form3.RT.ColCount:=13;
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
  form3.RT.cells[10,0]:='M(z)';
  form3.RT.cells[11,0]:='H0';
  form3.RT.cells[12,0]:='HL';
  form2.Chart1.series[3].clear;form2.Chart1.series[3].title:='T(z1)эфф.';
  form2.Chart1.series[4].clear;form2.Chart1.series[4].title:='T(x1)экс.';
  form2.Chart1.series[5].clear;form2.Chart1.series[5].title:='T(q1)вес.';
  fmin:=1000;minx:=-1;minz:=-1;minq:=-1;
  for i:=2 to k-1 do begin
z1:=i*h;z2:=(1-z1);
//экспериментальные мольные доли
x1:=z1/(z1+z2/lambda12);
x2:=z2/(z2+z1*lambda12);
//весовые доли
q1:=x1/(x1+(m2)/(m1)*x2);
q2:=x2/(x2+(m1)/(m2)*x1);
//q1:=x1/(x1+m2/m1*x2);
//q2:=x2/(x2+m1/m2*x1);
Hh :=m1*q1+m2*q2;
hh1:=z1*h1+z2*h2;
hh2:=z1*h10+z2*h20;
ffz1:=fx1_(z1);
if fmin>ffz1 then begin
   fmin:=ffz1;
   minx:=x1;   minz:=z1;   minq:=q1;
 end;
form2.Chart1.series[3].AddXY(z1,ffz1); //-kelvin
form2.Chart1.series[4].AddXY(x1,ffz1);
form2.Chart1.series[5].AddXY(q1,ffz1);
 form3.RT.cells[1,i]:=floattostr(Z1);
 form3.RT.cells[2,i]:=floattostr(Z2);
 form3.RT.cells[3,i]:=floattostr(ffz1);
 form3.RT.cells[4,i]:=floattostr(x1);
 form3.RT.cells[5,i]:=floattostr(x2);
 form3.RT.cells[6,i]:=floattostr(ffx1);
 form3.RT.cells[7,i]:=floattostr(q1);
 form3.RT.cells[8,i]:=floattostr(q2);
 form3.RT.cells[9,i]:=floattostr(ffq1);
 form3.RT.cells[10,i]:=floattostr(Hh);
 form3.RT.cells[11,i]:=floattostr(hh1);
 form3.RT.cells[12,i]:=floattostr(hh2);
end;
 showmessage('Мод. Tmin='+floattostr(ffz1)+
 ' X_эфф='+floattostr(minz)+
 ' X_эсп='+floattostr(minx)+
 ' X_масс='+floattostr(minq)
 );
//находим А, В по модели Ван-Лаара
 p10:=exp(a10-b10/(c10+T10));
 p20:=exp(a20-b20/(c20+T20));
 a1:=log10(p10/p20)/(2*minz-1);
 b1:=a1;
  s:=0;
 form2.Chart2.Series[0].clear;form2.Chart2.Series[0].title:='ln(G1)m';
 form2.Chart2.Series[1].clear;form2.Chart2.Series[1].title:='ln(G2)m';
 form2.Chart2.Series[2].clear;form2.Chart2.Series[2].title:='Lg(G1/G2)мод.';
 form2.Chart5.Series[2].clear;form2.Chart5.Series[2].title:='GE_m';
     form2.Chart1.Title.Text.Clear;
    form2.Chart1.Title.Text.Add(name1+'-'+name2);
    form2.Chart1.LeftAxis.Title.Caption:='T, K';
    form2.Chart1.BottomAxis.Title.Caption:='доли 1-го компонента';
form2.Chart1.Series[6].clear;form2.Chart1.Series[6].Title:='T(эфф.м.д.)';
form2.Chart1.Series[7].clear;form2.Chart1.Series[7].Title:='Т(эксп.м.д.)';
form2.Chart1.Series[8].clear;form2.Chart1.Series[8].Title:='Т(масс.д.)';
form2.Chart1.Series[9].clear;form2.Chart1.Series[9].Title:='Тm';
 l12:=lambda12;
 find(l1,l2,l12);
//h10:=h1_/l1;h20:=h2_/l2;
x1_:=1;x2_:=1; w1_:=1;w2_:=1;q1_:=1;q2_:=1;
 for i:=1 to k-1 do begin
    z1:=i*h; s:=z1;
    //s:=z1/(z1+l12*(1-z1));
   // s:=xm[1,i]/(xm[1,i]+lambda12*(1-xm[1,i]));
    g1:=power(10,a1*sqr(1-s));// gamma1
    g2:=power(10,a1*sqr(s)); // gamma2
    t12:=fx1_(z1);
    lnx1:=h10/r/t10*(1-t10/t12)-ln(g1);
    lnx2:=h20/r/t20*(1-t20/t12)-ln(g2);
    form2.Chart2.Series[0].addxy(s,ln(g1));
    form2.Chart2.Series[1].addxy(s,ln(g2));
    try
    form2.Chart2.Series[2].addxy(s,log10(g1/g2));
    except

    end;
    ge:=s*ln(g1)+(1-s)*ln(g2);//избыточная энергия Гиббса
    form2.Chart5.Series[2].addxy(s,ge);
    w1:=exp(lnx1);  //левая ветвь
    w2:=exp(lnx2);  //правая ветвь
    form2.Chart1.Series[9].AddXY(w1,t12);
    if w1>w1_ then
    form2.Chart1.Series[6].AddXY(w1,t12);
    if w2>w2_ then
    form2.Chart1.Series[6].AddXY(1-w2,t12);
    w1_:=w1;w2_:=w2;
    if abs(w1-(1-w2))<=minx then begin
    minx:=abs(w1-(1-w2));
    g0:=w1;
    tg:=t12;
    end;

    //экспериментальные мольные доли
    x1:=w1/(w1+(1-w1)/l12);
    x2:=w2/((1-w2)/l12+w2);
    if x1>x1_ then
    form2.Chart1.Series[7].AddXY(x1,t12);
    if x2>x2_ then
    form2.Chart1.Series[7].AddXY(1-x2,t12);
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
    form2.Chart1.Series[9].AddXY(q1,t12);
   if q2>q2_ then
    form2.Chart1.Series[10].AddXY(1-q2,t12);
    q1_:=q1;q2_:=q2;
    if abs(q1-(1-q2))<=minx2 then begin
    minx2:=abs(q1-(1-q2));
    g2:=q1;
    tg2:=t12;
    end;
end;
showmessage('zmin='+floattostr(g0)+' Tmin='+floattostr(tg)+#13+
'xmin='+floattostr(g1)+' Tmin='+floattostr(tg1)+#13+
'qmin='+floattostr(g2)+' Tmin='+floattostr(tg2));

form3.PageControl1.ActivePageIndex:=2;
form2.PageControl1.ActivePageIndex:=1;

form2.Show;
form3.Show;

exit;

//form2.Chart1.Series[0].Title:='T1(xm)_эксп';
//form2.Chart1.Series[1].Title:='T2(xm)_эксп';

form2.Chart1.Series[0].Title:='T(xm)_exp';
form2.Chart2.Series[4].clear;
for i:=1 to N do
form2.Chart2.Series[4].addxy(xm[1,i],log10(G[1,i]/g[2,i]));
showmessage('Эксп. Xmin='+floattostr(minx)+' Tmin='+floattostr(fmin));

setlength(p1,n);
setlength(p2,n);
//
form2.Chart1.Series[1].Title:='T(xm)_rec';
polynrecurs(xm[1],t[3],N,3,p1,r2);
fminr:=10000;minxr:=-1;
for i:=1 to 100 do
begin
   s:=i/100;
   g1:= fr3(s,p1,3);
   if fminr>g1 then begin
        fminr:=g1;
        minxr:=s;
   end;
   form2.Chart1.Series[1].addxy(s,g1);
end;
showmessage('После регрессии: Эксп. Xmin='+floattostr(minxr)+' Tmin='+floattostr(fminr));

//до этого места идет

form3.RG.ColCount:=13;
form3.RG.RowCount:=n+1;
form3.RG.Cells[0,0]:='i';
form3.RG.Cells[1,0]:='X1m';
form3.RG.Cells[2,0]:='X2m';
form3.RG.Cells[3,0]:='Ln1';
form3.RG.Cells[4,0]:='Ln2';
form3.RG.Cells[5,0]:='T1';
form3.RG.Cells[6,0]:='T2';
form3.RG.Cells[7,0]:='X1v';
form3.RG.Cells[8,0]:='X2v';
form3.RG.Cells[9,0]:='Gamma1';
form3.RG.Cells[10,0]:='Gamma2';
form3.RG.Cells[11,0]:='Ln(G1)';
form3.RG.Cells[12,0]:='Ln(G2)';
form3.RG.Cells[13,0]:='Y1v';
form3.RG.Cells[14,0]:='Y2v';
form3.RG.Cells[15,0]:='Y1m';
form3.RG.Cells[16,0]:='Y2m';

for i:=1 to n do begin
form3.RG.Cells[0,i]:=inttostr(i);
form3.RG.Cells[1,i]:=floattostr(xm[1,i]);
form3.RG.Cells[2,i]:=floattostr(xm[2,i]);
form3.RG.Cells[3,i]:=floattostr(tl[1,i]);
form3.RG.Cells[4,i]:=floattostr(tl[2,i]);
form3.RG.Cells[5,i]:=floattostr(t[1,i]);
form3.RG.Cells[6,i]:=floattostr(t[2,i]);
form3.RG.Cells[7,i]:=floattostr(xv[1,i]);
form3.RG.Cells[8,i]:=floattostr(xv[2,i]);
form3.RG.Cells[9,i]:=floattostr(g[1,i]);
form3.RG.Cells[10,i]:=floattostr(g[2,i]);
form3.RG.Cells[11,i]:=floattostr(gl[1,i]);
form3.RG.Cells[12,i]:=floattostr(gl[2,i]);
form3.RG.Cells[13,i]:=floattostr(YM[1,i]);
form3.RG.Cells[14,i]:=floattostr(YM[2,i]);
form3.RG.Cells[15,i]:=floattostr(yv[1,i]);
form3.RG.Cells[16,i]:=floattostr(yv[2,i]);
//form2.Chart1.Series[0].AddXY(xm[1,i],t[1,i]);
//if t[2,i]=0 then form2.Chart1.Series[1].AddXY(xm[1,i],t[3,i])
//else form2.Chart1.Series[1].AddXY(xm[1,i],t[2,i]);
end;

//прогноз по 3 точкам
 form3.gh.cells[0,0]:='№';
 form3.gh.cells[0,1]:='1';
 form3.gh.cells[0,2]:='2';
 form3.gh.cells[1,0]:='a0';
 form3.gh.cells[2,0]:='a1';
 form3.gh.cells[3,0]:='R1';
 form3.gh.cells[4,0]:='b0';
 form3.gh.cells[5,0]:='b1';
 form3.gh.cells[6,0]:='R2';
 form3.gh.cells[7,0]:='H0';
 form3.gh.cells[8,0]:='T,K';
 form3.gh.cells[9,0]:='T,C';
 form3.gh.cells[10,0]:='etta';
 form3.gh.rowcount:=3;
 form3.gh.colcount:=12;
k:=table3.RecordCount;
setlength(z[1],k+1);
setlength(z[2],k+1);

 //  table3.First;
   for i:=1 to 3 do begin
   z[2,i]:=ln(xm[1,i]);//Table3X1mol.Value);
   z[1,i]:=1000/t[3,i];//(Table3T1k.value);
//   table3.next;
   end;
   polynrecurs(z[1],z[2],3,2,p1,r1);
   polynrecurs(z[2],z[1],3,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   H1_:=a1*r*1000;h10:=abs(h1_);
   T1:=1000/b0;
   form3.gh.cells[1,1]:=floattostr(a0);
   form3.gh.cells[2,1]:=floattostr(a1);
   form3.gh.cells[3,1]:=floattostr(r1);
   form3.gh.cells[4,1]:=floattostr(b0);
   form3.gh.cells[5,1]:=floattostr(b1);
   form3.gh.cells[6,1]:=floattostr(r2);
   form3.gh.cells[7,1]:=floattostr(h1_);
   form3.gh.cells[8,1]:=floattostr(t1);
   form3.gh.cells[9,1]:=floattostr(t1-kelvin);
   j:=1;
  // table3.last;
   for i:=n downto n-2 do begin
   z[2,j]:=ln(xm[2,i]);//Table3X2mol.value);
   z[1,j]:=1000/t[3,i];//Table3T2k.value;
//   table3.Prior;
   j:=j+1;
   end;
   polynrecurs(z[1],z[2],3,2,p1,r1);
   polynrecurs(z[2],z[1],3,2,p2,r2);
   a0:=p1[1];a1:=p1[2];
   b0:=p2[1];b1:=p2[2];
   T2:=1000/b0;
   H2_:=a1*r*1000; h20:=abs(h2_);
   etta1:=H10/H1;etta2:=H20/H2;
   form3.gh.cells[1,2]:=floattostr(a0);
   form3.gh.cells[2,2]:=floattostr(a1);
   form3.gh.cells[3,2]:=floattostr(r1);
   form3.gh.cells[4,2]:=floattostr(b0);
   form3.gh.cells[5,2]:=floattostr(b1);
   form3.gh.cells[6,2]:=floattostr(r2);
   form3.gh.cells[7,2]:=floattostr(h2_);
   form3.gh.cells[8,2]:=floattostr(t2);
   form3.gh.cells[9,2]:=floattostr(t2-kelvin);
   form3.gh.cells[10,1]:=floattostr(etta1);
   form3.gh.cells[10,2]:=floattostr(etta2);

   //прогноз по k точкам
k:=3;nk:=k+n;
//1:
//левая ветвь ликвидуса
setlength(z[1],k+1);
setlength(z[2],k+1);
for i:=1 to k do begin
  z[1,i]:=1000/t[1,i];
  z[2,i]:=gl[1,i];
end;
//рекурсия для Т
polynrecurs(z[1],z[2],k,2,p1,r1);
a0:=p1[1];a1:=p1[2];
k:=k-1;
if (abs(r2)>1) and (k>1) then goto 1;
if (abs(r1)>1)and (k=1) then begin
showmessage('Линейная регрессия не удовлетворяет условиям!');
end;

 form3.UR.cells[1,4]:=inttostr(k+1);

 k:=3;//количество точек
//2:
//правая ветвь ликвидуса
setlength(z[3],k+1);
setlength(z[4],k+1);
for i:=1 to k do begin
 try
  z[3,i]:=1000/t[2,n-i+1];
 except
   z[3,i]:=1000/t[3,n-i+1];
 end;
  z[4,i]:=gl[2,n-i+1];
end;
//рекурсия для Т
polynrecurs(z[3],z[4],k,2,p1,r2);
b0:=p1[1];b1:=p1[2];
k:=k-1;
if (abs(r2)>1)and (k>1) then goto 2;
if (abs(r2)>1)and (k=1) then begin
showmessage('Линейная регрессия не удовлетворяет условиям!');
end;

//энтальпия смешения при бесконечном разбавлении
H2_:=1000*a1*R;
H1_:=1000*b1*R;
H10:=abs(H1_);
H20:=abs(H2_);
etta1:=H10/H1;etta2:=H20/H2;
 form3.UR.cells[0,0]:='H_';
 form3.UR.cells[0,1]:='a0';
 form3.UR.cells[0,2]:='a1';
 form3.UR.cells[0,3]:='R';
 form3.UR.cells[0,4]:='k';
 form3.UR.cells[1,1]:=floattostr(a0);
 form3.UR.cells[1,2]:=floattostr(a1);
 form3.UR.cells[1,3]:=floattostr(r1);
 form3.UR.cells[1,0]:=floattostr(H1_);
 form3.UR.cells[2,1]:=floattostr(b0);
 form3.UR.cells[2,2]:=floattostr(b1);
 form3.UR.cells[2,3]:=floattostr(r2);
 form3.UR.cells[2,0]:=floattostr(H2_);
 form3.UR.cells[1,4]:=floattostr(etta1);
 form3.UR.cells[2,4]:=floattostr(etta2);
// form3.UR.cells[2,4]:=inttostr(k+1);

 form2.Chart4.Series[0].Clear;form2.Chart4.Series[0].title:='Ln(G1_t)';
 form2.Chart4.Series[1].Clear;form2.Chart4.Series[1].title:='Ln(G2_t)';
 form2.Chart4.Series[2].Clear;form2.Chart4.Series[2].title:='Ln(G1_m)';
 form2.Chart4.Series[3].Clear;form2.Chart4.Series[3].title:='Ln(G2_m)';

 form3.VD.RowCount:=N+1;
 form3.VD.Cells[0,0]:='i';
 form3.VD.Cells[1,0]:='X1';
 form3.VD.Cells[3,0]:='T(X1)';
 form3.VD.Cells[2,0]:='X2';
 form3.VD.Cells[4,0]:='T(X2)';
 //? как вывести ветви правильно
 s1:=1000/t[3,n];
 for i:=1 to 3 do begin
 s:=1000/t[3,i];
 g1:=a0+a1*s;
 g2:=b0+b1*s;
 form3.VD.Cells[1,0]:=floattostr(s);
 form3.VD.Cells[3,0]:=floattostr(gl[1,i]);
 form3.VD.Cells[4,0]:=floattostr(gl[2,i]);
 form3.VD.Cells[5,0]:=floattostr(a0+a1*s);
 form3.VD.Cells[6,0]:=floattostr(b0+b1*s);
 form2.Chart4.Series[0].addxy(s,gl[1,i]);
 form2.Chart4.Series[1].addxy(s1-s,gl[2,i]);
 form2.Chart4.Series[2].addxy(s,g1);
 form2.Chart4.Series[3].addxy(s1-s,g2);
 end;


x1_e:=minx;//точка минимума по эксперименту

//точка минимума по модели
form2.Chart1.Series[2].clear;
form2.Chart1.Series[2].title:='T(xm)_m';
fmin:=10000;minx:=-1;
K:=form1.fn.Value;
h:=1/k;
s:=0;
for i:=1 to k-1 do
begin
 s:=s+h;
 g3:=fx1_(s);
 if fmin>g3 then begin
   fmin:=g3;
   minx:=s;
 end;
 form2.Chart1.Series[2].addxy(s,g3);
end;
showmessage('Мод. Xmin='+floattostr(minx)+' Tmin='+floattostr(fmin));
x1_m:=minx;//точка минимума по модели
lambda12:=x1_e/(1-x1_e)*(1-x1_m)/x1_m;
//lambda12:=etta2/etta1;
showmessage('lambda='+floattostr(lambda12));

 form3.UR.RowCount:=6;form3.UR.colcount:=5;
 form3.UR.cells[1,5]:=floattostr(x1_e);
 form3.UR.cells[2,5]:=floattostr(x1_m);
 form3.UR.cells[0,5]:=floattostr(lambda12);
 form3.UR.cells[3,5]:=floattostr(etta1);
 form3.UR.cells[4,5]:=floattostr(etta2);

//пересчет в экспериментальные мольные доли
// h10:=h1/l1;h20:=h2/l2;t10:=t1;t20:=t2;        //???
  form3.RT.ColCount:=13;
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
  form3.RT.cells[10,0]:='M(z)';
  form3.RT.cells[11,0]:='H0';
  form3.RT.cells[12,0]:='HL';
  form2.Chart1.series[3].clear;form2.Chart1.series[3].title:='T(z1)эфф.';
  form2.Chart1.series[4].clear;form2.Chart1.series[4].title:='T(x1)экс.';
  form2.Chart1.series[5].clear;form2.Chart1.series[5].title:='T(q1)вес.';
  fmin:=1000;minx:=-1;minz:=-1;minq:=-1;
  for i:=2 to k-1 do begin
z1:=i*h;z2:=(1-z1);
//экспериментальные мольные доли
x1:=z1/(z1+z2/lambda12);
x2:=z2/(z2+z1*lambda12);
//весовые доли
q1:=x1/(x1+(m2)/(m1)*x2);
q2:=x2/(x2+(m1)/(m2)*x1);
//q1:=x1/(x1+m2/m1*x2);
//q2:=x2/(x2+m1/m2*x1);
Hh :=m1*q1+m2*q2;
hh1:=z1*h1+z2*h2;
hh2:=z1*h10+z2*h20;
ffz1:=fx1_(z1);
if fmin>ffz1 then begin
   fmin:=ffz1;
   minx:=x1;   minz:=z1;   minq:=q1;
 end;
form2.Chart1.series[3].AddXY(z1,ffz1); //-kelvin
form2.Chart1.series[4].AddXY(x1,ffz1);
form2.Chart1.series[5].AddXY(q1,ffz1);
 form3.RT.cells[1,i]:=floattostr(Z1);
 form3.RT.cells[2,i]:=floattostr(Z2);
 form3.RT.cells[3,i]:=floattostr(ffz1);
 form3.RT.cells[4,i]:=floattostr(x1);
 form3.RT.cells[5,i]:=floattostr(x2);
 form3.RT.cells[6,i]:=floattostr(ffx1);
 form3.RT.cells[7,i]:=floattostr(q1);
 form3.RT.cells[8,i]:=floattostr(q2);
 form3.RT.cells[9,i]:=floattostr(ffq1);
 form3.RT.cells[10,i]:=floattostr(Hh);
 form3.RT.cells[11,i]:=floattostr(hh1);
 form3.RT.cells[12,i]:=floattostr(hh2);
end;
 showmessage('Мод. Tmin='+floattostr(ffz1)+
 ' X_эфф='+floattostr(minz)+
 ' X_эсп='+floattostr(minx)+
 ' X_масс='+floattostr(minq)
 );

}
end;

procedure TForm4.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var t:tdbgrid;
  n,m,i,j:integer;
  f:TextFile;
  begin
if key=113 then begin   //save - F2
t:=sender as tdbgrid;
assignfile(f,'dbgrid.txt');rewrite(f);
m:=t.Columns.Count;
n:=t.DataSource.DataSet.RecordCount;
t.DataSource.DataSet.First;
for j:=1 to m do
    write(f,chr(9),t.DataSource.DataSet.fields[j-1].FieldName);
writeln(f);
for i:=1 to n do
begin
if t.SelectedRows.CurrentRowSelected then begin
   for j:=1 to m do
    write(f,chr(9),t.DataSource.DataSet.fields[j-1].asstring);
   writeln(f);
end;
   t.DataSource.DataSet.next;
end;
closefile(f);
end;

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

procedure TForm4.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
old:string;
flag:boolean;
n,i,j,k,i0,nn:integer;
r1,z1,hh1,hh2,h1_,h2_,x1,t0,hhe,ve1_0,ve2_0,v1_,v2_,
asd,g0,epss,zmin2,r0,g1,s1,l12,l1,l2,v1,v2,ve0,tcu,
betta,betta1,betta2,n12,n1,n2,lng1,lng2,gg1,gg2,z_az,g2,p_az,
e,c,d,zmin1,z2,lgg12,s2,gamma1,gamma2,lg10,y1,p_s,lg1,lg2:Myreal;
d_,t,tt,ve,a:masd;
a_,b_:array[1..4]of masd;
v,g,gl,z:array[1..2]of masd;
   tb:tdbgrid;
  m:integer;
  f:TextFile;
  begin
if key=113 then begin   //save - F2
tb:=sender as tdbgrid;
assignfile(f,'dbgrid.txt');rewrite(f);
m:=tb.Columns.Count;
n:=tb.DataSource.DataSet.RecordCount;
tb.DataSource.DataSet.First;
for i:=1 to n do
begin
   write(f,i);
   for j:=1 to m do
    write(f,chr(9),tb.DataSource.DataSet.fields[j-1].asstring);
   writeln(f);
   tb.DataSource.DataSet.next;
end;
closefile(f);
end;
  //form4.caption:=inttostr(key);
//f3 - расчет по выделенным строкам коэффициентов D[n,k]
//f4 - расчет по выделенным строкам коэффициентов A[n,k]
if key=114 then begin
 k:=dbgrid2.SelectedRows.Count; n:=k;
 setlength(a_[1],k+1); setlength(a_[2],k+1); setlength(a_[3],k+1);
 setlength(b_[1],5); setlength(b_[2],5); setlength(b_[3],5);
 setlength(d_,4);
 setlength(t,k+1); setlength(tt,k+1);
 tcu:=strtofloat(inputbox('Ввод данных','Введите температуру в C',floattostr(0.5)));
 t0:=tcu+kelvin;

 table2.first;
 for i:=1 to table2.RecordCount do begin
  if dbgrid2.SelectedRows.CurrentRowSelected and (k>0) then begin
  try
   i0:=Table2Id.Value;
   t[k]:=Table2TC_cmecu.Value;
   a_[1,k]:=Table2A1.Value;
   a_[2,k]:=Table2A2.Value;
   a_[3,k]:=Table2A3.Value;
   k:=k-1;
  except
   showmessage('Нет данных по TC_cmecu или А1,А2,А3!');
   exit;
  end;
  end;
  table2.next;
  if k=0 then break;
 end;

form3.ur.RowCount:=n+1;
form3.ur.ColCount:=4;
for i:=1 to n do begin
 form3.ur.cells[0,i]:=floattostr(t[i]);
 form3.ur.cells[1,i]:=floattostr(a_[1,i]);
 form3.ur.cells[2,i]:=floattostr(a_[2,i]);
 form3.ur.cells[3,i]:=floattostr(a_[3,i]);
// z[i]:=1000/(z[i]+kelvin);
  tt[i]:=1/(t[i]+kelvin);
end;
 form3.rt.RowCount:=9;
 form3.rt.colCount:=4;
 polynrecurs(tt,a_[1],n,4,b_[1],r1);form3.RT.cells[1,5]:=floattostr(r1);
 polynrecurs(tt,a_[2],n,4,b_[2],r1);form3.RT.cells[2,5]:=floattostr(r1);
 polynrecurs(tt,a_[3],n,4,b_[3],r1);form3.RT.cells[3,5]:=floattostr(r1);
 for i:=1 to 3 do form3.RT.cells[i,0]:=inttostr(i);
 for j:=1 to 4 do form3.RT.cells[0,j]:=inttostr(j);
 form3.RT.cells[0,5]:='R';
 form3.RT.cells[0,6]:='Dn(T)';
 for i:=1 to 3 do begin
 for j:=1 to 4 do
 form3.RT.cells[i,j]:=floattostr(b_[i,j]);
 end;
 z1:=1/t0;
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
  form2.Chart11.Series[1].clear;  form2.Chart11.Series[1].tag:=2;
  form2.Chart11.Series[2].clear;  form2.Chart11.Series[2].tag:=3;
  form2.Chart11.Series[0].clear; form2.Chart11.Series[0].tag:=1;

 //парциальная избыточная энтальпия
 for i:=1 to n-1 do begin
 x1:=i*h;
 hhe:=fr_k(x1,d_[1],d_[2],d_[3]);
 hh1:=sqr(1-x1)*(d_[1]+d_[2]*(4*x1-1)+d_[3]*(6*x1-1)*(2*x1-1));
 hh2:=sqr(x1)*(d_[1]+d_[2]*(4*x1-3)+d_[3]*(6*x1-5)*(2*x1-1));
 form3.GH.cells[1,i]:=floattostr(x1);
 form3.GH.cells[2,i]:=floattostr(1-x1);
 form3.GH.cells[3,i]:=floattostr(hh1);
 form3.GH.cells[4,i]:=floattostr(hh2);
 form3.GH.cells[5,i]:=floattostr(hhe);
 form2.Chart11.Series[2].Addxy(x1,hhe);
 form2.Chart11.Series[0].Addxy(x1,hh1);
 form2.Chart11.Series[1].Addxy(x1,hh2);
 end;
form3.GH.RowCount:=n;
form3.Gh.ColCount:=6;
form3.PageControl1.ActivePageIndex:=4;
form3.Show;
form2.PageControl1.ActivePageIndex:=11;
form2.Show;
end;
if key=115 then begin//f4
 k:=dbgrid2.SelectedRows.Count; n:=k;
 setlength(a_[1],k+1); setlength(a_[2],k+1); setlength(a_[3],k+1);
 setlength(b_[1],5); setlength(b_[2],5); setlength(b_[3],5);
 setlength(d_,4);
 setlength(t,k+1); setlength(tt,k+1);
 tcu:=strtofloat(inputbox('Ввод данных','Введите температуру в C',floattostr(0.5)));
 t0:=tcu+kelvin;
 table2.first;
 for i:=1 to table2.RecordCount do begin
  if dbgrid2.SelectedRows.CurrentRowSelected and (k>0) then begin
  try
   i0:=Table2Id.Value;
   i1:=Table2Id_Name.Value;
   i2:=Table2Id_Names.Value;
   t[k]:=Table2TC_cmecu.Value;
   a_[1,k]:=Table2A1.Value;
   a_[2,k]:=Table2A2.Value;
   a_[3,k]:=Table2A3.Value;
   k:=k-1;
  except
   showmessage('Нет данных по TC_cmecu или А1,А2,А3!');
   exit;
  end;
  end;
  table2.next;
  if k=0 then break;
 end;
old:=table2.Bookmark;
//Table2.FindKey([i0]);
//i1:=Table2Id_Name.Value;
//i2:=Table2Id_Names.Value;
table1.FindKey([i1]);
a10:=Table1A_ant.Value;
b10:=Table1B_ant.Value;
c10:=Table1C_ant.Value;
h1:=Table1Teplota.AsFloat;
m1:=Table1MolMassa.AsFloat;
TK1:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i2]);
a20:=Table1A_ant.Value;
b20:=Table1B_ant.Value;
c20:=Table1C_ant.Value;
h2:=Table1Teplota.AsFloat;
m2:=Table1MolMassa.AsFloat;
TK2:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i1]);
table2.Bookmark:=old;
if not table2.Locate('id_Names;TC_cmecu', VarArrayOf([i2,tcu]),[loPartialKey]) then
begin
 table2.Insert;
 Table2Id_Name.Value:=i1;
 Table2Id_Names.Value:=i2;
 Table2TC_cmecu.Value:=tcu;
 table2.Post;
end;
form3.ur.RowCount:=n+1;
form3.ur.ColCount:=4;
for i:=1 to n do begin
 form3.ur.cells[0,i]:=floattostr(t[i]);
 form3.ur.cells[1,i]:=floattostr(a_[1,i]);
 form3.ur.cells[2,i]:=floattostr(a_[2,i]);
 form3.ur.cells[3,i]:=floattostr(a_[3,i]);
// z[i]:=1000/(z[i]+kelvin);
  tt[i]:=1/(t[i]+kelvin);
end;
 form3.rt.RowCount:=9;
 form3.rt.colCount:=4;
 polynrecurs(tt,a_[1],n,4,b_[1],r1);form3.RT.cells[1,5]:=floattostr(r1);
 polynrecurs(tt,a_[2],n,4,b_[2],r1);form3.RT.cells[2,5]:=floattostr(r1);
 polynrecurs(tt,a_[3],n,4,b_[3],r1);form3.RT.cells[3,5]:=floattostr(r1);
 for i:=1 to 3 do form3.RT.cells[i,0]:=inttostr(i);
 for j:=1 to 4 do form3.RT.cells[0,j]:=inttostr(j);
 form3.RT.cells[0,5]:='R';
 form3.RT.cells[0,6]:='An(T)';
 for i:=1 to 3 do begin
 for j:=1 to 4 do
 form3.RT.cells[i,j]:=floattostr(b_[i,j]);
 end;
 t1:=1/t0;
 for i:=1 to 3 do begin
 d_[i]:=fr3(t1,b_[i],4);
 form3.RT.cells[i,6]:=floattostr(d_[i]);
 end;
 ve1_0:=d_[1]-d_[2]+d_[3];//избыточный объем на краях
 ve2_0:=d_[1]+d_[2]+d_[3];
  form3.rt.cells[0,7]:='V1_E';
  form3.rt.cells[1,7]:=floattostr(ve1_0);
  form3.rt.cells[0,8]:='V2_E';
  form3.rt.cells[1,8]:=floattostr(ve2_0);

 n:=form1.Fn.value;
 h:=1/n;
  form2.Chart7.Series[1].clear;  form2.Chart7.Series[1].tag:=2;
  form2.Chart7.Series[2].clear;  form2.Chart7.Series[2].tag:=3;
  form2.Chart7.Series[0].clear; form2.Chart7.Series[0].tag:=1;
  form2.Chart2.Series[1].clear;  form2.Chart2.Series[1].tag:=2;
  form2.Chart2.Series[2].clear;  form2.Chart2.Series[2].tag:=3;
  form2.Chart2.Series[0].clear; form2.Chart2.Series[0].tag:=1;

 //избыточный объем
 a1:=d_[1];a2:=d_[2];a3:=d_[3];
//расчет давления
p1_0:=exp(a10-b10/(c10+t0))*Pascual/1000; //уравнение Антуана
p2_0:=exp(a20-b20/(c20+t0))*Pascual/1000; //перевод из мм рт.ст. в kПаскаль
table2.Edit;
Table2P1_0.Value:=p1_0*1000 ;
Table2P2_0.Value:=p2_0*1000 ;
Table2VE1_0.Value:=ve1_0 ;
Table2Ve2_0.Value:=ve2_0 ;
Table2A1.Value:=d_[1];
Table2A2.Value:=d_[2];
Table2A3.Value:=d_[3];
table2.Post;
setlength(ve,n+1); setlength(v[1],n+1); setlength(v[2],n+1);
setlength(z[1],n+1); setlength(z[2],n+1);setlength(g[1],n+1);
setlength(g[2],n+1);setlength(gl[1],n+1);setlength(gl[2],n+1);
form3.GV.RowCount:=n;
form3.GV.ColCount:=6;
form3.ts.RowCount:=n;
form3.ts.ColCount:=6;
 for i:=1 to n-1 do begin
 try
 x1:=i*h; z[1,i]:=x1;z[2,i]:=1-x1;
 ve[i]:=fr_k(x1,d_[1],d_[2],d_[3]);
 v[1,i]:=sqr(1-x1)*(d_[1]+d_[2]*(4*x1-1)+d_[3]*(6*x1-1)*(2*x1-1));
 v[2,i]:=sqr(x1)*(d_[1]+d_[2]*(4*x1-3)+d_[3]*(6*x1-5)*(2*x1-1));
 g[1,i]:=p2_0*v[1,i]/p1_0/ve[i];
 g[2,i]:=p1_0*v[2,i]/p2_0/ve[i];
 gl[1,i]:=math.Log10(g[1,i]/g[2,i]);
 except
  n:=i;
  break;
 end;
 form3.GV.cells[1,i]:=floattostr(x1);
 form3.GV.cells[2,i]:=floattostr(1-x1);
 form3.GV.cells[3,i]:=floattostr(v[1,i]);
 form3.GV.cells[4,i]:=floattostr(v[2,i]);
 form3.GV.cells[5,i]:=floattostr(ve[i]);
 form3.TS.cells[1,i]:=floattostr(x1);
 form3.TS.cells[2,i]:=floattostr(1-x1);
 form3.TS.cells[3,i]:=floattostr(G[1,i]);
 form3.TS.cells[4,i]:=floattostr(G[2,i]);
 form3.TS.cells[5,i]:=floattostr(GL[1,i]);
 form2.Chart7.Series[2].Addxy(x1,ve[i]);
 form2.Chart7.Series[0].Addxy(x1,v[1,i]);
 form2.Chart7.Series[1].Addxy(x1,v[2,i]);
 form2.Chart2.Series[2].Addxy(x1,gl[1,i]);
 form2.Chart2.Series[0].Addxy(x1,g[1,i]);
 form2.Chart2.Series[1].Addxy(x1,g[2,i]);
 end;

//термодинамическое согласование
    zmin1:=-1;
    g0:=1;flag:=true;
    for i:=1 to n-1 do begin
    z1:=z[1,i];z2:=1-z1;
    try
    lgG12:=gl[1,i];
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
  end;
  showmessage('до согласования: zmin='+floattostr(zmin1));
//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
    form3.UR.rowcount:=form3.UR.rowcount+1;
    nn:=form3.UR.rowcount-1;
    form3.UR.colcount:=6;
    form3.UR.Cells[1,0]:='a0';
    form3.UR.Cells[2,0]:='a1';
    form3.UR.Cells[3,0]:='a2';
    form3.UR.Cells[4,0]:='a3';
    form3.UR.Cells[5,0]:='r';
    form3.UR.Cells[1,nn]:=format('%8.6f',[a[1]]);
    form3.UR.Cells[2,nn]:=format('%8.6f',[a[2]]);
    form3.UR.Cells[3,nn]:=format('%8.6f',[a[3]]);
    form3.UR.Cells[4,nn]:=format('%8.6f',[a[4]]);
    form3.UR.Cells[5,nn]:=format('%8.6f',[r1]);
    z1:=zmin1;r1:=1;
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
 if (abs(r1)<=epss*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
  showmessage('поправка после согласования='+floattostr(g1)+chr(13)+
  ' s1='+floattostr(s1)+' s2='+floattostr(s2)+chr(13)+
  ' |s1-s2|='+floattostr(r1)+ ' zmin='+floattostr(zmin2));
l12:=zmin1/(1-zmin1)*zmin2/(1-zmin2);
find(l1,l2,l12);
table2.edit;
Table2Lambda1_az.Value:=l1;
Table2Lambda2_az.Value:=l2;
Table2Lambda12_az.Value:=l12;
table2.post;
betta:=power(10,g1);
betta1:=1; betta2:=betta/betta1;
  showmessage('lambda12='+floattostr(l12)+' betta='+floattostr(betta)+
  ' betta1='+floattostr(betta1)+' betta2='+floattostr(betta2)+chr(13));
n12:=l12/betta;
find(n1,n2,n12);
showmessage('n1/n2='+floattostr(n12)+' n1='+floattostr(n1)+
  ' n2='+floattostr(n2));
//согласованные gamma1, gamma2, lg gamma1/gamma2
   for i:=1 to n-1 do begin
   gl[2,i]:=gl[1,i]-g1;
   g[1,i]:=g[1,i]/betta1;
   g[2,i]:=g[2,i]*betta2;
   z[2,i]:=z[1,i]/(z[1,i]+l12*(1-z[1,i]));
   end;

//проверка после согласования
 r1:=1;
 s1:=0;s2:=0;
 lng1:=ln(g[1,1]);
 lng2:=ln(g[2,1]);
 gg1:=exp(lng1);gg2:=exp(lng2);
 lgg12:=log10(gg1/gg2);
 for i:=2 to n-1 do
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

  showmessage('проверка согласования:'+
  ' s1='+floattostr(s1)+' s2='+floattostr(s2)+chr(13)+
  ' |s1-s2|='+floattostr(r1));

 if (abs(r1)>=epss*5)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;

    form2.Chart2.Series[3].clear;
    form2.Chart2.Series[4].clear;
    form2.Chart2.Series[5].clear;
    form2.Chart2.Series[6].clear;
    form2.Chart2.Series[3].tag:=4;
    form2.Chart2.Series[4].tag:=5;
    form2.Chart2.Series[5].tag:=6;
    form2.Chart2.Series[6].tag:=7;
    form3.ts.colcount:=11;
    form3.ts.cells[6,0]:='g1 согл';
    form3.ts.cells[7,0]:='g2 согл';
    form3.ts.cells[8,0]:='ln g1 согл';
    form3.ts.cells[9,0]:='ln g2 согл';
    form3.ts.cells[10,0]:='lg g1/g2 согл';
    form3.ts.cells[11,0]:='lg P2_0/P1_0';
    lgg12:=log10(p2_0/p1_0);
    for i:=1 to n-1 do begin
    form3.ts.cells[6,i]:=format('%8.6f',[g[1,i]]);
    form3.ts.cells[7,i]:=format('%8.6f',[g[2,i]]);
    form3.ts.cells[8,i]:=format('%8.6f',[ln(g[1,i])]);
    form3.ts.cells[9,i]:=format('%8.6f',[ln(g[2,i])]);
    form3.ts.cells[10,i]:=format('%8.6f',[gl[2,i]]);
    form3.ts.cells[11,i]:=format('%8.6f',[lgg12]);
    form2.Chart2.Series[3].AddXY(z[1,i],g[1,i]);
    form2.Chart2.Series[4].AddXY(z[1,i],g[2,i]);
    form2.Chart2.Series[5].AddXY(z[1,i],gl[2,i]);
    form2.Chart2.Series[6].AddXY(z[1,i],lgg12);
   end;
 //поиск азеотропа по пересечению lg p2_0/p1_0 и lg gamma1/gamma2 согласованные
 z_az:=-1;lgg12:=log10(p2_0/p1_0);
 flag:=gl[2,1]<lgg12; j:=1;
 for i:=2 to n-1 do
 if (flag and (gl[2,i]>lgg12))or (not flag and (gl[2,i]<lgg12)) then begin
 z_az:=z[1,i];
 j:=i; break;
 end;

if z_az=-1 then begin
showmessage('азеотроп не обнаружен!');
exit;
end;

z_az:=(lgg12-gl[2,j-1])/(gl[2,j-1]-gl[2,j])*(z[1,j-1]-z[1,j])+z[1,j-1];
z1:=z_az;
x1:=z_az/(z_az+l12*(1-z_az)); //эфф.м.д.

 v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
 v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
 ve0:=z1*v1+z2*v2;
 g1:=p2_0*v1/p1_0/ve0/betta1;
 g2:=p1_0*v2/p2_0/ve0*betta2;

p_az:=z1*g1*p1_0+(1-z1)*g2*p2_0;
lng1:=log10(p_az/p1_0);
lng2:=log10(p_az/p2_0);

showmessage('z_az='+floattostr(z1)+' x_az='+floattostr(x1)+chr(13)+
' P_az='+floattostr(p_az)+' gamma1='+floattostr(g1)+' gamma2='+floattostr(g2));


table2.Edit;
Table2X1_az.Value:=z1;
Table2P.Value:=p_az/pascual*1000;
table2.post;

//1-вариант расчета ln gamma1,2 в точке азеотропии

//расчет коэффициентов Редлиха-Кистера
c:=(lng1/2/sqr(1-z1)-lng2/2/sqr(z1));
b:=lng1/sqr(1-z1)-(3*z1-(1-z1))*c;

//расчет коэффициентов c,b по модели Ван-Лаара
    e:=sqr(lng1+lng2*(1-z1)/z1)/lng1;
    d:=sqr(lng2+lng1*z1/(1-z1))/lng2;

//построение и расчет давления смеси по разным моделям

form2.Chart8.Series[1].clear;
form2.Chart8.Series[2].clear;
form2.Chart8.Series[3].clear;
form2.Chart8.Series[4].clear;
form2.Chart8.Series[5].clear;
form2.Chart8.Series[6].clear;
form2.Chart9.Series[0].clear;
form2.Chart9.Series[1].clear;
form2.Chart9.Series[2].clear;
form2.Chart9.Series[3].clear;
form2.Chart8.Series[1].tag:=2;
form2.Chart8.Series[2].tag:=3;
form2.Chart8.Series[3].tag:=4;
form2.Chart8.Series[4].tag:=5;
form2.Chart8.Series[5].tag:=6;
form2.Chart8.Series[6].tag:=7;
form2.Chart9.Series[0].tag:=1;
form2.Chart9.Series[1].tag:=2;
form2.Chart9.Series[2].tag:=3;
form2.Chart9.Series[3].tag:=4;
    form2.Chart2.Series[7].clear;
    form2.Chart2.Series[8].clear;
    form2.Chart2.Series[9].clear;
    form2.Chart2.Series[7].tag:=8;
    form2.Chart2.Series[8].tag:=9;
    form2.Chart2.Series[9].tag:=10;
    form2.Chart8.Series[0].clear;
form2.Chart8.Series[0].tag:=1;
form2.Chart9.Series[4].clear;
form2.Chart9.Series[4].tag:=5;
form2.Chart9.Series[5].clear;
form2.Chart9.Series[5].tag:=6;
form2.Chart9.Series[6].clear;
form2.Chart9.Series[6].tag:=7;
    form3.PS.colcount:=22;
    form3.PS.rowcount:=n+1;
    form3.PS.Cells[0,0]:='i';
    form3.PS.Cells[1,0]:='x1';
    form3.PS.Cells[2,0]:='x2';
    form3.PS.Cells[3,0]:='y1_Редл.-Кист.';
    form3.PS.Cells[4,0]:='y2_Редл.-Кист.';
    form3.PS.Cells[5,0]:='gamma1_Редл.-Кист.';
    form3.PS.Cells[6,0]:='gamma2_Редл.-Кист.';
    form3.PS.Cells[7,0]:='lg(gamma1/gamma2)_Редл.-Кист.';
    form3.PS.Cells[8,0]:='P_Редл.-Кист.';
    form3.PS.Cells[9,0]:='x1_эфф.м.д.';
    form3.PS.Cells[10,0]:='x2_эфф.м.д.';
    form3.PS.Cells[11,0]:='y1_Ван-Лаар';
    form3.PS.Cells[12,0]:='y2_Ван-Лаар';
    form3.PS.Cells[13,0]:='gamma1_Ван-Лаар';
    form3.PS.Cells[14,0]:='gamma2_Ван-Лаар';
    form3.PS.Cells[15,0]:='lg(gamma1/gamma2)_Ван-Лаар';
    form3.PS.Cells[16,0]:='P_Ван-Лаар';
    form3.PS.Cells[17,0]:='y1_Стабн.';
    form3.PS.Cells[18,0]:='y2_Стабн.';
    form3.PS.Cells[19,0]:='P1_Стабн.';
    form3.PS.Cells[20,0]:='P2_Стабн.';
    form3.PS.Cells[21,0]:='P_Стабн.';
form2.Chart1.Series[2].clear;
form2.Chart1.Series[3].clear;
form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[3].tag:=4;
for i:=1 to n-1 do begin
    z1:=z[1,i];
    z2:=1-z1;
    x1:=z1/(z1+l12*z2);//эффективные мол. д.
    x2:=1-x1;
    form2.Chart9.Series[0].AddXY(z1,z1);
    lng1:=sqr(z2)*(b+c*(3*z1-z2)); //формула Редлиха-Кистера
    lng2:=sqr(z1)*(b+c*(z1-3*z2));
    gamma1:=exp(lng1);
    gamma2:=exp(lng2);
    lg10:=log10(gamma1/gamma2);
    g0:=z1/z2*p1_0/p2_0*gamma1/gamma2;
    y1:=g0/(1+g0);
    form2.Chart9.Series[1].AddXY(z1,y1);
    form2.Chart2.Series[7].AddXY(z1,gamma1);
    form2.Chart2.Series[8].AddXY(z1,gamma2);
    form2.Chart2.Series[9].AddXY(z1,lgg12);
    form3.PS.Cells[0,i]:=inttostr(i);
    form3.PS.Cells[1,i]:=format('%5.4f',[z1]);
    form3.PS.Cells[2,i]:=format('%5.4f',[z2]);
    form3.PS.Cells[3,i]:=format('%5.4f',[y1]);
    form3.PS.Cells[4,i]:=format('%5.4f',[1-y1]);
    form3.PS.Cells[5,i]:=format('%8.6f',[gamma1]);
    form3.PS.Cells[6,i]:=format('%8.6f',[gamma2]);
    form3.PS.Cells[7,i]:=format('%8.6f',[lgg12]);
    form3.PS.Cells[8,i]:=format('%8.6f',[p_s]);
    //давление по Ридлеха-Кистера
    p_s:=gamma1*p1_0*z1+gamma2*p2_0*z2;
    form2.Chart8.Series[1].AddXY(z1,p_s);
    form2.Chart8.Series[4].AddXY(y1,p_s);
    lg1:=e*sqr(d*z2/(e*z1+d*z2));//формула Ван-Лаара
    lg2:=d*sqr(e*z1/(e*z1+d*z2));
    g1:=power(10,lg1); // ?
    g2:=power(10,lg2); //?
    lgg12:=log10(g1/g2);
    g0:=z1/z2*p1_0/p2_0*g1/g2;
    y1:=g0/(1+g0);
    form2.Chart9.Series[2].AddXY(z1,y1);
    form2.Chart2.Series[10].AddXY(z1,g1);
    form2.Chart2.Series[11].AddXY(z1,g2);
    form2.Chart2.Series[12].AddXY(z1,lgg12);
    //давление по Ван-Лаару
    p_s:=g1*p1_0*z1+g2*p2_0*z2;
    form2.Chart8.Series[2].AddXY(z1,p_s);
    form2.Chart8.Series[5].AddXY(y1,p_s);
    form3.PS.Cells[9,i]:=format('%5.4f',[x1]);
    form3.PS.Cells[10,i]:=format('%5.4f',[1-x1]);
    form3.PS.Cells[11,i]:=format('%5.4f',[y1]);
    form3.PS.Cells[12,i]:=format('%5.4f',[1-y1]);
    form3.PS.Cells[13,i]:=format('%8.6f',[g1]);
    form3.PS.Cells[14,i]:=format('%8.6f',[g2]);
    form3.PS.Cells[15,i]:=format('%8.6f',[lgg12]);
    form3.PS.Cells[16,i]:=format('%8.6f',[p_s]);


     v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
     v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
     ve0:=z1*v1+z2*v2;
     g1:=p2_0*v1/p1_0/ve0/betta1;
     g2:=p1_0*v2/p2_0/ve0*betta2;
     p_s:=(z1*v1*p2_0+z2*v2*p1_0)/ve0;
     g0:=z1/z2*p1_0/p2_0*g1/g2;
     y1:=g0/(1+g0);
     form2.Chart8.Series[0].AddXY(z1,p_s);
     form2.Chart8.Series[6].AddXY((1-y1),p_s);
     form2.Chart9.Series[4].AddXY(z2,y1);

     h1:=p2_0*ve0;
     h2:=z1*p1_0*v1+(1-z1)*p2_0*v2;
     form2.Chart1.Series[2].AddXY(z1,h1);  //h1(z1)
     form2.Chart1.Series[3].AddXY(z1,h2);  //h2(z1)

     form2.Chart9.Series[5].AddXY(z1,gl[2,i]);
     form2.Chart9.Series[6].AddXY(z1,log10(p2_0/p1_0));
end;
//-----------
form3.PageControl1.ActivePageIndex:=4;
form3.Show;
form2.PageControl1.ActivePageIndex:=7;
form2.Show;
end;
end;

procedure TForm4.CpABTCT2DT31Click(Sender: TObject);
var i1,i,k:integer;
r1:myreal;
cp,t:array[1..2]of masd;
 a:masd;
begin
// Cp=A+B*T+C*T^2+D*T^3
i1:=Table2Id_Name.Value;
table1.FindKey([i1]);
table7.First;

k:=table7.RecordCount;
setlength(cp[1],n+1);
setlength(cp[2],n+1);
setlength(t[1],n+1);
form2.Chart1.Series[0].clear;
for i:=1 to k do begin
cp[1,i]:=Table7cp_mol.Value;
t[1,i]:=Table7T_K.Value;
form2.Chart1.Series[0].AddXY(t[1,i],cp[1,i]);
end;
setlength(a,5);
polynrecurs(t[1],cp[1],k,4,a,r1);

table1.FindKey([i1]);
table1.Edit;
table1A_Cp.Value:=a[1];
table1B_Cp.Value:=a[2];
table1C_Cp.Value:=a[3];
table1D_Cp.Value:=a[4];
table1.Post;

form2.Chart1.Series[1].clear;
form3.gr.Cells[1,0]:='T,K';
form3.gr.Cells[2,0]:='Cp';
form3.gr.Cells[3,0]:='Cp_ur1';
form3.gr.Cells[4,0]:='Cp_ur2';
form3.gr.Cells[5,0]:='Cp_ur3';
for i:=1 to k do begin
cp[2,i]:=fr3(t[1,i],a,4);
form3.gr.Cells[1,i]:=floattostr(t[1,i]);
form3.gr.Cells[2,i]:=floattostr(cp[1,i]);
form3.gr.Cells[3,i]:=floattostr(cp[2,i]);
form2.Chart1.Series[1].AddXY(t[1,i],cp[2,i]);
end;
form3.gr.rowcount:=k+1;
form3.gr.colcount:=4;
form2.show;
form3.Show;
end;

procedure TForm4.CpABTCT21Click(Sender: TObject);
var i1,i,k:integer;
r1:myreal;
cp,t:array[1..2]of masd;
 a:masd;
begin
// Cp=A+B*T+C*T^2
i1:=Table2Id_Name.Value;
table1.FindKey([i1]);
table7.First;

k:=table7.RecordCount;
setlength(cp[1],n+1);
setlength(cp[2],n+1);
setlength(t[1],n+1);
setlength(a,5);
form2.Chart1.Series[0].clear;
for i:=1 to k do begin
cp[1,i]:=Table7cp_mol.Value;
t[1,i]:=Table7T_K.Value;
form2.Chart1.Series[0].AddXY(t[1,i],cp[1,i]);
end;
polynrecurs(t[1],cp[1],k,3,a,r1);

table1.FindKey([i1]);
table1.Edit;
table1A_Cp.Value:=a[1];
table1B_Cp.Value:=a[2];
table1C_Cp.Value:=a[3];
table1.Post;

form2.Chart1.Series[1].clear;
form3.gr.Cells[1,0]:='T,K';
form3.gr.Cells[2,0]:='Cp';
form3.gr.Cells[3,0]:='Cp_ur1';
form3.gr.Cells[4,0]:='Cp_ur2';
form3.gr.Cells[5,0]:='Cp_ur3';
for i:=1 to k do begin
cp[2,i]:=fr3(t[1,i],a,3);
form3.gr.Cells[1,i]:=floattostr(t[1,i]);
form3.gr.Cells[2,i]:=floattostr(cp[1,i]);
form3.gr.Cells[3,i]:=floattostr(cp[2,i]);
form2.Chart1.Series[1].AddXY(t[1,i],cp[2,i]);
end;
form3.gr.rowcount:=k+1;
form3.gr.colcount:=4;
form2.show;
form3.Show;
end;

procedure TForm4.CpABTCT22Click(Sender: TObject);
var i1,i,k:integer;
r1:myreal;
cp,t:array[1..2]of masd;
 a:masd;
begin
// Cp=A+B/T+C/T^2
i1:=Table2Id_Name.Value;
table1.FindKey([i1]);
table7.First;

k:=table7.RecordCount;
setlength(cp[1],n+1);
setlength(cp[2],n+1);
setlength(t[1],n+1);
setlength(t[2],n+1);
setlength(a,5);
form2.Chart1.Series[0].clear;
for i:=1 to k do begin
cp[1,i]:=Table7cp_mol.Value;
t[1,i]:=Table7T_K.Value;
t[2,i]:=1/t[1,i];
form2.Chart1.Series[0].AddXY(t[1,i],cp[1,i]);
end;
polynrecurs(t[2],cp[1],k,3,a,r1);

table1.FindKey([i1]);
table1.Edit;
table1A_Cp.Value:=a[1];
table1B_Cp.Value:=a[2];
table1C_Cp.Value:=a[3];
table1.Post;

form2.Chart1.Series[1].clear;
form3.gr.Cells[1,0]:='T,K';
form3.gr.Cells[2,0]:='Cp';
form3.gr.Cells[3,0]:='Cp_ur1';
form3.gr.Cells[4,0]:='Cp_ur2';
form3.gr.Cells[5,0]:='Cp_ur3';
for i:=1 to k do begin
cp[2,i]:=fr3(t[2,i],a,3);
form3.gr.Cells[1,i]:=floattostr(t[1,i]);
form3.gr.Cells[2,i]:=floattostr(cp[1,i]);
form3.gr.Cells[3,i]:=floattostr(cp[2,i]);
form2.Chart1.Series[1].AddXY(t[1,i],cp[2,i]);
end;
form3.gr.rowcount:=k+1;
form3.gr.colcount:=4;
form2.show;
form3.Show;
end;


procedure TForm4.FormActivate(Sender: TObject);
begin
//восстановление связей и данных по другой таблице

PageControl1.ActivePage:=tabsheet1;
  Table1.Refresh;table1.Bookmark:=form1.Table1.Bookmark;
  Table2.Refresh;table2.Bookmark:=form1.Table2.Bookmark;
end;

procedure TForm4.FormDeactivate(Sender: TObject);
begin
//восстановление связей и данных по другой таблице
  form1.Table1.Refresh;form1.table1.Bookmark:=Table1.Bookmark;
  form1.Table2.Refresh;form1.table2.Bookmark:=Table2.Bookmark;
end;

procedure TForm4.N123Click(Sender: TObject);
var nk,i,n:integer;
    r1,h,z1,y1,z2,y2,p_s:myreal;
    z,p,a:masd;
begin
nk:=table5.RecordCount;
if nk>0 then
begin
form2.Chart8.Series[0].clear;
form2.Chart8.Series[0].title:='P(x1)';
form2.Chart8.Series[0].tag:=1;
form2.Chart9.Series[4].clear;
form2.Chart9.Series[4].title:='y(x1)';
form2.Chart9.Series[4].tag:=5;
table5.First;
setlength(a,6);
setlength( z,nk+1);
setlength( p,nk+1);
for i:=1 to nk do begin
p_s:=Table5P.Value*pascual/1000;
p[i]:=p_s;
z1:=Table5X1mol.Value;
z2:=1-z1;
z[i]:=z1;
y1:=Table5y1mol.Value;
y2:=1-y1;
form2.Chart9.Series[4].AddXY(z1,y1);
form2.Chart8.Series[0].AddXY(z1,p_s);
table5.Next;
end;
polynrecurs(z,p,nk,5,a,r1);
form2.Chart8.Series[2].clear;
form2.Chart8.Series[2].title:='P(x1)_мод.';
form2.Chart8.Series[2].tag:=3;
n:=form1.Fn.Value;
h:=1/n;
for i:=0 to n do begin
z1:=i*h;
p_s:=fr3(z1,a,5);
form2.Chart8.Series[2].AddXY(z1,p_s);
end;
end;
form2.Show;
end;

procedure TForm4.P2P11Click(Sender: TObject);
var
 flag:boolean;
i,i1,i2,i0,nk,n,imax,j:integer;
ro1,ro2,p1_0,p2_0,ve1_0,ve2_0,betta1,betta2,betta,
gamma1,gamma2,L12,f1,f2,g1,g2,l1,l2,h,ve,cc, n12,n1,n2,
b1_b2,y0,xmin1,xmin2,z1,s1,s2,s0,l12_,z2,e,lg1,lg2,
y1,x1,p_s,p_a,p_b,r1,xx,g3,g4,c,b,lg10,zmin1,g0,lgg12,asd,ge,epss,zmin2,r0,d,lgg1,lgg2,gg1,gg2,
t12,tk1,tk2,v1e,v2e,s,v1,v2,y2,p_az,g_az,z_az,x_az,lng1,lng2:MyReal;
p,y,x:masd;
old:string;
a:masd;
gl,g,gt,z:array[1..2]of masd;
begin
//расчет давления
n:=main.Form1.fn.value;
old:=table2.Bookmark;
i0:=Table2Id.Value;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
ro1:=Table2ro1.Value;
ro2:=Table2ro2.Value;
l1:=Table2Lambda1.Value;
l2:=Table2Lambda2.Value;
tc:=table2tc_cmecu.value+Kelvin;
table1.FindKey([i1]);
a10:=Table1A_ant.Value;
b10:=Table1B_ant.Value;
c10:=Table1C_ant.Value;
h1:=Table1Teplota.AsFloat;
m1:=Table1MolMassa.AsFloat;
TK1:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i2]);
a20:=Table1A_ant.Value;
b20:=Table1B_ant.Value;
c20:=Table1C_ant.Value;
h2:=Table1Teplota.AsFloat;
m2:=Table1MolMassa.AsFloat;
TK2:=Table1T_Kelvin.Value+kelvin;
table1.FindKey([i1]);
table2.Bookmark:=old;
nk:=table5.RecordCount;
t0:=Table2TC_cmecu.Value;
a1:=table2a1.value;
a2:=table2a2.value;
a3:=table2a3.value;
ve1_0:=Table2VE1_0.Value;
ve2_0:=Table2VE2_0.Value;
L12:=table2lambda12.value;
IF L12=0 THEN l12:=l1/l2;
p1_0:=Table2p1_0.Value/1000;
p2_0:=Table2p2_0.Value/1000;

setlength(z[1],n+1);
setlength(g[1],n+1);
setlength(g[2],n+1);
setlength(gl[1],n+1);
setlength(gl[2],n+1);

//термодинамическое согласование
    form3.ts.colcount:=11;
    form3.ts.rowcount:=n+1;
    form3.ts.cells[0,0]:='i';
    form3.ts.cells[1,0]:='z1';
    form3.ts.cells[2,0]:='z2';
    form3.ts.cells[3,0]:='Ve1';
    form3.ts.cells[4,0]:='Ve2';
    form3.ts.cells[5,0]:='Ve';
    form3.ts.cells[6,0]:='gamma1';
    form3.ts.cells[7,0]:='gamma2';
    form3.ts.cells[8,0]:='Ln gamma1';
    form3.ts.cells[9,0]:='Ln gamma2';
    form3.ts.cells[10,0]:='Lg gamma1/gamma2';
    form2.Chart2.Series[0].clear;form2.Chart2.Series[0].title:='Ln(G1)';
    form2.Chart2.Series[1].clear;form2.Chart2.Series[1].title:='Ln(G2)';
    form2.Chart2.Series[2].clear;form2.Chart2.Series[2].title:='Lg(G1/G2)';
    form2.Chart2.Series[0].tag:=1;
    form2.Chart2.Series[1].tag:=2;
    form2.Chart2.Series[2].tag:=3;
    zmin1:=-1;
    g0:=1;flag:=true;
    h:=1/n;
    for i:=1 to n-1 do begin
    z[1,i]:=i*h;
    z1:=z[1,i];z2:=1-z1;
    try
    v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
    v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
    ve:=z1*v1+z2*v2;
    g1:=p2_0*v1/p1_0/ve;
    g2:=p1_0*v2/p2_0/ve;
    lgG12:=(g1/g2);
    g[1,i]:=g1;
    g[2,i]:=g2;
    gl[1,i]:=lgG12;
    if (abs(g1-g2)<0.1) and (abs(g1-g2)<g0) then begin
       i1:=i;i2:=i-1;
       asd:=(z[1,i2]+z[1,i1])/2;
       zmin1:=asd;
       g0:=abs(g1-g2);
    end;
    g0:=lgG12;
    except
     showmessage('Измените порядок компонент!');
     x1:=0;x2:=0;t12:=0; break;
    end;
    form3.ts.cells[0,i]:=inttostr(i);
    form3.ts.cells[1,i]:=format('%5.4f',[z1]);
    form3.ts.cells[2,i]:=format('%5.4f',[z2]);
    form3.ts.cells[3,i]:=format('%8.6f',[ve]);
    form3.ts.cells[4,i]:=format('%8.6f',[ve]);
    form3.ts.cells[5,i]:=format('%8.6f',[ve]);
    form3.ts.cells[6,i]:=format('%8.6f',[g1]);
    form3.ts.cells[7,i]:=format('%8.6f',[g2]);
    form3.ts.cells[8,i]:=format('%8.6f',[(g1)]);
    form3.ts.cells[9,i]:=format('%8.6f',[(g2)]);
    form3.ts.cells[10,i]:=format('%8.6f',[lgG12]);
    form2.Chart2.Series[0].AddXY(z1,(g1));
    form2.Chart2.Series[1].AddXY(z1,(g2));
    form2.Chart2.Series[2].AddXY(z1,lgg12);
    end;
  showmessage('до согласования: zmin='+floattostr(zmin1));
{//кубический полином
    setlength(a,5);
    polynrecurs(z[1],gl[1],n-1,4,a,r1);
    form3.UR.rowcount:=2;
    form3.UR.Cells[1,0]:='a0';
    form3.UR.Cells[2,0]:='a1';
    form3.UR.Cells[3,0]:='a2';
    form3.UR.Cells[4,0]:='a3';
    form3.UR.Cells[5,0]:='r';
    form3.UR.Cells[1,1]:=format('%8.6f',[a[1]]);
    form3.UR.Cells[2,1]:=format('%8.6f',[a[2]]);
    form3.UR.Cells[3,1]:=format('%8.6f',[a[3]]);
    form3.UR.Cells[4,1]:=format('%8.6f',[a[4]]);
    form3.UR.Cells[5,1]:=format('%8.6f',[r1]);
    z1:=zmin1;r1:=1;
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
 if (abs(r1)<=epss*5)and(j>50000)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;
  showmessage('поправка после согласования='+floattostr(g1)+chr(13)+
  ' s1='+floattostr(s1)+' s2='+floattostr(s2)+chr(13)+
  ' |s1-s2|='+floattostr(r1)+ ' zmin='+floattostr(zmin2));
l12:=zmin1/(1-zmin1)*zmin2/(1-zmin2);
betta:=power(10,g1);
betta1:=1; betta2:=betta/betta1;
  showmessage('lambda12='+floattostr(l12)+' betta='+floattostr(betta)+
  ' betta1='+floattostr(betta1)+' betta2='+floattostr(betta2)+chr(13));
n12:=l12/betta;
find(n1,n2,n12);
showmessage('n1/n2='+floattostr(n12)+' n1='+floattostr(n1)+
  ' n2='+floattostr(n2));
//согласованные gamma1, gamma2, lg gamma1/gamma2
setlength(z[2],n+1);
   for i:=1 to n-1 do begin
   gl[2,i]:=gl[1,i]-g1;
   g[1,i]:=g[1,i]/betta1;
   g[2,i]:=g[2,i]*betta2;
   z[2,i]:=z[1,i]/(z[1,i]+l12*(1-z[1,i]));
   end;
//проверка после согласования
 r1:=1;
 s1:=0;s2:=0;
 lng1:=ln(g[1,1]);
 lng2:=ln(g[2,1]);
 gg1:=exp(lng1);gg2:=exp(lng2);
 lgg12:=log10(gg1/gg2);
 for i:=2 to n-1 do
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

  showmessage('проверка согласования:'+
  ' s1='+floattostr(s1)+' s2='+floattostr(s2)+chr(13)+
  ' |s1-s2|='+floattostr(r1));

 if (abs(r1)>=epss*5)then begin
 showmessage('термодинамически не согласовано');
 exit;
 end;

   } form2.Chart2.Series[3].clear; form2.Chart2.Series[3].title:='G1 согл';
    form2.Chart2.Series[4].clear; form2.Chart2.Series[4].title:='G2 согл';
    form2.Chart2.Series[5].clear; form2.Chart2.Series[5].title:='G1/G2 согл';
    form2.Chart2.Series[6].clear; form2.Chart2.Series[6].title:='P2_0/P1_0';
    form2.Chart2.Series[3].tag:=4;
    form2.Chart2.Series[4].tag:=5;
    form2.Chart2.Series[5].tag:=6;
    form2.Chart2.Series[6].tag:=7;
    form3.ts.colcount:=17;
    form3.ts.cells[11,0]:='g1 согл';
    form3.ts.cells[12,0]:='g2 согл';
    form3.ts.cells[13,0]:='g1 согл';
    form3.ts.cells[14,0]:='g2 согл';
    form3.ts.cells[15,0]:='g1/g2 согл';
    form3.ts.cells[16,0]:=' P2_0/P1_0';
    lgg12:=(p2_0/p1_0);
    for i:=1 to n-1 do begin
    form3.ts.cells[11,i]:=format('%8.6f',[g[1,i]]);
    form3.ts.cells[12,i]:=format('%8.6f',[g[2,i]]);
  //  form3.ts.cells[13,i]:=format('%8.6f',[ln(g[1,i])]);
   // form3.ts.cells[14,i]:=format('%8.6f',[ln(g[2,i])]);
    form3.ts.cells[15,i]:=format('%8.6f',[gl[1,i]]);
    form3.ts.cells[16,i]:=format('%8.6f',[lgg12]);
    form2.Chart2.Series[3].AddXY(z[1,i],g[1,i]);
    form2.Chart2.Series[4].AddXY(z[1,i],g[2,i]);
    form2.Chart2.Series[5].AddXY(z[1,i],gl[1,i]);
    form2.Chart2.Series[6].AddXY(z[1,i],lgg12);
   end;

 //поиск азеотропа по пересечению  p2_0/p1_0 и gamma1/gamma2 несогласованные

 betta1:=1;
 betta2:=1;
 z_az:=-1;lgg12:=(p2_0/p1_0);
 g0:=10; j:=1;
 for i:=2 to n-1 do
 if (abs(gl[1,i]-lgg12)<1)and (abs(gl[1,i]-lgg12)<g0)then begin
 z_az:=(z[1,i]+z[1,i+1])/2;
 g0:=abs(gl[1,i]-lgg12);
 j:=i;
 end;

if z_az=-1 then begin
showmessage('азеотроп не обнаружен!');
exit;
end;
//z_az:=(lgg12-gl[1,j-1])/(gl[1,j-1]-gl[1,j])*(z[1,j-1]-z[1,j])+z[1,j-1];
z1:=z_az;
x1:=z_az/(z_az+l12*(1-z_az)); //эфф.м.д.
{
lgg1:=sqr(1-z1)*(b+c*(4*z1-1)+d*(12*sqr(z1)-8*z1+1));
lgg2:=sqr(z1)*(b+c*(4*z1-3)+d*(12*sqr(z1)-16*z1+5));
g1:=power(10,lgg1);
g2:=power(10,lgg2);
}

 v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
 v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
 ve:=z1*v1+z2*v2;
 g1:=p2_0*v1/p1_0/ve/betta1;
 g2:=p1_0*v2/p2_0/ve*betta2;

p_az:=z1*g1*p1_0+(1-z1)*g2*p2_0;
lng1:=log10(p_az/p1_0);
lng2:=log10(p_az/p2_0);

showmessage('z_az='+floattostr(z1)+' x_az='+floattostr(x1)+chr(13)+
' P_az='+floattostr(p_az)+' gamma1='+floattostr(g1)+' gamma2='+floattostr(g2));

table2.Edit;
Table2X1_az.Value:=z1;
Table2P.Value:=p_az/pascual*1000;
table2.post;

//1-вариант расчета ln gamma1,2 в точке азеотропии

//расчет коэффициентов Редлиха-Кистера
c:=(lng1/2/sqr(1-z1)-lng2/2/sqr(z1));
b:=lng1/sqr(1-z1)-(3*z1-(1-z1))*c;

//расчет коэффициентов c,b по модели Ван-Лаара
    e:=sqr(lng1+lng2*(1-z1)/z1)/lng1;
    d:=sqr(lng2+lng1*z1/(1-z1))/lng2;

//построение и расчет давления смеси по разным моделям
form2.Chart8.Series[1].clear;form2.Chart8.Series[1].title:='P(x1)R-K';
form2.Chart8.Series[2].clear;form2.Chart8.Series[2].title:='P(x1)V-L';
form2.Chart8.Series[3].clear;form2.Chart8.Series[3].title:='P(x1)Cтаб';
form2.Chart8.Series[4].clear;form2.Chart8.Series[4].title:='P(y1)R-K';
form2.Chart8.Series[5].clear;form2.Chart8.Series[5].title:='P(y1)V-L';
form2.Chart8.Series[6].clear;form2.Chart8.Series[6].title:='P(y2)VE';
form2.Chart9.Series[0].clear;form2.Chart9.Series[0].title:='y=x';
form2.Chart9.Series[1].clear;form2.Chart9.Series[1].title:='y(x)R-K';
form2.Chart9.Series[2].clear;form2.Chart9.Series[2].title:='y(x)V-L';
form2.Chart9.Series[3].clear;form2.Chart9.Series[3].title:='y(x)Cтаб';
form2.Chart8.Series[1].tag:=2;
form2.Chart8.Series[2].tag:=3;
form2.Chart8.Series[3].tag:=4;
form2.Chart8.Series[4].tag:=5;
form2.Chart8.Series[5].tag:=6;
form2.Chart8.Series[6].tag:=7;
form2.Chart9.Series[0].tag:=1;
form2.Chart9.Series[1].tag:=2;
form2.Chart9.Series[2].tag:=3;
form2.Chart9.Series[3].tag:=4;
form2.Chart2.Series[7].clear;form2.Chart2.Series[7].title:='G1 R-K';
form2.Chart2.Series[8].clear;form2.Chart2.Series[8].title:='G2 R-K';
form2.Chart2.Series[9].clear;form2.Chart2.Series[9].title:='(G1/G2) R-K';
form2.Chart2.Series[7].tag:=8;
form2.Chart2.Series[8].tag:=9;
form2.Chart2.Series[9].tag:=10;
form2.Chart2.Series[10].clear;form2.Chart2.Series[10].title:='G1 V-L';
form2.Chart2.Series[11].clear;form2.Chart2.Series[11].title:='G2 V-L';
form2.Chart2.Series[12].clear;form2.Chart2.Series[12].title:='(G1/G2)V-L';
form2.Chart2.Series[10].tag:=11;
form2.Chart2.Series[11].tag:=12;
form2.Chart2.Series[12].tag:=13;
form2.Chart8.Series[0].clear;form2.Chart8.Series[0].title:='P(x1)VE';
form2.Chart8.Series[0].tag:=1;
form2.Chart9.Series[4].clear;form2.Chart9.Series[4].title:='y(x2)VE';
form2.Chart9.Series[4].tag:=5;
form2.Chart9.Series[5].clear;form2.Chart9.Series[5].title:='(G1/G2)согл';
form2.Chart9.Series[5].tag:=6;
form2.Chart9.Series[6].clear;form2.Chart9.Series[6].title:='(P2_0/P1_0)';
form2.Chart9.Series[6].tag:=7;
    form3.PS.colcount:=22;
    form3.PS.rowcount:=n+1;
    form3.PS.Cells[0,0]:='i';
    form3.PS.Cells[1,0]:='x1';
    form3.PS.Cells[2,0]:='x2';
    form3.PS.Cells[3,0]:='y1_Редл.-Кист.';
    form3.PS.Cells[4,0]:='y2_Редл.-Кист.';
    form3.PS.Cells[5,0]:='gamma1_Редл.-Кист.';
    form3.PS.Cells[6,0]:='gamma2_Редл.-Кист.';
    form3.PS.Cells[7,0]:='(gamma1/gamma2)_Редл.-Кист.';
    form3.PS.Cells[8,0]:='P_Редл.-Кист.';
    form3.PS.Cells[9,0]:='x1_эфф.м.д.';
    form3.PS.Cells[10,0]:='x2_эфф.м.д.';
    form3.PS.Cells[11,0]:='y1_Ван-Лаар';
    form3.PS.Cells[12,0]:='y2_Ван-Лаар';
    form3.PS.Cells[13,0]:='gamma1_Ван-Лаар';
    form3.PS.Cells[14,0]:='gamma2_Ван-Лаар';
    form3.PS.Cells[15,0]:='(gamma1/gamma2)_Ван-Лаар';
    form3.PS.Cells[16,0]:='P_Ван-Лаар';
    form3.PS.Cells[17,0]:='y1_Стабн.';
    form3.PS.Cells[18,0]:='y2_Стабн.';
    form3.PS.Cells[19,0]:='P1_Стабн.';
    form3.PS.Cells[20,0]:='P2_Стабн.';
    form3.PS.Cells[21,0]:='P_Стабн.';
form2.Chart1.Series[2].clear;form2.Chart1.Series[2].title:='H1(x1)';
form2.Chart1.Series[3].clear;form2.Chart1.Series[3].title:='H2(x2)';
form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[3].tag:=4;
z_az:=-1;p_az:=0;
for i:=1 to n-1 do begin
    z1:=z[1,i];
    z2:=1-z1;
    x1:=z1/(z1+l12*z2);//эффективные мол. д.
    x2:=1-x1;
    form2.Chart9.Series[0].AddXY(z1,z1);
    lng1:=sqr(z2)*(b+c*(3*z1-z2)); //формула Редлиха-Кистера
    lng2:=sqr(z1)*(b+c*(z1-3*z2));
    gamma1:=exp(lng1);
    gamma2:=exp(lng2);
//    lg10:=log10(gamma1/gamma2);
    g0:=z1/z2*p1_0/p2_0*gamma1/gamma2;
    y1:=g0/(1+g0);
    // g0:=z2/z1*p1_0/p2_0*gamma1/gamma2;
   //  y1:=1/(1+g0);
    form2.Chart9.Series[1].AddXY(z1,y1);
    form2.Chart2.Series[7].AddXY(z1,gamma1);
    form2.Chart2.Series[8].AddXY(z1,gamma2);
    form2.Chart2.Series[9].AddXY(z1,lgg12);
    form3.PS.Cells[0,i]:=inttostr(i);
    form3.PS.Cells[1,i]:=format('%5.4f',[z1]);
    form3.PS.Cells[2,i]:=format('%5.4f',[z2]);
    form3.PS.Cells[3,i]:=format('%5.4f',[y1]);
    form3.PS.Cells[4,i]:=format('%5.4f',[1-y1]);
    form3.PS.Cells[5,i]:=format('%8.6f',[gamma1]);
    form3.PS.Cells[6,i]:=format('%8.6f',[gamma2]);
    form3.PS.Cells[7,i]:=format('%8.6f',[lgg12]);
    form3.PS.Cells[8,i]:=format('%8.6f',[p_s]);
    //давление по Ридлеха-Кистера
    p_s:=gamma1*p1_0*z1+gamma2*p2_0*z2;
    form2.Chart8.Series[1].AddXY(z1,p_s);
    form2.Chart8.Series[4].AddXY(y1,p_s);
    if(abs(z1-y1)<=0.01)then
    begin
      z_az:=z1;
      p_az:=p_s;
    end;
    lg1:=e*sqr(d*z2/(e*z1+d*z2));//формула Ван-Лаара
    lg2:=d*sqr(e*z1/(e*z1+d*z2));
    g1:=power(10,lg1); // ?
    g2:=power(10,lg2); //?
    //lgg12:=log10(g1/g2);
    g0:=z1/z2*p1_0/p2_0*g1/g2;
    y1:=g0/(1+g0);
//     g0:=z2/z1*p1_0/p2_0*g1/g2;
//    y1:=1/(1+g0);
    form2.Chart9.Series[2].AddXY(z1,y1);
    form2.Chart2.Series[10].AddXY(z1,g1);
    form2.Chart2.Series[11].AddXY(z1,g2);
    //form2.Chart2.Series[12].AddXY(z1,lgg12);
    //давление по Ван-Лаару
    p_s:=g1*p1_0*z1+g2*p2_0*z2;
    form2.Chart8.Series[2].AddXY(z1,p_s);
    form2.Chart8.Series[5].AddXY(y1,p_s);
    form3.PS.Cells[9,i]:=format('%5.4f',[x1]);
    form3.PS.Cells[10,i]:=format('%5.4f',[1-x1]);
    form3.PS.Cells[11,i]:=format('%5.4f',[y1]);
    form3.PS.Cells[12,i]:=format('%5.4f',[1-y1]);
    form3.PS.Cells[13,i]:=format('%8.6f',[g1]);
    form3.PS.Cells[14,i]:=format('%8.6f',[g2]);
   // form3.PS.Cells[15,i]:=format('%8.6f',[lgg12]);
    form3.PS.Cells[16,i]:=format('%8.6f',[p_s]);
    p_a:=p2_0*(1-z1)*exp(0.79*(3-2*z1)*z1*z1);
    p_b:=p1_0*z1*exp(1.58*sqr(1-z1)*(1-z1));
    p_s:=p_a+p_b;
    y1:=p_b/p_s; //формула в книге Стабникова Теор. основы перегонки и ректификации
    form3.PS.Cells[17,i]:=format('%5.4f',[y1]);
    form3.PS.Cells[18,i]:=format('%5.4f',[1-y1]);
    form3.PS.Cells[19,i]:=format('%8.6f',[p_a]);
    form3.PS.Cells[20,i]:=format('%8.6f',[p_b]);
    form3.PS.Cells[21,i]:=format('%8.6f',[p_s]);
    form2.Chart9.Series[3].AddXY(z1,y1);
    form2.Chart8.Series[3].AddXY(z1,p_s);
   
     v1:=sqr(1-z1)*(a1+a2*(4*z1-1)+a3*(6*z1-1)*(2*z1-1));
     v2:=sqr(z1)*(a1+a2*(4*z1-3)+a3*(6*z1-5)*(2*z1-1));
     ve:=z1*v1+z2*v2;
     g1:=p2_0*v1/p1_0/ve/betta1;
     g2:=p1_0*v2/p2_0/ve*betta2;
     p_s:=(z1*v1*p2_0+z2*v2*p1_0)/ve;
     g0:=z1/z2*p1_0/p2_0*g1/g2;
     y1:=g0/(1+g0);
    // g0:=z2/z1*p1_0/p2_0*g1/g2;
    // y1:=1/(1+g0);
     form2.Chart8.Series[0].AddXY(z1,p_s);
     form2.Chart8.Series[6].AddXY((1-y1),p_s);
     form2.Chart9.Series[4].AddXY(z1,y1); //????z2

    // v1:=sqr(1-x1)*(a1+a2*(4*x1-1)+a3*(6*x1-1)*(2*x1-1));
    // v2:=sqr(x1)*(a1+a2*(4*x1-3)+a3*(6*x1-5)*(2*x1-1));
    // ve:=x1*v1+x2*v2;
     h1:=p2_0*ve;
     h2:=z1*p1_0*v1+(1-z1)*p2_0*v2;
     form2.Chart1.Series[2].AddXY(z1,h1);  //h1(z1)
     form2.Chart1.Series[3].AddXY(z1,h2);  //h2(z1)

     form2.Chart9.Series[5].AddXY(z1,gl[1,i]);
     form2.Chart9.Series[6].AddXY(z1,(p2_0/p1_0));
end;
try
x_az:= z_az/(z_az+l12*(1-z_az));
except
x_az:=-1;
end;
showmessage('z_az='+floattostr(z_az)+ ' x_az='+floattostr(x_az)+
' P_az='+floattostr(P_az)) ;
form3.PageControl1.ActivePageIndex:=14;
form2.PageControl1.ActivePageIndex:=7;
form2.Show; form3.Show;

end;

procedure TForm4.menux2Click(Sender: TObject);
var nk,m,n1,n2,i1,i2,i,n,j1,k,k_,flag:integer;
h,s,mint,z1,t1,t2,h1,h2,m1,m2,r1,r2,min,m12,delta_q,x_az,t_az,
minx,x0,h1_,h2_,t1_,t2_,minq,minq1,mint3,sq,hp1,hp2,gg,w0,minx2,
l,x1_,w1_,q1_,u1_,g1_l,g2_l,g0,tg0,tg1,tg2,z0,minu1,ll,x2_,w2_,
q2_,u2_,
a_lin,b_lin,minz,delta_x, delta_t,min0,q1,q2,g3,tauq,l12,
g1,g2,w2,l1,l2,z2,k1,k2,k12,k1_,k2_,k12_,tau,minx1,mint1,
tau1,tau2,lnx1,lnx2,lng1,lng2,c,d,w1,zmin1,t12:MyReal;
p1,p2,p3,p4:masd;
xv,xm,t,z,ym,yv:array[1..4]of masd;
old:string;
begin
// Построение кривой T(x) жидкость-пар
old:=table2.Bookmark;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
table1.FindKey([i1]);
hk1:=Table1H_kipen.value;
tk1:=Table1T_Kelvin.value+kelvin;//кипение
m1:=Table1MolMassa.value;
table1.FindKey([i2]);
hk2:=Table1H_kipen.value;
tk2:=Table1T_Kelvin.value+kelvin;
m2:=Table1MolMassa.value;
table1.FindKey([i1]);
table2.Bookmark:=old;
{l1:=Table2Lambda1_az.Value;
l2:=Table2lambda2_az.Value;
tau1:=Table2tau1.Value;
tau2:=Table2tau2.Value;
k1:=Table2K1.Value/tau1;
k2:=Table2K2.Value/tau2;
k12:=k1/k2;
k1_:=Table2k1_az.Value;
k2_:=Table2k2_az.Value;
k12_:=k1_/k2_; }
 try
   a:=strtofloat(form1.edta.text);
   b:=strtofloat(form1.edtb.text);
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
 k1:=strtofloat(form1.edit5.Text);
 k2:=strtofloat(form1.edit6.Text);
except
  k1:=Table2K1_az.Value;
  k2:=Table2K2_az.Value;
end;
try
 l1:=strtofloat(form1.edit3.Text);
 l2:=strtofloat(form1.edit4.Text);
except
 l1:=Table2Lambda1_az.Value;
 l2:=Table2Lambda2_az.Value;
// lambda1:=1; lambda2:=1;
end;
 k12:=k1/k2;
 l12:=l1/l2;
 m12:=m1*k1/m2/k2;
 h10:=h1/l1;h20:=h2/l2;t10:=t1;t20:=t2;
try
 x_az:=strtofloat(form1.edit1.Text);
except
 x_az:=strtofloat(inputbox('Введите точку азеотропии в эфф.м.д.','',floattostr(zmin1)));
end;
try
 T_az:=strtofloat(form1.edit2.Text);
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
showmessage('x_az='+floattostr(x_az)+
' t_az='+floattostr(t_az));

table3.First;
m:=table3.RecordCount;
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
setlength(z[1],m+1);
setlength(z[2],m+1);
setlength(z[3],m+1);
setlength(z[4],m+1);
setlength(p1,4);
setlength(p2,4);
setlength(p3,4);
setlength(p4,4);
form2.Chart2.Series[1].clear;form2.Chart2.Series[1].tag:=2;
form2.Chart2.Series[0].clear;form2.Chart2.Series[0].tag:=1;
form2.Chart1.Series[1].clear;form2.Chart1.Series[1].tag:=2;
form2.Chart1.Series[1].title:='T(x1_масс.)_эксп.';
form2.Series1.pointer.visible:=true;
form2.Chart1.Series[0].clear;form2.Chart1.Series[0].tag:=1;
form2.Chart1.Series[0].title:='T(x1_мол.)_эксп.';
form2.Series3.pointer.visible:=true;
form2.Chart1.Series[2].clear;form2.Chart1.Series[2].tag:=3;
form2.Chart1.Series[2].title:='T(у1_мол.)_эксп.';
form2.Series8.pointer.visible:=true;
form2.Chart1.Series[3].clear;form2.Chart1.Series[3].tag:=4;
form2.Chart1.Series[3].title:='T(y1_масс.)_эксп.';
form2.Series9.pointer.visible:=true;
n1:=0;n2:=0;
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
   inc(n1);
   if (Table3T1C.Value<>0) then Table3T1K.Value:=Table3t1c.Value+Kelvin
   else Table3T1c.Value:=Table3t1k.Value-Kelvin;
   t[1,i]:=Table3T1K.Value;
   form2.Chart1.Series[0].AddXY(xm[1,i],t[1,i]);
   form2.Chart1.Series[1].AddXY(xv[1,i],t[1,i]);
      form2.Chart1.Series[2].AddXY(ym[1,i],t[1,i]);
   form2.Chart1.Series[3].AddXY(yv[1,i],t[1,i]);

   end;
if (Table3T2C.Value<>0)or(Table3T2K.Value<>0 ) then begin
    inc(n2);
   if Table3T2c.Value<>0 then Table3T2K.Value:=Table3t2c.Value+Kelvin
   else Table3T2c.Value:=Table3t2k.Value-Kelvin;
   t[2,i]:=Table3T2K.Value;
   form2.Chart1.Series[0].AddXY(xm[1,i],t[2,i]);
   form2.Chart1.Series[1].AddXY(Xv[1,i],t[2,i]);
   form2.Chart1.Series[2].AddXY(ym[1,i],t[2,i]);
   form2.Chart1.Series[3].AddXY(yv[1,i],t[2,i]);

   end;

table3.post;
table3.Next;
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
   nk:=table3.RecordCount;
 form2.Chart4.Series[1].Clear;
 form2.Chart4.Series[2].Clear;
 form2.Chart4.Series[1].tag:=2;
 form2.Chart4.Series[2].tag:=3;
 form2.Chart4.Series[1].Title:='T1-эксп.';
 form2.Chart4.Series[2].Title:='T2-эксп.';
for i:=1 to N1 do begin
   form2.Chart4.Series[1].AddXY(xm[1,i],t[1,i]);
end;
for i:=n1+1 to m do begin
   form2.Chart4.Series[2].AddXY(1-xm[2,i],t[2,i]);
end;

//прогноз по 5 внутренним точкам, квадратичная рекурсия
if n1<=5 then k:=n1 else k:=5;
//левая ветвь ликвидуса
for i:=1 to k do begin
  z[1,i]:=ym[1,m-n2-i+1];
  z[2,i]:=t[1,m-n2-i+1];
end;
//рекурсия для Т
//recurs(z[1],z[2],k,a0,a1,a2,r1);
polynrecurs(z[1],z[2],k,3,p1,r1);

//правая ветвь ликвидуса
//
if n2<>0 then begin
if n2<=5 then k:=n2 else k:=5;
for i:=1 to k do begin
  z[3,i]:=1-ym[2,n1+i];
  z[4,i]:=t[2,n1+i];
end;
//рекурсия для Т
//recurs(z[3],z[4],k,b0,b1,b2,r2);
polynrecurs(z[3],z[4],k,3,p2,r2);
end;
 form3.UR.cells[1,0]:='T1';
 form3.UR.cells[0,1]:='a0';
 form3.UR.cells[0,2]:='a1';
 form3.UR.cells[0,3]:='a2';
 form3.UR.cells[0,4]:='R';
 form3.UR.cells[1,1]:=floattostr(p1[1]);
 form3.UR.cells[1,2]:=floattostr(p1[2]);
 form3.UR.cells[1,3]:=floattostr(p1[3]);
 form3.UR.cells[1,4]:=floattostr(r1);
 form3.UR.cells[2,0]:='T2';
 form3.UR.cells[2,1]:=floattostr(p2[1]);
 form3.UR.cells[2,2]:=floattostr(p2[2]);
 form3.UR.cells[2,3]:=floattostr(p2[3]);
 form3.UR.cells[2,4]:=floattostr(r2);

 form3.VD.RowCount:=N+1;
 form3.VD.Cells[0,0]:='i';
 form3.VD.Cells[1,0]:='X1';
 form3.VD.Cells[3,0]:='T(X1)';
 form3.VD.Cells[2,0]:='X2';
 form3.VD.Cells[4,0]:='T(X2)';

form2.Chart1.Series[5].clear;
form2.Chart1.Series[6].clear;
form2.Chart1.Series[5].tag:=6;
form2.Chart1.Series[6].tag:=7;
form2.Chart1.Series[7].clear;
form2.Chart1.Series[7].tag:=8;
form2.Chart1.Series[4].clear;
form2.Chart1.Series[4].tag:=5;
form2.Chart1.Series[4].Title:='T(y_эксп)-расчет';
form2.Chart1.Series[5].Title:='T1(y_эксп)_rekurs';
form2.Chart1.Series[6].Title:='T2(y_эксп)_rekurs';
min:=1.0e+30;minx:=-1; mint:=1.0e+30;
min0:=min; minz:=-1;
 { try
   tau1:=Table2tau1.Value; tau2:=Table2tau2.Value;
   k1:=Table2K1.Value/tau1; k2:=Table2K2.Value/tau2;
  except
 k1:=1;k2:=1; tau1:=1;tau2:=1;
 end;
   h10:=hk1*k1;h20:=hk2*k2;
   t10:=tk1;t20:=tk2;  }
flag:=1;
for i:=1 to n-1 do begin
z1:=i*h;
g1:=fr3(z1,p1,3);
if n2<>0 then begin
g2:=fr3(z1,p2,3);
if (g1>=g2)and (flag=1) then begin
form2.Chart1.Series[5].AddXY(z1,g1);end
else begin
if flag=1 then flag:=2;
if (g2>g1)and (flag=2) then begin
form2.Chart1.Series[6].AddXY(z1,g2);end
else flag:=-1;
end;

if (abs(g1-g2)<min)and(g1>=g2)then begin
    mint:=g1;
    minx:=z1;
    min:=abs(g1-g2);
 end;
end;
 t0:=fx1_(z1);
  form2.Chart1.Series[7].addxy(z1,t0);
 if min0>t0 then begin
     min0:=t0;
     minz:=z1;
  end;
end;
showmessage('Теор: y1_min='+floattostr(minz)+' T_K_min='+floattostr(min0));
showmessage('Рекурсия:y1_min='+floattostr(minx)+' T_K_min='+floattostr(mint));

 //вычисление погрешности
  try
   zmin1:= Table2X1_az.Value;
   t12:=Table2t_az.Value;
       form2.Chart1.Series[7].clear;
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
    form2.Chart1.Series[0].AddXY(z1,t12);
   // lnx1:=h10/r/t10*(1-t10/t12)-ln(g1_l);
   // lnx2:=h20/r/t20*(1-t20/t12)-ln(g2_l);
    lnx1:=h10/r/t10*(1-t10/t12)-lng1;
    lnx2:=h20/r/t20*(1-t20/t12)-lng2;
    w1:=exp(lnx1);  //левая ветвь
    w2:=exp(lnx2);  //правая ветвь
    if (w1>=a) and (w1<=b) {and (w1>=w1_)} then begin
    form2.Chart1.Series[3].AddXY(w1,t12);
  //? l:=poisk_temp(t12,t[1],n-1);
   //  y[1,l]:=w1;
    end;
    if (w2>=a) and (w2<=b) {and (w2<=w2_)} then //? w2>=w2_
    begin
    form2.Chart1.Series[4].AddXY(1-w2,t12);
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
    form2.Chart1.Series[1].AddXY(z0,t12);

    x1:=w1/(w1+(1-w1)/k12); //?
//? x2:=w2/((1-w2)/k12+w2); //?
    x2:=w2/((1-w2)*k12+w2); //?
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
   // q2:=x2/((1-x2)/m12+x2); //?
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
    (*//расчет коэффициентов по модели Редлиха-Кистера
    lng1:=-ln(zmin1)+h10/r/t10*(1-t10/t12);  //?
    lng2:=-ln(1-zmin1)+h20/r/t20*(1-t20/t12);//?
    c:=(lng1/2/sqr(1-zmin1)-lng2/2/sqr(zmin1));
    d:=lng1/sqr(1-zmin1)-(3*zmin1-(1-zmin1))*c;
    min:=1;minx1:=1;mint1:=1;s:=0;k:=0;
    minq:=1;minq1:=1;mint3:=1;sq:=0;k_:=0;
    m12:=m1*k1_/m2/k2_;
    form2.Chart1.Series[7].clear;
    form2.Chart1.Series[7].tag:=8;
    form2.Chart1.Series[4].clear;
    form2.Chart1.Series[4].tag:=5;
    form2.Chart1.Series[7].title:='T(x_mass)_мод.';
    form2.Chart1.Series[4].title:='T(x_exp)_мод.';
    for i:=1 to n-1 do begin
  //z1:=Xm[1,i]/(xm[1,i]+xm[2,i]*k12);
   z1:=i*h;
   z2:=1-z1;
   g1:=fx1_(z1);
   lng1:=sqr(z2)*(d+c*(3*z1-z2));
   lng2:=sqr(z1)*(d+c*(z1-3*z2));
   lnx1:=h10/r/t10*(1-t10/g1)-lng1;
   lnx2:=h20/r/t20*(1-t20/g1)-lng2;
   w1:=exp(lnx1);  //левая ветвь
   w2:=exp(lnx2);  //правая ветвь
   //экспериментальные мольные доли
   x1:=w1/(w1+(1-w1)/k12_);
   x2:=w2/((1-w2)*k12_+w2); //?
   form2.Chart1.Series[4].AddXY(x1,g1);
   form2.Chart1.Series[4].AddXY(1-x2,g1);
   J1:=poisk_mas(x1,ym[2],n2);
   if (j1>0) then begin
    a_lin:=(t[2,J1+1]-t[2,j1])/(ym[2,j1+1]-ym[2,j1]);
    b_lin:=t[2,J1]-a_lin*ym[2,j1];
    g2:=a_lin*x1+b_lin;
    inc(k);  s:=s+sqr(g1-g2);
   end else begin
   J1:=poisk_mas(1-x2,ym[1],n1);
   if (j1>0) then begin
    a_lin:=(t[1,J1+1]-t[1,j1])/(ym[1,j1+1]-ym[1,j1]);
    b_lin:=t[1,J1+1]-a_lin*ym[1,j1+1];
    g2:=a_lin*(1-x2)+b_lin;
    inc(k);  s:=s+sqr(g1-g2);
   end;

   end;
    if abs(x1-(1-x2))<=min then begin
    min:=abs(x1-(1-x2));
    minx1:=x1;
    mint1:=t12;
    end;
    //массовые доли
    q1:=x1/(x1+(1-x1)/m12);
    q2:=x2/((1-x2)*m12+x2); //?
//    if (q1>=a) and (q1<=b) {and (q1>=q1_)} then
    form2.Chart1.Series[7].AddXY(q1,g1);
//    if (q2>=a) and (q2<=b) {and (q2<=q2_)} then   //? (q2>=q2_)
    form2.Chart1.Series[7].AddXY(1-q2,g1);
   J1:=poisk_mas(q1,yv[2],n2);
   if (j1>0) then begin
    a_lin:=(t[2,J1+1]-t[2,j1])/(yv[2,j1+1]-yv[2,j1]);
    b_lin:=t[2,J1]-a_lin*yv[2,j1];
    g2:=a_lin*q1+b_lin;
    inc(k_);  sq:=sq+sqr(g1-g2);
   end else begin
   J1:=poisk_mas(1-q2,yv[1],n1);
   if (j1>0) then begin
    a_lin:=(t[1,J1+1]-t[1,j1])/(yv[1,j1+1]-yv[1,j1]);
    b_lin:=t[1,J1+1]-a_lin*yv[1,j1+1];
    g2:=a_lin*(1-q2)+b_lin;
    inc(k_);  sq:=sq+sqr(g1-g2);
   end;

   end;
    if abs(q1-(1-q2))<=minq then begin
    minq:=abs(q1-(1-q2));
    minq1:=q1;
    mint3:=t12;
    end;
   end;
   *)
   tau:=sqrt(s/(k-2));
   tauq:=sqrt(sq/(k_-2));
   minq:=minx/(minx+(1-minx)/m12);
   delta_q:=abs(minq-minq1)/minq*100;
   delta_x:=abs(minx-minx1)/minx*100;
   delta_t:=abs(mint-mint1)/mint*100;
   showmessage('Модель:exp y1_min='+floattostr(minx1)+' T_K_min='+floattostr(mint1)+chr(13)+
   'Модель:mass y1_min='+floattostr(minq1)+' T_K_min='+floattostr(mint3));
   showmessage('sigma_exp='+floattostr(tau)+ ' sigma_mass='+floattostr(tauq)+ chr(13)+
   'По рекурсии: abs_y='+floattostr(abs(minx-minx1))+ ' otn_x='+floattostr(delta_x)+chr(13)+
   ' abs_q='+floattostr(abs(minq-minq1))+ ' otn_q='+floattostr(delta_q)+chr(13)+
   ' abs_T='+floattostr(abs(mint-mint1))+' otn_T='+floattostr(delta_t));

   minx:=x_az;//strtofloat(form1.edit1.text);
   mint:=t_az;//strtofloat(form1.edit2.text);
   minq:=minx/(minx+(1-minx)/m12);
   delta_x:=abs(minx-minx1)/minx*100;
   delta_q:=abs(minq-minq1)/minq*100;
   delta_t:=abs(mint-mint1)/mint*100;
   showmessage('По эксперименту: abs_y='+floattostr(abs(minx-minx1))+ ' otn_y='+floattostr(delta_x)+chr(13)+
   ' abs_q='+floattostr(abs(minq-minq1))+ ' otn_q='+floattostr(delta_q)+chr(13)+
   ' abs_T='+floattostr(abs(mint-mint1))+' otn_T='+floattostr(delta_t));
   except
     showmessage('В базе данных нет данных о точке азеотропии!');
   end;

end;

procedure TForm4.MenuItem9Click(Sender: TObject);
var
   n,m,i,j:integer;
   s,s0,r1,a_1,b_1,c_1,a_2,b_2,c_2,p0,c_simona,
   t_begin,t_end,tt,ht,ss2,ss3,ts,a,b,c,
   hk1,hp1,tk1,tp1,m1,h:myreal;
   p1:masd;
   p,t,v: array[1..4]of masd;
begin
m1:=Table1MolMassa.value;
hp1:=Table1Teplota.value;
tp1:=Table1Temperature.value+kelvin;
m:=form1.fn.value;
h:=1/m;
n:=table9.RecordCount;
setlength(p[1],n+1);
setlength(t[1],n+1);
setlength(p[2],n+1);
setlength(p[3],n+1);
table9.First;
for i:=1 to n do begin
if Table9P_MPa.Value <>0 then
p[1,i]:=Table9P_MPa.Value else
p[1,i]:=Table9P_atm.value*p_atm;
if Table9T_K.Value<>0 then
t[1,i]:=Table9T_K.Value
else
t[1,i]:=Table9T_C.Value+kelvin;
table9.Next;
end;
setlength(p1,4);
polynrecurs(t[1],p[1],n,3,p1,r1);
a_1:=p1[3];
b_1:=p1[2];
c_1:=p1[1];
showmessage('A='+floattostr(a_1)+
' B='+floattostr(b_1)+' C='+floattostr(c_1)+
' R='+floattostr(r1));
//c_2:=(4*a_1*tp1+b_1)/(2*a_1*tp1+b_1);
c_2:=1+2*a_1*tp1/(2*a_1*tp1+b_1);
b_2:=2*a_1/c_2/(c_2-1)/power(tp1,c_2-2);
a_2:=a_1*tp1*tp1+b_1*tp1+c_1-b_2*power(tp1,c_2);
showmessage('P0=a*='+floattostr(a_2)+
' b*='+floattostr(b_2)+' c*='+floattostr(c_2));

ss2:=0;
ss3:=0;
for i:=1 to n do begin
p[3,i]:=a_1*sqr(t[1,i])+b_1*t[1,i]+c_1;
p[2,i]:=a_2+b_2*power(t[1,i],c_2);
ss2:=ss2+sqr(p[2,i]-p[1,i]);
ss3:=ss2+sqr(p[3,i]-p[1,i]);
end;
ss2:=sqrt(ss2/(n-2));
ss3:=sqrt(ss3/(n-2));
s:=ss2; c:=c_2; a:=a_2;b:=b_2; ts:=tp1;
t_begin:=strtofloat(form1.edit7.text)+kelvin;
t_end:=strtofloat(form1.edit8.text)+kelvin;
m:=form1.SpinEdit1.Value;
ht:=(t_end-t_begin)/m;
tt:=t_begin;
for j:= 1 to m do begin
tt:=tt+ht*j;
c_2:=1+2*a_1*tt/(2*a_1*tt+b_1);
b_2:=2*a_1/c_2/(c_2-1)/power(tt,c_2-2);
a_2:=a_1*tt*tt+b_1*tt+c_1-b_2*power(tt,c_2);
ss2:=0;
for i:=1 to n do begin
p[2,i]:=a_2+b_2*power(t[1,i],c_2);
ss2:=ss2+sqr(p[2,i]-p[1,i]);
end;
ss2:=sqrt(ss2/(n-2));
if s>ss2 then begin s:=ss2; ts:=tt; c:=c_2; a:=a_2;b:=b_2;end;
end;
showmessage('P0=a*='+floattostr(a)+
' b*='+floattostr(b)+' c*='+floattostr(c)
+'t*='+floattostr(ts));
showmessage('c_simona='+floattostr(c)+
' откл='+floattostr(s));
Table1.Edit;
if Table1C_Simona.value=0 then
Table1C_Simona.Value:=c;
if Table1P0.AsString='' then
Table1P0.Value:=a*1000;//кПа
table1.Post;
end;

procedure TForm4.PVT1Click(Sender: TObject);
var
   n,m,i:integer;
   s,s0,r1,a_1,b_1,c_1,hp1,tp1,m1,h:myreal;
   p1:masd;
   p,t,v,pv: masd;
begin
m1:=Table1MolMassa.value;
hp1:=Table1Teplota.value;
tp1:=Table1Temperature.value+kelvin;
m:=form1.fn.value;
h:=1/m;
n:=table9.RecordCount;
setlength(p,n+1);
setlength(t,n+1);
setlength(v,n+1);
SetLength(pv,n+1);
table9.First;
for i:=1 to n do begin
p[i]:=Table9P_MPa.Value;
t[i]:=Table9T_K.Value;
v[i]:=Table9V.value;
pv[i]:=p[i]*v[i];
table9.Next;
end;
setlength(p1,4);
polynrecurs(t,pv,n,3,p1,r1);
a_1:=p1[3];
b_1:=p1[2];
c_1:=p1[1];
table1.Edit;
Table1A_V.Value:=a_1;
Table1b_V.Value:=b_1;
Table1c_V.Value:=c_1;
table1.Post;
showmessage('A='+floattostr(a_1)+
' B='+floattostr(b_1)+' C='+floattostr(c_1)+
' R='+floattostr(r1));
end;

procedure TForm4.dV1Click(Sender: TObject);
var p,a_1,b_1,c_1,t,v:myreal;
i:integer;
begin
a_1:=Table1A_V.Value;
b_1:=Table1b_V.Value;
c_1:=Table1c_V.Value;
table9.First;
for i:=1 to table9.RecordCount do begin
p:=Table9P_MPa.Value;
t:=Table9T_K.Value;
v:=(a_1*sqr(t)+b_1*t+c_1)/p;
if Table9V.asstring='' then  begin
table9.Edit;
Table9V.Value:=v;
table9.Post;
end;
table9.Next;
end;
end;

procedure TForm4.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var t:tdbgrid;
  n,m,i,j:integer;
  f:TextFile;
  begin
if key=113 then begin   //save - F2
t:=sender as tdbgrid;
assignfile(f,'dbgrid.txt');rewrite(f);
m:=t.Columns.Count;
n:=t.DataSource.DataSet.RecordCount;
t.DataSource.DataSet.First;
for i:=1 to n do
begin
   write(f,i);
   for j:=1 to m do
    write(f,chr(9),t.DataSource.DataSet.fields[j-1].asstring);
   writeln(f);
   t.DataSource.DataSet.next;
end;
closefile(f);
end;

end;

procedure TForm4.DBGrid9DblClick(Sender: TObject);
var i:integer;
begin
table9.First;
for i:=1 to table9.RecordCount do begin
table9.Edit;
 if Table9P_MPa.Value<>0 then begin
Table9P_mm.value:=Table9P_MPa.value/pascual*1.e6;
Table9P_atm.value:=Table9P_MPa.value*9.8692326671601;
end
else
if Table9P_mm.value<>0 then begin
Table9P_mpa.value:=Table9P_mm.value*pascual*1.e-6;
Table9P_atm.value:=Table9P_mm.value*0.0013157858376511;
end else
  if Table9P_atm.value<>0 then begin
Table9P_MPa.value:=Table9P_atm.value*0.101325;
Table9P_mm.value:=Table9P_Mpa.value/pascual*1.e6;
end;

  if table9T_C.value<>0 then
table9T_k.Value:=table9T_c.value+kelvin
else
if table9T_K.value<>0 then
table9T_C.Value:=table9T_K.value-kelvin;

table9.Post;
table9.Next;
end;
end;

procedure TForm4.popup18Click(Sender: TObject);
var k,i,j:integer;
begin
k:=0;
 FrOneComponent.strg1.ColCount:=14;
 FrOneComponent.strg1.rowCount:=table1.RecordCount;
  FrOneComponent.strg1.cells[0,0]:= dbgrid3.DataSource.DataSet.fields[0].FieldName;
  FrOneComponent.strg1.cells[1,0]:= dbgrid3.DataSource.DataSet.fields[1].FieldName;
  FrOneComponent.strg1.cells[2,0]:= dbgrid3.DataSource.DataSet.fields[2].FieldName;
  FrOneComponent.strg1.cells[3,0]:= dbgrid3.DataSource.DataSet.fields[4].FieldName;
  FrOneComponent.strg1.cells[4,0]:= dbgrid3.DataSource.DataSet.fields[5].FieldName;
  FrOneComponent.strg1.cells[5,0]:= dbgrid3.DataSource.DataSet.fields[6].FieldName;
  FrOneComponent.strg1.cells[6,0]:= dbgrid3.DataSource.DataSet.fields[8].FieldName;
  FrOneComponent.strg1.cells[7,0]:= dbgrid3.DataSource.DataSet.fields[9].FieldName;
  FrOneComponent.strg1.cells[8,0]:= dbgrid3.DataSource.DataSet.fields[10].FieldName;
  FrOneComponent.strg1.cells[9,0]:= dbgrid3.DataSource.DataSet.fields[12].FieldName;
  FrOneComponent.strg1.cells[10,0]:= dbgrid3.DataSource.DataSet.fields[13].FieldName;
  FrOneComponent.strg1.cells[11,0]:= dbgrid3.DataSource.DataSet.fields[14].FieldName;
  FrOneComponent.strg1.cells[12,0]:= dbgrid3.DataSource.DataSet.fields[15].FieldName;
  FrOneComponent.strg1.cells[13,0]:= dbgrid3.DataSource.DataSet.fields[40].FieldName;





    dbgrid3.DataSource.DataSet.first;

for i:=1 to table1.RecordCount do begin
if dbgrid3.SelectedRows.CurrentRowSelected then begin
   inc(k);
FrOneComponent.strg1.cells[0,k]:=dbgrid3.DataSource.DataSet.fields[0].asstring;
FrOneComponent.strg1.cells[1,k]:=dbgrid3.DataSource.DataSet.fields[1].asstring;
FrOneComponent.strg1.cells[2,k]:=dbgrid3.DataSource.DataSet.fields[2].asstring;
FrOneComponent.strg1.cells[3,k]:=dbgrid3.DataSource.DataSet.fields[4].asstring;
FrOneComponent.strg1.cells[4,k]:=dbgrid3.DataSource.DataSet.fields[5].asstring;
FrOneComponent.strg1.cells[5,k]:=dbgrid3.DataSource.DataSet.fields[6].asstring;
FrOneComponent.strg1.cells[6,k]:=dbgrid3.DataSource.DataSet.fields[8].asstring;
FrOneComponent.strg1.cells[7,k]:=dbgrid3.DataSource.DataSet.fields[9].asstring;
FrOneComponent.strg1.cells[8,k]:=dbgrid3.DataSource.DataSet.fields[10].asstring;
FrOneComponent.strg1.cells[9,k]:=dbgrid3.DataSource.DataSet.fields[12].asstring;
FrOneComponent.strg1.cells[10,k]:=dbgrid3.DataSource.DataSet.fields[13].asstring;
FrOneComponent.strg1.cells[11,k]:=dbgrid3.DataSource.DataSet.fields[14].asstring;
FrOneComponent.strg1.cells[12,k]:=dbgrid3.DataSource.DataSet.fields[15].asstring;
FrOneComponent.strg1.cells[13,k]:=dbgrid3.DataSource.DataSet.fields[40].asstring;
 end;
   dbgrid3.DataSource.DataSet.next;

end;
 FrOneComponent.strg1.rowCount:=k+1;
 n:=FrOneComponent.strg1.ColCount;
 FrOneComponent.strg1.ColCount:=n+19;
 FrOneComponent.strg1.cells[n,0]:='N';
 FrOneComponent.strg1.cells[n+1,0]:='H_пл(эксп)';
 FrOneComponent.strg1.cells[n+2,0]:='H_пл(мод)';
 FrOneComponent.strg1.cells[n+3,0]:='H_пл(крит)';
 FrOneComponent.strg1.cells[n+4,0]:='H_исп(эксп)';
 FrOneComponent.strg1.cells[n+5,0]:='H_исп(мод)';
 FrOneComponent.strg1.cells[n+6,0]:='H_исп(крит)';
 FrOneComponent.strg1.cells[n+7,0]:='Т_пл(эксп)';
 FrOneComponent.strg1.cells[n+8,0]:='Т_пл(мод)';
 FrOneComponent.strg1.cells[n+9,0]:='Т_пл(крит)';
 FrOneComponent.strg1.cells[n+10,0]:='Т_кип(эксп)';
 FrOneComponent.strg1.cells[n+11,0]:='Т_кип(мод)';
 FrOneComponent.strg1.cells[n+12,0]:='Т_кип(крит)';
 FrOneComponent.strg1.cells[n+13,0]:='С_Симона(эксп)';
 FrOneComponent.strg1.cells[n+14,0]:='С_Симона(мод)';
 FrOneComponent.strg1.cells[n+15,0]:='С_Симона(крит)';
 FrOneComponent.strg1.cells[n+16,0]:='P_0(эксп)';
 FrOneComponent.strg1.cells[n+17,0]:='P_0(мод)';
 FrOneComponent.strg1.cells[n+18,0]:='P_0(крит)';
 FrOneComponent.show;
end;


procedure TForm4.menuPTHlgClick(Sender: TObject);
var
   n,m,i:integer;
   a_ant,b_ant,c_ant,s,s0,s1,r1,a_2,b_2,c_2,d_2,a_1,b_1,c_1,hp1,tp1,tkr1,zkr1,h:myreal;
   p1:masd;
   p,t,ht,pt,y,z: masd;
begin
//зависимость Р(Т) и Н(Т) жидкость-пар
hp1:=Table1H_kipen.value;
tp1:=Table1T_Kelvin.value+kelvin;
tkr1:=Table1T_kr.value;
zkr1:=Table1Z_kr.value;
a_ant:=Table1A_ant.Value;
b_ant:=Table1b_ant.Value;
c_ant:=Table1c_ant.Value;
n:=table9.RecordCount;
setlength(p,n+1);
setlength(t,n+1);
setlength(ht,n+1);
SetLength(pt,n+1);
SetLength(y,n+1);
SetLength(z,n+1);
table9.First;
for i:=1 to n do begin
p[i]:=Table9P_MPa.Value;
t[i]:=Table9T_K.Value;
ht[i]:=H_emp(hp1,tp1,tkr1,zkr1,t[i]);
table9.Next;
end;
setlength(p1,4);
polynrecurs(t,ht,n,3,p1,r1);
a_1:=p1[3];
b_1:=p1[2];
c_1:=p1[1];
a_2:=p1[1]/r;
b_2:=p1[2]/r;
c_2:=p1[3]/r;
d_2:=ln(0.101325)-(-a_2/tp1+b_2*ln(tp1)+c_2*tp1);
showmessage('a2='+floattostr(a_1)+
' a1='+floattostr(b_1)+' a0='+floattostr(c_1)+
' R='+floattostr(r1));
 showmessage('A='+floattostr(a_2)+
' B='+floattostr(b_2)+' C='+floattostr(c_2)+
' D='+floattostr(d_2));
form3.CU.Cells[1,1]:=floattostr(a_1);
form3.CU.Cells[2,1]:=floattostr(b_1);
form3.CU.Cells[3,1]:=floattostr(c_1);
form3.CU.Cells[0,1]:=floattostr(r1);
form3.CU.Cells[1,2]:=floattostr(a_2);
form3.CU.Cells[2,2]:=floattostr(b_2);
form3.CU.Cells[3,2]:=floattostr(c_2);
form3.CU.Cells[4,2]:=floattostr(d_2);
form3.CU.Cells[1,0]:='a';
form3.CU.Cells[2,0]:='b';
form3.CU.Cells[3,0]:='c';
form3.CU.Cells[4,0]:='d';
form3.CU.Cells[0,0]:='korr';
s:=0;s0:=0;s1:=0;
form3.VD.RowCount:=n+2;
form3.VD.colcount:=10;
form3.VD.Cells[0,0]:='i';
form3.VD.Cells[1,0]:='T,K';
form3.VD.Cells[2,0]:='P,MПа';
form3.VD.Cells[3,0]:='P_рек,MПа';
form3.VD.Cells[4,0]:='P-Р_рек,MПа';
form3.VD.Cells[5,0]:='P_ant,MПа';
form3.VD.Cells[6,0]:='P-Р_ant,MПа';
form3.VD.Cells[7,0]:='Н,Дж/моль';
form3.VD.Cells[8,0]:='Н_рек,Дж/моль';
form3.VD.Cells[9,0]:='Н-Н_рек,Дж/моль';
for i:=1 to n do begin
try
pt[i]:=exp(-a_2/t[i]+b_2*ln(t[i])+c_2*t[i]+d_2);
z[i]:=p_antuan(t[i],a_ant,b_ant,c_ant)/1000;
y[i]:=c_1+b_1*t[i]+a_1*sqr(t[i]);
s:=s+sqr(p[i]-pt[i]);
s1:=s1+sqr(p[i]-z[i]);
s0:=s0+sqr(y[i]-ht[i]);
form3.VD.Cells[0,i]:=inttostr(i);
form3.VD.Cells[1,i]:=floattostr(t[i]);
form3.VD.Cells[2,i]:=floattostr(p[i]);
form3.VD.Cells[3,i]:=floattostr(pt[i]);
form3.VD.Cells[4,i]:=floattostr(p[i]-pt[i]);
form3.VD.Cells[5,i]:=floattostr(z[i]);
form3.VD.Cells[6,i]:=floattostr(p[i]-z[i]);
form3.VD.Cells[7,i]:=floattostr(ht[i]);
form3.VD.Cells[8,i]:=floattostr(y[i]);
form3.VD.Cells[9,i]:=floattostr(ht[i]-y[i]);
except
continue;
end;
end;
s:=sqrt(s/(n-1));
s0:=sqrt(s0/(n-1));
s1:=sqrt(s1/(n-1));
form3.VD.Cells[4,n+1]:=floattostr(s);
form3.VD.Cells[6,n+1]:=floattostr(s1);
form3.VD.Cells[9,n+1]:=floattostr(s0);
form3.VD.Cells[0,n+1]:='sigma';
 showmessage('sigma(P_rec)='+floattostr(s)+ 'sigma(P_ant)='+floattostr(s1)+
' sigma(H_rec)='+floattostr(s0));
form3.pagecontrol1.ActivePage:=form3.TabSheet2;
form3.Show;
end;

procedure TForm4.menuPTHslClick(Sender: TObject);
var
   n,m,i:integer;
   s,s0,r1,a_2,b_2,c_2,d_2,a_1,b_1,c_1,hp1,tp1,tkr1,zkr1,h:myreal;
   p1:masd;
   p,t,ht,pt,y: masd;
begin
//зависимость Р(Т) и Н(Т) жидкость-твердое
hp1:=Table1teplota.value;
tp1:=Table1Temperature.value+kelvin;
tkr1:=Table1T_kr.value;
zkr1:=Table1Z_kr.value;
n:=table9.RecordCount;
setlength(p,n+1);
setlength(t,n+1);
setlength(ht,n+1);
SetLength(pt,n+1);
SetLength(y,n+1);
table9.First;
for i:=1 to n do begin
p[i]:=Table9P_MPa.Value;
t[i]:=Table9T_K.Value;
ht[i]:=H_emp(hp1,tp1,tkr1,zkr1,t[i]);
table9.Next;
end;
setlength(p1,4);
polynrecurs(t,ht,n,3,p1,r1);
a_1:=p1[3];
b_1:=p1[2];
c_1:=p1[1];
a_2:=p1[1]/r;
b_2:=p1[2]/r;
c_2:=p1[3]/r;
d_2:=ln(0.101325)-(-a_2/tp1+b_2*ln(tp1)+c_2*tp1);
showmessage('a2='+floattostr(a_1)+
' a1='+floattostr(b_1)+' a0='+floattostr(c_1)+
' R='+floattostr(r1));
 showmessage('A='+floattostr(a_2)+
' B='+floattostr(b_2)+' C='+floattostr(c_2)+
' D='+floattostr(d_2));
form3.CU.Cells[1,1]:=floattostr(a_1);
form3.CU.Cells[2,1]:=floattostr(b_1);
form3.CU.Cells[3,1]:=floattostr(c_1);
form3.CU.Cells[0,1]:=floattostr(r1);
form3.CU.Cells[1,2]:=floattostr(a_2);
form3.CU.Cells[2,2]:=floattostr(b_2);
form3.CU.Cells[3,2]:=floattostr(c_2);
form3.CU.Cells[4,2]:=floattostr(d_2);
form3.CU.Cells[1,0]:='a';
form3.CU.Cells[2,0]:='b';
form3.CU.Cells[3,0]:='c';
form3.CU.Cells[4,0]:='d';
form3.CU.Cells[0,0]:='korr';
s:=0;s0:=0;
form3.VD.RowCount:=n+2;
form3.VD.colcount:=8;
form3.VD.Cells[0,0]:='i';
form3.VD.Cells[1,0]:='T,K';
form3.VD.Cells[2,0]:='P,MПа';
form3.VD.Cells[3,0]:='P_рек,MПа';
form3.VD.Cells[4,0]:='P-Р_рек,MПа';
form3.VD.Cells[5,0]:='Н,Дж/моль';
form3.VD.Cells[6,0]:='Н_рек,Дж/моль';
form3.VD.Cells[7,0]:='Н-Н_рек,Дж/моль';
for i:=1 to n do begin
try
pt[i]:=exp(-a_2/t[i]+b_2*ln(t[i])+c_2*t[i]+d_2);
y[i]:=c_1+b_1*t[i]+a_1*sqr(t[i]);
s:=s+sqr(p[i]-pt[i]);
s0:=s0+sqr(y[i]-ht[i]);
form3.VD.Cells[0,i]:=inttostr(i);
form3.VD.Cells[1,i]:=floattostr(t[i]);
form3.VD.Cells[2,i]:=floattostr(p[i]);
form3.VD.Cells[3,i]:=floattostr(pt[i]);
form3.VD.Cells[4,i]:=floattostr(p[i]-pt[i]);
form3.VD.Cells[5,i]:=floattostr(ht[i]);
form3.VD.Cells[6,i]:=floattostr(y[i]);
form3.VD.Cells[7,i]:=floattostr(ht[i]-y[i]);
except
continue;
end;
end;
s:=sqrt(s/(n-1));
s0:=sqrt(s0/(n-1));
form3.VD.Cells[4,n+1]:=floattostr(s);
form3.VD.Cells[7,n+1]:=floattostr(s0);
form3.VD.Cells[0,n+1]:='sigma';
 showmessage('sigma(P_rec)='+floattostr(s)+
' sigma(H_rec)='+floattostr(s0));
form3.pagecontrol1.ActivePage:=form3.TabSheet2;
form3.Show;
end;

procedure TForm4.menuHTslClick(Sender: TObject);
var
   n,m,i:integer;
   s,s0,r1,a_2,b_2,c_2,d_2,a_1,b_1,c_1,hp1,tp1,tkr1,zkr1,h:myreal;
   p1:masd;
   t,ht,hp,y: masd;
begin
//зависимость Н(Т) жидкость-твердое
hp1:=Table1teplota.value;
tp1:=Table1Temperature.value+kelvin;
tkr1:=Table1T_kr.value;
zkr1:=Table1Z_kr.value;
n:=table6.RecordCount;
setlength(t,n+1);
setlength(ht,n+1);
setlength(hp,n+1);
SetLength(y,n+1);
table6.First;
for i:=1 to n do begin
t[i]:=Table6T_K.Value;
hp[i]:=Table6H_isp.Value;
ht[i]:=H_emp(hp1,tp1,tkr1,zkr1,t[i]);
table6.Next;
end;
setlength(p1,4);
polynrecurs(t,hp,n,3,p1,r1);
a_1:=p1[3];
b_1:=p1[2];
c_1:=p1[1];
a_2:=p1[1]/r;
b_2:=p1[2]/r;
c_2:=p1[3]/r;
d_2:=ln(0.101325)-(-a_2/tp1+b_2*ln(tp1)+c_2*tp1);
showmessage('a2='+floattostr(a_1)+
' a1='+floattostr(b_1)+' a0='+floattostr(c_1)+
' R='+floattostr(r1));
 showmessage('A='+floattostr(a_2)+
' B='+floattostr(b_2)+' C='+floattostr(c_2)+
' D='+floattostr(d_2));
form3.CU.Cells[1,1]:=floattostr(a_1);
form3.CU.Cells[2,1]:=floattostr(b_1);
form3.CU.Cells[3,1]:=floattostr(c_1);
form3.CU.Cells[0,1]:=floattostr(r1);
form3.CU.Cells[1,2]:=floattostr(a_2);
form3.CU.Cells[2,2]:=floattostr(b_2);
form3.CU.Cells[3,2]:=floattostr(c_2);
form3.CU.Cells[4,2]:=floattostr(d_2);
form3.CU.Cells[1,0]:='a';
form3.CU.Cells[2,0]:='b';
form3.CU.Cells[3,0]:='c';
form3.CU.Cells[4,0]:='d';
form3.CU.Cells[0,0]:='korr';
s:=0;s0:=0;
form3.VD.RowCount:=n+2;
form3.VD.colcount:=7;
form3.VD.Cells[0,0]:='i';
form3.VD.Cells[1,0]:='T,K';
form3.VD.Cells[2,0]:='Н_эксп,Дж/моль';
form3.VD.Cells[3,0]:='Н_рек,Дж/моль';
form3.VD.Cells[4,0]:='Н-Н_рек,Дж/моль';
form3.VD.Cells[5,0]:='Н_эмп,Дж/моль';
form3.VD.Cells[6,0]:='Н-Н_эмп,Дж/моль';
for i:=1 to n do begin
try
y[i]:=c_1+b_1*t[i]+a_1*sqr(t[i]);
s:=s+sqr(hp[i]-y[i]);
s0:=s0+sqr(hp[i]-ht[i]);
form3.VD.Cells[0,i]:=inttostr(i);
form3.VD.Cells[1,i]:=floattostr(t[i]);
form3.VD.Cells[2,i]:=floattostr(hp[i]);
form3.VD.Cells[3,i]:=floattostr(y[i]);
form3.VD.Cells[4,i]:=floattostr(hp[i]-y[i]);
form3.VD.Cells[5,i]:=floattostr(ht[i]);
form3.VD.Cells[6,i]:=floattostr(hp[i]-ht[i]);
except
continue;
end;
end;
s:=sqrt(s/(n-1));
s0:=sqrt(s0/(n-1));
form3.VD.Cells[4,n+1]:=floattostr(s);
form3.VD.Cells[6,n+1]:=floattostr(s0);
form3.VD.Cells[0,n+1]:='sigma';
 showmessage('sigma(H_rec)='+floattostr(s)+
' sigma(H_эмп)='+floattostr(s0));
form3.pagecontrol1.ActivePage:=form3.TabSheet2;
form3.Show;
end;

procedure TForm4.log101Click(Sender: TObject);
var
 i0,i1,i2:integer;
 p1_0,p2_0,a1,a2,b1,b2,c1,c2,tk1,tk2,tc:MyReal;
 old:string;
begin
//расчет р10_, р2_0 по уравнению Антуана
old:=table2.Bookmark;
i0:=Table2Id.Value;
i1:=Table2Id_Name.Value;
i2:=Table2Id_Names.Value;
tc:=table2tc_cmecu.value;
table1.FindKey([i1]);
a1:=Table1A_ant.Value;
b1:=Table1B_ant.Value;
c1:=Table1C_ant.Value;
table1.FindKey([i2]);
a2:=Table1A_ant.Value;
b2:=Table1B_ant.Value;
c2:=Table1C_ant.Value;
table1.FindKey([i1]);
table2.Bookmark:=old;

p1_0:=power(10,a1-b1/(c1+tc))*1000; //уравнение Антуана
p2_0:=power(10,a2-b2/(c2+tc))*1000; //перевод из мм рт.ст. в Паскаль
showmessage('P1_0='+floattostr(p1_0)+' P2_0='+floattostr(p2_0));
Table2.Edit;
Table2p1_0.Value:=p1_0;
Table2p2_0.Value:=p2_0;
table2.post;
end;



end.
