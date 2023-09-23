syms a x

a = input('Input a :');
fx = input('Input equation :');
fa = subs(fx,x,a);
fa = double(subs(fa,a));
disp(fa)