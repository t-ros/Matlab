function s= SomaPosNeg(M, ch)
switch(ch)
    case 'p'
        s=sum(M(M>0));
    case 'n'
        s=sum(M(M<0));
    otherwise
        error('Opção inválida! Use ''p'' para positivos ou ''n'' para negativos.');
end
end