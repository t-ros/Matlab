%% Problema 3
clear
num=[2 3]; den=conv([1 0 -1/4],[1 0 -1/4]);
zplane(num,den)
%% a)
[R,P,K]=residuez(num,den);
%% b)
n=0:19;
hold on
h1=impz(num,den,20);
stem(n,h1,'filled')
h=R(1)*P(1).^n+R(2)*(n+1).*P(2).^n+R(3)*P(3).^n+R(4)*(n+1).*P(4).^n;
stem(n,real(h),'filled')
h2=filter(num,den,[1 zeros(1,19)]);
stem(n,h2,'filled')
hold off
%% c)
hold on
den1=conv(den,[1 -1/3]);
[R,P,K]=residuez(num,den1);
y=R(1)*P(1).^n+R(2)*(n+1).*P(2).^n+R(3)*P(3).^n+R(4)*(n+1).*P(4).^n+R(5)*P(5).^n;
stem(n,real(y),'filled')
stem(n,impz(num,den1,20),'filled')
x=(1/3).^n;
stem(n,filter(num,den,x),'filled')
hold off
%% d)
n=0:50;
x=1+cos(pi*n/8);
H=freqz(num,den,[0 pi/8]);
y=H(1)+abs(H(2))*cos(pi*n/8+angle(H(2)));
hold on
stem(n,y,'filled')
stem(n,x,'filled')
legend('y[n]','x[n]')