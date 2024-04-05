clc
clear all
close all

%Inicializar modelo do CSTR
x0model =[5, 325];
k0 = 9703*3600;
deltaE = 11843;
R =1.987;
caf = 10;
Tf = 298;
deltaH = 5960;
rhocp = 500;
UAoV = 150;

tsim = 5;
for i=1:2
    if i == 2
        x0model = [5, 350];
        %x0model(2) = 350;
    end
    %Simular o modelo
    sim('Reator_CSTR')
    %Graficar
    figure(1)
    subplot(211)
    plot(t, y(:,1),'linewidth',2)
    hold on
    xlabel('Tempo [h]')
    ylabel('Concentração A')
    title('Reator CSTR')
    
    subplot(212)
    plot(t, y(:,2),'linewidth',2)
    hold on
    xlabel('Tempo [h]')
    ylabel('Temperatura do Reator [K]')
end
subplot(211)
legend('T0=325', 'T0=350')