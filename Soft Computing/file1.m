x = 0: 0.05: (2*pi);
y = sin(x);
z = 2*sin(x);
t= 0.5*sin(x);
plot(x,y,'g-.',x,z,'k--',x,t,'r');
xlabel('x axis');
ylabel('y axis');
legend('sin x', '2sin x', '0.5sinx');
