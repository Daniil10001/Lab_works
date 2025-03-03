function [ImR] = uncolor(Im)
sz=size(Im);
ImR=Im;
   for i=1:sz(1)
       for j=1:sz(2)
           ImR(i,j,:)=sum(Im(i,j,:))/3;%/3*[1,1,1];
       end
   end
end