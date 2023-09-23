clear all
clc

syms x a b p
a = input('Input first Initial Guess :');
b = input('Input second Initial Guess :');
fx = input('Input equation :');
fa = subs(fx,x,a)
fb = subs(fx,x,b)
tol=10^-5;
N=20;
i=1;

while i <= N
    pi = (a+b)/2
    fp = subs(fx,x,p)
      dfp = diff(fp,p)
    fp = double(subs(fp,pi))
      dfp = double(subs(dfp,pi))
    if abs (fp) < tol
        break
    end
    i=i+1;
    if (fp*fa) > 0
     a = pi
    else 
     b = pi
end
end

disp('INI METODE BISECTION')