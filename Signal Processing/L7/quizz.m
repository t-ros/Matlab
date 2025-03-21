clear
%%
close all
%% enunciado
clc
fs=10000; n=0:10000;
x=-sin(pi/4*n+fs/3*cos(2*pi/fs*n-2));
soundsc(x,fs);
%% a) Som de teclas de telemovel - Aplicação prática do conselho de frequência
clc, close all
N=180; % amostras
L=60; % avanço
xf=buffer(x,N,N-L,'nodelay'); % Segmentar o sinal
nTramas=size(xf,2); % O numero de tramas e o numero de colunas 'xf' 
Nfft=256;
X = fft(xf,Nfft);
k=0:Nfft/2;
f=k/Nfft*fs;
figure
imagesc(1:nTramas,f,db(abs(X(1:Nfft/2+1,:))));axis xy; colorbar; 