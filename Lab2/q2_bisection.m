a=input("enter value of a: ");
b=input("enter value of b: ");
n=input("enter  number of iterations: ");
mid=0;
count=0;
for i=1:100
    mid=(a+b)/2;
    if(mid*mid==2)
      disp("root is "+ mid);
      return;
    end
    if(mid*mid>2)
        b=mid;
    else
        a=mid;
    end
end
while abs(mid*mid-2) >0.000001
    mid=(a+b)/2;
    if(mid*mid==2)
      disp("root is "+ mid)
      disp("count is "+count)
      return;
    end
    if(mid*mid>2)
        b=mid;
        count=count+1;
    else
        a=mid;
        count=count+1;
    end
end
    
    
disp("root is "+ double(mid))
disp("count is "+count)

    
