clc; 
clear all; 
close all; 
disp('6. Circular Convolution Property'); 
x1=input('Enter the 1st sequence : '); 
x2=input('Enter the 2nd sequence : '); 
N=length(x1); 
M=length(x2); 
x1=[x1 zeros(1,M-N)]; 
x2=[x2 zeros(1,N-M)]; 
x=cconv(x1,x2,max(N,M)); 
y1=dft(x1); 
y2=dft(x2); 
y=y1.*y2; 
Y=dft(x); 
disp('DFT of x1 : '); 
disp(y1'); 
disp('DFT of x2 : '); 
disp(y2'); 
disp('DFT of convolution of x1 and x2 : '); 
disp(Y'); 
disp('DFT of convolution of x1 and x2 by property : '); 
disp(y'); 
if (abs(y-Y)<10^(-10)) 
disp('Circular Convolution property of DFT is verified'); 
else 
disp('Circular Convolution property of DFT is not verified'); 
end