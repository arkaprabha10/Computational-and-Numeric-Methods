syms f(x) fd(x) y
f(x)=exp(-1*x*x)-cos(x)-1;
fd(x)=diff(f,x);
x=2;
disp(x)
n=input("enter no of iterations: ");
for i=1:n
    x=double(x-f(x)/fd(x));
end
disp(double(x))
    
