clc;
clear;

// System Ax = B
A = [10 -1 2 0;
     -1 11 -1 3;
     2 -1 10 -1;
     0 3 -1 8];

B = [6; 25; -11; 15];

n = length(B);
X = zeros(n,1);        // initial guess
X_new = zeros(n,1);

tol = 0.0001;
max_iter = 100;

for k = 1:max_iter
    for i = 1:n
        sum = 0;
        for j = 1:n
            if j <> i then
                sum = sum + A(i,j)*X(j);
            end
        end
        X_new(i) = (B(i) - sum) / A(i,i);
    end
    
    // stopping condition
    if norm(X_new - X, "inf") < tol then
        break;
    end
    
    X = X_new;
end

disp("Solution (Jacobi):");
disp(X_new);