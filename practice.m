function  practice(distances, startingpoint)

map = [0	6	10	6	5	Inf	Inf	Inf	Inf	Inf	Inf
       6	0	Inf	Inf	Inf	16	14	Inf	Inf	Inf	Inf
       10	Inf	0	Inf	Inf	Inf	6	4	Inf	Inf	Inf
       6	Inf	Inf	0	Inf	Inf	Inf	Inf	18	6	Inf
       5	Inf	Inf	Inf	0	Inf	Inf	Inf	Inf	7	4
       Inf	Inf	Inf	Inf	Inf	0	12	Inf	Inf	16	Inf
       Inf	Inf	Inf	Inf	Inf	12	0	16	Inf	Inf	Inf
       Inf	Inf	Inf	Inf	Inf	Inf	16	0	19	Inf	Inf
       Inf	Inf	Inf	Inf	Inf	Inf	Inf	19	0	6	Inf
       Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf	6	0	9
       Inf	Inf	Inf	Inf	Inf	16	Inf	Inf	Inf	9	0];

distances = djikstra(map,1)