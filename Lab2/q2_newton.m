syms f(x) y
f(x)=0.5*(x+2/x);
x=1;
count=0;
n=input("enter no of iterations: ");
for i=1:n
    x=f(x);
end
% while abs(x*x-2)>0.000001
%     x=f(x);
%     count=count+1;
% end
disp("count is "+count)
disp(double(x))
    
