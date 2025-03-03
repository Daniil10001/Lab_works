IM = imread('DSC_2126.jpg');
IM = double(IM)/255;
imtool(IM)
%%
IM1 = im_size(IM,800/5504);
IM1 = rot90(IM1,-1);
imtool(IM1) 
%%
IM2 = imtoogray(IM1);
imtool(IM2)
%%
IM3 = colours_change(IM1);
imtool(IM3)