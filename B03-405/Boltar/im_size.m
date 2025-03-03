function im1 = im_size(im,k)
sz=size(im);
for i = 1 : sz(1)*k
    for j = 1 : sz(2)*k
        im1(i, j, :) = im(ceil(i/k), ceil(j/k), :);
    end
end
end