function [ans,xx]=pivot_comp(A,N,b,xx)
    
    temp=ones(N,1);
    flop=0;
    for k=1:N-1
        id_x=k;
        id_y=k;
        for i=k+1:N
           if abs(A(id_x,k))<abs(A(i,k))
               id_x=i;
           end
           if A(k,id_y)<A(i,k)
               id_y=i;
           end
        end
        if A(id_x,k)>A(k,id_y)
            theta=A(k,1:N);
            A(k,1:N)=A(id_x,1:N);
            A(id_x,1:N)=theta;
            alpha=b(id_x,1);
            b(id_x,1)=b(k,1);
            b(k,1)=alpha;
        else
            theta=A(1:N,k);
            A(1:N,id_y)=A(1:N,id_y);
            A(1:N,id_y)=theta;
            alpha=xx(id_y,1);
            xx(id_y,1)=xx(k,1);
            xx(k,1)=alpha;
        end
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
        flop=flop+1;
    end 
    ans=x;
    flop
    
    end
    
 