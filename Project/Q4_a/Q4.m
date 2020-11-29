%%
clearvars;
clc;
clear all;

%Importing the csv files produced in SECTION 3
x1 = csvread('X1.csv');%data of x coordinate of pendulum 1
theta1 = csvread('A1.csv');%data of the angle on which the position(x,y) depends
y1 = csvread('Y1.csv');%data of y coordinate of pendulum 1
x1=transpose(x1);
theta1=transpose(theta1);
y1=transpose(y1);


%%
% use N data points
N=25;

x_data=zeros(1,N);
y_data=zeros(1,N);
theta_data=zeros(1,N);
j=1;
T=1000/N;

%Taking N equally spaced data points in range 1 to 1000 as nodes
for i=1:T:1000
    x_data(j)=x1(i);
    y_data(j)=y1(i);
    theta_data(j)=theta1(i);    
    j=j+1;
end

%Calling Lagrange Interpolation function
y_25=lfunc(theta_data,y_data,N);
x_25=lfunc(theta_data,x_data,N);

%Exporting the data into csv files
csvwrite('Y_25.csv',y_25(theta1).');
csvwrite('X_25.csv',x_25(theta1).');

%Plot the graphs for the results obtained
figure(1)
plot(theta1,y_25(theta1));
hold on
plot(theta1,y1);
legend({'Interpolated function','Real function'},'Location','southeast')
title('Lagrange Interpolation for y1 using 25 nodes');
grid on
figure(2)
plot(theta1,x_25(theta1));
hold on
plot(theta1,x1);
legend({'Interpolated function','Real function'},'Location','southeast')
title('Lagrange Interpolation for x1 using 25 nodes')
grid on
figure(3)
plot(theta1,abs(y_25(theta1)-y1));
hold on
plot(theta1,abs(x_25(theta1)-x1));
legend('Error in y1','Error in x1');
title('Error Plot');
grid on

%%
% use N data points
N=50;

x_data=zeros(1,N);
y_data=zeros(1,N);
theta_data=zeros(1,N);
j=1;
T=1000/N;

%Taking N equally spaced data points in range 1 to 1000 as nodes
for i=1:T:1000
    x_data(j)=x1(i);
    y_data(j)=y1(i);
    theta_data(j)=theta1(i);    
    j=j+1;
end

%Calling Lagrange Interpolation function
y_50=lfunc(theta_data,y_data,N);
x_50=lfunc(theta_data,x_data,N);

%Exporting the data into csv files
csvwrite('Y_50.csv',y_50(theta1).');
csvwrite('X_50.csv',x_50(theta1).');

%Plot the graphs for the results obtained
figure(1)
plot(theta1,y_50(theta1));
hold on
plot(theta1,y1);
legend({'Interpolated function','Real function'},'Location','southeast')
title('Lagrange Interpolation for y1 using 50 nodes');
grid on
figure(2)
plot(theta1,x_50(theta1));
hold on
plot(theta1,x1);
legend({'Interpolated function','Real function'},'Location','southeast')
title('Lagrange Interpolation for x1 using 50 nodes')
grid on
figure(3)
plot(theta1,abs(y_50(theta1)-y1));
hold on
plot(theta1,abs(x_50(theta1)-x1));
legend('Error in y1','Error in x1');
title('Error Plot');
grid on

%% 
% use N data points
N=100;

x_data=zeros(1,N);
y_data=zeros(1,N);
theta_data=zeros(1,N);
j=1;
T=1000/N;

%Taking N equally spaced data points in range 1 to 1000 as nodes
for i=1:T:1000
    x_data(j)=x1(i);
    y_data(j)=y1(i);
    theta_data(j)=theta1(i);    
    j=j+1;
end

%Calling Lagrange Interpolation function
y_100=lfunc(theta_data,y_data,N);
x_100=lfunc(theta_data,x_data,N);

%Exporting the data into csv files
csvwrite('Y_100.csv',y_100(theta1).');
csvwrite('X_100.csv',x_100(theta1).');

%Plot the graphs for the results obtained
figure(1)
plot(theta1,y_100(theta1));
hold on
plot(theta1,y1);
legend({'Interpolated function','Real function'},'Location','southeast')
title('Lagrange Interpolation for y1 using 100 nodes');
grid on
figure(2)
plot(theta1,x_100(theta1));
hold on
plot(theta1,x1);
legend({'Interpolated function','Real function'},'Location','southeast')
title('Lagrange Interpolation for x1 using 100 nodes')
grid on
figure(3)
plot(theta1,abs(y_100(theta1)-y1));
hold on
plot(theta1,abs(x_100(theta1)-x1));
legend('Error in y1','Error in x1');
title('Error Plot');
grid on

