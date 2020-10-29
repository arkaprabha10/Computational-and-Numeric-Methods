function [L,U]=crout(A,n)
    
    L=zeros(n,n);
    U=eye(n,n);
    for k=1:n
        L(k,k)=A(k,k)-U(k,1:k-1)*L(1:k-1,k);
        for j=k+1:n
            L(k,j)=A(k,j)-U(k,1:k-1)*L(1:k-1,j);
            U(j,k)=(A(k,j)-U(j,1:k-1)*L(1:k-1,k))/L(k,k);
        end
    end
   
%     
    U=U';
    L=L';
    
    end
    
 