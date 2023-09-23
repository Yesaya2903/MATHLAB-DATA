clear all;
clc;

syms x y
tol = 10^-5;
i = 1;
N = 10;

fxy = x + 3*log10(x) -y^2;
gxy = 2*x^2- x*y - 5*x + 1;

dfx = diff(fxy,x)
dfy = diff(fxy,y)
dgx = diff(gxy,x)
dgy = diff(gxy,y)

fx1 = double(subs(fxy, {x,y}, {3.4,2.2}))
fx2 = double(subs(gxy, {x,y}, {3.4,2.2}))
df1dx1 = double(subs(dfx, 3.4))
df1dy1 = double(subs(dfy, 2.2))
df2dx1 = double(subs(dgx, {x,y}, {3.4,2.2}))
df2dx2 = double(subs(dgy, 3.4))

