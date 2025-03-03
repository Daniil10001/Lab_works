function IM1 = brightness (IM,brightnessfactor)
sz = size(IM);
for i =1 : sz(2)
        current_br = (brightnessfactor/100)*(i/sz(2));
    for j = 1 : sz(1) 
        for k = 1 : 3 
        IM1(j,i,k)= min(1, max(0,IM(j, i, k)*(1+current_br))) ;
    end 
end 
end 

end