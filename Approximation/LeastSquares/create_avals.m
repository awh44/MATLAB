function [avals] = create_avals(weight, phi, func, a, b, degree)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    syms x
    avals = sym(zeros(1, degree + 1));
    w = sym(weight);
    f = sym(func);
    for j = 1:degree + 1
        avals(j) = int(w * phi(j) * f, x, a, b) / int(w * phi(j)^2, x, a, b);
    end
end

