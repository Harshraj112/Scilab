clc;
clear;

A = [2 1 -1;
    -3 -1 2;
    -2 1 2];

B = [8; -11; -3];

Aug = [A B];
n = 3;

// Track column swaps
col_index = 1:n;

// Forward Elimination with Full Pivoting
for k = 1:n-1
    
    // Find max element in submatrix
    max_val = 0;
    max_row = k;
    max_col = k;
    
    for i = k:n
        for j = k:n
            if abs(Aug(i,j)) > max_val then
                max_val = abs(Aug(i,j));
                max_row = i;
                max_col = j;
            end
        end
    end
    
    // Swap rows
    if max_row <> k then
        temp = Aug(k,:);
        Aug(k,:) = Aug(max_row,:);
        Aug(max_row,:) = temp;
    end
    
    // Swap columns
    if max_col <> k then
        temp = Aug(:,k);
        Aug(:,k) = Aug(:,max_col);
        Aug(:,max_col) = temp;
        
        // Track variable order
        temp = col_index(k);
        col_index(k) = col_index(max_col);
        col_index(max_col) = temp;
    end
    
    // Elimination
    for i = k+1:n
        factor = Aug(i,k) / Aug(k,k);
        Aug(i,k:n+1) = Aug(i,k:n+1) - factor * Aug(k,k:n+1);
    end
end

disp("Upper Triangular Matrix:");
disp(Aug);

// Back Substitution
X = zeros(n,1);

X(n) = Aug(n,n+1) / Aug(n,n);

for i = n-1:-1:1
    sum = 0;
    for j = i+1:n
        sum = sum + Aug(i,j) * X(j);
    end
    X(i) = (Aug(i,n+1) - sum) / Aug(i,i);
end

// Reorder solution (VERY IMPORTANT)
X_final = zeros(n,1);
for i = 1:n
    X_final(col_index(i)) = X(i);
end

disp("Solution (Correct Order):");
disp(X_final);