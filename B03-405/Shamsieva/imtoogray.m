function IM1 = imtoogray(IM)
sz = size(IM);
for i = 1 : sz(1)
    for j = 1 : sz(2)
        IM1(i,j,:) = sum(IM(i,j,:))/3;
    end
end
end