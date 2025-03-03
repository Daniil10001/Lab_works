function y = medfilt22_(x,n)
sz = size(x);
for i = 1 : floor(n/2)
    y(i,:) = medfilt1_(x(i,:),n);
    y(sz(1) + 1 - i,:) = medfilt1_(x(sz(1) + 1 - i,:),n);
    y(:,i) = medfilt1_(x(:,i),n);
    y(:,sz(2) + 1 - i) = medfilt1_(x(:,sz(2) + 1 - i),n);
end
for i = ceil(n/2) : sz(1) - floor(n/2)
    for j = ceil(n/2) : sz(2) - floor(n/2)
        a = x(i - floor(n/2) : i + floor(n/2), j - floor(n/2) : j + floor(n/2));
        a = a(:)';
        a = sort_(a);
        y(i,j) = a(ceil(n^2/2));
    end
end
end