clear
clc

matrix = randi([1 10],3,3);
[a,b] = size(matrix)
if a ~= b
    disp('the matrix is not invertible')
    return
end

b = order
for x = 1:order
    matrix(x,x+order) = 1;
end

for x = 1:order
    if matrix(x,:) == 0 
    end

    for y = x:order
        if x ~= y
            ratio = matrix(y, x) / matrix(x,x);
            for z = 1:(2*order)
                matrix(y,z) = matrix (y,z) - ratio*matrix(x,z);
            end
        end
    end
end

for x = 1:order
    ratio = matrix (x,x);
    for y = 1:(2*order)
        matrix(x,y) = matrix(x,y)/ratio;
    end
end
 result = matrix(1:order, order + 1:2*order)