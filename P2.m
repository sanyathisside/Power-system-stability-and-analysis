clc
clear all
n=input('What is the NUMBER OF BUSES? ');
ne=n*n;
z=input('z Matrix');
y=zeros(n);
for i=1:n
 for j=1:n
 y(i,j)=1/z(i,j);
 end
end
y
Y=zeros(n)
for i=1:n
 for j=1:n
 if i==j
 for m= 1:n
 Y(i,i)=Y(i,i)+y(i,m);
 end
 else
 Y(i,j)= -y(i,j);
 end
 end
end
Y
