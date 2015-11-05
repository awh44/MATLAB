function [points] = chebyshev(n)
    j_vals = 0:1:n;
    points = 5 .* cos((2 .* j_vals + 1) * pi ./ (2 * n + 2));
end