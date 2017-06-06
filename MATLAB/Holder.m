function [ b,val ] = Holder( a,r )
%   Detailed explanation goes here
%Holder method, val= value of fucntion 
%polynomial a about r input, b and val is output
n=length(a);
b=[a(1)];
for i=2:n; %function of holder method by recursion
    tmp=a(i)+r*b(i-1);
    b=[b tmp];
end
val=b(n);
end


