function [ans_new,i]=func_newton_2(x,N,er)
   syms f1(xx) f(xx)
   f(xx)=exp(-xx) - 1 + xx/5;
   f1(xx)=diff(f,xx);
   i=0;
   
   while abs(f(x)) > er 
       x= x - f(x)/f1(x); 
       i=i+1;
       
   end
    ans_new=double(x);
    disp(['Iterations taken by Newton Method: ',num2str(i)])
    disp(['Root Newton Method: ',num2str(ans_new)])
end


