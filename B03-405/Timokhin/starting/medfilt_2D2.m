function [Z1] = medfilt_2D2(Z,p)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
 s=size(Z);
 Z1=Z;
for i=1:fix(p/2)
    Z1(i,:)=medfilti_p(Z1(i,:),p);
    Z1(:,i)=medfilti_p(Z1(:,i),p);

    Z1(s(1)+1-i,:)=medfilti_p(Z1(s(1)+1-i,:),p);
    Z1(:,s(2)+1-i)=medfilti_p(Z1(:,s(2)+1-i),p);
end
for i=fix(p/2)+1:s(1)-fix(p/2)
    for j=fix(p/2)+1:s(2)-fix(p/2)
        Z(i-fix(p/2):i+fix(p/2),j-fix(p/2):j+fix(p/2));
        x1=reshape(Z(i-fix(p/2):i+fix(p/2),j-fix(p/2):j+fix(p/2)),1,[]);
        x1=sort_(x1);
        Z1(i,j)=x1(fix(p*p/2));
    end
end
end