clear
clc

peta = xlsread('test.xlsx');

titikawal = input('Input start point =');
titikakhir = input('Input final point =');

hasil = dijkstra(peta,titikawal,titikakhir);

disp('       A              B              C              D              E              F              G              H              I');
disp(hasil);