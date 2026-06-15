function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(107)/params(66)))-(params(18)*log(y(30)/params(66)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/params(66)/(y(107)/params(66));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
