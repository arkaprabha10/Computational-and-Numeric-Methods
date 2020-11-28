function [ans]=bge(A,N,b)
    
    temp=ones(N,1);
    flop=0;
    dd=0;
    for k=1:N-1
        
        for j=k+1:N
            temp(j,1)=A(j,k)/A(k,k);
            dd=dd+1;
            A(j,k:N)=A(j,k:N)-temp(j,1)*A(k,k:N);
            flop=flop+N;
            b(j,1)=b(j,1)-temp(j,1)*b(k,1);
            flop=flop+1;
        end
    end
    x=zeros(1,N);
    for s=N:-1:1
        c=0;
        flop=flop+s-1;
        for k=1:N
            c=c+A(s,k)*x(k);
        end
        x(s)=(b(s,1)-c)/A(s,s);
        dd=dd+1;
    end 
    ans=x;
    dd;

    flop;
    end
    
 