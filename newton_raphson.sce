clc;
clear;

deff('y=f(x)', 'y=x^3-x-2');
deff('y=df(x)', 'y=3*x^2-1');

x0 = input("Enter initial guess: ");
tol = input("Enter tolerance (e.g., 0.0001): ");
max_iter = input("Enter maximum iterations: ");

for i = 1:max_iter
    
    x1 = x0 - f(x0)/df(x0);
    
    printf("Iteration %d : Root = %f\n", i, x1);
    
    if abs(x1 - x0) < tol then
        printf("Root found = %f\n", x1);
        break;
    end
    
    x0 = x1;
    
end
