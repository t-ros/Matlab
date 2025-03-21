clear
%%
close all
%% enunciado
clc
[x,fs]=audioread('dtmf001.wav');
soundsc(x,fs);
%% a) Som de teclas de telemovel - Aplicação prática do conselho de frequência
clc, close all
N=640;
L=160;
xf=buffer(x,N,N-L,'nodelay'); % Segmentar o sinal
nTramas=size(xf,2); % O numero de tramas e o numero de colunas 'xf' 
Nfft=1024;
X = fft(xf,Nfft);
k=0:Nfft/2;
f=k/Nfft*fs;
figure
imagesc(1:nTramas,f,db(abs(X(1:Nfft/2+1,:))));axis xy; colorbar; 

% 6 zonas de silência e mostra a 5 teclas premidas

%Para juntar ao sonograma: 4 linhas a azul para as linhas do teclado DTMF 
%e 3 linhas a vermelho para as colunas do teclado DTMF 
row_dtmf=[697,770,852,941]; %frequências das linhas 
col_dtmf=[1209,1336, 1447]; %frequências das colunas 
hold on 
for i=1:4 
    plot([1,nTramas],[row_dtmf(i),row_dtmf(i)],'b'); 
end 
for i=1:3 
    plot([1,nTramas],[col_dtmf(i),col_dtmf(i)],'r'); 
end 
hold off 
axis([1 nTramas 400 1700])
% Pelo gráfico obtemos visualmente:
% Tecla1: {852Hz, 1209Hz}: 7
% T2: {697Hz, 1447Hz}: 3
% T3: {770Hz, 1209Hz}: 4
% T4: {697Hz, 1336Hz}: 2
% T4: {941Hz, 1447Hz}: #