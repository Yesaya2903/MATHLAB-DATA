disp('METODE NEWTON GREGORY FORWARD')
disp('Masukkan x danf(x) dalam bentuk matriks satukolom')
x=input('x = ');
f=input('f(x) = ');
n=numel(x);
    forj=1:n-1
    delf(1,j)=f(j+1)-f(j);
endfori=2:n-1forj=1:n-idelf(i,j)=delf(i-1,j+1)-delf(i-1,j);endendh=x(2)-x(1);jawab='y';whilejawab=='y'xcari=input('Nilai x yang dicari = ');b=(xcari-x(1))/h;i=1;hasil=f(1);forj=1:n-1i=i*(b-j+1)/j;hasil=hasil+(delf(j,1))*i;enddisp(['i    = ',num2str(b)]);disp(['f(x) = ',num2str(hasil)]);jawab=input('Coba cari x lain? (y/n)','s');enddisp('METODE NEWTON GREGORY BACKWARD')disp('Masukkan x dan f(x) dalam bentuk matriks 1 kolom')x=input('x = ');f=input('f(x) = ');n=numel(x);forj=1:n-1delf(1,j)=f(j+1)-f(j);endfori=2:n-1forj=1:n-idelf(i,j)=delf(i-1,j+1)-delf(i-1,j);endendh=x(2)-x(1);jawab='y';whilejawab=='y'xcari=input('Nilai x yang dicari = ');b=(xcari-x(n))/h;i=1;hasil=f(n);forj=1:n-1i=i*(b+j-1)/j;hasil=hasil+(delf(j,n-j))*i;enddisp(['i    = ',num2str(b)]);disp(['f(x) = ',num2str(hasil)]);jawab=input('Coba cari x lain? (y/n)','s');end
