function [ImR] = imresize(Im,k)
sz=size(Im);
   for i=1:floor(sz(1)*k)
       for j=1:floor(sz(2)*k)
           ImR(i,j,:)=Im(floor((i+k-1)/k),floor((j+k-1)/k),:);
       end
   end
end

