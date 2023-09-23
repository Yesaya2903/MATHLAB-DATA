%QUIZ PLM 1
%YESAYA ANANDA D
%5002211156

clear all;
clc;

x = input('Masukkan rata rata kecepatan angin :');

if x < 38
    disp('Anginnya adalah Tropical Depression')
end
if x >= 39  
    disp('Anginnya adalah Thunder Storm')
end
if x >= 74
    disp('Anginya adalah Hurricane')
end