%%
clear;
close;
clc;

N = 10000;
X = rand(1,N);

% Uniform r.v [0,1] all graph
subplot(3,2,1);
plot(X);
grid on;
grid minor;
str1 = strcat( 'Normal Variable in $[0,1]$, N = ',num2str(N) );
title(str1,'Interpreter','latex','FontSize',14);
xlabel('$n$','Interpreter','latex','Color','black','FontSize',12);
ylabel('Amplitud','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

% Uniform r.v [0,1] first 1000
subplot(3,2,2);
plot(X(1:1000));
grid on;
grid minor;
str2 = strcat( 'First 1000 samples of normal r.v in $[0,1]$, N = ',num2str(N) );
title(str2,'Interpreter','latex','FontSize',14);
xlabel('$n$','Interpreter','latex','Color','black','FontSize',12);
ylabel('Amplitud','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

% Histogram
subplot(3,2,3);
M = 20;                         % Number of cells
h = histogram(X,M);
NN = h.Values;                  % Values Ni
lim = h.BinLimits;              % BinEdges
width = h.BinWidth;
temp = h.BinEdges;
x = temp(1:end-1) + width/2;
grid on;
grid minor;
title('Histogram','Interpreter','latex','FontSize',14);
xlabel('Cells','Interpreter','latex','Color','black','FontSize',12);
ylabel('Number of values in cells','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

% Frequency ratio
subplot(3,2,4);
freq_ratio = NN./N;
bar(x,freq_ratio,1);
grid on;
grid minor;
title('Estimation of probability for cells','Interpreter','latex','FontSize',14);
xlabel('Cells','Interpreter','latex','Color','black','FontSize',12);
ylabel('Frequency ratio','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

% Estimation of PDF
subplot(3,2,5);
pdf = freq_ratio/width;
bar(x,pdf,1);
grid on;
grid minor;
title('Estimation of PDF','Interpreter','latex','FontSize',14);
xlabel('Cells','Interpreter','latex','Color','black','FontSize',12);
ylabel('PDF','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

% Estimation of distribution
subplot(3,2,6);
d = cumsum(pdf)*0.1;
bar(x,d,1);
grid on;
grid minor;
title('Estimation of PDF','Interpreter','latex','FontSize',14);
xlabel('Cells','Interpreter','latex','Color','black','FontSize',12);
ylabel('PDF','Interpreter','latex','Color','black','FontSize',12);
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);