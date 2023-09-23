x = -1:1/1000:1; 
v = 1 + 1./25*x.^2;

xq = -1:1/1000:1;

figure
vq1 = interp1(x,v,xq);
plot(x,v,'o',xq,vq1,':.');
xlim([0 2*pi]);
title('Range f(x)');