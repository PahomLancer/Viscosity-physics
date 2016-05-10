unit Teplota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls,myfunct;

type
  TFrTeplota = class(TForm)
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Button2: TButton;
    Label13: TLabel;
    Edit12: TEdit;
    Label14: TLabel;
    Edit13: TEdit;
    Button5: TButton;
    Label15: TLabel;
    Label16: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);

    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrTeplota: TFrTeplota;
  m,tp,tk,hp,hk:myreal;
  na,ka:integer;
  koef_h,koef_t:array[1..2,1..3]of myreal;

implementation

{$R *.dfm}

procedure TFrTeplota.Button1Click(Sender: TObject);

var l:integer;
zkr,pkr,hpn,hkn,dn,en,mn,nn,kn,gn,c_simona,p0:myreal;
begin  //расчет по модели
m:=strtofloat(edit1.text);
tp:=strtofloat(edit2.text);
tk:=strtofloat(edit3.text);
zkr:=strtofloat(edit10.text);
pkr:=strtofloat(edit11.text);
na:=spinedit1.Value;
  l:=1;
  if odd(na) then l:=-1;
case RadioGroup1.ItemIndex of
0:  //алканы
begin
 if (na<10) then    //!!!!
 begin
   koef_h[1,1]:=(na-2);
   koef_h[1,2]:=40*na;
   koef_h[1,3]:=2440;
 end
 else
 if na<=20 then
 begin
   koef_h[1,1]:=(na-6.5);
   koef_h[1,2]:=25*na*na;
   koef_h[1,3]:=-6.5*na*na+8000;  ///!!!!
 end
 else begin
   koef_h[1,1]:=(na-2)/2;
   koef_h[1,2]:=2000*na;
   koef_h[1,3]:=2500;
 end;
 if (na<10) then    //!!!!
 begin
   koef_h[2,1]:=5*na/(na+2.1);
   koef_h[2,2]:=0;
   koef_h[2,3]:=1100*na+3300;
 end else  if na<=20 then
 begin
   koef_h[2,1]:=5*na/(na+2.1);
   koef_h[2,2]:=0;
   koef_h[2,3]:=1100*na+2800;
end;
end;
1:  //спирты
if (na<10) then    //!!!!
 begin
   koef_h[1,1]:=(na+1)/1.8;
   koef_h[1,2]:=200*na;
   koef_h[1,3]:=-2800/na;

   koef_h[2,1]:=5*na/(na+2.7);
   koef_h[2,2]:=600;      // !!!
   koef_h[2,3]:=21700;   //!!!
  end
  else begin
   koef_h[1,1]:=(na+1)/1.8;
   koef_h[1,2]:=200*na;
   koef_h[1,3]:=-2800/na;

   koef_h[2,1]:=5*na/(na+2.7);
   koef_h[2,2]:=600;      
   koef_h[2,3]:=21700;
   end;
2:  //карбоновые кислоты
begin
   koef_h[1,1]:=na;
   koef_h[1,2]:=na-1400;
   koef_h[1,3]:=-2350*na;

   koef_h[2,1]:=3*(na+1)*na/(na+2);
   koef_h[2,2]:=0;
   koef_h[2,3]:=-13800*na;    //!!!
end;
3:  //√ликоли
begin
   koef_h[1,1]:=(na*na+1)/26.5;
   koef_h[1,2]:=0;
   koef_h[1,3]:=-320*na+10755;

   koef_h[2,1]:=na*(na+1.1)/1.7/(na-1);
   koef_h[2,2]:=0;
   koef_h[2,3]:=0;
end;
4,5,6:  //эфиры гликолей
begin
   koef_h[1,1]:=(na*na+1)/26.5;
   koef_h[1,2]:=0;
   koef_h[1,3]:=-320*na+10755;

   koef_h[2,1]:=na*(na+1.1)/1.15/(na-1);
   koef_h[2,2]:=0;
   koef_h[2,3]:=0;
end;
7://пропиленгликоли
begin
   koef_h[1,1]:=(na*na+1)/26.5;
   koef_h[1,2]:=0;
   koef_h[1,3]:=-320*na+10755;

   koef_h[2,1]:=na*(na+1.1)/1.3259/(na-1);  //??
   koef_h[2,2]:=0;
   koef_h[2,3]:=0;
