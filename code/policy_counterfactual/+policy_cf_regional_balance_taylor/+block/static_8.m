function [y, T, residual, g1] = static_8(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6)=log(y(63)/params(69));
  residual(1)=(T(6))-(params(19)*T(6));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/params(69)/(y(63)/params(69))-params(19)*1/params(69)/(y(63)/params(69));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
