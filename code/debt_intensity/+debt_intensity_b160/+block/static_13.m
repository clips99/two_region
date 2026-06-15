function [y, T, residual, g1] = static_13(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7)=y(17)^(params(13)-1);
  residual(1)=(1)-((1-params(12))*y(18)^(1-params(13))+params(12)*T(7));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-((1-params(12))*getPowerDeriv(y(18),1-params(13),1)));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
