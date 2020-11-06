syms f(a) a p(a) temp(a)
f(a)=1/(1+a*a);
p(a)=0;
temp(a)=0;
n=5;
y=[];
x = linspace(-5,5,n);
check=linspace(-5,5,30);
err1=[];
err2=[];
err3=[];
for i=1:n
    y(end+1)=vpa(f(x(i)));
end
arr=NewtonInterpolation_method2(x,y);
%arr=newton_interpolation(x, y, 0);
for i=1:length(arr)
    for j=1:i-1
        temp(a)=temp(a)*(a-x(j));
    end
    p(a)=p(a)+vpa(arr(i))*temp(a);
    temp(a)=1;
end
for i=1:length(check)
    %disp(f(check(i)),p(check(i)))
    err1(end+1)=vpa(f(check(i))-p(check(i)));
end
figure ;
fplot(p(a))
hold on;
grid on;
find(f(a)==p(a))
fplot(f(a))
legend('n=5','original')
% legend('new','old')
% fplot(f(a))
% figure 2;
% grid on;
% plot(check,err)
% title('Error plot')
%%
p(a)=0;
temp(a)=0;
n=10;
y=[];
x = linspace(-5,5,n);
check=linspace(-5,5,30);
err=[];
for i=1:n
    y(end+1)=vpa(f(x(i)));
end
arr=NewtonInterpolation_method2(x,y);
%arr=newton_interpolation(x, y, 0);
for i=1:length(arr)
    for j=1:i-1
        temp(a)=temp(a)*(a-x(j));
    end
    p(a)=p(a)+vpa(arr(i))*temp(a);
    temp(a)=1;
end
for i=1:length(check)
    %disp(f(check(i)),p(check(i)))
    err2(end+1)=vpa(f(check(i))-p(check(i)));
end
figure ;
fplot(p(a))
hold on;
grid on;
find(f(a)==p(a))
fplot(f(a))
legend('n=10','original')
% 
% fplot(p(a))
% hold on;
%%
p(a)=0;
temp(a)=0;
n=15;
y=[];
x = linspace(-5,5,n);
check=linspace(-5,5,30);
err=[];
for i=1:n
    y(end+1)=vpa(f(x(i)));
end
arr=NewtonInterpolation_method2(x,y);
%arr=newton_interpolation(x, y, 0);
for i=1:length(arr)
    for j=1:i-1
        temp(a)=temp(a)*(a-x(j));
    end
    p(a)=p(a)+vpa(arr(i))*temp(a);
    temp(a)=1;
end
for i=1:length(check)
    %disp(f(check(i)),p(check(i)))
    err3(end+1)=vpa(f(check(i))-p(check(i)));
end
% fplot(p(a))
% hold on;
% fplot(f(a))
% grid on;
figure ;
fplot(p(a))
hold on;
grid on;
find(f(a)==p(a))
fplot(f(a))
legend('n=15','original')
%legend({'n=5','n=10','n=15','Original graph'},'Location','northeastoutside')
% figure;
% plot(check,err1)
% hold on;
% grid on;
% plot(check,err2)
% hold on;
% plot(check,err3)
% legend({'n=5','n=10','n=15'},'Location','northeastoutside')
