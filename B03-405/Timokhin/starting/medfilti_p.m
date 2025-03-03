function y = medfilti_p(x,p)
lx=length(x);
for i=1:fix(p/2)
    y(i)=x(i);
    y(lx+1-i)=x(lx+1-i)
end
for i=fix(p/2)+1:lx-fix(p/2)
    x1=sort_(x(i-fix(p/2):i+fix(p/2)))
    y(i)=x1(fix(p/2));
end
end