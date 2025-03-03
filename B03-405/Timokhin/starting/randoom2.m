function Z1 = randoom2(Z,p)
s1=size(Z);
for i = 1:s1(1)
    for j = 1:s1(2)
        if (rand>p)
            Z1(i,j)=Z(i,j);
        else
            Z1(i,j)=Z(i,j)+6*(rand-0.5);
        end
    end
end
end