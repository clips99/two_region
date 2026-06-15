function [y, T, residual, g1] = static_19(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(58))-(params(21)*y(58)+(1-params(21))*y(56));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(21);
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
