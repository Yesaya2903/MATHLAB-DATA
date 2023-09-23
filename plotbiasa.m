clear all;
clc;

title('grafik y')
f = @(y) exp(-0.5*y) * sin(5*y);
fplot(f, [0,5])
