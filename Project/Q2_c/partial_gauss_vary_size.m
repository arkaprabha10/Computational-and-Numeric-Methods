% Define interval to add noise
xmin=-0.1;
xmax=0.1;
% define mean and std_dev vectors
mean_val=[];
std_val=[];
n=2;
axis_val=2:1:11;
end_val=1.5;
for i=1:10
    %Define Initial vector to define vandermonde matrix
    v = 1:.5:end_val;
    A = vander(v);
    b = randn(n,1);
    %generate noise
    x=xmin+rand(n,1)*(xmax-xmin);
    %Add noise to Vector B
    noise_b=x+b;
    %dont solve if determinant is 0
    if det(A)~=0
        %solve for both original and noisy B (Vector)
        final=pivot_par(A,n,b);
        final_noise=pivot_par(A,n,noise_b);
    end
    % FIND ERROR VECTOR
    err = (final-final_noise);
    mean_val(end+1) = mean(abs(err));
    std_val(end+1) = std(err); 
    %plot error vector
    plot(abs(err))
    hold on;
    %increase matrix size
    n=n+1;
    end_val=end_val+0.5;
end
legend({'n=2','n=3','n=4','n=5','n=6','n=7','n=8','n=9','n=10','n=11'},'Location','northeastoutside')
xlabel('Coefficient Matrix Dimension ')
ylabel('Absolute Error Value')
grid on;
title('Error Plot')
%plot mean values
figure;
plot(axis_val,mean_val)
xlabel('Coefficient Matrix Dimension')
ylabel('Mean value of absolute error')
grid on;
title('Mean Plot')
figure 
%plot std_dev plot
plot(axis_val,std_val)
xlabel('Coefficient Matrix Dimension')
ylabel('Standard Deviation of error vector')
grid on;
title('Std Dev Plot')