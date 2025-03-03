function y = mef(x,p)
l = length(x);
for i=1:fix(p/2)
    tmp = comb_sort(x(1:fix(p/2)+i));
    y(i) = tmp(i);
    tmp = comb_sort(x(l-fix(p/2)+i-1:l));
    ll=length(tmp)
    i
    y(l+1-i) = tmp(i);
end
for i = ceil(p/2): l-fix(p/2)
    tmp = comb_sort(x(i-fix(p/2):fix(p/2)+i));
    y(i) = tmp(ceil(p/2));
end
end