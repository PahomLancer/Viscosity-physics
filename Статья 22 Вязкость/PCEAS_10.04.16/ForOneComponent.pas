unit ForOneComponent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFrOneComponent = class(TForm)
    StrG1: TStringGrid;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOneComponent: TFrOneComponent;
  n,c:integer;

implementation
  uses myfunct,grafik;
{$R *.dfm}

procedure TFrOneComponent.Button1Click(Sender: TObject);
var k,l,i,na,f,code:integer;
m,tp,tk,hp,hk,zkr,tkr,pkr,p0,t0,csimona,
p_0,t_0,h_p,h_k,t_p,t_k,c_simona:myreal;
s:string;
koef_c,koef_p0,koef_t0,koef_hp,koef_hk,koef_tp,koef_tk:
array[1..3,1..3]of myreal;
begin
n:=14;//strg1.ColCount;
k:=strg1.rowcount;
for i:=1 to k-1 do begin
m:=strtofloat(strg1.Cells[5,i]);
try
tp:=strtofloat(StrG1.Cells[4,i])+kelvin;
except
tp:=0;
end;
try
tk:=strtofloat(strg1.Cells[7,i])+kelvin;
except
tk:=0;
end;
try
hp:=strtofloat(strg1.Cells[3,i]);
except
hp:=0;
end;
try
hk:=strtofloat(strg1.Cells[6,i]);
except
hk:=0;
end;
try
zkr:=strtofloat(strg1.Cells[10,i]);
except
zkr:=0;
end;
try
pkr:=1.e-3*strtofloat(strg1.Cells[8,i]);
except
pkr:=0;
end;
try
tkr:=strtofloat(strg1.Cells[9,i]);
except
tkr:=0;
end;
try
p0:=1.e-3*abs(strtofloat(strg1.Cells[11,i]));
except
p0:=0;
end;
try
t0:=strtofloat(strg1.Cells[12,i]);
except
t0:=0
end;
try
csimona:=strtofloat(strg1.Cells[13,i]);
except
csimona:=0;
end;
s:=strg1.Cells[2,i];
delete(s,1,1);
val(s,f,code);
if code=1 then na:=1 else
na:=strtoint(copy(s,1,code-1));
l:=1;
if odd(na) then l:=-1;
strg1.cells[n,i]:=inttostr(Na);

case RadioGroup1.ItemIndex of
0:begin
  // ������ 1<N<10
  if na<10 then begin
   koef_c[1,1]:=7/(na+2.1);
   koef_c[1,2]:=0.15;
   koef_c[1,3]:=-4.5;

   koef_p0[1,1]:=30;
   koef_p0[1,2]:=-0.080;
   koef_p0[1,3]:=178;

   koef_hp[1,1]:=(na-2);
   koef_hp[1,2]:=40*na;
   koef_hp[1,3]:=2440;

   koef_tp[1,1]:=67.624;
   koef_tp[1,2]:=2;
   koef_tp[1,3]:=51.781;

 end else
 if na<=20 then
 begin
   koef_c[1,1]:=1/(na-6.5);
   koef_c[1,2]:=0.8;
   koef_c[1,3]:=1.7;

   koef_p0[1,1]:=12;
   koef_p0[1,2]:=-0.040;
   koef_p0[1,3]:=200;

   koef_hp[1,1]:=(na-6.5);
   koef_hp[1,2]:=25*na*na;
   koef_hp[1,3]:=-6.5*na*na+8000;  ///!!!!

   koef_tp[1,1]:=95.751;
   koef_tp[1,2]:=0;
   koef_tp[1,3]:=24.398;

 end
 else begin
  if na<=30 then
   begin
   koef_tp[1,1]:=68;
   koef_tp[1,2]:=2;
   koef_tp[1,3]:=49.67;
  end else
  begin
   koef_tp[1,1]:=81.72;
   koef_tp[1,2]:=0;
   koef_tp[1,3]:=40.3;
  end;
   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;

   koef_hp[1,1]:=(na-2)/2;
   koef_hp[1,2]:=2000*na;
   koef_hp[1,3]:=2500;
 end;
   koef_hk[1,1]:=5*na/(na+2.1);
   koef_hk[1,2]:=0;
   koef_hk[1,3]:=1100*na+3300;

   koef_tk[1,1]:=182.77;
   koef_tk[1,2]:=0;
   koef_tk[1,3]:=43.401;
 end;
