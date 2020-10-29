syms f(x) fd(x) y
f(x)=x-tan(x);
x_curr=double(7.71);
x_prev=double(7.7);
%disp(x)
n=input("enter no of iterations: ");
for i=1:n
    x=double(x_curr-(f(x_curr)*(x_curr-x_prev))/(f(x_curr)-f(x_prev)));
    x_prev=double(x_curr);
    x_curr=double(x);
end
disp(double(x))
disp(double(f(x)))
    
