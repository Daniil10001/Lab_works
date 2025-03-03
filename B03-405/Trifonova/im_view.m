IM= imread ('DSC_2118.jpg');
IM= double(IM)/255;
imtool(IM)
%%
IM1= im_size(IM,800/5504);
IM1= rot90(IM1,-1);
imtool(IM1)
%%
%%imtool (IM1*0.2)
%%imtool((100-65)/100*IM1)
%%
IM2= brightness(IM1, 100);
imtool(IM2)