function tabel_perkalian(n)

n = input('Masukkan nilai n: ');

for i=1:n
    for j=1:i
        fprintf('%d\t', i*j);
    end
    fprintf('\n');
end
end
