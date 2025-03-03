function IM1 = im_contrast(IM, p)
IM = rgb2gray(IM);
sz = size(IM);
centerx = sz(1)/2;
centery = sz(2)/2;
distance_to_center = sqrt((x - centerx)^2 + (y-centery)^2);
max_distance = 
end