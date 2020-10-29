function [L]=cholesky(A,n)
   % L=zeros(n,n);
    L=zeros(n,n);
    for k=1:n
        L(k,k)=sqrt(A(k,k)-L(k,1:k-1)*L(k,1:k-1)');
        for j=k+1:n
            L(j,k)=(A(j,k)-L(j,1:k-1)*L(k,1:k-1)')/L(k,k);
        end
    end
    
    
end
   