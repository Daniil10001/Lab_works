function [ImR] = rotate(Im,fi)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    sz=size(Im);
    rotation=[cos(fi),-sin(fi);sin(fi),cos(fi)];
    %ceil([sz(2)/2,sz(1)/2;sz(2)/2,-sz(1)/2].');
    ns=ceil((rotation.')*ceil([sz(2)/2,sz(1)/2;sz(2)/2,-sz(1)/2].'));
    nx=max(abs(ns(1,:)));
    ny=max(abs(ns(2,:)));
    ImR=double(zeros(2*ny,2*nx,3)+1);
    for i=1:2*ny
       for j=1:2*nx
           nv=ceil((rotation)*[(j-nx);(i-ny)])+ceil([sz(2)/2;sz(1)/2]);
           if (nv(2)>=1) && (nv(1)>=1) && (nv(2)<=sz(1)) && (nv(1)<=sz(2))
                ImR(i,j,:)=Im(nv(2),nv(1),:);
           end
       end
    end
end