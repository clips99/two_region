function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 37
    T = [T; NaN(37 - size(T, 1), 1)];
end
T(1) = y(2)^(-params(2));
T(2) = y(34)^(-params(2));
T(3) = params(14)*y(69)^(1-params(16))+(1-params(14))*y(70)^(1-params(16));
T(4) = 1/(1-params(16));
T(5) = params(14)*y(69)^(-params(16));
T(6) = (1-params(14))*y(70)^(-params(16));
T(7) = params(15)*y(72)^(1-params(16))+(1-params(15))*y(71)^(1-params(16));
T(8) = params(15)*y(72)^(-params(16));
T(9) = (1-params(15))*y(71)^(-params(16));
T(10) = y(6)^(1-params(10));
T(11) = y(28)^params(11);
T(12) = y(29)*T(11);
T(13) = y(8)^params(10);
T(14) = T(12)*T(13);
T(15) = y(17)^(params(13)-1);
T(16) = y(17)^params(13);
T(17) = params(13)/(params(13)-1);
T(18) = y(38)^(1-params(10));
T(19) = y(60)^params(11);
T(20) = y(61)*T(19);
T(21) = y(40)^params(10);
T(22) = T(20)*T(21);
T(23) = y(49)^(params(13)-1);
T(24) = y(49)^params(13);
T(25) = y(22)/y(11)/params(48)-1;
T(26) = (y(27)/params(58))^params(22);
T(27) = exp((-params(31))*(y(26)/params(72)-1)+params(32)*(y(25)/params(74)-1)-T(25)*params(33)+params(34)*(y(32)/params(76)-1));
T(28) = y(54)/y(43)/params(49)-1;
T(29) = (y(59)/params(59))^params(22);
T(30) = exp((-params(31))*(y(58)/params(73)-1)+params(32)*(y(57)/params(75)-1)-params(33)*T(28)+params(34)*(y(64)/params(77)-1));
T(31) = y(16)^params(37);
T(32) = y(48)^params(38);
T(33) = (y(75)/params(39))^params(24);
T(34) = (y(74)/params(40))^params(26);
T(35) = (y(73)/params(41))^params(27);
T(36) = T(34)*T(35);
T(37) = T(36)^(1-params(24));
end
