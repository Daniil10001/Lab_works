function Z1 = medfiltz21(Z, p)
sz = size(Z);
for i = 1 : sz(1)
    Z1(i, :) = medfilt1_(Z(i, :), p);
    sz = size(Z);
end
for i = 1 : sz(1)
    Z1(:, i) = medfilt1_(Z1(:, i), p);
end
end