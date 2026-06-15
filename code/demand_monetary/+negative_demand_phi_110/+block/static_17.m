function [y, T, residual, g1] = static_17(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(11)=y(49)^params(13);
  T(12)=params(12)*T(11);
  residual(1)=(y(53))-((1-params(12))*y(50)^(-params(13))+y(53)*T(12));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(12);
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
