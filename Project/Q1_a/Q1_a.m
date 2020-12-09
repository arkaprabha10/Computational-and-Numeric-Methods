clearvars;
clc;
close all;
format long
x=linspace(1,2);
y=f(x);
plot(x,y);
grid on

%%Solving for Planck's Radiation Equation
x=zeros(1,5);       %root obtained from a given method
itr=zeros(1,5);        %Number of iterations taken for a given accuracy
acc=0.000001*ones(1,5);%Accuracy of the root

%%Calling different Iterative root finding methods
[x(1),itr(1)]=func_bisection(1,6,0.000001);
[x(2),itr(2)]=func_newton_2(3.5,0,0.000001);
[x(3),itr(3)]=func_secant(1,6,0,0.000001);
[x(4),itr(4)]=func_rfalsi(1,6,0,0.000001);
[x(5),itr(5)]=func_steffensen(3.5,0,0.000001);



% Multiplying by the constant to convert the equation back to Planck's wavelength for which radiation is maximum
% Absolute temperature of the radiating body = 300K
% Speed of light= 3x(10^8)m/s
% Planck Constant = 6.626*(10^(-34);
% Boltzmann Constant = 1.380649*(10^(-23))
c=3*(10^8)*6.626*(10^(-34))/(1.380649*(10^(-23))*300)
root=c./x; %%Wavelength required

%%
%%Converting to Table
methods={'Bisection' ,'Newton' ,'Secant','Regula-Falsi','Steffensen'};
Planck=table(methods.',x.',root.',itr.',acc.');
Planck.Properties.VariableNames={'Method','x', 'Wavelength','Iterations','Accuracy'}