function y = comb_sort(array)
            
len = length(array);
k = len;
isSwapped = true;
shrink = 1.4; 
while ((k > 1) || (isSwapped == true))    
    k = max(floor(k / shrink),1);   
    
    i = 1;
    isSwapped = false;
    while ((i + k) <= len)
        if (array(i) > array(i + k))
            array = swap(array,i,i + k);
            isSwapped = true;
        end
        i = i + 1;
    end
end
y = array;
end

function array = swap(array,i,j)
value = array(i);
array(i) = array(j);
array(j) = value;
% Note: In practice, array should be passed by reference
end