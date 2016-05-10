unit MyFunct;

interface
uses SysUtils, dialogs,math;
type
  MyReal=Extended;
  functxy=function (x,y:MyReal):Myreal;
  masD=array of myreal;
  myfunc=function(x:MyReal):MyReal;
const R=8.31441;
      eps=1.0e-6;
      Kelvin=273.15;
      Pascual=133.322;  //=1 мм.рт.ст.
      P_atm=101324.72;  //в Па = 760 мм.рт.ст.
      m=5;
type Ttablerec=record
      x1,x2,z1,z2,q1,q2,mz1,t12,h12:myreal;
      l1,l2:integer;
     end;
     mastablerec=array[0..256]of ttablerec;
var
  h10,h20,h30,t10,t20,a1,a2,a3,b1,b2,b3,
  x1_3,x2_3,x1_2,x2_2,x1_1,x2_1,
  h3,p_1,p_2,p1,p2,t1,t2:MyReal;
   Coef_A:array[1..m]of MyReal;
  spl_a,spl_b,spl_c,spl_d:masd;
  function korr(x,y:masD;m:integer;var a0,a1,a2:MyReal):MyReal;
  function methodNuton(x:myreal;f,df:myfunc):myreal;
  procedure find(var l1,l2:myreal;l12:myreal);
 function T_antuan(pc,a1,b1,c1:myreal):myreal; 
 function TeplotaPl(T_pl_K,M_massa:myreal):myreal;
function p_antuan(tc,a1,b1,c1:myreal):myreal;
procedure progonka(n:integer;h:myreal;p1,p2:myreal;var x,p:masd);
//function runge_kutta4(x,y,h:myreal;f:functxy):myreal;
function runge_kutta4(x,y,h:myreal):myreal;
function fspline(t:myreal;x:masD;n:integer):myreal;
procedure spline3(x,y:masd;n:integer);
procedure linrecurs(var x,y:masD;m:integer;var c0,c1,korr:MyReal);
procedure recurs(var x,y:masD;m:integer;var c0,c1,c2,korr:MyReal);
procedure Redlehrecurs(var x,y:masD;m:integer;var a1,a2,a3:MyReal);
function delta3(a11,a12,a13,a21,a22,a23,a31,a32,a33:MyReal):MyReal;
procedure polynrecurs(x,y:masD;m,n:integer; var p:Masd; var korr:myreal);
//уравнение Редлиха-Кистера
function fR_K(x:MyReal;a1,a2,a3:MyReal):MyReal;
//уравнение полинейной регрессии
function fr3(x:MyReal;var p:Masd;n:integer):MyReal;
//уравнение линейной регрессии
function fr1(x:MyReal;a0,a1:MyReal):MyReal;
//уравнение параболической регрессии
function fr2(x:MyReal;a0,a1,a2:MyReal):MyReal;
//расчет ln коэффициента активности по модели
function ln_gamma(h0,t0,tc,z:myreal):myreal;
//расчет Т фазового перехода по методу минимизации
function fx1_(x:MyReal):MyReal;
function fx2(x:MyReal):MyReal;
function fx1(x:MyReal):MyReal;
function dfdx1(x:MyReal):MyReal;
function fx4(x:MyReal):MyReal;
function dfdx4(x:MyReal):MyReal;
function methodhord(x0,x:Myreal;f:myfunc):myreal;
function poisk_mas(x:myreal;a:masD;n:integer):integer;
function poisk_mas_abs(x:myreal;a:masD;n:integer):integer;
function converse2z_x(z1:myreal;l12:myreal;b:myreal=1.0):myreal;//перевод из эфф. в эксп. мольные доли
function converse2x_q(x1:myreal;m12:myreal;b:myreal=1.0):myreal;//перевод из эксп. мольные доли в масс.доли
function converse2q_x(q1:myreal;m12:myreal;b:myreal=1.0):myreal;//перевод из масс. долей в эксп. мольные доли
function converse2x_z(x1:myreal;l12:myreal;b:myreal=1.0):myreal;//перевод из эксп. мольные доли в эфф.доли
function point_min(h10,t10,h20,t20:myreal;var x1,t12:myreal):boolean;
procedure find_point_min(var t:mastablerec; var nk:integer; var lambda12,lambda1,lambda2:myreal;
h_2,h_1,t_2,t_1,a_0,b_0:myreal; L:integer=1; n_sred:integer=0; n_method:integer=2 );
procedure find_point_lambda(var t:mastablerec; var nk:integer; lambda12:myreal; var k1,k2:myreal;
 h_2,h_1,t_2,t_1:myreal);
 function H_emp(h_tr,t_tr,t_kr,z_kr,t:myreal):myreal;

implementation
 function H_emp(h_tr,t_tr,t_kr,z_kr,t:myreal):myreal;
 begin
 try
 result:=h_tr*power((t_kr-t)/(t_kr-t_tr),sqr(z_kr)*(t-t_tr)/(t_kr-t_tr)+z_kr);
 except
 result:=0;
 end;
 end;
procedure find_point_lambda(var t:mastablerec; var nk:integer; lambda12:myreal; var k1,k2:myreal;
 h_2,h_1,t_2,t_1:myreal);
var
  i,j:integer;
  z1,z2,tz1,p,s:myreal;
begin
//Получение коэфициента K
   h10:=h_1;h20:=h_2;t10:=t_1;t20:=t_2;
   p:=0;s:=0;
   for i:=1 to nk-1 do begin
   //эффективные мольные доли
    z1:=t[i].x1;
    z2:=t[i].x2;
    tz1:=t[i].t12;
    try
      k1:=((h10/t10*z1+h20/t20*lambda12*z2)-(h10*z1+h20*z2*lambda12)/tz1)/R/(z1*ln(z1)+z2*ln(z2));
    except
      k1:=1;
    end;
    t[i].mz1:=k1;
    s:=k1*z1+s;
    p:=z1+p;
   end;
   k1:=s/p;
   k2:=k1/lambda12;
