function [w] = rk4(f, a, b, y0, h)
%rk4 Approximates the solution to ODE with RHS f using Runge-Kutta order 4
%   f  - the RHS of the ODE to be solved
%   a  - the left endpoint of integration
%   b  - the right endpoint of integration
%   y0 - the initial vaulue
%   h  - the step size to be used
    w = perform_steps(@step_rk4, f, a, b, y0, h);
end

