clc,clear
load Patrones.mat
load Target.mat
net = newff ([min(P')' max(P')'], [20  3],{ 'tansig' 'logsig'},'trainlm')%MEJOR CONFIGURACIÓN
net.trainParam.goal=1e-8;
net.trainParam.epochs=100;
net = train(net, P, t);
c=sim(net, P);
disp(c)


load PatronesDesconocidos.mat
%SIMULEMOS CON PATRONES DESCONOCIDOS PARA LA RED Y COMPROBAREMOS SU FUNCIONAMIENTO
SPD=sim(net, OtrosPatrones);

