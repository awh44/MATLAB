function [y, iter_vals] = bisection(f, a, b, tol, maxn)
    i = 1;
    f_of_a = f(a);
    while i <= maxn
        iter_vals(i) = a + (b - a) / 2;
        p = iter_vals(i);
        f_of_p = f(p);
        if (f_of_p == 0) || ((b - a) / 2 < tol)
            y = p;
            return;
        else
            i = i + 1;
            if f_of_a * f_of_p > 0
                a = p;
                f_of_a = f_of_p;
            else
                b = p;
            end
        end
    end
    y = NaN;
end