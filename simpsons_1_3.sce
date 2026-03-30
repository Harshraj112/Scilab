clc;
clear;

// Define function
function y = f(x)
    y = x^2;   // change as needed
endfunction

a = 0;
b = 2;
n = 4;   // must be even

h = (b - a)/n;

sum = f(a) + f(b);

for i = 1:n-1
    x = a + i*h;
    
    if modulo(i,2) == 0 then
        sum = sum + 2*f(x);
    else
        sum = sum + 4*f(x);
    end
end

I = (h/3)*sum;

disp("Integral using Simpson's Rule:");
disp(I);