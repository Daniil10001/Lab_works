x = 0:0.1:10;
y = sin(x);
plot(x, y, ".-")
%%
y1 = randoom(y, 0.1);
plot(x,y,".-",x,y1,".-")
grid on
%%
y2 = medfield1()