end;
8:  //дикарбоновые кислоты
begin
   koef_h[1,1]:=na*1.098684;
   koef_h[1,2]:=0;
   koef_h[1,3]:=-26000*1.098684;

   koef_h[2,1]:=3*(na+1)*na/(na+2)*0.298198;
   koef_h[2,2]:=0;
   koef_h[2,3]:=-13800*na*0.298198;
end;
9://альдегиды
begin
   koef_h[1,1]:=0;
   koef_h[1,2]:=0;
   koef_h[1,3]:=0;

   koef_h[2,1]:=0.93*na*na/(na+1.7);
   koef_h[2,2]:=300;
   koef_h[2,3]:=20563;
end;

10://изоспирты
if (na>=3) and (na<=10) then
begin
   koef_h[1,1]:=(na+1)/1.85;
   koef_h[1,2]:=520*na;
   koef_h[1,3]:=-3800/na;

   koef_h[2,1]:=5.38*na/(na+0.47);
   koef_h[2,2]:=90;
   koef_h[2,3]:=7170;
end;
else
   begin
   koef_h[1,1]:=0;
   koef_h[1,2]:=0;
   koef_h[1,3]:=0;

   koef_h[2,1]:=0;
   koef_h[2,2]:=0;
   koef_h[2,3]:=0;
end;
end;
  hpn:=koef_h[1,1]*tp*m/na+koef_h[1,2]*l+koef_h[1,3];
  hkn:=koef_h[2,1]*tk*m/na+koef_h[2,2]*l+koef_h[2,3];
  edit4.Text:=floattostr(hpn);
  edit5.Text:=floattostr(hkn);

case RadioGroup1.ItemIndex of
0:begin
   if na<=10 then begin
   dn:=7/(na+2.1);  kn:=30;//50;
   en:=0.15;        mn:=-0.080;//-30;//-70;
   gn:=-4.5;        nn:=178;//-30;//70;
   end
   else begin
   dn:=1/(na-6.5); kn:=12;//50;
   en:=0.8;       mn:=-0.040;//0.002;
   gn:=1.7;        nn:=200;//-50;
   end;
end;
1:begin
{
 dn:=0.5/(na-1);
 en:=na/3.45;
 gn:=-1.09;
 }
 dn:=1/(2*na-1);
 en:=0;
 gn:=0.18*(na-1);

 kn:= 250*na;
 mn:= -39.7*na*sqr(na);
 nn:= -1200;
  end
else
 dn:=0;
 en:=0;
 gn:=0;

 kn:= 0;
 mn:= 0;
 nn:= 0;
end;
 C_Simona:= dn*hpn/r/tp+en*l+gn;
 P0:= kn*zkr*pkr*1.e-3*hpn/r/tp+mn*l+nn; //ћѕа
 edit8.Text:=floattostr(c_simona);
 edit9.Text:=floattostr(p0*1.e3); //кѕа

end;

procedure TFrTeplota.Button3Click(Sender: TObject);
var l:integer;
begin
//расчет энтальпии плавлени€ по эксп. энтальпии испарени€
tp:=strtofloat(edit2.text);
tk:=strtofloat(edit3.text);
na:=spinedit1.value;
  l:=1;
  if odd(na) then l:=-1;
hk:=strtofloat(edit7.Text);
hp:=koef_h[1,1]/koef_h[2,1]*tp/tk*(hk-koef_h[2,2]*l-koef_h[2,3])+
koef_h[1,2]*l+koef_h[1,3];
  edit4.Text:=floattostr(hp);
end;

procedure TFrTeplota.Button4Click(Sender: TObject);
var l:integer;
begin
//расчет энтальпии испарени€ по эксп. энтальпии плавлени€
tp:=strtofloat(edit2.text);
tk:=strtofloat(edit3.text);
na:=spinedit1.value;
  l:=1;
  if odd(na) then l:=-1;
hp:=strtofloat(edit6.Text);
hk:=koef_h[2,1]/koef_h[1,1]*tk/tp*(hp-koef_h[1,2]*l-koef_h[1,3])
+koef_h[2,2]*l+koef_h[2,3];
  edit5.Text:=floattostr(hk);
end;

