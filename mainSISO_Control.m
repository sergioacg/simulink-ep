% Controle SISO

clc
clear all
close all

planta = tf(12.8,[16.7 1]);
sensor = tf(1, [0.1 1]);

process = series(planta, sensor); %planta * sensor

process.iodelay = 5;
