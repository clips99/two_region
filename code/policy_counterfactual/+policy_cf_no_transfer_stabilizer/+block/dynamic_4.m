function [y, T, residual, g1] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(107)/params(67)))-(params(19)*log(y(31)/params(67)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/params(67)/(y(107)/params(67));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
