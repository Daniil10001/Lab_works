IM = imread('DSCPDC_0001.jpg');
IM1 = double(IM)/255;
imtool(IM)
%%
IM1 = im_size(IM1, 1000/5504);
IM1 = rot90(IM1, -1);
imtool(IM1)
%%
IM2 = im_size(IM1, 2);
imtool(IM2)
%%
imtool((100-85)/100*IM1)
%%
imtool(IM1*(100-85)/100)
%%
IM3 = imtoogray(IM1);
imtool(IM3)  