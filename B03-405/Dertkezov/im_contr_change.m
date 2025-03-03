function IM1 = im_contr_change(IM, n)
sz = size(IM);
m = sum(IM(1, 1, :));
p = (m * n / 100) / sz(1);
for i = 1 : sz(1)
    for j = 1 : sz(2)
        IM1(i, j, :) = IM(i, j, :) * (1 - p * i);
    end
end
end