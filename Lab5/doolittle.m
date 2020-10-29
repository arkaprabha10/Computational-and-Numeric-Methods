function [L,U]=doolittle(A,n)
    L=eye(n,n);
    U=zeros(n,n);
    for k=1:n
        U(k,k)=A(k,k)-L(k,1:k-1)*U(1:k-1,k);
        for j=k+1:n
            U(k,j)=A(k,j)-L(k,1:k-1)*U(1:k-1,j);
            L(j,k)=(A(k,j)-L(j,1:k-1)*U(1:k-1,k))/U(k,k);
        end
    end
    
    
    
    end
    
 