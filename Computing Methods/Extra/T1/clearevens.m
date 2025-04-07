function M = clearevens(A)
M=A;
impar = mod(A,2)~=0;
M(impar)=0;
end