procedure TFrTeplota.Button2Click(Sender: TObject);
var l:integer;
zkr,pkr,hp,hk,dn,en,mn,nn,kn,gn,c_simona,p0:myreal;
begin  //расчет по эксп. данным
m:=strtofloat(edit1.text);
tp:=strtofloat(edit2.text);
tk:=strtofloat(edit3.text);
hp:=strtofloat(edit6.text);
hk:=strtofloat(edit7.text);
zkr:=strtofloat(edit10.text);
pkr:=strtofloat(edit11.text);
na:=spinedit1.Value;
  l:=1;
  if odd(na) then l:=-1;
case RadioGroup1.ItemIndex of
0:begin
   if na<10 then begin
   dn:=7/(na+2.1);  kn:=30;//50;
   en:=0.15;        mn:=-0.080;//-30{-70};
   gn:=-4.5;        nn:=178;//-30{70};
   end
   else begin
   dn:=1/(na-6.5); kn:=12;//50;
   en:=0.8;       mn:=-0.040;{0.002; }
   gn:=1.7{1.5};        nn:=200;//-30{-50};
   end;
C_Simona:= dn*hp/r/tp+l*en+gn;
P0:= kn*zkr*pkr*1.e-3*hp/r/tp+L*mn+nn;
  edit8.Text:=floattostr(c_simona);
  edit9.Text:=floattostr(p0*1.e3);
end;
1:begin
 dn:=1/(2*na-1);{0.5/(na-1);}
 en:=0;{na/3.45; }
 gn:=0.18*(na-1);{-1.09; }
 C_Simona:= dn*hp/r/tp+en*l+gn;
 kn:= 250*na;
 mn:= -39.7*na*sqr(na);
 nn:= -1200;
 P0:= kn*zkr*pkr*1.e-3*hp/r/tp+mn*l+nn;
 edit8.Text:=floattostr(c_simona);
 edit9.Text:=floattostr(p0*1.e3);
end;
else
 edit8.Text:='';
 edit9.Text:='';
end;
end;

procedure TFrTeplota.Button5Click(Sender: TObject);
var zt:integer;
tpl_mod,tk_mod:myreal;
begin  //расчет температуры плавлени€ и кипени€ по модели
na:=spinedit1.Value;
   koef_t[1,1]:=0;
   koef_t[1,2]:=0;
   koef_t[1,3]:=0;

   koef_t[2,1]:=0;
   koef_t[2,2]:=0;
   koef_t[2,3]:=0;
if odd(na) then zt:=-1 else zt:=1;
case RadioGroup1.ItemIndex of
0:  //алканы
begin
 if (na<=5) then
 begin
 koef_t[1,1]:=16;
 koef_t[1,2]:=2*(na-4.3);
 koef_t[1,3]:=66.6;
 end
 else
 if na<=11 then
 begin
 koef_t[1,1]:=16;
 koef_t[1,2]:=2*(na-4.3);
 koef_t[1,3]:=78.6;
 end
  else
 if na<20 then
 begin
 koef_t[1,1]:=5;
 koef_t[1,2]:=2*(na-4.3);
 koef_t[1,3]:=109.4;
 end;

 if (na<10) then begin
 koef_t[2,1]:=-2.524;//-0.8;
 koef_t[2,2]:=62.451;//41;
 koef_t[2,3]:=61.079;//117;
 end
 else
 if na<20 then begin
 koef_t[2,1]:=-46.9;//-0.8;
 koef_t[2,2]:=308.97;//41;
 koef_t[2,3]:=185.83;//112;
 end
 {
if (na<=10) then
   begin
   koef_t[1,1]:=67.624;
   koef_t[1,2]:=2;
   koef_t[1,3]:=51.781;
   end
   else
 if na<=20 then
   begin
   koef_t[1,1]:=95.751;
   koef_t[1,2]:=0;
   koef_t[1,3]:=24.398;
   end
   else
    if na<=30 then
   begin
   koef_t[1,1]:=68;
   koef_t[1,2]:=2;
   koef_t[1,3]:=49.67;
   end
   else
   begin
   koef_t[1,1]:=81.72;
   koef_t[1,2]:=0;
   koef_t[1,3]:=40.3;
   end;
   koef_t[2,1]:=182.77;
   koef_t[2,2]:=0;
   koef_t[2,3]:=43.401;  }
