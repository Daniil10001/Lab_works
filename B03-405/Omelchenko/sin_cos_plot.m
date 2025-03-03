clear
x = 0 : 0.1 : 10;
y = 0 : 0.1 : 9.9;

X = ones(length(y),1) * x;
Y = y' * ones(1, length(x));

Z = sin(X) + cos(Y);
Z1 = randoom2(Z, 0.05);
Z2 = medfilt21(Z1, 3, 3);
Z3 = medfilt2(Z1, [3 3]);
Z4 = medfilt22(Z1, 3);

%%
surf(Z)

%%
surf(Z1)

%%
surf(Z2)

%%
surf(Z3)

%%
surf(Z4)
