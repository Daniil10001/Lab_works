function y = medfilt1_(x,p)
lx = length(x);
for i = 1 : fix(p/2)
    y(i) = x(i);
    y(lx + 1 - i) = x(lx + 1 - i);
end
for i = ceil(p/2) : lx - fix(p/2)
    a = x(i - fix(p/2) : i + fix(p/2));
    s = sort_(a);
    y(i) = a(ceil(p/2));
end
end