a=1;
b=2;
tol=10^(-4);
N=100;
i=1;
while i<= N
fa = a^3 +4*a^2 - 10;
fb = b^3 +4*b^2 - 10;
c=(a+b)/2
fc = c^3 +4*c^2 - 10
if abs(fc) < tol
    break
end
   i=i+1;
   if (fc*fa)>0
       a=c;
   else 
       b=c;

fa = a^3 +4*a^2 - 10;
fb = b^3 +4*b^2 - 10;
fc = c^3 +4*c^2 - 10;
d=(a+b)/2
fd = d^3 +4*d^2 - 10
if abs(fc) < tol
    break
end
   i=i+1;
   if (fd*fa)>0
       a=d;
   else 
       b=d;
   end
   end
end