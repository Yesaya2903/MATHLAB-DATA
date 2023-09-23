function jarak = dijkstra (peta, titikawal, titikakhir)

J = length(peta);
jarak(1:J) = Inf;
dikunjungi(1:J) =  0;
jarak(titikawal) = 0;
dikunjungi(titikawal) = 1;
rute (J-1,2) = 0;

    while dikunjungi(titikakhir) == 0
        for indeks = 1:J
            if peta(titikawal, indeks) ~= 0
               jaraknya = peta  (titikawal, indeks) + jarak(titikawal);
               if jaraknya < jarak(indeks)
                   jarak(indeks) = jaraknya;
                rute(indeks-1,:) = [titikawal indeks];
               end
            end
         end

    minimum = Inf;            

         for i = 1:J
            if dikunjungi(i) == 0 && minimum > jarak(i)
              minimum = jarak(i);
              titiksekarang = i;
            end
         end

        dikunjungi(titiksekarang) = i;
        titikawal = titiksekarang;
 
    end

disp(rute);

end