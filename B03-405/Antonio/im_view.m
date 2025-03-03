IM = imread('DSC_2122.jpg');
IM = double(IM)/100;
imtool(IM)
%%
IM1 = im_size(IM, 800/5504);
IM1 = rot90(IM1, -1);
imtool(IM1)
%%
IM2 = imtoogray(IM1);
imtool(IM2)
%%
del = delta_color(IM)
%%
sz = size(IM1);
i = sz(2)
