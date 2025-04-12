clc, clear, close all
%% b)
W=pi/5;
n=-40:40;
h=(W/pi)*sinc(W*n/pi);
subplot(1,1,1);
stem(n,h,'filled'), title("b) Exemplo da função sinc"), grid;
% A função sinc é uma função real
%% d)
H0=sum(h)
E=sum(h.^2)
% "O problema 2 contem questões TP bastante comuns" - prof