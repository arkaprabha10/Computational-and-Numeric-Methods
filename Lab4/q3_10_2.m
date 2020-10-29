syms f1(x) f2(x)
% root is 7.5140 at 6 iterations
%root is -5.5859 at 10 iterations
%root is -0.389 at 9 iterations
f(x)=x^5+x^3+3;
n=input('Enter iterations : ');
%x0=input('Starting approximation (x0): ');
x1=-1;
x2=1;
%while abs(f1(x)-x)>er
for j=1:n
    x = (x1*f(x2)-x2*f(x1))/(f(x2)-f(x1));
    x1=x2;
    x2=x;
end
disp('Root by function 1: ')
disp(double(x));