function y = sort_(x)
lx=length(x);
y=x;
for i=1:lx
    for j=i:lx
        if (y(i)>y(j))
            tmp=y(i);
            y(i)=y(j);
            y(j)=tmp;
        end
    end
end
end