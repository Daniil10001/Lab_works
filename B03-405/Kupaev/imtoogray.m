function im1 = imtoogray(im)
sz = size(im);
for i = 1 : sz(1)
    for j = 1 : sz(2)
        im1(i, j, :) = sum(im(i, j, :))/3;
    end
end
end