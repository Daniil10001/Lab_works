function y = shum(x,p)
l = length(x);
for i=1:l
   if rand() > p
       y(i) = x(i);
   else 
       y(i) =  4*rand() -2;
   end
end
end