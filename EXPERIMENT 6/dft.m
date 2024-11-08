clc; 
clf;         
close all;   
clear all; 
 
x = input("Enter x values: ");   
N = length(x);   
X = zeros(1, N);   
 
disp("DFT"); 
for k = 1 : N 
    sum_k = 0;   
    for n = 1 : N 
        sum_k = sum_k + x(n) * exp((-1i * 2 * pi * (n-1) * (k-1)) / N);   
    end 
    X(k) = sum_k;   
end 
disp(X); 
 
disp("Verification"); 
y = fft(x, N);   
disp(y); 
 
disp("IDFT"); 
x_inv = zeros(1, N);   
for n = 1 : N 
    sum_n = 0;   
    for k = 1 : N 
        sum_n = sum_n + (X(k) * exp((1i * 2 * pi * (n-1) * (k-1)) / N)) / N; 
        end 
x_inv(n) = sum_n;   
end 
disp(x_inv); 
disp("Verification"); 
y_inv = ifft(X, N);   
disp(y_inv);