clc; 
clf; 
clear all; 
close all; 
x1=input('Enter 1st matrix: '); 
x2=input('Enter 2nd matrix: '); 
n=length(x1); 
m=length(x2); 
l=max(n,m); 
tile=tiledlayout(2,2); 
title(tile, 'Circular Convolution'); 
nexttile; 
sample_points=1:1:n; 
stem(sample_points,x1); 
title('Sample 1'); 
xlabel('Sample points'); 
ylabel('Amplitude'); 
grid on; 
nexttile; 
sample_points=1:1:m; 
stem(sample_points,x2); 
title('Sample 2'); 
xlabel('Sample points'); 
ylabel('Amplitude'); 
grid on;
if (n~=m) 
    if (n>m) 
        x2=[x2 zeros(1,m-n)]; 
    else 
        x1=[x1 zeros(1,m-n)]; 
    end 
end 
 
X1=zeros(l,l); 
for (i=1:l) 
    X1(:,i)=circshift(x1(:),i-1); 
end 
 
y=X1*x2(:); 
yt=y'; 
disp(yt); 
 
yb=cconv(x1,x2,l); 
disp(yb); 
 
nexttile; 
sample_points=1:1:n; 
stem(sample_points,yt); 
title('User Function'); 
xlabel('Sample points'); 
ylabel('Amplitude'); 
grid on; 
 
nexttile; 
sample_points=1:1:n; 
stem(sample_points,yb); 

title('Built in Function'); 
xlabel('Sample points'); 
ylabel('Amplitude'); 
grid on; 