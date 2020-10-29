syms f(x) fd(x) y
f(x)=exp(x)-3*x;
fd(x)=(f(x+f(x))-f(x))/f(x);
x=0;
count=0;
%disp(x)
% %n=input("enter no of iterations: ");
% for i=1:n
%     x=double(x-f(x)/fd(x));
% end
while abs(double(f(x))) > 0.00001
   x=double(x-f(x)/fd(x));
   count=count+1;
end
disp(double(x))
disp(count)
    
