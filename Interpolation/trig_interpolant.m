function [S] = trig_interpolant(f, n, mesh)
%trig_interpolant Computes a trigonometric interpolant of degree n of f
%with the given (equally-spaced) 'mesh' of points
%   f    - the function to be interpolated
%   n    - the degree of the returned interpolant
%   mesh - the mesh of points to be used; must be equally spaced and the
%          number of elements must be >= n
    fft_vals = fft(f(mesh));
    
    len = length(mesh);
    a = real(1 / (len / 2) * (-1).^(0:n) .*  fft_vals(1:n + 1));
    b = imag(1 / (len / 2) * (-1).^(0:n - 2) .* fft_vals(2:n));
    b = [0, b, 0];
    S = @(x) (a(1) + a(end) * cos(n * x)) / 2;
    for k = 1:n - 1
        S = @(x) S(x) + a(k + 1) * cos(k * x) + b(k + 1) * sin(k * x);
    end
end

