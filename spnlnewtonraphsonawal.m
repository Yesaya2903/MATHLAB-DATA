clear all;
clc;

x = 1;
y = 2;
tol = 10^-3;
i = 1;
N = 10;

while i<N
f1 = x^3 + 10*x - y - 5
f2 = x + y^3 - 10*y + 1

df1dx = 3*x^2 + 10;
df1dy = -1;

df2dx = 1;
df2dy = 3*y^2 - 10;

ex = [-f1,df1dy;-f2,df1dy];
ey = [df1dx,-f1;df2dx,-f2];
J = [df1dx,df1dy;df2dx,df2dy];

e1 = det(ex/J)
e2 = det(ey/J)

x = x + e1
y = y + e2
 if abs(x)&&abs(y) <= tol
     break
 end
 i = i + 1;
end 
