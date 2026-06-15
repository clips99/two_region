function [y, T, residual, g1] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3)=log(y(30)/params(74));
  residual(1)=(T(3))-(T(3)*params(18));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/params(74)/(y(30)/params(74))-params(18)*1/params(74)/(y(30)/params(74));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
