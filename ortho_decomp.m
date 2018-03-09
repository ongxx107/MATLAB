function [c, v_perp] = ortho_decomp(U, v)
    U_transpose = U.';
    c = U_transpose * v;
    v_proj = U * c;
    v_perp = v-v_proj;
end