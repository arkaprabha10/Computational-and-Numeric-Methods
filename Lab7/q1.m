%%
syms f(a) a

f(a)=0;
x=[0 1 3 4 8];
y=[8 12 2 6 0];

sum=0;
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
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
interval=[0 8];
fplot(f(a),interval)
hold on;
%disp(double(f(0.3)))
%polyval(sum,0.3)
%%
f(a)=0;
x=[0 1 3 8];
y=[8 12 2 0];

sum=0;
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum= sum + term;
end
disp(sum);
for i=1:length(sum)
    f(a)=f(a)+a^(length(sum)-i)*vpa(sum(i));
end
interval=[0 8];
fplot(f(a),interval)
hold on;
%%
f(a)=0;
x=[0 1 8];
y=[8 12 0];

sum=0;
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum= sum + term;
end
disp(sum);
for i=1:length(sum)
    f(a)=f(a)+a^(length(sum)-i)*vpa(sum(i));
end
interval=[0 8];
fplot(f(a),interval)
hold on;
%%
f(a)=0;
x=[0 8];
y=[8 0];

sum=0;
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum= sum + term;
end
disp(sum);
for i=1:length(sum)
    f(a)=f(a)+a^(length(sum)-i)*vpa(sum(i));
end
interval=[0 8];
fplot(f(a),interval)
grid on;
legend({'5 points','4 points','3 points','2 points'},'Location','northeastoutside');
hold on;