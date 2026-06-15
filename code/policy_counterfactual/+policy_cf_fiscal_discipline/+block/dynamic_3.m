function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(106)/params(74)))-(params(18)*log(y(30)/params(74)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/params(74)/(y(106)/params(74));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
