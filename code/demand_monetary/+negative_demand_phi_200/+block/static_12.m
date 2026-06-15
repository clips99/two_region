function [y, T, residual, g1] = static_12(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9))-(params(1)*(y(14)+(1-params(7))*y(9)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-params(1));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
