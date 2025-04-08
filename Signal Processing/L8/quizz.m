Nfft = 1024;  % número de pontos da FFT
n0 = 3500;    % instante inicial da análise

xx = x(n0+1:n0+Nfft);        % janela do sinal
XX = fft(xx, Nfft);          % FFT

kc = 100;  % exemplo de valor para índice de corte

% Energia nos dois intervalos espectrais
E1 = (abs(XX(1))^2 + 2*sum(abs(XX(2:kc)).^2)) / Nfft;
E2 = (2*sum(abs(XX(kc+1:Nfft/2)).^2) + abs(XX(1+Nfft/2))^2) / Nfft;

Etot = sum(xx.^2);  % energia total no tempo

% Verificações
fprintf('Erro de energia: %.6f\n', E1 + E2 - Etot);
fprintf('E1/Etot: %.4f\n', E1/Etot);
fprintf('E2/Etot: %.4f\n', E2/Etot);