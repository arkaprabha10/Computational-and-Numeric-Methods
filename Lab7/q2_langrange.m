syms f(a) g(a) a
g(a)=a-9^(-a);
f(a)=0;
x=[];
y=[];
for i=0:0.1:1
    x(end+1)=i;
    y(end+1)=vpa(g(i));
end
sum=0;
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly((x(j)))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum= sum + term;
end
disp(sum);
for i=1:length(sum)
    f(a)=f(a)+a^(length(sum)-i)*vpa(sum(i));
    f(a);
end
interval=[-1 1];
fplot(f(a),interval) 
grid on;
hold on;
legend({'Lagrange Polynomial'},'Location','northeastoutside')
fplot(g(a),interval)

%f(0.3)
%x = [5 7 9];
%polyval(sum,0.3)