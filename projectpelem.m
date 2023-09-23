clear all;
clc;

data = xlsread("test.xlsx");

gi = data(9,9) + data(7,9);
hi = data(9,9) + data(8,9);

A = [gi hi]

dg = gi + data(4,7);
dh = hi + data(4,8);
eg = gi + data(5,7);
eh = hi + data(5,8);
fg = gi + data(6,7);
fh = hi + data(6,8);

B = [dg eg fg; dh eh fh];
B = sort(B);
B = B(1, :)

bd = B(1,1) + data(2,4);
be = B(1,2) + data(2,5);
bf = B(1,3) + data(2,6);
cd = B(1,1) + data(3,4);
ce = B(1,2) + data(3,5);
cf = B(1,3) + data(3,6);

C = [bd cd;be ce;bf cf];
C = sort(C);
C = C(1,:)

ab = C(1,1) + data(1,2);
ac = C(1,2) + data(1,3);

final = [ab;ac];
final = sort(final);
final = final(1,:)

hasil = [' Rute terpendeknya adalah ' ,num2str(final)];
disp(hasil)