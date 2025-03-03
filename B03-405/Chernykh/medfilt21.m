function Z1 = medfilt21(Z, p)
sz = size(Z);
for i = 1 : sz(1)
    Z1(i,:) = midfilt1_(Z(i,:),p);
end

for i = 1 : sz(2)
    Z1(:,i) = midfilt1_(Z1(:,i),p);
end


end