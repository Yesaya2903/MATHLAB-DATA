clear all;
clc;

x1 = 0;
x2 = 0;
tol = 10^-5;
i = 1;
N = 20;
x1 = (x1^2 + x2^2 + 8)/10
x2 = (x1*x2^2 + x1 + 8)/10

while i < N
    x1b = (x1^2 + x2^2 + 8)/10
    x2b = (x1*x2^2 + x1 + 8)/10 
     i = i + 1
    x1 = x1b
    x2 = x2b
     if norm([x1b x2b]-[x1 x2],Inf)
        break
    end  
end
    