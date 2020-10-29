syms f1(x) f2(x)
% root is 7.5140 at 6 iterations
f(x)=x*x*x-sinh(x)+4*x*x+6*x+9;
n=input('Enter iterations : ');
x0=input('Starting approximation (x0): ');
x1=x0;
x2=x1+0.01;
%while abs(f1(x)-x)>er
for j=1:n
    x = (x1*f(x2)-x2*f(x1))/(f(x2)-f(x1));
    x1=x2;
    x2=x;
end
disp('Root by function 1: ')
disp(double(x));