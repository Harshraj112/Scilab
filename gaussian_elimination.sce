clc;
clear;

// Given coefficient matrix
A = [2 1 -1;
    -3 -1 2;
    -2 1 2];

// Given constant matrix
B = [8;
    -11;
    -3];

// Form augmented matrix
Aug = [A B];

n = 3;

// Forward Elimination
for k = 1:n-1
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

disp("Solution Vector:");
disp(X);
