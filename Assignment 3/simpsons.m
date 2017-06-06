function I = simpsons(f,a,b,n)
%  f= function
%  a= Initial point of interval
%  b= Last point of interval
%  n= # of sub-intervals 
%f=@(x) 8*(sqrt(1-x.^2)-x);
%I = simpsons(f,0,0.7071,4)
if numel(f)>1 % If the input provided = vector
    n=numel(f)-1; h=(b-a)/n;
    I= h/3*(f(1)+2*sum(f(3:2:end-2))+4*sum(f(2:2:end))+f(end));
else % If the input provided is = anonymous function
    h=(b-a)/n; xi=a:h:b;
    I= h/3*(f(xi(1))+2*sum(f(xi(3:2:end-2)))+4*sum(f(xi(2:2:end)))+f(xi(end)));
end