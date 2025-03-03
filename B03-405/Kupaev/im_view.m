im = imread('DSC_2125.jpg');
im = double(im)/255;
%%
im1 = im_size(im, 1000/5504);
im1 = rot90(im1, -1);
imtool(im1)
%%
im3 = bright_wave(im1, 30, 0.2);
imtool(im3)
%im2 = imtoogray(im1);
%mtool(im2)