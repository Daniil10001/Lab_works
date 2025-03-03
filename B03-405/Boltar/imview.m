im = imread("DSC_2125.JPG");
%im = double(im)/255;

imtool(im);
%%
im1 = im_size(im,800/5504);
im1 = rot90(im1,-1);
im1 = brightnessWaveEffect(im1,0.005,0.1);
imtool(im1)
%%
im2 = grayim(im1);
imtool(im2)
