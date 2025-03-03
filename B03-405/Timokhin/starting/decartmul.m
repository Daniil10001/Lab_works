function [f] = decartmul(x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
lx=length(x);
ly=length(y);
for i=1:lx
    for j=1:ly
        f(j,:)=x+y(j);
    end
end
end

