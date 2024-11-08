clc; 
clf;         
close all;   
clear all;   
x = input("Enter x values: "); 
h = input("Enter h values: "); 
l = length(x); 
m = length(h); 
l_y = l+m-1; 
H = [h zeros(1,(l_y-m))]; 
X = [x zeros(1,(l_y-l))]; 
y = zeros(1,l_y); 
for (i=1:l_y)                                                 
for (j = 1:l_y) 
end 
end 
disp(y); 
y(i) = y(i) + X(j) * H(mod(i-j, l_y)+1); 
y_conv = conv(x,h); % Verification 
len_y_conv = length(y_conv); 
tile = tiledlayout(2,2); 
title(tile, "Linear Convolution using Circular Convolution"); 
nexttile;         
stem(0:l-1,x); 
title("x[n]");
xlabel("Samples"); 
ylabel("Amplitude"); 
grid on; 
nexttile;               
stem(0:m-1,h); 
title("h[n]"); 
xlabel("Samples"); 
ylabel("Amplitude"); 
grid on; 
nexttile;               
stem(0:l_y-1,y); 
title("Circular Convolution"); 
xlabel("Samples"); 
ylabel("Amplitude"); 
grid on; 
nexttile;               
stem(0:len_y_conv-1,y_conv); 
title("In-built Function"); 
xlabel("Samples"); 
ylabel("Amplitude"); 
grid on;