function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = scenario_06_weak_io.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 56
    T = [T; NaN(56 - size(T, 1), 1)];
end
T(38) = (-y(22))/(y(11)*y(11))/params(47);
T(39) = y(22)*(-y(23))/(y(16)*y(16));
T(40) = getPowerDeriv(y(17),params(13)-1,1);
T(41) = getPowerDeriv(y(17),params(13),1);
T(42) = 1/y(11)/params(47);
T(43) = 1/params(65)/(y(30)/params(65));
T(44) = 1/params(67)/(y(31)/params(67));
T(45) = 1/params(75)/(y(32)/params(75));
T(46) = (-y(54))/(y(43)*y(43))/params(48);
T(47) = y(54)*(-y(55))/(y(48)*y(48));
T(48) = getPowerDeriv(y(49),params(13)-1,1);
T(49) = getPowerDeriv(y(49),params(13),1);
T(50) = 1/y(43)/params(48);
T(51) = 1/params(66)/(y(62)/params(66));
T(52) = 1/params(68)/(y(63)/params(68));
T(53) = 1/params(76)/(y(64)/params(76));
T(54) = getPowerDeriv(T(3),T(4),1);
T(55) = getPowerDeriv(T(7),T(4),1);
T(56) = getPowerDeriv(T(36),1-params(24),1);
end