1:  //������
begin
   koef_c[1,1]:=1/(2*na-1);
   koef_c[1,2]:=0;
   koef_c[1,3]:=0.18*(na-1);

   koef_p0[1,1]:=250*na;
   koef_p0[1,2]:= -39.7*na*sqr(na);
   koef_p0[1,3]:=-1200;

   koef_hp[1,1]:=(na+1)/1.8;
   koef_hp[1,2]:=200*na;
   koef_hp[1,3]:=-2800/na;

   koef_hk[1,1]:=5*na/(na+2.7);
   koef_hk[1,2]:=-600;      // !!!
   koef_hk[1,3]:=21700;

   koef_tp[1,1]:=0;
   koef_tp[1,2]:=0;
   koef_tp[1,3]:=0;

   koef_tk[1,1]:=0;
   koef_tk[1,2]:=0;
   koef_tk[1,3]:=0;
   end;
2:  //���������� �������
begin
   koef_hp[1,1]:=na;
   koef_hp[1,2]:=na-1400;
   koef_hp[1,3]:=-2350*na;

   koef_hk[1,1]:=3*(na+1)*na/(na+2);
   koef_hk[1,2]:=0;
   koef_hk[1,3]:=-13800*na;    //!!!


   koef_tp[1,1]:=0;
   koef_tp[1,2]:=0;
   koef_tp[1,3]:=0;

   koef_tk[2,1]:=0;
   koef_tk[2,2]:=0;
   koef_tk[2,3]:=0;

   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;

end;
3:  //�������
begin
   koef_hp[1,1]:=(na*na+1)/26.5;
   koef_hp[1,2]:=0;
   koef_hp[1,3]:=-320*na+10755;

   koef_hk[1,1]:=na*(na+1.1)/1.7/(na-1);
   koef_hk[1,2]:=0;
   koef_hk[1,3]:=0;

   koef_tp[1,1]:=1.1;
   koef_tp[1,2]:=2.0;
   koef_tp[1,3]:=253.69580;

   koef_tk[1,1]:=0;
   koef_tk[1,2]:=0;
   koef_tk[1,3]:=0;

   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;
end;
4,5,6:  //����� ��������
begin
   koef_hp[1,1]:=(na*na+1)/26.5;
   koef_hp[1,2]:=0;
   koef_hp[1,3]:=-320*na+10755;

   koef_hk[1,1]:=na*(na+1.1)/1.15/(na-1);
   koef_hk[1,2]:=0;
   koef_hk[1,3]:=0;

   koef_tp[1,1]:=0;
   koef_tp[1,2]:=0;
   koef_tp[1,3]:=0;

   koef_tk[1,1]:=0;
   koef_tk[1,2]:=0;
   koef_tk[1,3]:=0;

   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;
end;
7://���������������
begin
   koef_hp[1,1]:=(na*na+1)/26.5;
   koef_hp[1,2]:=0;
   koef_hp[1,3]:=-320*na+10755;

   koef_hk[1,1]:=na*(na+1.1)/1.3259/(na-1);  //??
   koef_hk[1,2]:=0;
   koef_hk[1,3]:=0;

   koef_tp[1,1]:=-12.5;
   koef_tp[1,2]:=-0.15;
   koef_tp[1,3]:=258.05;

   koef_tk[1,1]:=0;
   koef_tk[1,2]:=0;
   koef_tk[1,3]:=0;

   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;
