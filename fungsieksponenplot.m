f = @(x) exp(-0.5*x).*sin(5*x);
x = linspace(0,5,101);
y = f(x);
e = exp(-0.5*x);

plot(x,y,'b-',x,e,'r--',x,-e,'m--');
 h = legend('f(x)','e','-e');
 set(h,'location','northeast');
 title('f(x) = e^(-0.5*x).*sin(5*x)','fontsize',18,'fontname', 'Arial');
 xlabel('x','color', 'black','fontsize',12);
 ylabel('y','color','black','fontsize',12);