%this function to add elements of a vector

function [vec_sum] = addVector(v)
    len = length(v);
    sum = 0;
    
    for i=1:len
        if(mod(v(i),2)== 0)
          sum = sum +v(i)
       
        end
    end
    
    vec_sum = sum;
end