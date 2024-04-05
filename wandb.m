%Wood and Berry
clc
clear
close all

G11 = tf(12.8,[16.7 1]);
G12 = tf(-18.9,[21 1]);
G21 = tf(6.6,[10.9 1]);
G22 = tf(-19.4,[14.4 1]);

G = [G11 G12;G21 G22];
theta = [1 3;7 3]; %Atrasos
G.iodelay = theta

%Conversão de FT para SS
sys = ss(G);
A = sys.A;
B = sys.B;
C = sys.C;
D = sys.D;

%Passar de Continuo para Discreto
Ts = 0.5;  %Periodo de amostragem
Gz = c2d(G, Ts)




