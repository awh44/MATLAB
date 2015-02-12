function [x1, y1] = step_rk4_system(f, g, t0, x0, y0, h)
%step_rk4_system Computes a singler iteration of a system of differential
%equations
%   f  - the RHS of the function associated with x
%   g  - the RHS of the function associated with y
%   t0 - the previous time value
%   x0 - the value of x at the previous time value
%   y0 - the value of y as the previous time value
%   h  - the step size

    k1x = h * f(t0, x0, y0);
    k1y = h * g(t0, x0, y0);
    
    %use the tmp variables to hold values that will be used repeatedly
    tmpT = t0 + h / 2;
    tmpX = x0 + k1x / 2;
    tmpY = y0 + k1y / 2;
    k2x = h * f(tmpT, tmpX, tmpY);
    k2y = h * g(tmpT, tmpX, tmpY);
    
    tmpX = x0 + k2x / 2;
    tmpY = y0 + k2y / 2;
    k3x = h * f(tmpT, tmpX, tmpY);
    k3y = h * g(tmpT, tmpX, tmpY);
    
    tmpT = t0 + h;
    tmpX = x0 + k3x;
    tmpY = y0 + k3y;
    k4x = h * f(tmpT, tmpX, tmpY);
    k4y = h * g(tmpT, tmpX, tmpY);
    
    x1 = x0 + (k1x + 2 * k2x + 2 * k3x + k4x) / 6;
    y1 = y0 + (k1y + 2 * k2y + 2 * k3y + k4y) / 6;
end

