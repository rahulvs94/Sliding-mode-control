%%%%%%%%%%%%%%%%%%%%%%%%%
% To eliminate chattering modify the control law to
% u(x) = -4 sgn(sigma(x)/epsilon)
% where epsilon is a small positive scalar. 
% Repeat the closed-loop simulations of x1(t), x2(t) and u(t).
%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc;

% initial conditions
ic = [1; 0];
 
epsilon = 0.1;
 
% numerical integration using ODE23
% [t,x1] = ode23(@(t,x)[x(2); -9.81*cos(x(1))-40*...
%     satur((x(1)+x(2)),epsilon)],[-5 5],ic);
% numerical integration using ODE45
[t,x2] = ode45(@(t,x)[x(2); -9.81*cos(x(1))-40*...
    satur((x(1)+x(2)),epsilon)],[-5 5],ic);
 
% phase plane trajectories
% figure(1)
% plot(x1(:,1),x1(:,2),'b--o');
figure(2)
plot(x2(:,1),x2(:,2),'r--o');
