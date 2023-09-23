clear all;
clc;

x1 = 0;
x2 = 0;
tol = 10^-5;
i = 1;
N = 20;
x1 = x2/sqrt(5)
x2 = (sin(x1) + cos(x2))/4

while i < N
    x1b = x2/sqrt(5)
    x2b = (sin(x1) + cos(x2))/4
     i = i + 1
    x1 = x1b
    x2 = x2b
end    