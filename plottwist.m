function f = plottwist(a,b,c,x)
clear all;
clc;
f = @(x) a*x.^2 + b*x + c;
[f0,i0] = min(f(x)); x0 = x(i0);

plot(x,f(x), 'b-', x0,f0,'ro');
xlabel('x'); grid;
legend('f(x)=ax^2 + bx + c', '(x0,f0)'); 