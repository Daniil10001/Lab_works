clear;
x=1:0.1:10;
%plot(x,sin(x),'.-')
y=randoom(16*sin(x),0.1);
grid on
y1=medfilt1(y,6);%filt1(y)
y2=medfilti_p(y,6);
figure
plot(x,y1,'.-',x,y,'-.');
%%
figure
plot(x,y2,'.-',x,y,'-.');
%%
figure
x=0:1:10;
y=sin(x);
xq=0:0.1:10;
vq=interp1(x,y,xq,'cubic');
plot(x,y,'.',xq,vq,'-.');
%%
x=0:0.1:10;
y=0:0.1:10;
z=decartmul(sin(x),cos(y));
surf(x,y,z)
%%
X = ones(length(y),1) * x;
Y = y.' * ones(length(x),1).';
Z=sin(X)+cos(Y);
Z1=randoom2(3*Z,0.05);
figure
surf(X,Y,Z);
figure
surf(X,Y,medfilt_2D2(Z1,3));
figure
surf(X,Y,medfilt2(Z1,[3,3]))

