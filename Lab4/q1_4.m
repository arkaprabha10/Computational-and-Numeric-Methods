syms f1(x) f2(x)
% approximates root(a)
a=4; %define a
f1(x)=x*(3*a-x*x)/(2*a);
%f2(x)=x*x-3*x+2;
f1_d(x)=diff(f1,x);
y_axis1=zeros(100);
%y_axis2=zeros(100);
x_axis=linspace(0.01,5,100);
n=input('Enter iterations : ');
x0=input('Starting approximation (x0): ');
x=x0;
i=1;
%while abs(f1(x)-x)>er
for j=1:n
    x = f1(x);
end
for j=1:100
    y_axis1(j)=double(f1_d(x_axis(j)));
    %y_axis2(j)=double(f2(x_axis(j)));
end

figure(1)
plot(x_axis,y_axis1)
grid on;
title('phi derivative  vs x')
disp('Root by function 1: ')
disp(double(x));
