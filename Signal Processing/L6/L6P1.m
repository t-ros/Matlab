clc % limpar cmd window
%% a)
X_CS=@(x,N) [real(x(1)) (x(2:N)+conj(x(N:-1:2)))/2]; % componente complexa simétrica
X_CA=@(x,N) [1i*imag(x(1)) (x(2:N)-conj(x(N:-1:2)))/2]; % componente complexa assimétrica
%% Testes
x=(1:4)+1i*(5:8); % declaração do x
X_CS(x,4) % Out: CS = 1 3-j 3 3+j
X_CA(x,4) % Out: CA = 5j -1+7j 7j 1+7j 
X_CS([x 0], 5) % Out: CS = 1 1+3j 3.5-0.5j 3.5+0.5j 1-3j
%% b)
x = [5 4 3 2 1]; 
y =[0 9 8 7 6]; % x e y são sequências reais
z=x+1i*y;
X=fft(x); Y=fft(y); Z=fft(z);
% Testar no cmdw: X, Y, Z
% Z é uma sequencia generica real de simetria
%% c)
zep=X_CS(z,5); zop=X_CA(z,5); % z pequeno
Zep=X_CS(Z,5); Zop=X_CA(Z,5); % Z grande
sum(abs(z-(zep+zop)))
sum(abs(Z-(Zep+Zop)))
% O sinal é igual à soma das suas componentes (O erro é muito pequeno:  1.7764e-15)
%% d) Relação Zep e Zop com o X e Y originais
sum(abs(X-Zep)) % X[k] = Z_ep[k]
sum(abs(Y+1i*Zop)) % Y[k] = -j*Z_op[k]
% ATENÇÂO: VAI APARECER NOS TESTES!!
% Associado ao prob 5.6 da aula T
%% e)
x=randn(1,1024); y=randn(1,1024); z=x+1i*y;
X=fft(x); Y=fft(y); Z=fft(z);
Zep=X_CS(Z,1024); Zop=X_CA(Z,1024); % Z grande
sum(abs(X-Zep)) % X[k] = Z_ep[k]
sum(abs(Y+1i*Zop)) % Y[k] = -j*Z_op[k]
% Resumo do problema: Com 1 DFT complexa faço 2 reais (muito usado quando
% os computadores eram mais fracos)