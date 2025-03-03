x = 0 : 0.1 : 10;
y = sin(x);
plot(x,y,".-")
%%
y1 = randoom(y,0.05);
plot(x,y1,".-", x ,y, ".")
grid on
%%
y2 = medfilt1(y1,5)
plot(x,y1,".-", x ,y2, "-.")
grid on
%%
y3 = medfilt1(y1,5)
plot(x,y1,".-",    x ,y2, ".-", x ,y3, ".-")
grid on