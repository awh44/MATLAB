function [w] = predictor_corrector4(f, a, b, y0, h)
%predictor_corrector4 Approximates the solution to ODE with RHS f using
%Adams Fourth-Order predictor corrector
%   f  - the RHS of the ODE to be solved
%   a  - the left endpoint of integration
%   b  - the right endpoint of integration
%   y0 - the initial vaulue
%   h  - the step size to be used
    rk_endpt = a + 3 * h;
    wrk = rk4(f, a, rk_endpt, y0, h);
    w = perform_steps_4(@step_pc4, f, a, b, wrk(1), wrk(2), wrk(3), wrk(4), h);
end
