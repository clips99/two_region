function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = policy_cf_regional_balance_taylor.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 61
    T = [T; NaN(61 - size(T, 1), 1)];
end
T(42) = (-y(22))/(y(11)*y(11))/params(48);
T(43) = getPowerDeriv(T(38),params(27),1);
T(44) = getPowerDeriv(T(40),1-params(24),1);
T(45) = y(22)*(-y(23))/(y(16)*y(16));
T(46) = getPowerDeriv(y(17),params(13)-1,1);
T(47) = getPowerDeriv(y(17),params(13),1);
T(48) = 1/y(11)/params(48);
T(49) = 1/params(66)/(y(30)/params(66));
T(50) = 1/params(68)/(y(31)/params(68));
T(51) = 1/params(76)/(y(32)/params(76));
T(52) = (-y(54))/(y(43)*y(43))/params(49);
T(53) = y(54)*(-y(55))/(y(48)*y(48));
T(54) = getPowerDeriv(y(49),params(13)-1,1);
T(55) = getPowerDeriv(y(49),params(13),1);
T(56) = 1/y(43)/params(49);
T(57) = 1/params(67)/(y(62)/params(67));
T(58) = 1/params(69)/(y(63)/params(69));
T(59) = 1/params(77)/(y(64)/params(77));
T(60) = getPowerDeriv(T(3),T(4),1);
T(61) = getPowerDeriv(T(7),T(4),1);
end