end;
1://спирты
begin
if na<=5 then begin
 koef_t[1,1]:=11.6;
 koef_t[1,2]:=3.7*(na-4);
 koef_t[1,3]:=143.3;
end else
if na<=9 then begin
 koef_t[1,1]:=16.55;
 koef_t[1,2]:=0.8*(na-4);
 koef_t[1,3]:=126;
end else
if na<20 then begin
 koef_t[1,1]:=7.74;
 koef_t[1,2]:=0.21*(na-5);
 koef_t[1,3]:=199;
end;

if na<=20 then begin
 koef_t[2,1]:=-0.3093;
 koef_t[2,2]:=22.228;
 koef_t[2,3]:=308.80;
end;

end;
2:begin   //карбоновые кислоты
if na<=5 then begin
 koef_t[1,1]:=-9.5;
 koef_t[1,2]:=9.7;
 koef_t[1,3]:=296.1;
end else
if na<=15 then begin
 koef_t[1,1]:=7.6;
 koef_t[1,2]:=5.1;
 koef_t[1,3]:=220;
end else
if na<=26 then begin
 koef_t[1,1]:=2.4;
 koef_t[1,2]:=1.4;
 koef_t[1,3]:=298;
end;

if na<=15 then begin
 koef_t[2,1]:=-0.4586;
 koef_t[2,2]:=24.3;
 koef_t[2,3]:=347.15;
 end
 end;
3://√ликоли
begin
   koef_t[1,1]:=1.1;
   koef_t[1,2]:=2.0;
   koef_t[1,3]:=253.69580;

   koef_t[2,1]:=0;
   koef_t[2,2]:=0;
   koef_t[2,3]:=0;
end;
5://Ётиловые эфиры гликолей
begin
zt:=1;
   koef_t[1,1]:=-0.4231*na;
   koef_t[1,2]:=17.668*na;
   koef_t[1,3]:=138.78;

   koef_t[2,1]:=-1.8;
   koef_t[2,2]:=51.55;
   koef_t[2,3]:=231.350;
end;
7://пропиленгликоли
begin
   koef_t[1,1]:=-12.5;
   koef_t[1,2]:=-0.15;
   koef_t[1,3]:=258.05;

   koef_t[2,1]:=0;
   koef_t[2,2]:=0;
   koef_t[2,3]:=0;
end;
9://альдегиды
begin
if na<=5 then begin
 koef_t[1,1]:=13;
 koef_t[1,2]:=6.7*(na-5);
 koef_t[1,3]:=139.5;
end else
if na<=12 then begin
 koef_t[1,1]:=13;
 koef_t[1,2]:=1.7*(na-5);
 koef_t[1,3]:=142.5;
end;

if na<=14 then begin
 koef_t[2,1]:=-1.0614;
 koef_t[2,2]:=36.922;
 koef_t[2,3]:=219.28;
end;
end;
10://2-спирты
 begin
if (3<=na)and (na<10) then begin
 koef_t[1,1]:=6.90;
 koef_t[1,2]:=12.5*(na-5);
 koef_t[1,3]:=142;
end else
if (10<=na)and (na<=20) then begin
 koef_t[1,1]:=8.85;
 koef_t[1,2]:=-1.3*(na-5);
 koef_t[1,3]:=180;
end;

if (3<=na)and (na<=10) then begin
 koef_t[2,1]:=-0.6784;//0.2983;
 koef_t[2,2]:=26.741;//16.422;
 koef_t[2,3]:=278.6;//302.77;
end;
end;
end;

 {   case RadioGroup1.ItemIndex of
0:  //алканы
begin
tpl_mod:=koef_t[1,1]*ln(na)+koef_t[1,2]*(na-1)*zt+koef_t[1,3];
 edit12.Text:=floattostr(tpl_mod);
tk_mod:=koef_t[2,1]*ln(na)+koef_t[2,2]*(na-1)*zt+koef_t[2,3];
 edit13.Text:=floattostr(tk_mod);
end;
3,7:begin

tpl_mod:=koef_t[1,1]*ln(na)+koef_t[1,2]*(na+1)*zt+koef_t[1,3];
 edit12.Text:=floattostr(tpl_mod);
tk_mod:=koef_t[2,1]*ln(na)+koef_t[2,2]*(na+1)*zt+koef_t[2,3];
 edit13.Text:=floattostr(tk_mod);
end;

else begin
 edit12.Text:='';
 edit13.Text:='';
 end;
end;
}
 tpl_mod:=koef_t[1,1]*na+koef_t[1,2]*zt+koef_t[1,3];
 edit12.Text:=floattostr(tpl_mod);
