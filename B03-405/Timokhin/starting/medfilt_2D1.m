function [Z1] = medfilt_2D1(Z,p)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    s=size(Z)
    for i=1:(s(1))
        Z1(i,:)=medfilti_p(Z(i,:),p);
    end
    Z1
     for j=1:(s(2))
        Z1(:,j)=medfilti_p(Z1(:,j).',p).';
    end
end