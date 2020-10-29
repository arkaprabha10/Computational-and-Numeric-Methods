clearvars;
clc;
close all;

A = [1 1/2 1/3
   1/3 1 1/2
   1/2 1/3 1];

b = [11/18
   11/18
   11/18];

%A=[10 2
%    4 12];
% b=[12 
%     16];

[n1,n] = size(A);

L = zeros(n);
D = L;
U = D;

for i = 1:n
    for j=1:i-1
       L(i,j) = A(i,j); 
    end
    for j=i:i
       D(i,j) = A(i,j); 
    end
    for j=i+1:n
       U(i,j) = A(i,j); 
    end
    
end

I = eye(n);
act = (I/A)*b;
x0 = [0;0;0];


%Richardson
err = act - x0;
lastx = x0;
cnt = 0;
%while (norm(err) > 1e-2) && (cnt < 200)
for i=1:3
    cnt = cnt + 1;
    
    x = (I - A)*lastx;
    x = x + b;
    %disp(x)
    lastx = x;
    
    err = act - x;
    
end
Richardson_cnt = cnt
Richardson_sol = x

%Jacobi
err = act - x0;
lastx = x0;
cnt = 0;
%while (norm(err) > 1e-6) && (cnt < 200)
for i=1:3
    cnt = cnt + 1;
    
    x = -(I/D)*(L + U)*lastx;
    x = x + (I/D)*b;
    disp(x)
    lastx = x;
    
    err = act - x;
end
Jacobi_cnt = cnt
Jacobi_sol = x


%Gauss-Seidel
err = act - x0;
lastx = x0;
cnt = 0;
%while (norm(err) > 1e-6) && (cnt < 200)
for i=1:3 
    cnt = cnt + 1;

    x = -(I/(L + D))*(U)*lastx;
    x = x + (I/(L + D))*b;
    disp(x)
    lastx = x;
    
    err = act - x;
end
Gauss_Seidel_cnt = cnt
Gauss_Seidel_sol = x