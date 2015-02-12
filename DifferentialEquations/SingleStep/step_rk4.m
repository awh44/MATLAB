function [wiplus1] = step_rk4(f, ti, wi, h)
%step_rk4 Computes the subsequent value of w for the ODE with RHS f using
%Runge-Kutta order 4
%   f  - the RHS of the differential equation
%   ti - the time at the previous step
%   wi - the approximation at the previous step
%   h  - the time step being used to solve the equation
    k1 = h * f(ti, wi);
    k2 = h * f(ti + h / 2, wi + k1 / 2);
    k3 = h * f(ti + h / 2, wi + k2 / 2);
    k4 = h * f(ti + h, wi + k3);
    wiplus1 = wi + (k1 + 2 * k2 + 2 * k3 + k4) / 6;
end

