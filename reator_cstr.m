function dxdt = reator_cstr(t, x, u,k0,deltaE,R,caf,Tf,deltaH,rhocp, UAoV)

% Definir saídas
CA = x(1);
T  = x(2);
%Definir as entradas
fov = u(1);
Tc  = u(2);

%Arrhenius
r = k0*exp(-deltaE/(R*T))*CA;

%Definir es equações diferenciais
dCAdt = fov*(caf-CA) - r;
dTdt  = fov*(Tf-T)+deltaH*r/rhocp-...
    UAoV/rhocp*(T-Tc);

dxdt = [dCAdt; dTdt];
