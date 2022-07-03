
%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
%------ Numerical Diff. Of The Equation:f(x)=tanh(r*(x-r)), -2r<x<2r -----%
%%
clear
clc

a=3;
delx = 0.01;
x = -3:delx:6;

y = tanh (a*(x-a));
fig = figure (1);
set(fig,'color','white')
plot(x,y,'linewidth',1)
xlabel('x')
ylabel('y')
grid on
hold on

integraly = log(abs(cosh(x)));
fig = figure (1);
set(fig,'color','white')
plot(x,integraly,'linewidth',1)
xlabel('x')
ylabel('y')
grid on
hold on

yderivest = (y(2:end)-y(1:end-1))./delx;
hold on
legend ('Analytical Integration','Numerical Integration')