end;

procedure find_point_min(var t:mastablerec; var nk:integer; var lambda12,lambda1,lambda2:myreal;
h_2,h_1,t_2,t_1,a_0,b_0:myreal;
L:integer=1; n_sred:integer=0; n_method:integer=2 );

var
  imax,n,i,j,k1,k2,k:integer;
  lng1,lng2,ge,x1,x2,s,p:myreal;
  xx:ttablerec;

procedure schet(k21,k22,k11,k12:integer;h_2,h_1,t_2,t_1,x_2,x_1:myreal;i:integer);
var t12,x10,x20,x1,x2,hh,x1_2:myreal;
begin
    if i=0 then exit;
    h20:=h_2;h10:=h_1;
    t20:=t_2;t10:=t_1;
    x20:=x_2;x10:=x_1;
    case n_method of
    1: x1:=methodnuton(eps,fx1,dfdx1);
    2: x1:=methodhord(eps,1-eps,fx1);
    end;
    x2:=(1-x1);
    t12:=fx2(x2);
    hh:=h10*x1+h20*x2;
    x1_2:=x1*(x10-x20)+x20;
    x2:=1-x1_2;
    T[k].x1:=x1_2;
    T[k].x2:=x2;
    T[k].t12:=t12;
    T[k].h12:=hh;
    T[k].l1:=(k11+k21);
    T[k].l2:=(k22+k12);
    inc(k);
    schet(k21+k11,k22+k12,k11,k12,hh,h_1,t12,t_1,x1_2,x_1,i-1);
    schet(k21,k22,k21+k11,k22+k12,h_2,hh,t_2,t12,x_2,x1_2,i-1);
end;
begin
    //получение точек эвтектики до уровня 1<=L<=8
     k:=1;
     lambda12:=1;
     Lambda1:=1;lambda2:=1;
     T[0].x1:=a_0;
     T[0].x2:=b_0;
     T[0].t12:=t_2;
     T[0].h12:=h_2;
     T[0].l1:=0;
     T[0].l2:=1;
     T[k].x1:=b_0;
     T[k].x2:=a_0;
     T[k].t12:=t_1;
     T[k].h12:=h_1;
     T[k].l1:=1;
     T[k].l2:=0;
     if (l>8) or (l<1 )then exit;
     schet(0,1,1,0,h_2,h_1,t_2,t_1,a_0,b_0,L);
     T[k].x1:=b_0;
     T[k].x2:=a_0;
     T[k].t12:=t_1;
     T[k].h12:=h_1;
     T[k].l1:=1;
     T[k].l2:=0;
   //сортировка
    nk:=k;
    for i:=1 to nk-1 do begin
     x1:=T[i].x1;
     imax:=i;
     for j:=i+1 to nk do begin
      x2:=T[j].x1;
      if x2<x1 then begin imax:=j;x1:=x2;end;
     end;
     if i<>imax then begin
        xx:=t[i];
        t[i]:=t[imax];
        t[imax]:=xx;
     end;
    end;
case n_sred of
0:begin
//получение средней суммы1
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     s:=s+t[i].x1*t[i].l2/t[i].l1;
     p:=p+x1;
   end;
   s:=s/p;
   end;
1:begin
//получение средней суммы2
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     lng1:=-ln(t[i].x1)+h_1/r/t_1*(1-t_1/t[i].t12);
     lng2:=-ln(1-t[i].x1)+h_2/r/t_2*(1-t_2/t[i].t12);
     ge:=(t[i].x1*lng1+(1-t[i].x1)*lng2);
     s:=s+exp(-ge)*t[i].l2/t[i].l1;
     p:=p+exp(-ge);
   end;
   s:=s/p;
end;
2:begin
//получение средней суммы3
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     s:=s+t[i].x1;
     p:=p+t[i].x1*t[i].l2/t[i].l1;
   end;
   s:=s/p;
end;
3:begin
//получение средней суммы3
   s:=0; p:=0;
   for  i:=1 to nk-1 do begin
     s:=s+t[i].x1;
     p:=p+t[i].x1*t[i].l1/t[i].l2;
   end;
   s:=s/p;
end;
end;{case}
   find(Lambda1,lambda2,s);
   while lambda2 >10 do lambda2:=lambda2/10;
   while lambda1 >10 do lambda1:=lambda1/10;
   lambda12:=s;
end;

function point_min(h10,t10,h20,t20:myreal;var x1,t12:myreal):boolean;
var z1,z2,c,s,x11,x12,x2:myreal;
begin
    point_min:=true;
    try
    z1:=h10/h20;
    z2:=h10*(1/t20-1/t10)/r;
    c:=11.0/6.0;
    s:=(3+z1)/(3-z1);
    x11:=s+sqrt(sqr(s)+2*(z2-c)/(3-z1));
    x12:=s-sqrt(sqr(s)+2*(z2-c)/(3-z1));
    if abs(1-x11)<=1 then x1:=x11;
    if abs(1-x12)<=1 then x1:=x12;
    x2:=1-x1;
    t12:=fx2(x2);
    except
     x1:=0;x2:=0;t12:=0;
     point_min:=false;
    end;
end;

