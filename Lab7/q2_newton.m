syms f(a) a p(a) q(a) temp(a)
f(a)=a-9^(-a);
q(a)=0;
p(a)=0;
temp(a)=1;
x=[];
y=[];
for i=0:0.1:1
    x(end+1)=i;
    y(end+1)=vpa(f(i));
end
%x=[0 1 3 4 7];
%y=[1 3 49 129 813 ];
ans = newton_interpolation(x, y, 0.2)
for i=1:length(ans)
    for j=1:i-1
        temp(a)=temp(a)*(a-x(j));
    end
    q(a)=q(a)+vpa(ans(i))*temp(a);
    temp(a)=1;
end
temp(a)=1;
arr=NewtonInterpolation_method2(x,y);
for i=1:length(arr)
    for j=1:i-1
        temp(a)=temp(a)*(a-x(j));
    end
    p(a)=p(a)+vpa(arr(i))*temp(a);
    temp(a)=1;
end
interval=[-1 1];
fplot(p(a),interval)
hold on;
%fplot(q(a))
hold on;
grid on;
legend('Newton Polynomial')
fplot(f(a),interval)
%disp(double(p(0.2)))
%disp(double(f(0.2)-p(0.2)))
%disp(p(a)-q(a))
    