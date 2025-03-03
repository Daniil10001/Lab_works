I=imread("S:\Photos\B03-405\DSC_2127.JPG");

imagesc(I);

Ir=imresize(I,0.1);

Ir=rot90(Ir,-1);
%Ir=permute(Ir,[2,1,3]);
imtool(Ir);
Ir2=imresize(I,2);
imtool(Ir2);
