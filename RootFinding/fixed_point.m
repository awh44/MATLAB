function [y, iter_vals] = fixed_point(g, p0, tol, maxn)
    i = 1;
    while i <= maxn
        iter_vals(i) = g(p0);
        p = iter_vals(i);
        if abs(p - p0) < tol
           y = p;
           return;
        end
        i = i + 1;
        p0 = p;
    end
    y = NaN;
end

