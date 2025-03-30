function dy = richardson(f, x, h)
    % RICHARDSON Estima a derivada de f em x usando a extrapolação de Richardson.
    %
    %   dy = richardson(f, x, h) retorna a estimativa da derivada de f no ponto x,
    %   utilizando a extrapolação de Richardson com passo inicial h.
    %
    %   Parâmetros de entrada:
    %       f  - Função anônima para a qual se deseja calcular a derivada.
    %       x  - Ponto no qual a derivada será estimada.
    %       h  - Passo inicial para o cálculo das diferenças finitas.
    %
    %   Saída:
    %       dy - Estimativa da derivada de f em x.

    % Cálculo das aproximações da derivada usando diferenças centrais
    D1 = (f(x + h) - f(x - h)) / (2 * h);      % Com passo h
    D2 = (f(x + h/2) - f(x - h/2)) / h;        % Com passo h/2

    % Aplicação da extrapolação de Richardson para estimar a derivada
    dy = (4 * D2 - D1) / 3;
end
