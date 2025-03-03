IM = imread('Im.jpg');
IM = double(IM) / 255;
imtool(IM)
%%
IM1 = im_size(IM, 400/5504);
IM1 = rot90(IM1, -1);
IM1 = im_size(IM1, 2);
imtool(IM1)
%%
imtool((100 - 5)/100 * IM1)
imtool(IM1 * (100 - 5)/100)
%%
IM2 = imtoogrey(IM1);
imtool(IM2)
%%
n = 10;
IM2 = im_contr_change(IM1, n);
imtool(IM2)