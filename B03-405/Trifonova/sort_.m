function x = sort_ (x)
lx = length(x);
for i = 1 : lx - 1
    for j = 1 : lx - i 
        if x(j) > x (j+1) 
            a = x(j);
            x(j) = x(j + 1);
            x(j + 1) = a;
        end 
    end 
end 
end