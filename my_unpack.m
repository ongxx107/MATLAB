function [M, t] = my_unpack(beta)
    M = zeros(2,2);
    t = zeros(2,1);
    
    M(1,1) = beta(1);
    M(1,2) = beta(2);
    M(2,1) = beta(3);
    M(2,2) = beta(4);
    t(1) = beta(5);
    t(2) = beta(6);
    
end