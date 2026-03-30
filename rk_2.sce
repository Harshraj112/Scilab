clc;
clear;

// Define function
function z = f(x, y)
    z = (x*y + 1) / (10*y^2 + 4);
endfunction

// Given values
x0 = 1;
y0 = 2;
h = 0.2;
xn = 2;

n = (xn - x0)/h;

x = x0;
y = y0;

for i = 1:n
    k1 = f(x, y);
    k2 = f(x + h/2, y + (h/2)*k1);
    
    y = y + h*k2;
    x = x + h;
end

disp("RK-2 Method:");
disp(y);