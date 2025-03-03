function Z2 = mef21(Z, p)
sz = size(Z);
for i = 1 : sz(1)
    Z1(i, :) = mef(Z(i, :), p);
end
for i = 1:sz(2)
    Z2(:, i) = mef(Z1(:, i), p);
end