function [M, t] = affine_fit(P, P_tilde)
    [j,k]=size(P);
    %Ai = zeros(2*k,6);
    %b = zeros(2*k,1);
    A = [];
    for i=1:k
       Ai = design_matrix(P(:,i));
       A = [A; Ai];
        
    end
    b= P_tilde(:);
    
    x = least_squares(A,b);
    [M,t] = my_unpack(x);



end