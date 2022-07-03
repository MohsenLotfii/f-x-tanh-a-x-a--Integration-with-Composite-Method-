%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
%---- Numerical Integral Of The Equation:f(x)=tanh(r*(x-r)), -r<x<2r -----%
%%
clear
clc

a = -3;
b = 6;
tol = 0.0170;
N = 30;
m = 3;
n = m ^ 2;

APP = 0;
i = 1;
TOL(i) = 10 * tol;
A(i) = a;
H(i) = (b-a)/2;
FA(i) = feval('tanh',m*a - n);
FC(i) = feval('tanh',m*(a + H(i)) - n);
FB(i) = feval('tanh',m*b - n);
S(i) = H(i)* ( FA(i) + 4*FC(i) + FB(i) )/3;
L(i) = 1;
t = 0;
while(i > 0)
    t = t +1;
    points_pos(2*t-1) = A(i) + H(i)/2;
    points_pos(2*t) = A(i) + 3*H(i)/2;
    FD = feval('tanh',m*(A(i) + H(i)/2) - n);
    FE = feval('tanh',m*(A(i) + 3*H(i)/2) - n);
    S1 = H(i)* ( FA(i) + 4*FD + FC(i) )/6;
    S2 = H(i)* ( FB(i) + 4*FE + FC(i) )/6;
    V = [A(i) FA(i) FC(i) FB(i) H(i) TOL(i) S(i) L(i)];
    i = i-1;
    if abs(S1 + S2 - V(7)) < V(6)
        APP = APP + S1 + S2 ;
    else 
        if V(8)>= N
            error('LEVEL EXCEEDED')
        else 
            i = i + 1;
            A(i) = V(1) + V(5);
            FA(i) = V(3);
            FC(i) = FE ;
            FB(i) = V(4);
            H(i) = V(5)/2;
            TOL(i) = V(6)/2;
            S(i) = S2;
            L(i) = V(8) +1;
            
            i = i + 1;
            A(i) = V(1);
           FA(i) = V(2);
           FC(i) = FD ;
           FB(i) = V(3);
            H(i) = H(i-1);
            TOL(i) = TOL(i-1);
            S(i) = S1;
            L(i) = L(i-1);
        end
            
    end
end
APP
points_pos = sort([points_pos a b (a+b)/2]);
point_num = length(points_pos)
plot(points_pos,0,'*')
axis([-4 7 -1 1])
xlabel('X Direction')
ylabel('Y Direction')
title('POint Number Of Addaptive Methode')
