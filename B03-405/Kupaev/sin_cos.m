function z= sin_cos(x, y)
lx = length(x);
ly = length(y);
for i = 1 : lx
    for j = 1:ly
        z(j,i)=sin(x(i))+cos(y(j));
    end
end
end