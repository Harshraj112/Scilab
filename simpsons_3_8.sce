clc;
clear;

// Define function
function y = f(x)
    y = x^2;   // change as needed
endfunction

a = 0;
b = 3;
n = 6;   // must be multiple of 3

h = (b - a)/n;

sum = f(a) + f(b);

for i = 1:n-1
    x = a + i*h;
    
    if modulo(i,3) == 0 then
        sum = sum + 2*f(x);
    else
        sum = sum + 3*f(x);
    end
end

I = (3*h/8)*sum;

disp("Integral using Simpson 3/8 Rule:");
disp(I);