function converse2z_x(z1:myreal;l12:myreal;b:myreal=1.0):myreal;//перевод из эфф. в эксп. мольные доли
begin
result:=z1/(z1+(b-z1)/l12);
end;
function converse2x_q(x1:myreal;m12:myreal;b:myreal=1.0):myreal;//перевод из эксп. мольные доли в масс.доли
begin
result:=x1/(x1+(b-x1)/m12);
end;
function converse2q_x(q1:myreal;m12:myreal;b:myreal=1.0):myreal;//перевод из масс. долей в эксп. мольные доли
begin
result:=q1/(q1+(b-q1)*m12);
end;
function converse2x_z(x1:myreal;l12:myreal;b:myreal=1.0):myreal;//перевод из эксп. мольные доли в эфф.доли
begin
result:=x1/(x1+(b-x1)*l12);
end;

function fR_K(x:MyReal;a1,a2,a3:MyReal):MyReal;
begin
result:=x*(1-x)*(a1+a2*(2*x-1)+a3*sqr(2*x-1));
end;
function TeplotaPl(T_pl_K,M_massa:myreal):myreal;
begin
  Result:=4.95*T_pl_K*power(10,0.00321*M_massa)*4.190064795;//в Дж/моль
end;
procedure find(var l1,l2:myreal;l12:myreal);
var i,j:integer;
begin
l1:=1;l2:=1;
if l12<1 then begin
for i:=1 to 100 do
for j:=1 to 100 do
  if abs(i/j-l12)<=0.01 then begin l1:=i;l2:=j;exit;end;
end else begin
l12:=1/l12;
for j:=1 to 100 do
for i:=1 to 100 do
  if abs(i/j-l12)<=0.01 then begin l1:=j;l2:=i;exit;end;
//   if abs(i/j-l12)<=0.01 then begin l1:=i;l2:=j;exit;end;
end;

end;

//для Dt/dx2
function fx1(x:MyReal):MyReal;
begin
try
 result:=h10*ln(1-x)-h20*ln(x)-h10*h20/r*(1/t20-1/t10)
except
 showmessage('Переполнение!');
 result:=h10*ln(1-x+eps)-h20*ln(x+eps)-h10*h20/r*(1/t20-1/t10)
end;
end;
function dfdx1(x:MyReal):MyReal;
begin
try
 result:=-h10/(1-x)-h20/x
except
showmessage('Переполнение!');
result:=-h10/(1-x+eps)-h20/(x+eps);
end;
end;
//расчет Т фазового перехода по методу минимизации
function fx1_(x:MyReal):MyReal;
begin
try
result:=(h10*x+h20*(1-x))/(h10/t10*x+h20/t20*(1-x)-r*(x*ln(x)+(1-x)*ln(1-x)));
except
// showmessage('Переполнение при x='+floattostr(x));
result:=(h10*x+h20*(1-x))/(h10/t10*x+h20/t20*(1-x)-r*(x*ln(x+eps)+(1-x)*ln(eps+1-x)));
end;
end;
//для T(x2)
function fx2(x:MyReal):MyReal;
var alf,bet:myreal;
begin
 alf:=(h10-h20)/r;
 bet:=h20/r/(t20)-h10/r/(t10);
 try
 result:=(h10/r-alf*x)/(bet*x-((1-x)*ln(1-x)+x*ln(x))+h10/r/t10);
 except
// showmessage('Переполнение при x='+floattostr(x));
 result:=(h10/r-alf*x)/(bet*x-((1-x)*ln(1-x+eps)+x*ln(x+eps))+h10/r/t10);
 end;
end;
function dfdx2(x:MyReal):MyReal;
var det,alf,bet:myreal;
begin
 alf:=(h10-h20)/r;
 bet:=h20/r/(t20)-h10/r/(t10);
try
 det:=bet*x-((1-x)*ln(1-x)+x*ln(x))+h10/r/t10;
 result:=-(alf*det+(h10/r-alf*x)*(bet+2+ln(1-x)+ln(x)))/det/det;
 except
 showmessage('Переполнение!');
 det:=bet*x-((1-x)*ln(1-x+eps)+x*ln(x+eps))+h10/r/t10;
 result:=-(alf*det+(h10/r-alf*x)*(bet+2+ln(1-x+eps)+ln(x+eps)))/det/det;
end;

end;
//для рекурсии
function fx3(x:MyReal):MyReal;
begin
 result:=x*(a1+2*a2*x)-(1-x)*(b1+2*b2*(1-x))
end;
function dfdx3(x:MyReal):MyReal;far
begin
 result:=a1+4*a2*x+b1+4*b2*(1-x)
end;
//для W(x3)
function fx4(x:MyReal):MyReal;
begin
 result:=sqr(x1_2*power(x/x2_2,h10/h30)+x1_3*power(x/x2_3,h20/h30)+x-1);
end;
function dfdx4(x:MyReal):MyReal;
begin
 result:=2*(x1_2*power(x/x2_2,h10/h30)+x1_3*power(x/x2_3,h20/h30)+x-1)*
 (h10/h30*power(x/x2_2,h10/h30-1)*sqr(x1_2)+sqr(x1_3)*h20/h30*power(x/x2_3,h20/h30-1)+1);
end;
//для VE(x)
function fVEz(x:MyReal):MyReal;
var s:MyReal;
    k:integer;
begin
 s:=0;
 for k:=1 to m do s:=s+Coef_A[k]*power(1-2*x,k-1);
 result:=x*(1-x)*s;
end;
function dVEdz(x:MyReal):MyReal;
var s,s1:MyReal;
    k:integer;
begin
 s:=0;s1:=0;
 for k:=1 to m do begin
  s:=s+Coef_A[k]*power(1-2*x,k-1);
  s1:=s1+Coef_A[k]*(k-1)*2*power(1-2*x,k-2);
 end;
 result:=(1-2*x)*s-x*(1-x)*s1;
