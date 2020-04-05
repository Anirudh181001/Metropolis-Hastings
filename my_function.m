  
h1=rand(1,5);
x1=rand(1,3);
b1=rand(1,5);
a1=rand(1,3);
w1=rand(3,5);   

my_function(h1,x1,w1,a1,b1);



function [PL] = my_function(h,x,w,a,b)
    PL=exp((h)*(b.')+(x)*(a.')+(x)*((w)*(h.')))
end

