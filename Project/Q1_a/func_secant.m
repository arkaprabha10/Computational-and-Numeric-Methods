 function [x2,i]=func_secant(xprev,xnew,N,er)
    syms f1(x0,x1) 
    f1(x0,x1)=(x0*f(x1) - x1*f(x0))/(f(x1)-f(x0));


    i=1;
    x2=double(f1(xprev,xnew));
    while abs(x2-xnew)>er
        xprev=xnew;
        xnew=x2;
        x2=double(f1(xprev,xnew));
        i=i+1;
    end
    disp(['Iterations taken by Secant Method: ',num2str(i)])
    disp(['Root Secant Method: ',num2str(x2)])
 end
 