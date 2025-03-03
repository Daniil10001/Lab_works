x = 1 : 10;
y = randi(20,1,10);
plot(x,y,'*')
%%
xx = 1 : 0.1: 10;
yy = interp1(x,y,xx,"spline");
plot(x,y,'*',xx,yy,'.-')

%%
p = polyfit(x,y,9);
y1 = polyval(p,xx);
hold on
plot(xx,y1,'b')
hold off