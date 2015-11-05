function [approx] = least_squares_approx_with_weight(f, w, degree, a, b)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    phi = gram_schmidt(w, degree, a, b);
    avals = create_avals(w, phi, f, a, b, degree);
    sym_approx = sum(phi .* avals);
    approx = matlabFunction(simplify(vpa(sym_approx)));
end

