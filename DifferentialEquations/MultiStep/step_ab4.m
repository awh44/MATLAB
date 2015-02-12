function [y1] = step_ab4(f, tminus3, yminus3, tminus2, yminus2, tminus1, yminus1, t0, y0, h)
%step_ab4 Computes the subsequent value of w for the ODE with RHS f using
%Adams-Bashforth 4
%   f       - the RHS of the ODE being solved
%   tminus3 - the time three iterations prior
%   yminus3 - the function approximation three iterations prior
%   tminus2 - the time two iterations prior
%   yminus2 - the function approximation two iterations prior
%   tminus1 - the time one iteration prior
%   yminus1 - the function approximation one iteration prior
%   t0      - the time at the current iteration
%   y0      - the function approximation at the current iteration
%   h       - the step size

    y1 = y0 + h / 24 * (55 * f(t0, y0) - 59 * f(tminus1, yminus1) + 37 * f(tminus2, yminus2) - 9 * f(tminus3, yminus3));
end

