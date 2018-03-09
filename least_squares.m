function x = least_squares(A, b)
    [m, n] = size(A);
    [Q, R] = my_qr(A);
    x= back_sub(R,Q'*b);
end