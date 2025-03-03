function IM1 = contrast(IM, n)
sz = size(IM);
p = n / sz(1) / 100
for i = 1 : sz(1)
    for j = 1 : sz(2)
        IM1(i, j, :) = sum(IM(i, j, :)) * (p * i);
    end
end
end