end;
8:  //������������ �������
begin
   koef_hp[1,1]:=na*1.098684;
   koef_hp[1,2]:=0;
   koef_hp[1,3]:=-26000*1.098684;

   koef_hk[1,1]:=3*(na+1)*na/(na+2)*0.298198;
   koef_hk[1,2]:=0;
   koef_hk[1,3]:=-13800*na*0.298198;


   koef_tp[1,1]:=0;
   koef_tp[1,2]:=0;
   koef_tp[1,3]:=0;

   koef_tk[1,1]:=0;
   koef_tk[1,2]:=0;
   koef_tk[1,3]:=0;

   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;
end;
9:  //���������
begin
   koef_hp[1,1]:=na*1.098684;
   koef_hp[1,2]:=0;
   koef_hp[1,3]:=-26000*1.098684;

   koef_hk[1,1]:=3*(na+1)*na/(na+2)*0.298198;
   koef_hk[1,2]:=0;
   koef_hk[1,3]:=-13800*na*0.298198;


   koef_tp[1,1]:=0;
   koef_tp[1,2]:=0;
   koef_tp[1,3]:=0;

   koef_tk[1,1]:=0;
   koef_tk[1,2]:=0;
   koef_tk[1,3]:=0;

   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;
end;
10:  //���������
begin
if (na>=3) and (na<=10) then
begin
   koef_hp[1,1]:=(na+1)/1.85;
   koef_hp[1,2]:=520*na;
   koef_hp[1,3]:=-3800/na;

   koef_hk[1,1]:=5.38*na/(na+0.47);
   koef_hk[1,2]:=90;
   koef_hk[1,3]:=7170;
end;
if (3<=na)and (na<10) then begin
 koef_tp[1,1]:=6.20;
 koef_tp[1,2]:=12.5*(na-5);
 koef_tp[1,3]:=142;
end else
if (10<=na)and (na<=20) then begin
 koef_tp[1,1]:=8.85;
 koef_tp[1,2]:=-1.3*(na-5);
 koef_tp[1,3]:=180;
end;

if (3<=na)and (na<=10) then begin     		
 koef_tk[1,1]:=-0.6784;//0.2983;
 koef_tk[1,2]:=26.741;//16.422;
 koef_tk[1,3]:=278.6;//302.77;
end;
   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;
end;
else
    begin
   koef_hp[1,1]:=0;
   koef_hp[1,2]:=0;
   koef_hp[1,3]:=0;

   koef_hk[1,1]:=0;
   koef_hk[1,2]:=0;
   koef_hk[1,3]:=0;


   koef_tp[1,1]:=0;
   koef_tp[1,2]:=0;
   koef_tp[1,3]:=0;

   koef_tk[1,1]:=0;
   koef_tk[1,2]:=0;
   koef_tk[1,3]:=0;

   koef_c[1,1]:=0;
   koef_c[1,2]:=0;
   koef_c[1,3]:=0;

   koef_p0[1,1]:=0;
   koef_p0[1,2]:=0;
   koef_p0[1,3]:=0;
end;
end;
case radiogroup3.ItemIndex of
0:begin
case Radiogroup2.itemindex of
0:begin//H_��
  h_p:=koef_hp[1,1]*tp*m/na+koef_hp[1,2]*l+koef_hp[1,3];
  strg1.cells[n+1,i]:=floattostr(h_p);
end;
1:begin//�_���
  h_k:=koef_hk[1,1]*tk*m/na+koef_hk[1,2]*l+koef_hk[1,3];
  strg1.cells[n+4,i]:=floattostr(h_k);
