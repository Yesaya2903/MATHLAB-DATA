clear all;
clc;

f = @(x) exp(-0.5*x).*sin(5*x);
x = linspace(0,5,101);
y = f(x);
e = exp(-0.5*x);

plot (x,y,'b-', x,e,'r--', x,-e,'m--');
xlabel('x'); ylabel('y'); grid;
title('f(x) = e^{-0.5x} sin(5x)');
legend('f(x)=x^4 -4x', '(x0,f0)');
