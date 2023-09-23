function steps = collatz(n,max_steps)
  steps = 0;
  while n~=1
    if mod(n,2) == 0; 
      n = n/2;
    else
      n = 3*n + 1;
    end
    steps=steps+1;
  end
end