function [y, iter_vals] = newton(f, f_prime, p0, tol, maxn)
    i = 1;
    while i <= maxn
        iter_vals(i) = p0 - f(p0) / f_prime(p0);
        if abs(iter_vals(i) - p0) < tol
            y = iter_vals(i);
            return;
        end
        
        p0 = iter_vals(i);
        i = i + 1;
    end
    
    y = NaN;
end

