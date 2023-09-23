function tes1()
clear
clc

theta = 0:10:360;
y = cos(theta*pi/180+1);
x = cos(theta*pi/180)+1;

plot(theta,x,'-r*')
hold on
plot(theta,y,'-bs')

h = legend('sin x', 'cos x');
set(h,'location','northeast')
title('GRAFIK COSINUS','fontsize',12, 'fontname','Arial')
xlabel('Sudut', 'color', 'black', 'FontSize',10)
ylabel('Nilai Sudut', 'color', 'black', 'FontSize',10)

grid on