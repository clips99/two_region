
clear;clc

addpath('C:/dynare/7.0/matlab')
dynare TANK_two_region_baseline.mod noclearall

% delete files
rmdir('+TANK_two_region_baseline','s')
% rmdir('TANK_two_region_baseline','s')
delete *.log
delete *_dynamic.m
delete *_static.m
delete *_variables.m
delete *_pindx.mat
delete *params.mat
delete *_set_auxiliary_variables
delete *.m~
delete *.mod~
delete *.asv
delete *_results.mat
% delete ParaSet.mat
% delete TANK_two_region_baseline.m


h = 1:40;

figure('Color', 'w', 'Position', [80 80 1100 880]);

subplot(3,3,1);
plot(h, oo_.irfs.ds1_emp, 'LineWidth', 1.5); hold on;
plot(h, oo_.irfs.ds2_emp, 'LineWidth', 1.5);
title('Debt service pressure'); grid on;
legend('low debt', 'high debt', 'Location', 'best');

subplot(3,3,2);
plot(h, oo_.irfs.fs1_emp, 'LineWidth', 1.5); hold on;
plot(h, oo_.irfs.fs2_emp, 'LineWidth', 1.5);
title('Fiscal space'); grid on;

subplot(3,3,3);
plot(h, oo_.irfs.ig1_emp, 'LineWidth', 1.5); hold on;
plot(h, oo_.irfs.ig2_emp, 'LineWidth', 1.5);
title('Public investment'); grid on;

subplot(3,3,4);
plot(h, oo_.irfs.kg1_emp, 'LineWidth', 1.5); hold on;
plot(h, oo_.irfs.kg2_emp, 'LineWidth', 1.5);
title('Public capital'); grid on;

subplot(3,3,5);
plot(h, oo_.irfs.y1_emp, 'LineWidth', 1.5); hold on;
plot(h, oo_.irfs.y2_emp, 'LineWidth', 1.5);
title('Final output'); grid on;

subplot(3,3,6);
plot(h, oo_.irfs.inv1_emp, 'LineWidth', 1.5); hold on;
plot(h, oo_.irfs.inv2_emp, 'LineWidth', 1.5);
title('Private investment'); grid on;

subplot(3,3,7);
plot(h, oo_.irfs.mp_emp, 'LineWidth', 1.5);
title('Nominal interest rate'); grid on;

subplot(3,3,8);
plot(h, oo_.irfs.c1_emp, 'LineWidth', 1.5); hold on;
plot(h, oo_.irfs.c2_emp, 'LineWidth', 1.5);
title('Consumption'); grid on;

subplot(3,3,9);
plot(h, oo_.irfs.pinf1_emp, 'LineWidth', 1.5); hold on;
plot(h, oo_.irfs.pinf2_emp, 'LineWidth', 1.5);
title('Inflation'); grid on;
