function y = sort_(x)
lx = lenght(x);
for i = 1 : lx - 1
    for j = 1 : lx - 1
        if x(j) > x(j + 1)
            a = x(j);
            x(j) = x(j + 1);
            x(j + 1) = a;
        end
    end
end
end