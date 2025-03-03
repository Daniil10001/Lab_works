function Z1 = randoom2 (Z, p)
sz = size(Z);
for i = 1 : sz(1)
    for j = 1 : sz(2)
        if rand() > p
            Z1(i, j) = Z(i, j);
        else
            Z1(i, j) = 4 * rand() - 2;
        end
    end
end
end