end;
2:begin//�_��
t_p:=koef_tp[1,1]*ln(na)+koef_tp[1,2]*(na-1)*l+koef_tp[1,3];
strg1.cells[n+7,i]:=floattostr(t_p);
end;
3:begin//�_���
t_k:=koef_tk[1,1]*ln(na)+koef_tk[1,2]*(na-1)*l+koef_tk[1,3];
strg1.cells[n+10,i]:=floattostr(t_k);
end;
4:begin//�_������
try
C_Simona:= koef_c[1,1]*hp/r/tp+l*koef_c[1,2]+koef_c[1,3];
except
C_Simona:=0;
end;
strg1.cells[n+13,i]:=floattostr(C_simona);
end;
5:begin//�_0
try
P_0:= koef_p0[1,1]*zkr*pkr*hp/r/tp+L*koef_p0[1,2]+koef_p0[1,3];
except
p_0:=0;
end;
strg1.cells[n+16,i]:=floattostr(P_0);
end;
end;
end;
1:begin
case Radiogroup2.itemindex of
0:begin//H_��
   h_p:=koef_hp[1,1]*tp*m/na+koef_hp[1,2]*l+koef_hp[1,3];
   strg1.cells[n+2,i]:=floattostr(h_p);
  end;
1:begin//�_���
  h_k:=koef_hk[1,1]*tk*m/na+koef_hk[1,2]*l+koef_hk[1,3];
  strg1.cells[n+5,i]:=floattostr(h_k);
end;
2:begin//�_��
t_p:=koef_tp[1,1]*ln(na)+koef_tp[1,2]*(na-1)*l+koef_tp[1,3];
strg1.cells[n+8,i]:=floattostr(t_p);
end;
3:begin//�_���
t_k:=koef_tk[1,1]*ln(na)+koef_tk[1,2]*(na-1)*l+koef_tk[1,3];
strg1.cells[n+11,i]:=floattostr(t_k);
end;
4:begin//�_������
 h_p:=koef_hp[1,1]*tp*m/na+koef_hp[1,2]*l+koef_hp[1,3];
 strg1.cells[n+1,i]:=floattostr(h_p);
 try
 C_Simona:= koef_c[1,1]*h_p/r/tp+l*koef_c[1,2]+koef_c[1,3];
 except
 C_Simona:=0;
 end;
 strg1.cells[n+14,i]:=floattostr(c_simona);
end;
5:begin//�_0
h_p:=koef_hp[1,1]*tp*m/na+koef_hp[1,2]*l+koef_hp[1,3];
strg1.cells[n+1,i]:=floattostr(h_p);
try
P_0:= koef_p0[1,1]*zkr*pkr*h_p/r/tp+L*koef_p0[1,2]+koef_p0[1,3];
except
P_0:=0;
end;
strg1.cells[n+17,i]:=floattostr(p_0);
end;
end;
end;
2:begin
case Radiogroup2.itemindex of
0:begin//H_��
  h_p:=koef_hp[1,1]*tkr*m/na+koef_hp[1,2]*l+koef_hp[1,3];
  strg1.cells[n+3,i]:=floattostr(h_p);
end;
1:begin//�_���
  h_k:=koef_hk[1,1]*tkr*m/na+koef_hk[1,2]*l+koef_hk[1,3];
  strg1.cells[n+6,i]:=floattostr(h_k);
end;
2:begin//�_��
t_p:=koef_tp[1,1]*ln(na)+koef_tp[1,2]*(na-1)*l+koef_tp[1,3];
strg1.cells[n+9,i]:=floattostr(t_p);
end;
3:begin//�_���
t_k:=koef_tk[1,1]*ln(na)+koef_tk[1,2]*(na-1)*l+koef_tk[1,3];
strg1.cells[n+12,i]:=floattostr(t_k);
end;
4:begin//�_������
try
C_Simona:= koef_c[1,1]*hp/r/tkr+l*koef_c[1,2]+koef_c[1,3];
except
C_Simona:=0;
end;
strg1.cells[n+15,i]:=floattostr(c_simona);
end;
5:begin//�_0
try
P_0:= koef_p0[1,1]*zkr*pkr*hp/r/tkr+L*koef_p0[1,2]+koef_p0[1,3];
except
p_0:=0;
end;
strg1.cells[n+18,i]:=floattostr(p_0);
end;

