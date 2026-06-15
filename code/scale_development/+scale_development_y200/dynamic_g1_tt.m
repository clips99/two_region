function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = scale_development_y200.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 67
    T = [T; NaN(67 - size(T, 1), 1)];
end
T(55) = (-(T(1)*(-y(83))/(y(7)*y(7))*2*(y(83)/y(7)-1)));
T(56) = (-(T(1)*2*(y(83)/y(7)-1)*1/y(7)));
T(57) = (-y(22))/(y(11)*y(11))/params(47);
T(58) = y(22)*(-y(23))/(y(92)*y(92));
T(59) = 1/y(11)/params(47);
T(60) = (-(T(1)*(-y(115))/(y(39)*y(39))*2*(y(115)/y(39)-1)));
T(61) = (-(T(1)*2*(y(115)/y(39)-1)*1/y(39)));
T(62) = (-y(54))/(y(43)*y(43))/params(48);
T(63) = y(54)*(-y(55))/(y(124)*y(124));
T(64) = 1/y(43)/params(48);
T(65) = getPowerDeriv(T(10),T(11),1);
T(66) = getPowerDeriv(T(14),T(11),1);
T(67) = getPowerDeriv(T(39),1-params(24),1);
end
