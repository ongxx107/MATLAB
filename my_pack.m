function beta = my_pack(M, t)
    v = zeros(6,1);
    v(1) = M(1,1);
    v(2) = M(1,2);
    v(3) = M(2,1);
    v(4) = M(2,2);
    v(5) = t(1);
    v(6) = t(2);

    beta = v;


end