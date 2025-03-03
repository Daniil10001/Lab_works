x = 0: 0.1:10;
y = sin(x);
plot(x,y)
%%
y1 = shum(y,0.1);
plot(x,y,'.-',x,y1,'.-')
%%
y2 = medfilt1(y1,9);
plot(x,y1,'.-',x,y2,'.-')
%%
y3 = mef(y1,9);
plot(x,y1,'.-',x,y2,'.-', x,y3,'.')