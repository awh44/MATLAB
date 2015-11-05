function [y] = secant(f, p0, p1, tol, maxn)
    p_n_minus_2 = p0;
    p_n_minus_1 = p1;
    f_p_n_minus_1 = f(p1);
    f_p_n_minus_2 = f(p0);
    i = 2;
    while i <= maxn
        p = p_n_minus_1 - f_p_n_minus_1 * (p_n_minus_1 - p_n_minus_2) / (f_p_n_minus_1 - f_p_n_minus_2);
        if abs(p - p_n_minus_1) < tol
            y = p;
            return;
        end
        
        p_n_minus_2 = p_n_minus_1;
        f_p_n_minus_2 = f_p_n_minus_1;
        p_n_minus_1 = p;
        f_p_n_minus_1 = f(p);
        
        i = i + 1;
    end
    
    y = NaN;
end

