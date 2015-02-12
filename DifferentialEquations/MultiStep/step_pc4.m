function [w1] = step_pc4(f, tminus3, wminus3, tminus2, wminus2, tminus1, wminus1, t0, w0, h)
%step_pc4 Computes the subsequent value of w for the ODE with RHS f using
%Adams Fourth Order predictor-corrector
%   f       - the RHS of the ODE being solved
%   tminus3 - the time three iterations prior
%   wminus3 - the function approximation three iterations prior
%   tminus2 - the time two iterations prior
%   wminus2 - the function approximation two iterations prior
%   tminus1 - the time one iteration prior
%   wminus1 - the function approximation one iteration prior
%   t0      - the time at the current iteration
%   y0      - the function approximation at the current iteration
%   h       - the step size
    w1p = step_ab4(f, tminus3, wminus3, tminus2, wminus2, tminus1, wminus1, t0, w0, h);
    w1 = w0 + h / 24 * (9 * f(t0 + h, w1p) + 19 * f(t0, w0) - 5 * f(tminus1, wminus1) + f(tminus2, wminus2));
end

