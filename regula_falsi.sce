clc;
clear;

deff('y=f(x)', 'y=x^3-x-2');

a = input("Enter lower value a: ");
b = input("Enter upper value b: ");
tol = input("Enter tolerance (e.g., 0.0001): ");
max_iter = input("Enter maximum iterations: ");

if f(a)*f(b) > 0 then
    disp("Invalid interval. f(a) and f(b) must have opposite signs.");
else
    for i = 1:max_iter
        c = (a*f(b) - b*f(a)) / (f(b) - f(a));
        
        printf("Iteration %d : Root = %f\n", i, c);
        
        if abs(f(c)) < tol then
            printf("Root found = %f\n", c);
            break;
        end
        
        if f(a)*f(c) < 0 then
            b = c;
        else
            a = c;
        end
    end
end



