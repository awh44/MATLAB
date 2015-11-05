function [phi] = gram_schmidt(weight, degree, a, b)
%gram_schmidt Creates an array of orthogonal polynomials using the
%Gram-Schmidt process with weight weight between a and b, up to the given
%degree
%   weight - a string representing the weight function
%   degree - the highest degree polynomial to be created
%   a      - the left endpoint for the polynomials
%   b      - the right endpoint for the polymomials
    syms x
    w = sym(weight);
    phi = sym(zeros(1, degree + 1));
    phi(1) = sym('1');
    phi(2) = x - int(x * w * phi(1)^2, x, a, b) / int(w * phi(1)^2, x, a, b);
    for k=3:degree + 1
        phi(k) = (x - (int(x * w * phi(k - 1)^2, x, a, b) / int(w * phi(k - 1)^2, x, a, b))) * phi(k - 1) -...
                  (int(x * w * phi(k - 1) * phi(k - 2), x, a, b) / int(w * phi(k - 2)^2, x, a, b)) * phi(k - 2);
    end
end

