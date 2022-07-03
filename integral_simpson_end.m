%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
%---- Numerical Integral Of The Equation:f(x)=tanh(r*(x-r)), -r<x<2r -----%
%%
clear
clc

a=-3;
b=6;
f=@(x) tanh(3.*x-9);
N_node = input('input Num of Node : '); % N=20,30,40,50,60
N_element = N_node - 1;
h=(b-a)/N_element;
x=a:h:b;
ff = f(x);
ff_s_e=f(a)+f(b);
f2=0;
f1=0;
for i=2:(N_node -1)
   if mod(i,2)==0
       f2=f2 + 4*ff(i);
    else
       f1=f1 + 2*ff(i);
   end
end
int1 = (h/3)*(ff_s_e + f1 + f2)
%%%------------------------------------------------------------------------
syms t
integral_exact = double(int(tanh(3*t-9),a,b))

error = double(abs((integral_exact - int1)/integral_exact))
log_er = log(error)