end;
end;
end;
end;

end;

procedure TFrOneComponent.Button2Click(Sender: TObject);
var i,n,x:integer;
     y,z:myreal;
begin
   n:=14;
   form2.Chart10.BottomAxis.Title.Caption:='N';
   form2.lineSeries7.pointer.visible:=true;
    form2.Chart10.Series[0].clear;form2.Chart10.Series[0].tag:=1;
     form2.Chart10.Series[1].clear;form2.Chart10.Series[1].tag:=2;
    case  RadioGroup2.ItemIndex of
   0:begin
     form2.Chart10.leftAxis.Title.Caption:='H��,��/����';
     form2.Chart10.Series[0].Title:='H��_����';
     form2.Chart10.Series[1].Title:='H��_���';
    end;
  1:begin
       form2.Chart10.leftAxis.Title.Caption:='H���,��/����';
     form2.Chart10.Series[0].Title:='H���_����';
     form2.Chart10.Series[1].Title:='H���_���';
    end;
 2:begin
      form2.Chart10.leftAxis.Title.Caption:='���,�';
     form2.Chart10.Series[0].Title:='���_����';
     form2.Chart10.Series[1].Title:='���_���';
    end;
   3:begin
        form2.Chart10.leftAxis.Title.Caption:='����,�';
     form2.Chart10.Series[0].Title:='����_����';
     form2.Chart10.Series[1].Title:='����_���';
    end;
  4:begin
     form2.Chart10.leftAxis.Title.Caption:='�_Simona';
     form2.Chart10.Series[0].Title:='�_Simona_����';
     form2.Chart10.Series[1].Title:='�_Simona_���';
    end;
  5:begin
     form2.Chart10.leftAxis.Title.Caption:='P0,���';
     form2.Chart10.Series[0].Title:='�0_����';
     form2.Chart10.Series[1].Title:='�0_���';
    end;
end;

   for i:=1 to strg1.RowCount-1 do begin
   x:=strtoint(strg1.cells[n,i]);

   case  RadioGroup2.ItemIndex of
   0:begin
       try
       y:=strtofloat(strg1.cells[3,i]);
       except
       y:=0;
       end;
       try
       z:=strtofloat(strg1.cells[n+1+RadioGroup3.ItemIndex,i]);
       except
       z:=0;
       end;

   end;
   1:begin
   try
       y:=strtofloat(strg1.cells[6,i]);
       except
       y:=0;
       end;
       try
       z:=strtofloat(strg1.cells[n+4+RadioGroup3.ItemIndex,i]);
      except
       z:=0;
       end;

   end;
   2:begin  try
       y:=strtofloat(strg1.cells[4,i])+kelvin;
       except
       y:=0;
       end;
       try
       z:=strtofloat(strg1.cells[n+7+RadioGroup3.ItemIndex,i]);
   except
       z:=0;
       end;

   end;
   3: begin
   try
       y:=strtofloat(strg1.cells[7,i])+kelvin;
       except
       y:=0;
       end;
       try
       z:=strtofloat(strg1.cells[n+10+RadioGroup3.ItemIndex,i]);

   except
       z:=0;
       end;

       end;
   4: begin
   try
       y:=strtofloat(strg1.cells[13,i]);
       except
       y:=0;
       end;
       try
       z:=strtofloat(strg1.cells[n+13+RadioGroup3.ItemIndex,i]);
   except
       z:=0;
       end;

   end;
   5: begin
   try
       y:=1.e-3*abs(strtofloat(strg1.cells[11,i]));
       except
       y:=0;
       end;
       try
       z:=strtofloat(strg1.cells[n+16+RadioGroup3.ItemIndex,i]);
   except
       z:=0;
       end;

   end;
   end;
if y<>0 then
    form2.Chart10.Series[0].AddXY(x,y);
    if z<>0 then
     form2.Chart10.Series[1].AddXY(x,z);


   end;
   form2.Show;
end;

end.
