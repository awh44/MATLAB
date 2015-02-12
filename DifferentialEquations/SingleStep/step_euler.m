% Integrate a first order ODE in one variable using a single step of Euler
% f     - A function handle (either a .m file or an anonymous function)
% t0    - The current value of the independent variable
% y0    - The current value of the dependent variable
% h     - The step size
% y1    - The Euler approximation of the solution of the ODE at t1 = t0 +h
%
% Math 301-Winter 2015, G. Simpson


function y1 = step_euler(f, t0, y0, h)

y1 = y0 + h * f(t0, y0);

end