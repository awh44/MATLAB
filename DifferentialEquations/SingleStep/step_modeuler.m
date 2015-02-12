function [wiplus1] = step_modeuler(f, ti, wi, h)
%step_modeuler Computes the subsequent value of w for the ODE with RHS f
%given the data at the previous step
%   f  - the RHS of the differential equation
%   ti - the time at the previous step
%   wi - the approximation at the previous step
%   h  - the time step being used to solve the equation
    fval = f(ti, wi);
    wiplus1 = wi + h / 2 * (fval + f(ti + h, wi + h * fval));
end

