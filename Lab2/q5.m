syms f(x) fd(x) y
f(x)=10*x*(1-exp(-0.004/(2000*x)))-0.00001;
% x_axis=linspace(-1,1,1000);
% y_axis=linspace(-1,1,1000);
% for i=1:1000
%     y_axis(i)=f(x_axis(i));
% end
% plot(y_axis,x_axis)
% grid on
%     
a=input("enter value of a: ");
b=input("enter value of b: ");
% disp(double(f(a)))
% disp(double(f(b)))
n=input("enter  number of iterations: ");
if f(a)*f(b)>0
    disp("No root in this interval")
    return;
end
if f(a)==0
    disp("root is "+ a)
    return;
end
if f(b)==0
    disp("root is "+ b)
    return;
end
mid=0;
if f(a)<0
    for i=1:n
        mid=(a+b)/2;
        if f(mid)==0
            disp("root is "+ mid)
            return;
        end
        if f(mid)>0
            b=mid;
        else
            a=mid;
        end
    end
end

if f(a)>0
    
    for i=1:n
        mid=(a+b)/2;
        if f(mid)==0
            disp("root is vdfgdf"+ mid)
            return;
        end
        if f(mid)>0
            a=mid;
        end
        if f(mid)<0
            b=mid;
        end
    end
end
disp("root is "+ mid)
    
    
