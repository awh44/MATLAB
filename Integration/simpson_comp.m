function [value] = simpson_comp(func, a, b, n)
    h = (b - a) / n;
    x0 = func(a) + func(b);
    x1 = 0;
    x2 = 0;
    i = 1;
    while i <= n - 1
        x = a + i * h;
        if mod(i, 2) == 0
            x2 = x2 + func(x);
        else
            x1 = x1 + func(x);
        end
        i = i + 1;
    end
    
    value = (h / 3) * (x0 + 2 * x2 + 4 * x1);
end

