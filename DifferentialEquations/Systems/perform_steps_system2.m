function [x, y] = perform_steps_system2(step_func, f, g, a, b, x0, y0, h)
%perform_steps_system2 Computes the numerical solution to the system of
%ODEs with right-hand sides f and g and initial conditions x0 and y0 using
%the incremental step function step_func
%   step_func - the step function to each for each iteration
%   f         - the RHS of the first ODE
%   g         - the RHS of the second ODE
%   a         - the left endpoint of integration
%   b         - the right endpoint of integration
%   x0        - the initial value of the first ODE
%   y0        - the initial value of the second ODE
%   h         - the step size to be used
    n = floor((b - a) / h + 1);
    x = zeros(1, n);
    y = zeros(1, n);
    x(1) = x0;
    y(1) = y0;
    t = a;
    for i = 2:n
        [x(i), y(i)] = step_func(f, g, t, x(i - 1), y(i - 1), h);
        t = t + h;
    end
end
