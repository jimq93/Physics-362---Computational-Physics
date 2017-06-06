function s = traprl(f,a,b,m)
% Syntax
%   s = traprl(f,a,b,m)
% Inputs
%   f    name of the function
%   a    left  endpoint of [a,b]
%   b    right endpoint of [a,b]
%   m    number of subintervals
% Outputs
%   s    trapezoidal rule quadrature value
%f=@(x) 8*(sqrt(1-x.^2)-x);
%s=traprl(f,0,.7071,4)
h  = (b - a)/m;
s = 0;
for k=1:(m-1),
  x = a + h*k;
  s = s + feval(f,x);
end
s = h*(feval(f,a)+feval(f,b))/2 + h*s;