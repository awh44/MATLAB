function [x, y] = rk4_system2(f, g, a, b, x0, y0, h)
%rk4_system2 Computes the numerical solution to the system of ODEs with
%right-hand sides f and g and initial conditions x0 and y0 using
%Runge-Kutta 4
%   f         - the RHS of the first ODE
%   g         - the RHS of the second ODE
%   a         - the left endpoint of integration
%   b         - the right endpoint of integration
%   x0        - the initial value of the first ODE
%   y0        - the initial value of the second ODE
%   h         - the step size to be used
    [x, y] = perform_steps_system2(@step_rk4_system, f, g, a, b, x0, y0, h);
end

