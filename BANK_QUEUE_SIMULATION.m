clc
clear

%Creator %Yesaya {5002211156}
%Team %Aini {5002211173}
%Team %Sita {5002211067}

firstcustomer = 0;
finalcustomer = 100;
interarrivaltime = randi([1, 4], 1, 100);
servicetime = randi([1, 3], 1, 100);

opentime = 0;
queue_length = 0; % Initialize the queue length
total_wait_time = 0; % Initialize the total wait time

while firstcustomer < finalcustomer
    firstcustomer = firstcustomer + 1;

    % Calculate the arrival time for the current customer based on the completion time of the previous customer
    arrival_time = opentime + sum(interarrivaltime(1:firstcustomer));
    
    if firstcustomer > 1
        arrival_time = max(arrival_time, opentime + sum(interarrivaltime(1:firstcustomer - 1)) + servicetime(firstcustomer - 1));
    end
    
    % Calculate the time spent waiting in the queue for the current customer
    wait_time_queue = max(queue_length - arrival_time, 0);
    
    % Calculate the service time for the current customer
    service_time = servicetime(firstcustomer);
    
    % Calculate the total time spent in the system (queue + service time) for the current customer
    time_in_system = wait_time_queue + service_time;
    
    % Update the total wait time
    total_wait_time = total_wait_time + wait_time_queue;
    
    % Update the queue length after the current customer is served
    queue_length = queue_length + service_time;
    
    % Display information for the current customer
    fprintf('Customer %d:\n', firstcustomer);
    fprintf('Arrival Time: %.2f\n', arrival_time);
    fprintf('Wait Time in Queue: %.2f\n', wait_time_queue);
    fprintf('Time in System: %.2f\n', time_in_system);
    fprintf('\n');
end

% Calculate and display the average wait time in the queue
average_wait_time = total_wait_time / finalcustomer;
fprintf('Average Wait Time in Queue: %.2f\n', average_wait_time);
