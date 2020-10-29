syms f(x) fd(x) y
f(x)=x-tan(x);
fd(x)=diff(f,x);
x=7.7;
disp(x)
n=input("enter no of iterations: ");
for i=1:n
    x=double(x-f(x)/fd(x));
end
disp(double(x))
    
