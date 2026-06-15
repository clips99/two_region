function [y, T] = dynamic_9(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(134)=params(21)*y(58)+(1-params(21))*y(132);
  y(133)=y(119)*(1-params(28))*params(27)+y(140)-(y(55)/y(124)-1)*y(54)-y(138)-y(139)*params(6);
  y(102)=params(21)*y(26)+y(100)*(1-params(21));
  y(101)=y(87)*(1-params(28))*params(27)+y(108)-(y(23)/y(92)-1)*y(22)-y(106)-y(107)*params(5);
end
