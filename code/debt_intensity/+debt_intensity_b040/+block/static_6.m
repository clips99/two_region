function [y, T, residual, g1] = static_6(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4)=log(y(31)/params(67));
  residual(1)=(T(4))-(T(4)*params(19));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/params(67)/(y(31)/params(67))-params(19)*1/params(67)/(y(31)/params(67));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
