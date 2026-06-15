function [y, T, residual, g1] = static_12(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  residual(1)=(1)-(y(17)/y(16));
  residual(2)=(1)-(y(49)/y(16));
  residual(3)=(1)-(y(17)/y(48));
  residual(4)=(1)-(y(49)/y(48));
if nargout > 3
    g1_v = NaN(8, 1);
g1_v(1)=(-(1/y(16)));
g1_v(2)=(-(1/y(48)));
g1_v(3)=(-((-y(17))/(y(16)*y(16))));
g1_v(4)=(-((-y(49))/(y(16)*y(16))));
g1_v(5)=(-((-y(17))/(y(48)*y(48))));
g1_v(6)=(-((-y(49))/(y(48)*y(48))));
g1_v(7)=(-(1/y(16)));
g1_v(8)=(-(1/y(48)));
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 4);
end
end
