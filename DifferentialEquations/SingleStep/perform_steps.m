function [w] = perform_steps(step_func, f, a, b, y0, h)
%perform_steps Computes the numerical solution to ODE with RHS f, using the
%incremental step function step_func
%   step_func - the step function to use each for each iteration
%   f         - the RHS of the ODE
%   a         - the left endpoint of integration
%   b         - the right endpoint of integration
%   y0        - the initial value
%   h         - the step size to be used
    n = floor((b - a) / h + 1);
    w = zeros(1, n);
    w(1) = y0;
    t = a;
    for i = 2:n
        w(i) = step_func(f, t, w(i - 1), h);
        t = t + h;
    end
end

