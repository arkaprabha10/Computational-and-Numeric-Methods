n=input('enter dimension : ');
disp('enter coefficient matrix : ');
A=zeros(n,n);
for i=1:n
    for j=1:n
        A(i,j)=input('');
    end
end
B=zeros(n,1);
disp('enter constant vector : ');
for i=1:n
    B(i,1)=input('');
end
answer=linsolve(A,B)