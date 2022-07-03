%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
%---- Numerical Integral Of The Equation:f(x)=tanh(r*(x-r)), -r<x<2r -----%
%%
clear
clc

a0 = -3;   %input('Enter the start point : ');
b0 = 6;    %input('Enter the end point : ');
N  = input('Enter number of N : ');
h  = (b0-a0)/(N-1);
x  = a0:h:b0;
f  = tanh(3*x-9); 
%%%-------------------------
ff = f;
for i = 2:N-1
    ff(i)=2*f(i);
end
sf = sum(ff);
int_trapezoid_1 = (h/2)*(sf)
%%%-------------------------
V=2*ones(1,N);
V(1)=1; 
V(N)=1;
int_trapezoid_2 =(h/2)*(V*f')
%%%-------------------------
syms t
integral_exact=double(int(tanh(3*t-9),a0,b0));

error_reletive_trapzoid = double(abs((integral_exact-int_trapezoid_2)))
log_er = log(error_reletive_trapzoid)

