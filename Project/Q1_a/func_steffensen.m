function [ans_stef,itr]=func_steffenson(x,N,er)
    i=0;
    
    while abs(f(x))>er
        x=x - f(x)*f(x)/(f(x+f(x)) - f(x));
        i=i+1;
    end
    itr=i;
    ans_stef=x;
    disp(['Iterations taken by Steffenson Method: ',num2str(i)])
    disp(['Root Steffenson Method: ',num2str(x)])
