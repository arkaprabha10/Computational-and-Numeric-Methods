function [y]=lfunc(xx,yy,n)
   syms y(x) l(x);
   y(x)=0;
   for i=1:n
        l(x)=1;
        for j=1:n
            if i~=j
               l(x)=vpa(l(x),3)*vpa(x - xx(j),3)/vpa(xx(i) - xx(j),3);
            end
        end
        y(x)=y(x) + vpa(l(x)*yy(i),3);            
   end
        
end
        
 