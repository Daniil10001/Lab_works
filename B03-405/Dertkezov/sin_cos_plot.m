clear
x = 0 : 0.1 : 10;
y = 0 : 0.1 : 9.9;
z = sin_cos(x, y);
surf(x, y, z)
%%
X = ones(length(y), 1) * x;
Y = y' * ones(1, length(x));
Z = sin(X) + cos(Y);
surf(z)
%%
Z1 = randoom2(Z, 0.05);
surf(Z1)
%%
Z2 = medfilt2_(Z1, 3);
surf(Z2)
%%
Z2 = medfilt22_(Z1, 3);
surf(Z2)