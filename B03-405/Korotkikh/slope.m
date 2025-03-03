function P = slope(I, alpha)
T = [1 0 0; tand(alpha) 1 0; 0 0 1];
wid = size(I, 2);
heiht = size(I, 1);
new_wid = round(wid + abs(heiht * tand(alpha)));
P = imwarp(I, affine2d(T), 'OutputView', imref2d([heiht, new_wid]), FillValues=255);
end