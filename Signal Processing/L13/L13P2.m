%% Problema 2
clear
%% a)
clc, close all
num=[2,3,4]
den=[1,-3/4,-8/9]
zplane(num,den)
roots(den)
%%
clc
[R,P,K]=residuez(num,den);
disp(R) % residuos
disp(P) % polos
disp(K)
%%
clc, close all
delta=@(n)(n==0)*1;
nneg = -50:-1;
npos = 0:50;
n=[nneg,npos];
h= [-R(1)*P(1).^nneg, R(2)*P(2).^npos] + K*delta(n); % [PARTE ESQ, PARTE DIR]
figure; stem(n,h,'filled')
%% parte causal
clc, close all
n=0:100;
h=R(1)*P(1).^n + R(2)*P(2).^n + K*delta(n);
figure; stem(n,h,'filled')
%% c)
clc, close all
[H,w]=freqz(num,den);
figure;plot(w/pi,abs(H)),grid
%% (erro nas dim)
% clc
% H0 = sum(num)/sum(den)
% Hpi = sum(num.*[1,-1,1,-1])/sum(den.*[1,-1,1])