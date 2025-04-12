close all
%%
clear
%% enunciado
clc
[x,fs]=audioread('TIMIT_TRAIN_DR1_MDAC0_SX451.wav'); % Sonograma é um espetro da frequência
soundsc(x,fs)
%% a)
clc
N=640;
L=160;
xf=buffer(x,N,N-L,'nodelay'); % Segmentar o sinal
nTramas=size(xf,2); % O numero de tramas e o numero de colunas 'xf' 
Nfft=1024;
%% b) Calcular as DFT's
clc
X = fft(xf,Nfft);
%% c) Sonograma (sinal audio)
clc
k=0:Nfft/2;
f=k/Nfft*fs;
figure
imagesc(1:nTramas,f,db(abs(X(1:Nfft/2+1,:))));axis xy; colorbar
title('The thick elm forest was nearly overwhelmed by Dutch  Elm Disease'); xlabel('Trama'); ylabel('f[Hz]');
% riscas azuis são zonas de silêncio
% amarelo é sinal
%% d) Espetro (em dB)
clc
figure
plot(f,db(abs(X(k+1,100))), [1500 1500], [-60 40]); 
% Observamos 14 picos até aos 1500 Hz
title('Observamos 14 harmónicos (picos) até aos 1500 Hz'); xlabel('f(Hz)'); ylabel('dB')
% O tom do locutor masculino está na gama dos 100Hz
% O tom feminino é mais elevado e está perto dos 200Hz
%% e)
clc
ini=85; fin=112; % indice inicial e final correspondente às tramas
i=(ini-1)*L+1; j=(fin-1)*L+N;
xx=x(i:j);
soundsc(xx,fs)
%% verificação e)
%plot(1:N,xf(:,ini),1:N(1:N),xx(1:N))
%plot(1:N,xf(:,fin),1:N(1:N);xx(end-N+1))