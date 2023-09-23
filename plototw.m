clear all;
clc;

f = @(x) x.^4 - 4*x;
x = linspace(0, 1.5, 151);
[f0,i0] = min(f(x)); x0 = x(i0);

plot(x,f(x), 'b-', x0,f0,'ro');
xlabel('x'); grid;
legend('f(x)=x^4-4x', '(x0,f0)');