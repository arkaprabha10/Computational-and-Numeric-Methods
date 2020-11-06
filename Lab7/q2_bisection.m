syms f(x) fd(x) y
f(x)=x-9^(-x);
a=input("enter value of a: ");
b=input("enter value of b: ");
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