end;
//для dP(z)/dz
function fPz(x:MyReal):MyReal;
var s:MyReal;
    k:integer;
begin
 s:=0;
 for k:=1 to m do s:=s+Coef_A[k]/(k+2.0)*power(1-2*x,k)*(x*(1-x)+1.0/k/2.0);
try
  result:=P1*x+P2*(1-x)-((P2-p1)*s-R*T1*(x*ln(x)+(1-x)*ln(1-x)))/fVEz(x);
except
  showmessage('Переполнение!');
  result:=P1*x+P2*(1-x)-((P2-p1)*s-R*T1*(x*ln(x+eps)+(1-x)*ln(1-x+eps)))/fVEz(x);
end;
end;
function dPdz(x:MyReal):MyReal;
var s,s1,d,d1:MyReal;
    k:integer;
begin
 s:=0; s1:=0;
 for k:=1 to m do begin
  s:=s+Coef_A[k]*power(1-2*x,k-1);
  s1:=s1+Coef_A[k]*power(1-2*x,k)*(x*(1-x)+0.5/k);
 end;
 d:=Fvez(x);
 d1:=d/dVEdz(x);
 d:=d1*d;
 try
 result:=(P1-P2)*d+d1*(2*(p2-p1)*x*(1-x)*s-R*T1*ln(x/(1-x)))+
 (p2-p1)*s1;
except
 showmessage('Переполнение!');
 result:=(P1-P2)*d+d1*(2*(p2-p1)*x*(1-x)*s-R*T1*ln((x+eps)/(1-x+eps)))+
 (p2-p1)*s1;
end;
end;


//метод Ньютона
function methodNuton(x:Myreal;f,df:myfunc):myreal;
var delta:myreal;
begin
  delta:=f(x)/df(x);
  while (abs(delta)>eps) and (abs(f(x))>eps) do begin
     x:=x-delta;
     try
     delta:=f(x)/df(x);
     except
     result := -1; exit;
     end;
  end;
  result:=x;
end;
//метод хорд
function methodhord(x0,x:Myreal;f:myfunc):myreal;
var delta:myreal;
begin
  if f(x0)<0 then begin result:=-1;exit;end;
  delta:=f(x)/(f(x)-f(x0))*(x-x0);
  while (abs(delta)>eps) and (abs(f(x))>eps) do begin
     x:=x-delta;
     delta:=f(x)/(f(x)-f(x0))*(x-x0);
  end;
  result:=x;
end;
//метод дихотомии
function methoddihotom(x0,x:Myreal;f:myfunc):myreal;
var x1,x2,h:myreal;
begin
  h:=(x-x0);
  repeat
  h:=h/2;
  x1:=x0+h;x2:=x0-h;
  if f(x1)*f(x0)>0 then x0:=x1;
  if f(x2)*f(x)>0 then x:=x2;
  until (abs(h)<=eps) or (abs(f(x))<=eps);
  result:=x;
end;

//уравнение линейной регрессии
function fr1(x:MyReal;a0,a1:MyReal):MyReal;
begin
  result:=a0+a1*(x);
end;
//уравнение параболической регрессии
function fr2(x:MyReal;a0,a1,a2:MyReal):MyReal;
begin
  result:=a0+a1*(x)+a2*sqr(x);
end;

function poisk_mas_abs(x:myreal;a:masD;n:integer):integer;
var i:integer; min:myreal;
begin
poisk_mas_abs:=-1; min:=abs(a[1]-x);
for i:=1 to n do
 if abs(a[i]-x)<=min then begin
 poisk_mas_abs:=i;min:=abs(a[i]-x);
 end;
end;

function poisk_mas(x:myreal;a:masD;n:integer):integer;
var i:integer;
begin
poisk_mas:=-1;
for i:=1 to n-1 do
 if (a[i]<=x)and(x<=a[i+1])then begin
 poisk_mas:=i;
 exit;end;
end;
//коэффициент корреляции
function korr(x,y:masD;m:integer;var a0,a1,a2:MyReal):MyReal;
var i:integer;
    avr,sum,sum1,sum2:myreal;
begin
   sum:=0;
   for i:=0 to m-1 do
      sum:=sum+y[i];
   avr:=sum/m;
   sum1:=0;
   sum2:=0;
   for i:=0 to m-1 do begin
      sum1:=sum1+sqr(fr2(x[i],a0,a1,a2)-avr);
      sum2:=sum2+sqr(y[i]-avr);
   end;
   result:=sqrt(sum1/sum2);
end;

function ln_gamma(h0,t0,tc,z:myreal):myreal;
begin
   result:=h0/r/t0*(1-t0/tc)-ln(z);
end;

//уравнение Антуана в кПа
function p_antuan(tc,a1,b1,c1:myreal):myreal;
begin
p_antuan:=exp(a1-b1/(c1+tc))*Pascual/1000;
end;
function T_antuan(pc,a1,b1,c1:myreal):myreal;    //Т кипения по Р в мм.рт.ст.
begin
T_antuan:=b1/(a1-ln(pc))-c1;
end;

procedure polynrecurs(x,y:masD;m,n:integer; var p:Masd; var korr:myreal);
var i,j,k:integer;
    f,sum0,sum1,sum2,avr:myreal;
    b,c,w:masd;
    a:array of masd;
