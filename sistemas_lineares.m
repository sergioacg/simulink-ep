% Modelos por espaço de estados
clc %limpa a tela
clear %limpa o workspace
close all %Fecharia as figuras

%Sistema em equações de estado
A = [-2 0; 1 -3]
B = [0.5; 0]
C = [0 1]
D = 0

sim('linear_model')
plot(t, y, '-k', t, u, '-r')
xlabel('tempo')
ylabel('Saída')
title('Resposta')

%Transformar para FT
[num, den] = ss2tf(A, B, C, D)
G = tf(num, den)


