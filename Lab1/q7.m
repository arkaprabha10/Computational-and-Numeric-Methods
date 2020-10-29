flag=0;
final=0;
n=0;
while(flag==0)
    if(abs(final-exp(1))<0.001)
        flag=1;
    end
    final=final+1/factorial(n);
    n=n+1;
end
final
    
    