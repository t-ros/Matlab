%% Questão 1
% Um sinal periódico de período 32 tem os primeiros coeficientes de Fourier de a0 a a4 que são:
% a0a4=[1,1,6,7,5]. Os 23 coeficientes de Fourier seguintes são nulos. Sabendo que o sinal é real e par, 
% identifique esse sinal:
clc, clear, close all
N = 32;
n = 0:N-1;
a = [1, 1, 6, 7, 5];  % a0 a a4
x = a(1) * ones(size(n));  % a0

for k = 1:4
    x = x + 2 * a(k+1) * cos(2 * pi * k * n / N); % fórmula de reconstrução do sinal com coeficientes de Fourier
end

stem(n, x), grid
xlabel('n'),
title('x[n]')
%% Questão 2
% Com n=0:200; faça um gráfico do sinal periódico x[n] dado por 
% x=cos(3*pi/21*n)+cos(5*pi/7*n+2);
% Determine o período do sinal, N, e os harmónicos presentes. A resposta é:
clc, clear, close all

n=0:200;
x=cos(3*pi/21*n)+cos(5*pi/7*n+2);

plot(n, x)
xlabel('n'), ylabel('x[n]'), title('Sinal periódico'), grid on
%% Questão 3
% Seja x[n] periódico, de período N=2048, definido da seguinte forma:
% x[n]=1, n=-15:15; x[n] = 0, n=16:2032; x[n] =x[n+2048]
% Confirme que o vetor que gerou tem comprimento 2048. O coeficiente de Fourier de índice 600, a_600 , é:
clc, clear, close all
N = 2048;
x = zeros(1, N);         % inicializar vetor de zeros
indices = mod(-15:15, N) + 1;  % converter -15:15 para índices entre 1 e N
x(indices) = 1;
X = fft(x);          % calcula DFT
a600 = X(601) / N;   % índice 600 corresponde a posição 601 no MATLAB
disp(a600)
%% Questão 4
% Seja x[n]=n+6, com n=0:600:x=6:606; Pretende-se calcular a DTFT deste
% sinal em w=3*pi/95, X(e^((j*3*pi)/95)). Este valor é:
clc, clear, close all
n=0:600;
x=n+6;
w=3*pi/95;
X=sum(x.*exp(1j*w*n))
%% Questão 5
% Seja z[n]=x[n]+jy[n] onde x[n] e y[n] são sequências reais de comprimento 32. A partir da DFT Z[k] é 
% possível conhecer X[k] e Y[k], as DFTs das sequências reais x[n] e y[n], respetivamente.
% Seja Z[k] definida pelo seguinte código: k=0:31; Z=cos(k*2*pi/15) +1j*cos(k*2*pi/7);
% O gráfico de x[n] é:
clc, clear, close all
N=32;
k=0:N-1; 
Z=cos(k*2*pi/15) +1j*cos(k*2*pi/7);
X=real(Z); % Y=imag(Z)
x=ifft(X);
x=real(x);
n=0:N-1;
stem(n,x), grid on
%% Questão 6
% Considere op pulso retangular definido em n=-21:21; x[n]=1, |n|<=21; x[n]=0, |n|>=21;
% Seja X(e^(j*w)) a DTFT de x[n]. O valor de X(e^(j*w)) para w=0 e um valor
% w tal que X(e^(j*w))=0, são:
clc, clear, close all
N = 43;
w = linspace(-pi, pi, 1000);
X = sin(N*w/2)./sin(w/2); X(w==0) = N;
fprintf('X(0) = %.0f\nZero em w = %.4f rad\n', N, 2*pi/N);
%% Questão 7
% Considere o sinal da figura. Pretende-se saber qual o desvio de fase em relação 
% à situação de uma DTFT real e par. Para desenhar a fase pode considerar, por 
% exemplo, uma DFT com Nfft=12 e ver a fase para w pequeno. O declive da 
% fase de X(e^(j*w)) é:
clc, clear, close all
n = -9:3;
x = [0 0 1 2 3 4 5 4 3 2 1 0 0];
n0 = sum(n .* x) / sum(x);  % centro de massa
declive = -n0
%% Questão 8
% Considere um sitema LTI, causal definido pela seguinte equeção de
% diferenças: y[n]+3/5y[n-1]+16/23y[n-2]-3/23y[n-3]=-2x[n]-2x[n-1]-8x[n-2]
% Quando a entrada deste sinal é o sinal x[n]=1+cos(pi*n/4) a saída é:
clc; clear; close all
 
%% Questão 9
% Considere um sinal x[n] e a sua DFT, X[k], tomada com 1200 pontos.
% Forma-se uma nova DFT que é Y[k]=e^(j*k*2*pi*113/1200)*X[K]. Verifica se
% Y[k] é real e par: Y=[1:601,600:-1:2]; O valor x[113] é:
clc, clear, close all
N=1200;
sum1 = sum(1:601);  % = 601*602/2 = 180901
sum2 = sum(2:600);  % = (600*601)/2 - 1 = 180300 - 1 = 179700
total = sum1 + sum2;
x0 = total / N;
fprintf('%.0f', x0)
%% Questão 10
% Considere o sinal dado pelo seguinte código: 
% n=0:10000;fs=10000; x=sin(-3*pi/4*n-fs/2*cos(2*pi/fs*n));
% Faça uma análise de termo curto ao sinal com janelas de 200 amostras de 50 em 50 amostras, de forma a 
% identificar a variação do espetro do sinal ao longo do tempo. Faça um gráfico com o módulo da DFT das 
% tramas em dB. Confira o eixo das ordenadas. O espetro do sinal ao longo do tempo é:
clc, clear, close all
fs = 10000; n = 0:10000;
x = sin(-3*pi/4*n - fs/2*cos(2*pi*n/fs));
win = 200; hop = 50;
S = buffer(x, win, win - hop, 'nodelay');
Sfft = abs(fft(S)) .^ 2;
imagesc(10*log10(Sfft(1:win/2, :))); axis xy
xlabel('tempo'); ylabel('frequência (bins)')
