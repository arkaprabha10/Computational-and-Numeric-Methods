function [ans_bis,itr]=func_bisection(a,b,er)
    n=1000;
    mid=(a+b)/2;
    
    i=0;
    if (f(a)*f(b)) > 0
        fprintf('Bisection failed')
        return
    end
       
    while abs(f(mid)) > er
        if (f(a)*f(mid)) < 0
            b=mid;
        else
            a=mid;
        end
        mid=(a+b)/2;
        i=i+1;
        if i==n
            break;
        end    
    end
    ans_bis=mid;
    itr=i;
    disp(['Iterations taken by Bisection Method: ',num2str(itr)])
    disp(['Root Bisection Method: ',num2str(ans_bis)])
end