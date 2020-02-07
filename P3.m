clc;
display('Y bus formation code');
nbranch=input('enter the number of branchesin system');
display('enter line data');
for n=1:1:nbranch
 fb=input('enter from bus=');
 tb=input('enter to bus=');
 r=input('enter value of resistance');
 x=input('enter value of reactance=');
 B=input('enter the value of line charging admittance(b/2)=');
 z=r+i*x;
 y=1./z;
 Ldata(n,:)=[fb tb r x B y];
end
fb=Ldata(:,1);
tb=Ldata(:,2);
r=Ldata(:,3);
x=Ldata(:,4);
b=Ldata(:,5);
y=Ldata(:,6);
b=i*b;
nbus=max(max(fb),max(tb));
Y=zeros(nbus,nbus);
for k=1:nbranch
 Y(fb(k),tb(k))=Y(fb(k),tb(k))-y(k);
 Y(tb(k),fb(k))=Y(fb(k),tb(k));
end
for m=1:nbus
 for n=1:nbranch
 if fb(n)==m
 Y(m,m)=Y(m,m)+y(n)+b(n)
 elseif tb(n)==m
 Y(m,m)=Y(m,m)+y(n)+b(n);
 end
 end
end
Yb=Y
