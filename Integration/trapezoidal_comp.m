function [value] = trapezoidal_comp(func, a, b, n)
    h = (b - a) / n;
    run_sum = 0;
    i = 1;
    while i <= n -1
        x = a + i * h;
        run_sum = run_sum + func(x);
        i = i + 1;
    end
    
    value = h / 2 * (func(a) + 2 * run_sum + func(b));
end

