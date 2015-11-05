function [w] = perform_steps_4(step_func, f, a, b, y0, y1, y2, y3, h)
%perform_steps_4 Computes the numerical solution to ODE with RHS f, using
%incremental multi-step step function step_func
%   step_func - the step function to use each for each iteration
%   f         - the RHS of the ODE
%   a         - the left endpoint of integration
%   b         - the right endpoint of integration
%   y0        - the first initial value
%   y1        - the pre-calculated second initial value
%   y2        - the pre-calculated third initial value
%   y3        - the pre-calculated fourth initial value
%   h         - the step size to be used
    n = floor((b - a) / h + 1);
    w = zeros(1, n);
    w(1) = y0;
    w(2) = y1;
    w(3) = y2;
    w(4) = y3;
    t0 = a;
    t1 = t0 + h;
    t2 = t1 + h;
    t3 = t2 + h;
    for i = 5:n
        w(i) = step_func(f, t0, w(i - 4), t1, w(i - 3), t2, w(i - 2), t3, w(i - 1), h);
        t0 = t1;
        t1 = t2;
        t2 = t3;
        t3 = t2 + h;
    end
end
