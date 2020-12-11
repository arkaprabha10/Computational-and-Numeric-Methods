clearvars;
clc;
close all;

%%Step size for dimension
theta=100;
%%Varying Dimension
n=5:10:1000;

%%Array for storing time taken to obtain solution using given method
time_bge=zeros(1,theta);%Basic Gauss Elimination
time_par=zeros(1,theta);%Partial Pivoting
time_comp=zeros(1,theta);%Complete Pivoting
time_rich=zeros(1,theta);%Richardson
time_jacobi=zeros(1,theta);%Jacobi
time_gs=zeros(1,theta);%Gauss-Seidel
j=1;
for i=n
    
    %%To print the results uncomment the disp() lines in this loop
    %disp(' ');
    %disp(['Dimension of matrix: ',num2str(i)]);
    for k=linspace(1,5,5)
        %%Generating a random matrix A
        A=randi([1 100],i);

        %%Ensuring the determinant of the matrix is not zero
        while (det(A)== 0)
            A=randi([1 100],i);
        end
        %disp(A);

        N=i;

        %%Generating the constant vector b
        b=randi([1 100],i,1);


        %%Calling bge() for Basic Gauss Elimination
        tic
        ans_bge=bge(A,N,b);
        temp=toc;
        time_bge(j)=time_bge(j)+temp;
        %disp(['Basic Gauss Elimination Solution: ',num2str(ans_bge)]);


        %%Calling pivot_par() for Partial Pivoting
        tic
        pivot_p=pivot_par(A,N,b);
        temp=toc;
        time_par(j)=time_par(j)+temp;
        %disp(['Partial Pivoting Solution: ',num2str(pivot_p)]);

        %%Calling pivot_comp() for Complete Pivoting
        %%Keeping track of the variables whose order may change in Complete Pivoting
        xx=linspace(1,i,i);
        xx=xx.';
        tic
        [pivot_c , x_ret]=pivot_comp(A,N,b,xx);
        temp=toc;
        time_comp(j)=time_comp(j)+temp;
        %disp(['x: ',num2str(x_ret.')]);
        %disp(['Complete Pivoting Solution: ',num2str(pivot_c)]);
        
        %%Calling richardson() for Richardson
        tic
        ans_richardson=richardson(A,b,N);
        temp=toc;
        time_rich(j)=time_rich(j)+temp;
        %disp(['Richardson Solution: ',num2str(ans_richardson)]);
        
        %%Calling jacobi() for Jacobi
        tic
        ans_jacobi=jacobi(A,b,N);
        temp=toc;
        time_jacobi(j)=time_jacobi(j)+temp;
        %disp(['Richardson Solution: ',num2str(ans_richardson)]);
        
        %%Calling gauss_seidel() for GaussSeidel
        tic
        ans_gauss_seidel=gauss_seidel(A,b,N);
        temp=toc;
        time_gs(j)=time_gs(j)+temp;
        %disp(['Richardson Solution: ',num2str(ans_richardson)]);
    end
    j=j+1;
end
%%
%%Plotting the obtained time for different dimensions(N) of the matrix A(NxN)
figure(1)
plot(n,time_bge./5,'r-*')
xlabel('N')
ylabel('Time in seconds(sec)')
title('Basic Gauss Elimination')
grid on

figure(2)
plot(n,time_par./5,'b-*')
xlabel('N')
ylabel('Time in seconds(sec)')
title('Partial Pivoting')
grid on

figure(3)
plot(n,time_comp./5,'g-*')
xlabel('N')
ylabel('Time in seconds(sec)')
title('Complete Pivoting')
grid on

figure(4)
plot(n,time_rich./5,'c-*')
xlabel('N')
ylabel('Time in seconds(sec)')
title('Richardson')
grid on


figure(5)
plot(n,time_jacobi./5,'k-*')
xlabel('N')
ylabel('Time in seconds(sec)')
title('Jacobi')
grid on

figure(6)
plot(n,time_gs./5,'m-*')
xlabel('N')
ylabel('Time in seconds(sec)')
title('Gauss-Seidel')
grid on


figure(7)
plot(n,time_bge./5,'r-')
hold on
plot(n,time_par./5,'b-')
hold on
plot(n,time_comp./5,'g-')
hold on
plot(n,time_rich./5,'c-')
hold on
plot(n,time_jacobi./5,'k-')
hold on
plot(n,time_gs./5,'m-')
hold on
xlabel('N')
ylabel('Time in seconds(sec)')
legend('BGE','Partial','Complete','Richardson','Jacobi','Gauss-Seidel','Location','northwest');
grid on

