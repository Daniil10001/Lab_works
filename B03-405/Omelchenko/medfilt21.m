function Z1 = medfilt21(Z,p1, p2)

sz = size(Z);

for i = 1 : sz(1)
    Z1(i, :) = medfilt1_(Z(i,:), p1);
end

for i = 1 : sz(2)
    Z1(:, i) = medfilt1_(Z1(:,i), p2);
end

end