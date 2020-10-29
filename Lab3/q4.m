syms f1(x) f2(x)
f1(x)=sqrt((4 - 6*exp(-1*x))/2);
f2(x)=-1*(log((4-2*x*x)/6));
%er=input('Enter the accuracy needed: ');
n=input('Enter iterations : ');

x0=input('Starting approximation (x0): ');
x=x0;
i=0;
%while abs(f1(x)-x)>er
for j=1:n
    x = f1(x);
    %if(4 - 6*exp(-1*x) <0)
    %    disp("Diverging")
        %disp("Current Answer is : "+double(x))
    %    break;
    %end
%     i=i+1;
end
disp('Root by function 1: ')
disp(double(x));
% disp('Iterations : ')
% disp(i)
x=x0;
i=0;
%while abs(f2(x)-x)>er
for j=1:n 
    x = f2(x);
%     if (4-2*x*x)<0
%         disp("Diverging")
%         %disp("Current Answer is : "+double(x))
%         break;
%     end
%     i=i+1;
end
fprintf('Root by function 2: ')
disp(double(x));
% fprintf('Iterations : ')
% disp(i)