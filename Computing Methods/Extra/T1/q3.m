clc, clear, close all
%% 2022/23 PL6B
Imin=input('Indique o valor mínimo (Imin): ');
Imax=input('Indique o valor máximo (Imax): ');
if (Imin > Imax)
    error('Atenção: Imin não pode ser maior que Imax');
elseif (Imin==Imax)
    error('Atenção: Imin tem de ser diferente de Imax')
end

n=input('Indique a dimensão da matriz (n>=2):');
if (n<2)
    error('Atenção: n tem de ser igual ou maior a 2!')
end

M = randi([Imin Imax],n);

ch=input('Pretende somar valores positivos ou negativos? [p/n]: ','s');

soma = SomaPosNeg(M, ch);

fprintf('A soma dos valores %s é: %d\n', ch, soma);

