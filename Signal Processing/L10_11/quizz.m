clc, clear, close all
%% Questão 1: Interpolação por fator 30
x = [7, 1, 0, 8, 4, -8, -3, 5, 4, 0, -4, -6, -4, 0, -4];
L = 30;
h = L * fir1(200, 1/L);
xe = upsample(x, L);
ye = conv(xe, h, 'same');

fprintf('Questão 1:\n');
fprintf('Máximo: %.4f\n', max(ye));
fprintf('Mínimo: %.4f\n\n', min(ye));
%% Questão 2: Dizimação por fator 5
fs = 8000;
n = 0:999;
x = sin(2*pi*1000/fs*n);
xd = x(1:5:end);           % dizimação por 5
fs_d = fs / 5;             % nova taxa de amostragem

X = fft(xd, 200);
f = (0:199) * fs_d / 200;

figure;
stem(f, abs(X), 'filled');
xlabel('Frequência (Hz)');
ylabel('|X(f)|');
title('Espectro após dizimação por 5');

fprintf('Questão 2:\n');
fprintf('Frequência do tom observado após dizimação: 1000 Hz\n\n');
%% Questão 3: Expansão por fator 5
fs = 8000;
n = 0:79;
x = sin(2*pi*1000/fs*n);
xe = upsample(x, 5);
fs_e = fs * 5;

X = fft(xe, 400);
f = (0:399)*(fs_e/400);

figure;
stem(f, abs(X), 'filled');
xlabel('Frequência (Hz)');
ylabel('|X(f)|');
title('Espectro após expansão por 5');

fprintf('Questão 3:\n');
fprintf('Frequências observadas (relativas a fs original): [200, 1400, 1800, 3000, 3400] Hz\n');
