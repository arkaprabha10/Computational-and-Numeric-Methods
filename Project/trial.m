%%
clear all;
close all;
format long;
dx = 0.001;
fun = @(x) 1./(1+sinh(2*x).*log(x).*log(x));
figure (1);
fplot(fun)
title('Function Plot')
grid on;
    
%%
% vary limit and check error
err_rect=[];
err_simp=[];
err_trap=[];

for i=0.5:0.5:10
    x = linspace(1e-6,i,100+(i-0.5)*200);
    x1=1e-6:dx:i;
    y=double(1./(1+sinh(2*x).*log(x).*log(x)));
    y1=double(1./(1+sinh(2*x).*log(x).*log(x)));
    q = integral(fun,1e-6,i);
    S1 = trapz(x,double(y));
    S2 = sum(y1*dx);
    S3 =  SIMP(x,y);
    err_rect(end+1)=abs(S2-q);
    err_simp(end+1)=abs(S3-q);
    err_trap(end+1)=abs(S1-q);
end
x_axis=0.5:0.5:10;
figure(2);
plot(x_axis,err_rect,'r-*')
title('Error Plot for Rectangular Method')
grid on;
figure(3);
plot(x_axis,err_simp,'g-*')
grid on;
title('Error Plot for Simpsons and Trapezium Method')
hold on;
plot(x_axis,err_trap,'b-*')
legend({'Trapezium Method','Simpsons Method'},'Location','northeastoutside')
%%
% plot final values
% function of x where ans is integral of 0 to x for expr
final_plot=[];
final_plot_rect=[];
final_plot_simp=[];
final_plot_trap=[];
for i=0.5:0.5:50
    x = linspace(1e-6,i,100+(i-0.5)*200);
    x1=1e-6:dx:i;
    y=double(1./(1+sinh(2*x).*log(x).*log(x)));
    y1=double(1./(1+sinh(2*x).*log(x).*log(x)));
    final_plot(end+1)= integral(fun,0,i);
    final_plot_trap(end+1) = trapz(x,double(y));
    final_plot_rect(end+1) = sum(y1*dx);
    final_plot_simp(end+1) =  SIMP(x,y); 
end
x_axis=0.5:0.5:50;
figure(4);
plot(x_axis,final_plot,'r-')
title('Net Integral plots')
grid on;
hold on;
plot(x_axis,final_plot_rect,'p-')
grid on;
hold on;
plot(x_axis,final_plot_simp,'g-')
grid on;
hold on;
plot(x_axis,final_plot_trap,'b-')
legend({'Actual Plot','Rectangular Method','Trapezium Method','Simpsons Method'},'Location','northeastoutside')




