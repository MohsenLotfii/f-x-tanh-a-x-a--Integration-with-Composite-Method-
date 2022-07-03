%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
%---- Numerical Integral Of The Equation:f(x)=tanh(r*(x-r)), -r<x<2r -----%
%%
clear 
clc
%% Simpson:
% N_point = [20 30 40 50 60];
% loog_er = [-3.2456 -3.3098 -3.6636 -3.8944 -4.0770];
% plot(N_point,loog_er,'-m*', 'linewidth' , 2);
% xlabel('N')
% ylabel('Log Error')
% title('Simpson Error')
% grid on

%% Trapezoid :
N_point = [20 30 40 50 60];
loog_er = [-5.6577 -9.3122 -20.9637 -16.6146 -20.5320];
plot(N_point,loog_er,'-m*', 'linewidth' , 2);
xlabel('N')
ylabel('Log Error')
title('Trapezoid Error')
grid on
