syms x
%f=exp(x)-3*x;
a=input("enter value of a: ");
b=input("enter value of b: ");
n=input("enter  number of iterations: ");
count=0;
x=a;
fa=subs(exp(1)^x-3*x,a,a);
x=b;
fb=subs(exp(1)^x-3*x,b,b);
if fa*fb>0
    disp("No root in this interval")
    return;
end
if fa==0
    disp("root is "+ a)
    return;
end
if fb==0
    disp("root is "+ b)
    return;
end
mid=0;
x=mid;
if fa<0
    for i=1:n
        mid=(a+b)/2;
        x=mid;
        f=subs(exp(x)-3*x,mid,mid);
        if f==0
            disp("root is "+ mid)
            return;
        end
        if f>0
            b=mid;
        else
            a=mid;
        count=count+1;
        end
        disp(a+" "+b)
    end
    
end
x=mid;
if fa>0
    for i=1:n
        mid=(a+b)/2;
        x=mid;
        f=subs(exp(x)-3*x,mid,mid);
        if f==0
            disp("root is "+ mid)
            return;
        end
        if f>0
            a=mid;
        end
        if f<0
            b=mid;
        count=count+1;
        end
        disp(a+" "+b)
    end
    
end
%disp(count)
disp("root is "+ mid)

    
