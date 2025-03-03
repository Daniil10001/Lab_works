I=imread("img.JPG")*1.;
I=double(I)/255;
%imagesc(I);

Ir=imresize(I,800/5504);

Ir=rot90(Ir,-1);
%Ir=permute(Ir,[2,1,3]);
%%
Ir2=imresize(Ir,2);

%Ir2u=uint8(Ir*255);
Ir2=uncolor(Ir2);
%imtool(Ir2);
%%
imtool(rotate(Ir,pi*3/4));