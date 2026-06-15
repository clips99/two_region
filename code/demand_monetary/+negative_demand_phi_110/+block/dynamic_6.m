function [y, T, residual, g1] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(140)/params(69)))-(params(19)*log(y(63)/params(69)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/params(69)/(y(140)/params(69));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