begin
    setlength(b,n+1);
    setlength(c,2*n+1);
    setlength(a,n+1);
    setlength(w,m+1);
    for i:=1 to m do w[i]:=y[i];
    for i:=1 to n do begin
       setlength(a[i],n+1);
       b[i]:=0; p[i]:=0;

    end;
    for i:=1 to 2*n do c[i]:=0;

   sum0:=0;
   for i:=1 to m do
      sum0:=sum0+w[i];
   avr:=sum0/(m+1);
   sum2:=0;
   for i:=1 to m do sum2:=sum2+sqr(w[i]-avr);

    for i:=1 to m do begin
    f:=1;
    for j:=1 to 2*n-1 do begin
    if j<=n then b[j]:=b[j]+w[i];
    c[j]:=c[j]+f;
    w[i]:=w[i]*x[i];
    f:=f*x[i];
    end; end;
    for i:=1 to n do begin
    k:=i;
    for j:=1 to n do begin
    a[i,j]:=c[k];
    k:=k+1;
    end;
    end;

    for i:=1 to n-1 do
    for j:=i+1 to n do begin
      a[j,i]:=-a[j,i]/a[i,i];
      for k:=i+1 to n do a[j,k]:=a[j,k]+a[j,i]*a[i,k];
      b[j]:=b[j]+a[j,i]*b[i];
    end;

    p[n]:=b[n]/a[n,n];
    for i:=n-1 downto 1 do begin
     f:=b[i];
     for j:=i+1 to n do f:=f-p[j]*a[i,j];
     p[i]:=f/a[i,i];
    end;


   sum1:=0;
   for i:=1 to m do
      sum1:=sum1+sqr(fr3(x[i],p,n)-avr);
   korr:=sqrt(sum1/sum2);
end;
//
function fr3(x:MyReal;var p:Masd;n:integer):MyReal;
var i:integer; s:myreal;
begin
     s:=0;
    for i:=n downto 2 do s:=(s+p[i])*x;
    result:=s+p[1];
end;


//
function fve(x:myreal):myreal;
begin
  result:=//x*fve1(x)+fve2(x)*(1-x);
  (1-x)*x*(a1+a2*(2*x-1)+a3*sqr(2*x-1));
end;
function fdvedz(x:myreal):myreal;
var s,s1:myreal;
begin
  s:=a1+a2*(2*x-1)+a3*sqr(2*x-1);
  s1:=2*a2+4*a3*(2*x-1);
  result:=//fve1(x)+x*fdve1dz(x)-fve2(x)+(1-x)*fdve2dz(x)
  (1-2*x)*s+x*(1-x)*s1;
end;
function fdvedz2(x:myreal):myreal;
var s,s1,s2:myreal;
begin
  s:=a1+a2*(2*x-1)+a3*sqr(2*x-1);
  s1:=2*a2+4*a3*(2*x-1);
  s2:=8*a3;
  result:=//2*fdve1dz(x)+x*fdve1dz2(x)-2*fdve2dz(x)+(1-x)*fdve2dz2(x)
  -2*s+2*(1-2*x)*s1+x*(1-x)*s2;
end;
function fdvedz3(x:myreal):myreal;
var s,s1,s2:myreal;
begin
  s:=a1+a2*(2*x-1)+a3*sqr(2*x-1);
  s1:=2*a2+4*a3*(2*x-1);
  s2:=8*a3;
  result:=//3*fdve1dz2(x)+x*fdve1dz3(x)-3*fdve2dz2(x)+(1-x)*fdve2dz3(x)
  -6*s1+3*(1-2*x)*s2;
end;

function fve1(x:myreal):myreal;
begin
  result:=//sqr(1-x)*(a1+a2*(4*x-1)+a3*(6*x-1)*(2*x-1));
  fve(x)+(1-x)*fdvedz(x);
end;
function fve2(x:myreal):myreal;
begin
  result:=//sqr(x)*(a1+a2*(4*x-3)+a3*(6*x-5)*(2*x-1));
  fve(x)-x*fdvedz(x);
end;

function fdve2dz(x:myreal):myreal;
begin
  result:=//2*x*(a1+a2*(4*x-3)+a3*(6*x-5)*(2*x-1))
         //+sqr(x)*(a2*4+a3*(24*x-16));
  -x*fdvedz2(x);
end;
function fdve1dz(x:myreal):myreal;
begin
  result:=//-2*(1-x)*(a1+a2*(4*x-1)+a3*(6*x-1)*(2*x-1))
        // +sqr(1-x)*(a2*4+a3*(24*x-8));
(1-x)*fdvedz2(x);
end;

function fdve2dz2(x:myreal):myreal;
begin
  result:=//2*(a1+a2*(4*x-3)+a3*(6*x-5)*(2*x-1))
         //+4*x*(a2*4+a3*(24*x-16))+sqr(x)*24*a3;
 -x*fdvedz3(x)-fdvedz2(x);
end;
function fdve1dz2(x:myreal):myreal;
begin
  result:=//2*(a1+a2*(4*x-1)+a3*(6*x-1)*(2*x-1))
         //-4*(1-x)*(a2*4+a3*(24*x-8))+sqr(1-x)*a3*24;
 (1-x)*fdvedz3(x)-fdvedz2(x);
end;
{
function fdve2dz3(x:myreal):myreal;
begin
  result:=//6*(a2*4+a3*(24*x-16))+6*x*a3*24;
  -x*fdvedz3(x)-fdvedz2(x);
end;
function fdve1dz3(x:myreal):myreal;
begin
  result:=//6*(a2*4+a3*(24*x-8))-6*(1-x)*a3*24;
  (1-x)*fdvedz3(x)-fdvedz2(x);
end;
}
//---------
function fg1(x:myreal):myreal;
begin
  result:=fdvedz(x)/fve(x)
end;
function fg2(x:myreal):myreal;
begin
  result:=(-fve2(x)*p_2+fve1(x)*p_1//+r*tc*(ln(1-x)-ln(x))
  +x*fdve1dz(x)*p_1+(1-x)*fdve2dz(x)*p_2)/fve(x)
