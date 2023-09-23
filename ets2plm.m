clear
clc

syms x y
matrix = [1 2 3;0 -3 2;2 4 6];
[a,b] = size(matrix)
if a ~= b
    disp('the matrix is not invertible')
    return
end

order = b
for x = 1:order
    matrix(x,x+order) = 1;
end

for x = 1:order
    if x ~= y
            ratio = matrix(y, x) / matrix(x,x);
            for z = 1:(2*order)
                matrix(y,z) = matrix (y,z) - ratio*matrix(y,z);
            end
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