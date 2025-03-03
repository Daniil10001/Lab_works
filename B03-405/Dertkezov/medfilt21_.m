function Z2 = medfilt21_(Z, p)
sz = size(Z);
for i = 1 : sz(1)
    Z1(i,:) = medfilt1_(Z(i,:), p);
end
end