end;

function fdg1dz(x:myreal):myreal;
begin
  result:=-sqr(fdvedz(x)/fve(x))+fdvedz2(x)/fve(x);
end;
function fdg2dz(x:myreal):myreal;
begin
  result:=(-fdve2dz(x)*p_2+fdve1dz(x)*p_1//+r*tc*(-1/(1-x)-1/x)
  +x*fdve1dz2(x)*p_1+(1-x)*fdve2dz2(x)*p_2
  +fdve1dz(x)*p_1-fdve2dz(x)*p_2)/fve(x)
  -(-fve2(x)*p_2+fve1(x)*p_1//+r*tc*(ln(1-x)-ln(x))
  +x*fdve1dz(x)*p_1+(1-x)*fdve2dz(x)*p_2)*fdvedz(x)/sqr(fve(x))
end;

procedure progonka(n:integer;h:myreal;p1,p2:myreal;var x,p:masd);
var alfa,betta,gamma,fi,s,q:masd;
i:integer;
begin
setlength(alfa,n+1);
setlength(betta,n+1);
setlength(gamma,n+1);
setlength(fi,n+1);
setlength(s,n+1);
setlength(q,n+1);
for i:=1 to n-1 do
begin
  alfa[i]:=1/sqr(h)-fg1(x[i])/2/h;
  betta[i]:=fdg1dz(x[i])-2/sqr(h);
  gamma[i]:=1/sqr(h)+fg1(x[i])/2/h;
  fi[i]:=fdg2dz(x[i]);
end;
s[1]:=0;q[1]:=p1;
for i:=1 to n-1 do
begin
  s[i+1]:=-gamma[i]/(betta[i]+alfa[i]*s[i]);
  if abs(s[i+1])>1 then exit;
  q[i+1]:=(fi[i]-q[i]*alfa[i])/(betta[i]+alfa[i]*s[i]);
end;
p[0]:=p1;p[n]:=p2;
for i:=n-1 downto 1 do
  p[i]:=p[i+1]*s[i+1]+q[i+1];
end;

function fpz_(x,y:myreal):myreal;
begin
result:=fg2(x)-fg1(x)*y;
end;
//------------------------------------------------------------------------------
function runge_kutta4(x,y,h:myreal):myreal;//;f:functxy):myreal;
var k1,k2,k3,k4:myreal;
begin
k1:=h*fpz_(x,y);
k2:=h*fpz_(x+h/2,y+k1/2);
k3:=h*fpz_(x+h/2,y+k2/2);
k4:=h*fpz_(x+h,y+k3);
result:=y+(k1+2*(k2+k3)+k4)/6;
end;

function fspline(t:myreal;x:masD;n:integer):myreal;
var i:integer;
begin
result:=spl_a[n];
for i:=2 to n do
if (abs(t-x[i-1])<=abs(x[i]-x[i-1])) then
begin
result:=spl_a[i]+spl_b[i]*(x[i]-t)+0.5*sqr(x[i]-t)*spl_c[i]+
spl_d[i]/6*(x[i]-t)*sqr(x[i]-t);
exit;
end;
end;

function delta3(a11,a12,a13,a21,a22,a23,a31,a32,a33:MyReal):MyReal;
begin
  delta3:=a11*(a22*a33-a23*a32)-a12*(a21*a33-a23*a31)+a13*(a21*a32-a22*a31);
end;

procedure linrecurs(var x,y:masD;m:integer;var c0,c1,korr:MyReal);
var i,j:integer;
    a0,a1,b0,b1,delta,avr,sum0,sum1,sum2:MyReal;
    aa:array[1..2,1..3]of MyReal;
    f:textfile;
    t:masd;
begin
assignfile(f,'linrecurc.txt');rewrite(f);
setlength(t,m+1);
for i:=1 to m do begin
 t[i]:=i;
 end;
//y[i]=a0+a1*t[i];
 aa[1,1]:=m;
 aa[1,2]:=0;
 aa[1,3]:=0;
 aa[2,1]:=0;
 aa[2,2]:=0;
 aa[2,3]:=0;

 for i:=1 to m do begin
 writeln(f,t[i]:0:6,' ',y[i]:0:6);
 aa[1,2]:=aa[1,2]+t[i];
 aa[2,2]:=aa[2,2]+t[i]*t[i];
 aa[1,3]:=aa[1,3]+y[i];
 aa[2,3]:=aa[2,3]+t[i]*y[i];
 end;
 aa[2,1]:=aa[1,2];
 for i:=1 to 2 do begin
  for j:=1 to 3 do write(f,aa[i,j]:8:4);
  writeln(f);
 end;
 delta:=aa[1,1]*aa[2,2]-aa[2,1]*aa[1,2];
 a0:=(aa[1,3]*aa[2,2]-aa[2,3]*aa[1,2])/delta;
 a1:=(aa[1,1]*aa[2,3]-aa[2,1]*aa[1,3])/delta;
 writeln(f,a0:0:6,' ',a1:0:6,' ',delta:0:6);

 //x[i]=t[i]*b1+b0;
 aa[1,1]:=m;
 aa[1,2]:=0;
 aa[1,3]:=0;
 aa[2,1]:=0;
 aa[2,2]:=0;
 aa[2,3]:=0;

 for i:=1 to m do begin
 writeln(f,t[i]:0:6,' ',x[i]:0:6);
 aa[1,2]:=aa[1,2]+t[i];
 aa[2,2]:=aa[2,2]+t[i]*t[i];
 aa[1,3]:=aa[1,3]+x[i];
 aa[2,3]:=aa[2,3]+t[i]*x[i];
 end;
 aa[2,1]:=aa[1,2];
 for i:=1 to 2 do begin
  for j:=1 to 3 do write(f,aa[i,j]:8:4);
  writeln(f);
 end;
 delta:=aa[1,1]*aa[2,2]-aa[2,1]*aa[1,2];
 b0:=(aa[1,3]*aa[2,2]-aa[2,3]*aa[1,2])/delta;
 b1:=(aa[1,1]*aa[2,3]-aa[2,1]*aa[1,3])/delta;
 writeln(f,b0:0:6,' ',b1:0:6,' ',delta:0:6);

 c0:=a0-a1/b1*b0;
 c1:=a1/b1;

 writeln(f,c0:0:6,' ',c1:0:6);
    sum0:=0;
   for i:=1 to m do
      sum0:=sum0+y[i];
   avr:=sum0/m;
   sum1:=0;
   sum2:=0;
   for i:=1 to m do begin
      sum1:=sum1+sqr(c0+x[i]*c1-avr);
      sum2:=sum2+sqr(y[i]-avr);
   end;
   korr:=(sum1/sum2);
   writeln(f,korr:0:6);
 closefile(f);
