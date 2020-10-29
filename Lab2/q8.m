1syms f(x1,x2) g(x1,x2) f1(x1) f2(x2) g1(x1,x2) g2(x1,x2) x1 x2
f(x1,x2)=4*x1*x1 - x2*x2;
g(x1,x2)=4*x1*x2*x2 - x1-1;
f1(x1,x2)=diff(f,x1);
f2(x1,x2)=diff(f,x2);
g1(x1,x2)=diff(g,x1);
g2(x1,x2)=diff(g,x2);
xx1=0;
xx2=1;
h=[0;0];
j=[0 0;0 0];
n=input("enter no of iterations: ");
for i=1:n
    j=[f1(xx1,xx2) f2(xx1,xx2); g1(xx1,xx2) g2(xx1,xx2)];
%     j(1,1)=f1(x1);
%     j(1,2)=f2(x2);
%     j(2,1)=g1(x1,x2);
%     j(2,2)=g2(x1,x2);
%     h=-1*inv(j)*val;
    j=inv(j);
    val=[f(xx1,xx2);g(xx1,xx2)];
    h=j*val;
    a=[xx1;xx2];
    a=a-h;
    xx1=double(a(1));
    xx2=double(a(2));
end
disp(xx1+" "+xx2)     
