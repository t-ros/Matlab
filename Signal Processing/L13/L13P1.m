%% Problema 1
clear
%% a)
num=conv([2,3,4],[5,6])
den=[1,-3/4,-1/8]
zplane(num,den)
%% c)
[R,P,K]=residuez(num,den);
disp(R) % residuos
disp(P) % polos
disp(K)
%%
%notar que K tem dois valores. Logo:
n=0:59;
h = R(1)*P(1).^n+R(2)*P(2).^n; h(1)=h(1)+K(1); h(2)=h(2)+K(2);
%verificar:
h1=impz(num,den,60);
hold on
stem(n,h,'filled')
stem(n,h1,'filled')
hold off
%% d)
[H,w]=freqz(num,den); %LPF
plot(w/pi,abs(H)),grid
%% e)
H0 = sum(num)/sum(den)
Hpi = sum(num.*[1,-1,1,-1])/sum(den.*[1,-1,1])
%% f)
n=0:100;
x=1+cos(pi/8*n);
hold on
y=filter(num,den,x);
stem(n,y,'filled')
%%
H=freqz(num,den,[0 pi/8]);
yfinal=1*H(1) + abs(H(2))*cos(pi/8*n + angle(H(2)));
stem(n,yfinal,'filled')
hold off