function [ans_jacobi]=jacobi(A,b,N)
L = zeros(N);
D = L;
U = D;

for i = 1:N
    for j=1:i-1
       L(i,j) = A(i,j); 
    end
    
    for j=i:i
       D(i,j) = A(i,j); 
    end
    
    for j=i+1:N
       U(i,j) = A(i,j); 
    end
    
end

I = eye(N);
act = (I/A)*b;
x0 = zeros(N,1);

err = act - x0;
lastx = x0;
cnt = 0;

err = act - x0;
lastx = x0;
cnt = 0;
while (norm(err) > 1e-6) && (cnt < 200)
    cnt = cnt + 1;
    
    x = -(I/D)*(L + U)*lastx;
    x = x + (I/D)*b;
    
    lastx = x;
    
    err = act - x;
end
ans_jacobi=x;