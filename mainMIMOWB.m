%Wood and Berry
clc
clear
close all

G11 = tf(12.8,[16.7 1], 'iodelay', 1);
G12 = tf(-18.9,[21 1],'iodelay', 3);
G21 = tf(6.6,[10.9 1],'iodelay', 7);
G22 = tf(-19.4,[14.4 1],'iodelay', 3);

G = [G11 G12;G21 G22]; %Matriz RGA

