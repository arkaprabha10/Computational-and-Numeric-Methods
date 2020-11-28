%Define Initial vector to define vandermonde matrix
v = 1:.5:3;
%Define size of matrix
n=5;
%Generate Vandermonde Matrix
A = vander(v);
%Generate Random B Vector
b = randn(5,1);
% Define interval to add noise
xmin=-0.1;
xmax=0.1;
% define mean and std_dev vectors
mean_val=[];
std_val=[];
axis_val=[];
for i=1:10
    axis_val(end+1)=xmax*2;
    xmax=xmax*2;
end
%Repeat experiment  for 10 iterations
for i=1:10
    % Increase noise interval by 2 in every iteration
    xmin=xmin*2;
    xmax=xmax*2;
    x=xmin+rand(n,1)*(xmax-xmin);
    %Add noise to Vector B
    noise_b=x+b;
    %dont solve if determinant is 0
    if det(A)~=0
        %solve for both original and noisy B (Vector)
        final=bge(A,5,b);
        final_noise=pivot_par(A,5,noise_b);
    end
    % FIND ERROR VECTOR
    err = (final-final_noise);
    % FIND MEAN OF ABSOLUTE ERROR AND STANDARD DEVIATION
    mean_val(end+1) = mean(abs(err));
    std_val(end+1) = std(err); 
    %PLOT ERROR VECTOR
    plot(abs(err))
    hold on;
legend({'lim=+-=0.2','lim=+-=0.4','lim=+-=0.8','lim=+-=1.6','lim=+-=3.2','lim=+-=6.4','lim=+-=12.8','lim=+-=25.6','lim=+-=51.2','lim=+-=102.4'},'Location','northeastoutside')
end
xlabel('Error Matrix Index ')
ylabel('Absolute Error Value')
grid on;
title('Error Plot')
%plot mean values
figure;
plot(axis_val,mean_val)
xlabel('Max Noise Added')
ylabel('Mean value of absolute error')
grid on;
title('Mean Plot')
%plot std_dev plot
figure 
plot(axis_val,std_val)
xlabel('Max Noise Added')
ylabel('Standard Deviation of error vector')
grid on;
title('Std Dev Plot')