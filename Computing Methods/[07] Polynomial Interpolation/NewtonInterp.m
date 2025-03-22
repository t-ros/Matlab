function yi = NewtonInterp(x, y, xi)
% NewtonInterp determina o polinómio de interpolação de Newton baseado em
% diferenças divididas, coincidente com os dados (x, y) e utilizado para 
% interpolar um valor em xi.
% yi = NewtonInterp(x, y, xi), com
% x, y - vetores de dimensão n com os dados
% xi - valor do ponto para o qual se pretende um valor interpolado
% yi - valor interpolado para xi
n = length(x);
DivDiff = zeros(n, n);
DivDiff(:,1) = y';
% Constrói a matriz de diferenças divididas
for j = 2:n
 for i = j:n
 DivDiff(i,j) = (DivDiff(i,j-1) - DivDiff(i-1,j-1)) / (x(i) - x(i-j+1));
 end
end
% Extrai os coeficientes da diagonal principal de DivDiff. Não sendo 
% necessário desta forma, serve apenas para ser mais claro o processo
a = diag(DivDiff);
% Cálculo de valor interpolado yi
yi = a(1);
xprod = 1;
for m = 2:n
 xprod = xprod*(xi - x(m-1));
 yi = yi + a(m)*xprod;
end
