function [coefficients] = interpolate(func, degree, a, b)
    x_vals = chebyshev(degree);
    coefficients = polyfit(x_vals, func(x_vals), degree);
end