end;

procedure recurs(var x,y:masD;m:integer;var c0,c1,c2,korr:MyReal);
var i,j:integer;
    delta,a0,a1,a2,b0,b1,sum0,sum1,sum2,avr:MyReal;
    aa:array[1..3,0..3]of MyReal;
    f:textfile;
    t:masd;
begin
setlength(t,m+1);
for i:=1 to m do begin
 t[i]:=i;
 end;
//y[i]=a0+a1*t[i]+a2*t[i]^2;
 aa[1,1]:=m;
 aa[1,2]:=0;
 aa[1,3]:=0;
 aa[2,3]:=0;
 aa[3,3]:=0;
 aa[1,0]:=0;
 aa[2,0]:=0;
 aa[3,0]:=0;
 for i:=1 to m do begin
 aa[1,2]:=aa[1,2]+t[i];
 aa[1,3]:=aa[1,3]+t[i]*t[i];
 aa[2,3]:=aa[2,3]+t[i]*t[i]*t[i];
 aa[3,3]:=aa[3,3]+t[i]*t[i]*t[i]*t[i];
 aa[1,0]:=aa[1,0]+y[i];
 aa[2,0]:=aa[2,0]+t[i]*y[i];
 aa[3,0]:=aa[3,0]+t[i]*t[i]*y[i];
 end;
 aa[2,1]:=aa[1,2];
 aa[2,2]:=aa[1,3];
 aa[3,1]:=aa[1,3];
 aa[3,2]:=aa[2,3];

 assignfile(f,'recurs_'+inttostr(m)+'.txt');rewrite(f);
 writeln(f,'t,t^2,t^3,t^4,y,ty,t^2y:');
 for i:=1 to m do begin
 writeln(f,t[i]:8:4,' ',sqr(t[i]):8:4,' ',sqr(t[i])*t[i]:8:4,' ',
 sqr(sqr(t[i])):8:4,' ' ,y[i]:8:4,' ',t[i]*y[i]:8:4,' ',sqr(t[i])*y[i]:8:4);
 end;
 for i:=1 to 3 do begin
  for j:=0 to 3 do write(f,aa[i,j]:8:4,' ');
  writeln(f);
 end;

 delta:=delta3(aa[1,1],aa[1,2],aa[1,3],aa[2,1],aa[2,2],aa[2,3],aa[3,1],aa[3,2],aa[3,3]);
 a0:=delta3(aa[1,0],aa[1,2],aa[1,3],aa[2,0],aa[2,2],aa[2,3],aa[3,0],aa[3,2],aa[3,3]);
 a1:=delta3(aa[1,1],aa[1,0],aa[1,3],aa[2,1],aa[2,0],aa[2,3],aa[3,1],aa[3,0],aa[3,3]);
 a2:=delta3(aa[1,1],aa[1,2],aa[1,0],aa[2,1],aa[2,2],aa[2,0],aa[3,1],aa[3,2],aa[3,0]);
 writeln(f,'delta',delta:8:4,' ',a0:8:4,' ',a1:8:4,' ',a2:8:4);
 a0:=a0/delta;
 a1:=a1/delta;
 a2:=a2/delta;
 writeln(f,'a0,a1,a2:',a0:8:4,' ',a1:8:4,' ',a2:8:4);

 //x[i]=t[i]*b1+b0;
 aa[1,1]:=m;
 aa[1,2]:=0;
 aa[1,3]:=0;
 aa[2,1]:=0;
 aa[2,2]:=0;
 aa[2,3]:=0;
 writeln(f,'t,x:');
 for i:=1 to m do begin
 writeln(f,t[i]:0:6,' ',x[i]:0:6);
 aa[1,2]:=aa[1,2]+t[i];
 aa[2,2]:=aa[2,2]+t[i]*t[i];
 aa[1,3]:=aa[1,3]+x[i];
 aa[2,3]:=aa[2,3]+t[i]*x[i];
 end;
 aa[2,1]:=aa[1,2];
 writeln(f,'aa:');
 for i:=1 to 2 do begin
  for j:=1 to 3 do write(f,aa[i,j]:8:4,' ');
  writeln(f);
 end;
 delta:=aa[1,1]*aa[2,2]-aa[2,1]*aa[1,2];
 b0:=(aa[1,3]*aa[2,2]-aa[2,3]*aa[1,2])/delta;
 b1:=(aa[1,1]*aa[2,3]-aa[2,1]*aa[1,3])/delta;
 writeln(f,'b0,b1,delta:',b0:0:6,' ',b1:0:6,' ',delta:0:6);

 c0:=a0-a1*b0/b1+a2*sqr(b0/b1);
 c1:=a1/b1-2*a2/b1/b1*b0;
 c2:=a2/b1/b1;
 writeln(f,'c0,c1,c2:',c0:0:6,' ',c1:0:6,' ',c2:0:6);
    sum0:=0;
   for i:=1 to m do
      sum0:=sum0+y[i];
   avr:=sum0/m;
   sum1:=0;
   sum2:=0;
   for i:=1 to m do begin
      sum1:=sum1+sqr(c0+x[i]*c1+sqr(x[i])*c2-avr);
      sum2:=sum2+sqr(y[i]-avr);
   end;
   korr:=sqrt(sum1/sum2);
   writeln(f,korr:0:6);
 closefile(f);
