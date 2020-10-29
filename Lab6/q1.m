i=eye(3);
a=[0.5,0,0;0,0.5,0;0,0,0.5];
b1=eye(3);
b=eye(3)+a;
for j=2:20
   a=a*a;
   b=b+a; 
end
check=(i-a)*b1