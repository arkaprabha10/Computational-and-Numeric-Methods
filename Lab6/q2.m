clearvars;
clc;
close all;

A = [60 30 20
    30 20 15
    20 15 12];

b = [110
    65
    47];

x0 = [0;0;0];

x0
lastx = x0;
for i=1:3
   fprintf('After %x iterations\n',i);
    
   fprintf('r%x =\n',i-1);
   r = b - (A*lastx);
   disp(r);
   fprintf('e%x =\n',i-1);
   e = (eye(3)/A)*r;
   disp(e);
   fprintf('x%x =\n',i);
   x = lastx + e;
   disp(x);
   lastx = x;
end