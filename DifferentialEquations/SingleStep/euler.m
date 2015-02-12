function [w] = euler(f, a, b, y0, h)
%euler Approximates the solution to ODE with RHS f using Euler's method
%   f  - the RHS of the ODE to be solved
%   a  - the left endpoint of integration
%   b  - the right endpoint of integration
%   y0 - the initial vaulue
%   h  - the step size to be used
    w = perform_steps(@step_euler, f, a, b, y0, h);
end

