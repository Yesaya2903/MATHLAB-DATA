clear all;
clc;

data = xlsread('Temperature.xlsx');

jam = data(:,1);
menit = data(:,2);
detik = data(:,3);
suhuC = data(:,4);

suhuF = (suhuC*(9/5))+32;

totalWaktu = 3600*jam + 60*menit + detik;

waktuTerpanas = [];
i=1;
while (length(waktuTerpanas)<3)
    suhuMaks = suhuC==max(suhuC)
    indeks = find(suhuMaks)
    waktuTerpanas(i) = totalWaktu(indeks(1))
    suhuC(indeks(1))=[]
    totalWaktu(indeks(1))=[]
    i=i+1
end
% waktuTerpanas