function [ans_rfal,itr]=func_rfalsi(xprev,xnext,N,er)
    
    syms f1(x0,x1)    
    f1(x0,x1)=(x0*f(x1) - x1*f(x0))/(f(x1)-f(x0));

    if f(xnext)*f(xprev)<0
        i=1;
        x2=double(f1(xprev,xnext));
        while abs(x2-xnext)>er && abs(x2-xprev)>er
           if (f(x2)*f(xnext)<0) 
               xprev=xnext;
               xnext=x2;
               x2=double(f1(xprev,xnext));
           elseif (f(x2)*f(xprev)<0) 
               xnext=x2;
               x2=double(f1(xprev,xnext));
           else
               break;
           end
            i=i+1;
        end
        disp(['Iterations taken by Regula Falsi Method: ',num2str(i)])
        disp(['Root Regula Falsi Method: ',num2str(double(x2))])
        ans_rfal=double(x2);
        itr=i;
        
    else
        disp(['Initial condition not satisfied for Regula-Falsi Method.'])
        ans_rfal=0;
        itr=-1;
    end
    
end
    
 