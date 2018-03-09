function B = my_rref(A)
    min = 10^-12;   
    i = 1;
    j = 1;
    [m, n] = size(A);
    while (i <= m) && (j <= n)
        
        [p,k] = max(abs(A(i:m,j)));
        k = k+i-1;
        if (p <= min)
            
            A(i:m,j) = 0;
            j = j + 1;
        else

            A([i k],j:n) = A([k i],j:n); 
            A(i, j:n) = A(i, j:n)/ A(i,j); 
            for x = [1:i-1 i+1:m]
                A(x,j:n) = A(x,j:n) - A(x,j)/A(i,j)*A(i,j:n); 
            end
            
            i = i + 1;
            j = j + 1;
        end
    end
    B=A;
    disp(B);
end