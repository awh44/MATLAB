function [coefficients] = interpolate(func, degree, a, b)
    x_vals = even_points(a, b, degree + 1);
    coefficients = polyfit(x_vals, func(x_vals), degree);
end