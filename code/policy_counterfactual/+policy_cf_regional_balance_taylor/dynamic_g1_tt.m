function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = policy_cf_regional_balance_taylor.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 72
    T = [T; NaN(72 - size(T, 1), 1)];
end
T(59) = (-(T(1)*(-y(83))/(y(7)*y(7))*2*(y(83)/y(7)-1)));
T(60) = (-(T(1)*2*(y(83)/y(7)-1)*1/y(7)));
T(61) = (-y(22))/(y(11)*y(11))/params(48);
T(62) = getPowerDeriv(T(41),params(27),1);
T(63) = getPowerDeriv(T(43),1-params(24),1);
T(64) = y(22)*(-y(23))/(y(92)*y(92));
T(65) = 1/y(11)/params(48);
T(66) = (-(T(1)*(-y(115))/(y(39)*y(39))*2*(y(115)/y(39)-1)));
T(67) = (-(T(1)*2*(y(115)/y(39)-1)*1/y(39)));
T(68) = (-y(54))/(y(43)*y(43))/params(49);
T(69) = y(54)*(-y(55))/(y(124)*y(124));
T(70) = 1/y(43)/params(49);
T(71) = getPowerDeriv(T(10),T(11),1);
T(72) = getPowerDeriv(T(14),T(11),1);
end
