%dont solve if determinant is 0
xmin=-0.1;
xmax=0.1;
mean_val=[];
std_val=[];
n=2;
end_val=1.5;
for i=1:10
    v = 1:.5:end_val;
    A = vander(v);
    b = randn(n,1);
    x=xmin+rand(n,1)*(xmax-xmin);
    noise_b=x+b;
    if det(A)~=0
        final=pivot_par(A,n,b);
        final_noise=pivot_par(A,n,noise_b);
    end
    err = (final-final_noise);
    mean_val(end+1) = mean(err);
    std_val(end+1) = std(err); 
    plot(abs(err))
    hold on;
    n=n+1;
    end_val=end_val+0.5;
end
legend({'n=2','n=3','n=4','n=5','n=6','n=7','n=8','n=9','n=10','n=11'},'Location','northeastoutside')
title('Error Plot')
figure;
plot(mean_val)
title('Mean Plot')
figure 
plot(std_val)
title('Std Dev Plot')