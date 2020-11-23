%dont solve if determinant is 0
v = 1:.5:3;
n=5;
A = vander(v);
b = randn(5,1);
% a = 5;
% b = 500;
% y = a.*randn(1000,1) + b;
xmin=-0.1;
xmax=0.1;
mean_val=[];
std_val=[];
for i=1:10
    xmin=xmin*2;
    xmax=xmax*2;
    x=xmin+rand(n,1)*(xmax-xmin);
    noise_b=x+b;
    if det(A)~=0
        final=bge(A,5,b);
        final_noise=pivot_par(A,5,noise_b);
    end
    err = (final-final_noise);
    mean_val(end+1) = mean(err);
    std_val(end+1) = std(err); 
    plot(abs(err))
    hold on;
legend({'lim=+-=0.2','lim=+-=0.4','lim=+-=0.8','lim=+-=1.6','lim=+-=3.2','lim=+-=6.4','lim=+-=12.8','lim=+-=25.6','lim=+-=51.2','lim=+-=102.4'},'Location','northeastoutside')
end
title('Error Plot')
figure;
plot(mean_val)
title('Mean Plot')
figure 
plot(std_val)
title('Std Dev Plot')