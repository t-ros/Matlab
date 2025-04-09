%%
clear, close all

a=10; 
fs=30; % Mais o fs, menor será o efeito aliasing
T=1/fs;

% a)
w=linspace(0,60*pi,1000);
Xc=1./(a+1j*w);
figure
plot(w/pi,  abs(Xc)), grid, xlabel('\omega'), title('Gráfico do espetro do sinal');
%%  b)
clc

n=0:19;
x=exp(-a*n*T);
x(1)=1/2;
figure
stem(n,x, 'filled'), xlabel('x'), ylabel('x[t]'), title('Sequência resultante para 20 amostras');
%% c)
clc

alfa=exp(-1/3);
W=linspace(-2*pi,2*pi,1001);
Xd= 1./(1-alfa*exp(-1j*W));
figure
plot(W/pi, abs(Xd), W/pi, abs(Xd-1/2)), grid