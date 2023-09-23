% Define parameters
total_customers = 100; % Total number of customers

% Generate random arrival times and service times
arrival_times = cumsum(randi([1, 5], 1, total_customers)); % Random arrival times between 1 and 5 minutes
service_times = randi([1, 4], 1, total_customers); % Random service times between 1 and 4 minutes

% Initialize variables
queue_length = zeros(1, total_customers); % Initialize the queue length array
wait_times_queue = zeros(1, total_customers); % Initialize wait times in queue

% Simulate the queue
for t = 2:total_customers
    % Calculate the number of customers served
    served = min(1, sum(arrival_times <= arrival_times(t) & arrival_times > arrival_times(t-1)));
    
    % Calculate wait time in queue for the newly arrived customers
    wait_time_queue = max(queue_length(t - 1) + 1 - served, 0);
    
    % Update the queue length
    queue_length(t) = max(queue_length(t - 1) + 1 - served, 0);
    
    % Record wait times
    wait_times_queue(t) = wait_time_queue;
end

% Create plots
subplot(2, 1, 1);
plot(arrival_times, 'b-', 'LineWidth', 1.5);
xlabel('Customer');
ylabel('Arrival Time');
title('Arrival Times');
grid on;

subplot(2, 1, 2);
plot(wait_times_queue, 'g-', 'LineWidth', 1.5);
xlabel('Customer');
ylabel('Wait Time in Queue');
title('Wait Times in Queue');
grid on;

% Display total wait time in queue
total_wait_time_queue = sum(wait_times_queue);
fprintf('Total wait time in queue: %.2f\n', total_wait_time_queue);
