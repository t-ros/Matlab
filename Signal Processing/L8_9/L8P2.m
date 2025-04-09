clc,clear,close all 
%% a) Período de amostragem
fs = 16000; % Hz
Ts = 1/fs;
disp(['Ts = ', num2str(Ts), ' s'])
%% b) Duração do sinal em milissegundos
[x, fs] = audioread('TIMIT_TRAIN_DR1_FCJF0_SA1.WAV');
N = length(x);
D_ms = (N/fs) * 1000;
disp(['Duração = ', num2str(D_ms), ' ms'])
%% c) Frequência máxima do sinal
f_max = fs/2;
w_max = 2*pi*f_max;
disp(['f_max = ', num2str(f_max), ' Hz'])
disp(['w_max = ', num2str(w_max), ' rad/s'])
%% d) Frequência em radianos para 2kHz
f = 2000;
w = 2*pi*f;
disp(['w para 2kHz = ', num2str(w), ' rad/s'])
%% e) Energia em segmento de 512 amostras
n0 = 1000;
xx = x(n0+1 : n0+512);
X = fft(xx);
N_seg = length(xx);
f_axis = (0:N_seg-1)*(fs/N_seg);

energia_total = sum(abs(xx).^2)/N_seg;
idx_baixo = find(f_axis < 2000);
energia_baixo = (1/N_seg) * (abs(X(1))^2 + 2*sum(abs(X(idx_baixo(2:end))).^2));
energia_acima = energia_total - energia_baixo;

disp(['Energia total = ', num2str(energia_total)])
disp(['Energia abaixo de 2kHz = ', num2str(energia_baixo)])
disp(['Energia acima de 2kHz = ', num2str(energia_acima)])

if energia_acima > energia_baixo
    disp('Segmento NÃO vozeado')
else
    disp('Segmento vozeado')
end