end;

procedure spline3(x,y:masd;n:integer);
var
i:integer;
hi:myreal;
alfa,betta,gamma,fi,p,q:MASD;
begin
setlength(alfa,n+1);
setlength(betta,n+1);
setlength(gamma,n+1);
setlength(fi,n+1);
setlength(p,n+1);
setlength(q,n+1);
setlength(spl_a,n+1);
setlength(spl_b,n+1);
setlength(spl_c,n+1);
setlength(spl_d,n+1);
assign(output,'spline.txt');rewrite(output);
writeln('x,y,alfa,betta,gamma,fi:');
for i:=2 to n-1 do begin
alfa[i]:=x[i]-x[i-1];
gamma[i]:=x[i+1]-x[i];
betta[i]:=2*(alfa[i]+gamma[i]);
fi[i]:=6*((y[i+1]-y[i])/gamma[i]-(y[i]-y[i-1])/alfa[i]);
writeln(x[i]:0:6,' ',y[i]:0:6,' ',alfa[i]:0:6,' ',betta[i]:0:6,' ',gamma[i]:0:6,' ',fi[i]:0:6)
end;
spl_c[1]:=0;spl_c[n]:=0;
p[2]:=0;q[2]:=0;
writeln('p,q:');
for i:=2 to n-1 do begin
p[i+1]:=-gamma[i]/(betta[i]+alfa[i]*p[i]);
q[i+1]:=(fi[i]-alfa[i]*q[i])/(betta[i]+alfa[i]*p[i]);
writeln(p[i+1]:0:6,' ',q[i+1]:0:6,' ');
end;
for i:=n-1 downto 2 do
spl_c[i]:=p[i+1]*spl_c[i+1]+q[i+1];
writeln('a,b,c,d:');
for i:=1 to n-1 do begin
hi:=x[i+1]-x[i];
spl_a[i+1]:=y[i+1];
spl_b[i+1]:=(y[i]-y[i+1])/hi-0.5*spl_c[i+1]*hi-(spl_c[i]-spl_c[i+1])*hi/6;
spl_d[i+1]:=(spl_c[i]-spl_c[i+1])/hi;
writeln(spl_a[i+1]:0:6,' ',spl_b[i+1]:0:6,' ',spl_c[i+1]:0:6,' ',spl_d[i+1]:0:6,' ');
end;
close(output);
end;

procedure Redlehrecurs(var x,y:masD;m:integer;var a1,a2,a3:MyReal);
var i:integer;
    delta,x1,x2,x12,x21,x22,x23,x24,xx12,xy:MyReal;
    a:array[1..3,0..3]of MyReal;
begin

a[1,1]:=0;
a[2,1]:=0;
a[3,1]:=0;
a[3,2]:=0;
a[3,3]:=0;
a[1,0]:=0;
a[2,0]:=0;
a[3,0]:=0;

for i:=1 to m do begin
x2:=sqr(x[i]);
x1:=(1-x[i]);
xy:=y[i]*x[i];
x12:=sqr(1-x[i]);
x21:=(2*x[i]-1);
x22:=sqr(x21);
x23:=x22*x21;
x24:=sqr(x22);
xx12:=x2*x12;
a[1,1]:=a[1,1]+xx12;  //x^2*(1-x)^2
a[2,1]:=a[2,1]+xx12*x21; //x^2*(1-x)^2*(2x-1)
a[3,1]:=a[3,1]+xx12*x22; //x^2*(1-x)^2*(2x-1)^2
a[3,2]:=a[3,2]+xx12*x23; //x^2*(1-x)^2*(2x-1)^3
a[3,3]:=a[3,3]+xx12*x24; //x^2*(1-x)^2*(2x-1)^4
a[1,0]:=a[1,0]+xy*x1;      //yx*(1-x)
a[2,0]:=a[2,0]+xy*x1*x21;   //yx*(1-x)*(2x-1)
a[3,0]:=a[3,0]+xy*x1*x22;  //yx*(1-x)*(2x-1)^2
end;
a[1,2]:=a[2,1];
a[2,2]:=a[3,1];
a[1,3]:=a[3,1];
a[2,3]:=a[3,2];
 delta:=delta3(a[1,1],a[1,2],a[1,3],a[2,1],a[2,2],a[2,3],a[3,1],a[3,2],a[3,3]);
 a1:=delta3(a[1,0],a[1,2],a[1,3],a[2,0],a[2,2],a[2,3],a[3,0],a[3,2],a[3,3])/delta;
 a2:=delta3(a[1,1],a[1,0],a[1,3],a[2,1],a[2,0],a[2,3],a[3,1],a[3,0],a[3,3])/delta;
 a3:=delta3(a[1,1],a[1,2],a[1,0],a[2,1],a[2,2],a[2,0],a[3,1],a[3,2],a[3,0])/delta;
end;
//------------------------------------------------------------------------------

end.
