function B = scaling(A, i, s)
    [m,n] = size(A);
    if ( i <=m && 1<= i)
        A(i,:) = s*A(i,:);
        B= A;
    else
        disp('Index our of range');
    end
end