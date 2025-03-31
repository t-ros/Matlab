function [df, X] = NumDiff(f, a, b, N, option) % Slide 8 e 9 [Chapter 08]
%NUMDIFF Derivação numérica por diferenças finitas.
%
%   [df, X] = NumDiff(f, a, b, N, option) calcula numericamente a derivada
%   da função f no intervalo [a, b], usando N pontos uniformemente distribuídos.
%
%   Entradas:
%       f      - Função a derivar (função anónima, ex: @(x) sin(x)).
%       a, b   - Extremidades do intervalo (a < b).
%       N      - Número de pontos no intervalo (inteiro > 10).
%       option - Método de diferenciação:
%                   'forward'  - diferenças para a frente
%                   'backward' - diferenças para trás
%                   'central'  - diferenças centrais
%
%   Saídas:
%       df - Vetor com os valores aproximados da derivada.
%       X  - Vetor com os pontos de x correspondentes a cada valor de df.
%
%   Notas:
%       - O tamanho do vetor X depende do método de diferenciação:
%           'forward'  → X de x(1) até x(N-1)
%           'backward' → X de x(2) até x(N)
%           'central'  → X de x(2) até x(N-1)
%       - São feitas validações de todos os argumentos de entrada.
%       - Esta função é útil para validações e estudos numéricos de derivadas.

    % Validações
    if ~isa(f, 'function_handle')
        error('f deve ser um handle para uma função.');
    end
    if ~isscalar(a) || ~isscalar(b) || a >= b
        error('a e b devem ser escalares com a < b.');
    end
    if ~isscalar(N) || N <= 10 || N ~= floor(N)
        error('N deve ser um inteiro maior que 10.');
    end
    if ~ischar(option) || ~ismember(option, {'forward', 'backward', 'central'})
        error('option deve ser uma string: ''forward'', ''backward'' ou ''central''.');
    end

    x = linspace(a, b, N);
    h = (b-a)/(N-1);  % Passo entre pontos
    y = f(x);         % Avaliação da função nos pontos de x

    % Inicialização de df e X
    switch option
        case 'forward'
            df = diff(y) / h;
            X = x(1:end-1);
        case 'backward'
            df = diff(y) / h;
            X = x(2:end);
        case 'central'
            df = (y(3:end) - y(1:end-2)) / (2*h);
            X = x(2:end-1);
    end
end
