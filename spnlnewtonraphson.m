clear all;
clc;

syms x y
tol = 10^-5;
i = 1;
N = 10;
xy = 3.4;
yx = 2.2;

while i<N
fxy = x + 3*log10(x) -y^2;
gxy = 2*x^2- x*y - 5*x + 1;

dfx = diff(fxy,x)
dfy = diff(fxy,y)
dgx = diff(gxy,x)
dgy = diff(gxy,y)

fx1 = double(subs(fxy, {x,y}, {xy,yx}))
fx2 = double(subs(gxy, {x,y}, {xy,yx}))
df1dx1 = double(subs(dfx, xy))
df1dy1 = double(subs(dfy, yx))
df2dx1 = double(subs(dgx, {x,y}, {xy,yx}))
df2dx2 = double(subs(dgy, xy))

ex = [-fx1,df1dy1;-fx2,df2dx2];
ey = [df1dx1,-fx1;df2dx1,fx2];
J = [df1dx1,df1dy1;df2dx1,df2dx2];

e1 = det(ex/J)
e2 = det(ey/J)

xy = xy + e1
yx = yx + e2
 if abs(xy)<= tol && abs(yx)<= tol
 end
 i = i + 1;
end
