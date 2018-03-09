function [Q, R] = my_qr(A)
    [m, n] = size(A);

    Q = zeros(m, n);
    Q(:,1) = A(:,1) / norm(A(:,1));
    for i=2:n
      [c_new, Q_result]=ortho_decomp(Q(:,1:i-1), A(:,i));
       Q(:,i) = Q_result / norm(Q_result);
    end

    R = Q'*A;
    
    for i=1:n   
        for j=1:n
         if  abs(R(i,j)) < 10^(-12) 
            R(i,j)=0;
         end
        end
     end
    
    

end
