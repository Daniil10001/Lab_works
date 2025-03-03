function y = medfilt22(x,p)
sx = size(x);
for i = 1 : fix(p/2)
    y(i,:) = medfilt1_(x(i,:),3);
    y(sx(1) + 1 - i,:) = medfilt1_(x(sx(1) + 1 - i,:),p);
    y(:,i) = medfilt1_(x(:,i),p);
    y(:,sx(2) + 1 - i) = medfilt1_(x(:, sx(2) + 1 - i), p);
end

for i = ceil(p/2) : sx(1) - fix(p/2)
    for j = ceil(p/2) : sx(2) - fix(p/2)
        a = x(i - fix(p/2) : i + fix(p/2), j- fix(p/2) : j + fix(p/2));
        a = reshape(a, 1, []);
        a = sort_(a);
        y(i,j) = a(ceil(p^2/2));
    end
end
end