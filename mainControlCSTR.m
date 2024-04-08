clc
clear all
close all

load('models.mat')

%Inicializar modelo do CSTR
x0model =[8.5636  311.1706]; %Começar no estacionario
k0 = 9703*3600;
deltaE = 11843;
R =1.987;
caf = 10;
Tf = 298;
deltaH = 5960;
rhocp = 500;
UAoV = 150;
tsim = 20;
fov0 = [0.9 1];
Tc0 = [298 305];
Ts = 0.1;

for i = 1: 2
    fov = fov0(i);
    Tc = Tc0(i);
    sim('CSTR_MalhaAberta')
    if i == 1
        yid = y;
        uid = u(:, i);
    else
        uid = horzcat(uid,u(:, i));
        yid = horzcat(yid,y);
    end
end


