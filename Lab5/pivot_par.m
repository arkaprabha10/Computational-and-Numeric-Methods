function [ans]=pivot_par(A,N,b)
    
    temp=ones(N,1);
    for k=1:N-1
        idx=k;
        for i=k+1:N
           if A(idx,k)<A(i,k)
               idx=i;
           end
        end
            
        theta=A(k,1:N);
        A(k,1:N)=A(idx,1:N);
        A(idx,1:N)=theta;
        alpha=b(idx,1);
        b(idx,1)=b(k,1);
        b(k,1)=alpha;
        
        for j=k+1:N
            temp(j,1)=A(j,k)/A(k,k);
            A(j,k:N)=A(j,k:N)-temp(j,1)*A(k,k:N);
            b(j,1)=b(j,1)-temp(j,1)*b(k,1);
        end
    end
    x=zeros(1,N);
    for s=N:-1:1
        c=0;
        for k=1:N
            c=c+A(s,k)*x(k);
        end
        x(s)=(b(s,1)-c)/A(s,s);
    end 
    ans=x
    
    end
    
 