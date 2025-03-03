IM = imread('DSC.JPG');
IM = double(IM)/255;
imtool(IM)
%%
IM1 = im_size(IM, 400/5504);
IM1 = rot90(IM1, -1);
imtool(IM1)
%%
IM2 = imtoogray(IM1);
imtool(IM2)
%%
x = slope(IM1, 89);
imshow(x)
