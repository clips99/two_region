function [y, T, residual, g1] = static_15(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(8)=y(17)^params(13);
  T(9)=params(12)*T(8);
  residual(1)=(y(21))-((1-params(12))*y(18)^(-params(13))+y(21)*T(9));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(9);
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
