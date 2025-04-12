clc, clear, close all
%% a)
x=@(n)(n>=0).*(9/10).^n;
n=5:20;
subplot(3,1,1);
stem(n,x(n),'filled'), title("a) Gráfico da sequência"), grid
%% b)
X=@(w,alfa)1./(1-alfa*exp(-1i*w)); % x != X
w=linspace(-3*pi,3*pi,1001);
subplot(3,1,2);
plot(w/pi, abs(X(w,9/10))), title("b) Representação discretizada de w num intervalo"), grid
%% c)
X(0,9/10)
X(pi,9/10)
%% d) 
subplot(3,1,3);
plot(w/pi, angle(X(w,9/10))/pi), title("e) Gráfico da fase X(e^j^w)"), grid
