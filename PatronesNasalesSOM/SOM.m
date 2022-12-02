load Patrones.mat


% SOM parameters
dimensions   = [20 20];
coverSteps   = 100;
initNeighbor = 4;
topologyFcn  = 'hextop';
distanceFcn  = 'linkdist';

% define net
net = selforgmap(dimensions,coverSteps,initNeighbor,topologyFcn,distanceFcn);

% train
[net,Y] = train(net,P);

% plot input data and SOM weight positions
plotsompos(net,P);
grid on

% plot SOM neighbor distances
plotsomnd(net)

% plot for each SOM neuron the number of input vectors that it classifies
figure
plotsomhits(net,P)