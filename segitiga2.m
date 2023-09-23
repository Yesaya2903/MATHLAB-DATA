function [miring, luas, keliling] = segitiga2(a,b);
clear all
clc
a=input('masukkan panjang segitiga :');
b=input('masukkan tinggi segitiga :');
if a*b<0;
end
disp('GABISA MINUS WOI') 

% menghitung sisi miring 
miring = sqrt(a^2+b^2);
miring
c = miring;

%luas 
luas = (0.5*a*b);
luas

%keliling
keliling = a+b+c;
keliling