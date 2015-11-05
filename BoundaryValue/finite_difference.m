function [w, x] = finite_difference(p, q, r, a, b, alpha, beta, h)
%finite_difference Calculates solution to the BVP specified by the given
%parameters with step size h. The following assumes a differential equation
%of the form: y'' = p(x) * y' + q(x) * y + r(x)
%   p     - the coefficient of the y' term
%   q     - the coefficient of the y term
%   r     - the coefficient of the constant term
%   a     - the left endpoint
%   b     - the right endpoint
%   alpha - the value of y at a: y(a) = alpha
%   beta  - the value of y at b: y(b) = beta

    N = (b - a) / h - 1;
    
    %calculate the x values and convert to a column vector
    x = a:h:b; x = x(:);
    
    %construct the diagonals
    main = 2 + h^2 * q(x(2:N + 1));
    upper = [0; -1 + h / 2 * p(x(2:N))];
    lower = [-1 - h / 2 * p(x(3:N + 1)); 0];

    %Construct the matrix and the right-hand side vector
    A = spdiags([lower, main, upper], [-1, 0, 1], N, N);
    rhs = -h^2 * r(x(2:N + 1));
    rhs(1) = rhs(1) + (1 + h / 2 * p(x(2))) * alpha;
    rhs(N) = rhs(N) + (1 - h / 2 * p(x(N + 1))) * beta;
    
    %Solve, with alpha as the value at x(1) and beta the one at x(N + 2)
    w = [alpha; A \ rhs; beta];
end

