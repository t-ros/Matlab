function M=clearodds(A)
M=A;
impar=mod(M,2)~=0;
M(impar)=M(impar)+1;
end