tk_mod:=koef_t[2,1]*sqr(na)+koef_t[2,2]*na+koef_t[2,3];
 edit13.Text:=floattostr(tk_mod);
end;

procedure TFrTeplota.Button6Click(Sender: TObject);
var l:integer;
zkr,pkr,hpn,hkn,dn,en,mn,nn,kn,gn,t0,tkr,c_simona,p0:myreal;
begin  //расчет по модели2
m:=strtofloat(edit1.text);
tp:=strtofloat(edit2.text);
tk:=strtofloat(edit3.text);
t0:=strtofloat(edit15.text);
tkr:=strtofloat(edit14.text);
zkr:=strtofloat(edit10.text);
pkr:=strtofloat(edit11.text);
na:=spinedit1.Value;


case RadioGroup1.ItemIndex of
0:  //алканы
begin
 if (na<=10) then
 begin
   koef_h[1,1]:=(na-2)*0.98;
   koef_h[1,2]:=40*na;//??
   koef_h[1,3]:=2407.72;
 end
 else begin
   koef_h[1,1]:=(na-6.5)*0.885;
   koef_h[1,2]:=20*na*na;
   koef_h[1,3]:=-11*na*na+11960.76;
 end;
 {begin
   koef_h[1,1]:=(na-2)*0.958;
   koef_h[1,2]:=35.53*na;//??
   koef_h[1,3]:=2645;
 end
 else begin
   koef_h[1,1]:=(na-7)*0.891;
   koef_h[1,2]:=30.2*na*na;
   koef_h[1,3]:=-9.5*na*na+8800;
 end;}
   koef_h[2,1]:=3.46*na/(na+1.7);
   koef_h[2,2]:=0;
   koef_h[2,3]:=1100*na+3280;
end;
9://альдегиды
begin
   koef_h[1,1]:=0;
   koef_h[1,2]:=0;
   koef_h[1,3]:=0;

   koef_h[2,1]:=0.93*na*na/(na+1.7);
   koef_h[2,2]:=300;
   koef_h[2,3]:=12400;
end;
 10://изоспирты
 begin
   koef_h[1,1]:=0;
   koef_h[1,2]:=0;
   koef_h[1,3]:=0;

   koef_h[2,1]:=4*na/(na+0.47);
   koef_h[2,2]:=210;
   koef_h[2,3]:=5010;
 end;
end;
  l:=1;
  if odd(na) then l:=-1;
 hpn:=koef_h[1,1]*t0*m/na+koef_h[1,2]*l+koef_h[1,3];
 hkn:=koef_h[2,1]*tkr*m/na+koef_h[2,2]*l+koef_h[2,3];

  edit16.Text:=floattostr(hpn);
  edit17.Text:=floattostr(hkn);
  
case RadioGroup1.ItemIndex of
0:begin
   if na<=10 then begin
   dn:=7/(na+2.1);  kn:=0.5;
   en:=0.15;        mn:=-50;
   gn:=-4.5;        nn:=20;
   end
   else begin
   dn:=2/(na-6.5); kn:=0.5;
   en:=-0.8;       mn:=0.1;
   gn:=1.8;        nn:=-5;
   end;
C_Simona:= dn*hpn/r/tp+en*l+gn;
P0:= kn*zkr*pkr*hpn/r/tp+mn*l+nn;
  edit18.Text:=floattostr(c_simona);
  edit19.Text:=floattostr(p0);
end;
1: begin
 dn:=0.5/(na-1);
 en:=na/3.45;
 gn:=-1.09;
 C_Simona:= dn*hpn/r/tp+en+gn;
 P0:= 0;//kn*zkr*pkr*hpn/r/tp+mn+nn;
  edit18.Text:=floattostr(c_simona);
  edit19.Text:=floattostr(p0);
end;
else begin
 edit18.Text:='';
 edit19.Text:='';
end;
end;
end;

end.
