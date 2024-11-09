% Function definition 
function y=dft(x) 
N=length(x); 
y=zeros(1,N); 
for (k=1:N) 
for (n=1:N) 
 y(k)=y(k)+exp(-1i*2*pi*(k-1)*(n-1)/N)*x(n);
end 
end