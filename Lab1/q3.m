A=[5,4,3,2,1;6,7,8,9,10];
M=max(max(A));
[X,Y]=find(A==M);
disp('Max is : ')
[M,X,Y]
N=min(min(A));
[X,Y]=find(A==N);
disp('Min is : ')
[N,X,Y]

