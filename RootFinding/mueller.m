function [y] = mueller(f, p0, p1, p2, tol, maxn)
    h1 = p1 - p0;
    h2 = p2 - p1;
    delta1 = (f(p1) - f(p0)) / h1;
    delta2 = (f(p2) - f(p1)) / h2;
    d = (delta2 - delta1) / (h2 + h1);
    i = 3;
    
    while i <= maxn
        b = delta2 + h2 * d;
        D = (b^2 - 4 * f(p2) * d)^.5;
        
        if abs(b - D) < abs(b + D)
            E = b + D;
        else
            E = b - D;
        end
        
        h = -2 * f(p2) / E;
        p = p2 + h;
        
        if abs(h) < tol
            y = p;
            return;
        end
        
        p0 = p1;
        p1 = p2;
        p2 = p;
        h1 = p1 - p0;
        h2 = p2 - p1;
        delta1 = (f(p1) - f(p0)) / h1;
        delta2 = (f(p2) - f(p1)) / h2;
        d = (delta2 - delta1) / (h2 + h1);
                
        i = i + 1;
    end
    
    y = NaN;
end