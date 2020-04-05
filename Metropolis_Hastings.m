
x1=[1,-1,1];
b1=[0.1,0.2,0.3,0.4,0.5];
a1=[0.1,0.2,0.3];
w1=[0.1,0.1,0.1;0.2,0.2,0.2;0.3,0.3,0.3;0.4,0.4,0.4;0.5,0.5,0.5];   


Metropolis(x1,w1,a1,b1)

function x3= Metropolis(x1,w1,a1,b1)
    x2=ones(1,length(x1))
   for number=1:10
       n=randi(length(x1),1,500);
    for i =size(n,1)
        k=n(1,i);  
        if x1(1,k)==1
        x2(1,k)=-1;
    elseif x1(1,k)==-1
        x2(1,k)=1;
        end
    faraday=PRBM(x2,w1,a1,b1)/PRBM(x1,w1,a1,b1);
    m=rand(1,1);
    if m<= faraday
        x1=x2;   
    end
    end
    x2
end
end

function P=PRBM(x,w,a,b)
    b_len=length(b);
    a_len=length(a);
    
    
    P1= exp(a*x.');
    P2=1;
    sum1=0;
    for i =1:b_len
        
            temp_sum=x.'*w(i,:)+b(i);
            ijk=sum(temp_sum);
            P2=2*cosh(temp_sum(i))*P2;
        
    end
    P=P1*P2;

end
