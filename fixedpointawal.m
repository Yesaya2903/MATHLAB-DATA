clear all;
clc;

x = input('Declare x :');
fx = input('Insert equation :')
i = 1;
N = 100;
tol = 10^-5;

while i <= N
    fx = double(subs(fx, x));
    if abs(fx) < tol
        break
    if fx,(i+1) > fx,(i);
    end
    disp('Persamaan Salah')
     i = i + 1;
    end
end
