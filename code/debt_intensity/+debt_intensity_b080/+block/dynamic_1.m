function [y, T, residual, g1] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(105)))-(params(17)*log(y(29)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(105);
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
