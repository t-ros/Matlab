clc, clear, close all
% esquerda (|z| < r1)
% direita (|z| > r1) 
% bilateral (r1 < |z| < r2
% - exterior define a parte esquerda
% - interior define a parte direita
%% Problema 1 
den=conv(conv([1 1/2],[1 -1/2 1/4]),[1 -2]);
num=[6 -11/2 -3/4 -1/8];
abs(roots(den))
%% a)
% Numero de ROCs distintas é sempre N+1
hold on
zplane(num,den)
axis equal
w=linspace(0,2*pi,100);
x1=cos(w)/2;y1=sin(w)/2;
x2=2*cos(w);y2=2*sin(w);
plot(x1,y1,'r--',x2,y2,'r--')
xlim([-3 3])
ylim([-3 3])
hold off
%% c)
[R,P,K]=residuez(num,den);
%% d)
%notar que K tem dois valores. Logo:
n=-20:-1;
xneg = -R(1)*P(1).^n;
n=0:20;
xpos=R(2)*P(2).^n+R(3)*P(3).^n+R(4)*P(4).^n;
x=[xneg real(xpos)];
stem(-20:20,x,'filled')
%% e)
[X w]=freqz(num,den,1024,'whole');
X1=fft(x,1024);
plot(w,abs(X),w,abs(X1)),grid