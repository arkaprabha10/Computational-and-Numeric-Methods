A = randi(50,5);
b = randi(10,5,1);
%% Basic - introducing i% noise to A
x = Gauss(A, b);
avg = zeros(size(1:2:50));
it = 0;
for i = 1:2:50
    it = it+1;
    A_noise = A + A.*i*randn(size(A))/100;
    x_noise = Gauss(A_noise,b);
    error = abs(x-x_noise);
    avg(it) = max(sum(error'));
end
x_val = (1:2:50);
figure(1)
plot(x_val ,avg);
title({'Basic GE','Relationship between perturbation and mean','for noise in A'})
ylabel('mean(error)') 
xlabel('percentage noise introduced') 
grid on
figure(2)
plot(log(avg));
title({'Basic GE','Relationship between perturbation and log of mean','for noise in A'})
ylabel('log(mean(error))') 
xlabel('percentage noise introduced') 
grid on

%% Partial - introducing i% noise to A
x = Gauss_partial(A, b);
avg = zeros(size(1:2:50));
std_dev = zeros(size(1:2:50));
it = 0;
for i = 1:2:50
    it = it+1;
    A_noise = A + A.*i*randn(size(A))/100;
    x_noise = Gauss_partial(A_noise,b);
    error = abs(x-x_noise);
    avg(it) = max(sum(error'));
end
figure(3)
plot(x_val ,avg);
title({'GE with partial pivoting','Relationship between perturbation and mean','for noise in A'})
ylabel('mean(error)') 
xlabel('percentage noise introduced') 
grid on
figure(4)
plot(log(avg));
title({'GE with partial pivoting','Relationship between perturbation and log of mean','for noise in A'})
ylabel('log(mean(error))') 
xlabel('percentage noise introduced') 
grid on

%% Basic - introducing i% noise to b
x = Gauss(A, b);
avg = zeros(size(1:2:50));
it = 0;
for i = 1:2:50
    it = it+1;
    b_noise = b + i*randn(length(b),1).*b/100;
    x_noise = Gauss(A,b_noise);
    error = abs(x-x_noise);
    avg(it) = max(sum(error'));
end
figure(5)
plot(x_val ,avg);
title({'Basic GE','Relationship between perturbation and mean','for noise in b'})
ylabel('mean(error)') 
xlabel('percentage noise introduced') 
grid on
figure(6)
plot(log(avg));
title({'Basic GE','Relationship between perturbation and log of mean','for noise in b'})
ylabel('log(mean(error))') 
xlabel('percentage noise introduced') 
grid on

%% Partial - introducing i% noise to b
x = Gauss_partial(A, b);
avg = zeros(size(1:2:50));
it = 0;
for i = 1:2:50
    it = it+1;
    b_noise = b + i*randn(length(b),1).*b/100;
    x_noise = Gauss_partial(A,b_noise);
    error = abs(x-x_noise);
    avg(it) = max(sum(error'));
end
figure(7)
plot(x_val ,avg);
title({'GE with partial pivoting','Relationship between perturbation and mean','for noise in b'})
ylabel('mean(error)') 
xlabel('percentage noise introduced') 
grid on
figure(8)
plot(log(avg));
title({'GE with partial pivoting','Relationship between perturbation and log of mean','for noise in b'})
ylabel('log(mean(error))') 
xlabel('percentage noise introduced') 
grid on