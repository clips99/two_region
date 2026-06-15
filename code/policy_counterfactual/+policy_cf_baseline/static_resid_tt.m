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
T(25) = y(22)/y(11)/params(56)-1;
T(26) = (y(27)/params(66))^params(22);
T(27) = exp(params(33)*(y(32)/params(84)-1)+(-params(30))*(y(24)/params(78)-1)-params(36)*(log(1+exp(params(38)*(y(22)/params(41)-params(37))))/params(38)-params(43)));
T(28) = y(54)/y(43)/params(57)-1;
T(29) = (y(59)/params(67))^params(22);
T(30) = exp(params(33)*(y(64)/params(85)-1)+(-params(30))*(y(56)/params(79)-1)-params(36)*(log(1+exp(params(38)*(y(54)/params(42)-params(37))))/params(38)-params(44)));
T(31) = y(16)^params(45);
T(32) = y(48)^params(46);
T(33) = (y(75)/params(47))^params(24);
T(34) = (y(74)/params(48))^params(25);
T(35) = (y(73)/params(49))^params(26);
T(36) = T(34)*T(35);
T(37) = T(36)^(1-params(24));
end
