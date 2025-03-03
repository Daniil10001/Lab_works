function del = delta_color(IM1, p)
sz = size(IM1);
length = sz(2) % вдоль
k = 0
for i = 1 : sz(1)
    for j = 1 : sz(2)
        while k <= (length*(1/3))
            IM1(i, j, :) = IM1(i*(1+p/100), j*(1+p/100), :);
        end
        k = (2/3)*k
        while k <= length
            IM1(i, j, :) = IM1(i*(p/100), j*(p/100), :);
        end
    end
end




