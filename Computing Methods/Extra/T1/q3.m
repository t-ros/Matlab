%% 2022/23 PL6B
clc, clear, close all

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
%% 2021/22 PL5A
clc, clear, close all

n=input('Indique a dimensão da matriz: ');
A=randi([1 20],n);
M=clearevens(A);
%% 2021/22 PL7A
clc, clear, close all

A=randi([-10 10],5);
valn=sum(A(:)<0);
n=input('Indique um valor: ');
M=troca(A, n)
fprintf('Foram trocados %d valores na matriz\n',valn);
%% 2021/22 PL7A
clc, clear, close all

n=input('Indique a dimensão da matriz: ');
fprintf('Antes da função')
A=randi([1 15],n)
fprintf('Depois da função')
M=clearodds(A)
%% 2021/22 PL6A
clc, clear, close all

n=input('Indique a dimensão da matriz: ');
A=randi([-15 15],n)
soma_neg=sum(A(:)<0);
M=signchange(A)
fprintf('Foram trocados %d valores na matriz\n',soma_neg)
