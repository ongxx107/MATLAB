

function B = interchange(A, i, j)
    [m,n] = size(A);
    if ( i <=m && 1<= i && j<=n && 1<=j)
        temp = A(i,:);
        A(i,:) = A(j,:);
        A(j,:) = temp;
        B=A; 
    else
        disp('Index out of range');
    end
end


    
  
        
    