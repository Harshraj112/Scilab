clc
clear

A = [2 1 -1;
    -3 -1 2;
    -2 1 2];

B = [8; -11; -3];

Aug = [A B];
n = 3;

//forward Elimination with Partial Pivoting
for k=1:n-1

    //find max elements in column k
    max_row = k;
    for i = k+1:n;
        if abs(Aug(i,k)) > abs(Aug(max_row,k)) then
            max_row = i;
        end
    end

    //Swap rows
    if max_row <> k then
        temp = Aug(k,:);
        Aug(k,:) = Aug(max_row, :);
        Aug(max_row, :) = temp;
    end

    //Elimination
    for i = k+1:n
        factor = Aug(i,k)/Aug(k,k);
        Aug(i,k:+1) = Aug(i,k:n+1) - factor * Aug(k,k:n+1);
    end
end

disp("Upper triangle Matrix:");
disp(Aug);

X = zeros(n,1);
X(n) = Aug(n,n+1)/Aug(n,n);

for i = n-1:-1:1
    sum = 0;
    for j = i+1:n
        sum = sum + Aug(i, j)* X(j);
    end
    X(i) = (Aug(i,n+1) - sum)/Aug(i,i);
end

disp("Solution");
disp(X);
        