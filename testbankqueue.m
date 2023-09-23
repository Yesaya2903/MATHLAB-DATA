clear
clc

arrival_time = xlsread('BANK QUEUE SIMULATION TEKSIM.xlsx','C6:C105');

service_time =  xlsread('BANK QUEUE SIMULATION TEKSIM.xlsx','D6:D105');

while arrival_time(1) < arrival_time(100)

    time_in_system = arrival_time + service_time;

end

queue_time = 