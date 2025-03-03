IM = imread('DSC_2122.jpg');
IM = double(IM)/255;
IM1 = im_size(IM, 800/5504);
IM1 = rot90(IM1, -1);
IM2 = delta_color(IM1, 40)
imtool(IM2)