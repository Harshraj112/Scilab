clc;
clear;

// Define function
function y = f(x)
    y = x^2;   // change as needed
endfunction

a = 0;
b = 2;
n = 4;

h = (b - a)/n;

sum = f(a) + f(b);

for i = 1:n-1
    x = a + i*h;
    sum = sum + 2*f(x);
end

I = (h/2)*sum;

disp("Integral using Trapezoidal Rule:");
disp(I);