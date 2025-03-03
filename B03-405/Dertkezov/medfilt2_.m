function Z2 = medfilt2_(Z, p)
sz = size(Z);
for i = 1 : sz(1)
    Z1(i,:) = medfilt1_(Z(i,:), p);
end
for i = 1 : sz(1)
    Z2(:,i) = medfilt1_(Z1(:,i), p);
end
end