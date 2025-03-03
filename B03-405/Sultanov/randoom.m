function y = randoom(x, p)
lx = length(x);
for i = 1 : lx
    if rand() > p
        y(i) = x(i);
    else
        y(i) = 4 * rand -2;
    end
end