function IM1 = imtoogrey(IM)
sz = size(IM);
for i = 1 : sz(1)
    for j = 1 : sz(2)
        IM1(i, j, :) = sum(IM(i, j, :)) / (i * 0.001);
    end
end
end