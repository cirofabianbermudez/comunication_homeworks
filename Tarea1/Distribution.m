%% CHAPTER 2: RANDOM VARIABLE
%% Section 2.4.2. Distribution Function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% MATLAB PROGRAM: Distribution.m
%% This program estimates the distribution of uniform r.v. in [0,1]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%% Book: Random Variables and Processes Primer with MATLAB
%%
%% Author: Gordana Jovanovic Dolecek
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Generation of uniform random variable in [0,1]
N=10000; % Number of values
X=randn(1,N);

% PDF
NN=10; % Number of cells

H=hist(X,NN);
delta=1/NN;
PDF=H/(N*delta);

% Distribution
D=cumsum(PDF)*.1;
x=[.05:.1:1];
bar(x,D,1)
grid
axis([-.5,1.5,0,1.2])
hold on, plot([-.5 0],[0,0])
hold on,bar([1:.1:1.5],[1,1,1,1,1,1],1)
xlabel('cells')
ylabel('Estimated distribution')
title('Number of cells:10')

hold off
NN=50; %Number of cells
H=hist(X,NN);
delta=1/NN;
PDF=H/(N*delta);
D=cumsum(PDF)*delta;
x=[delta/2:delta:1];
figure
bar(x,D,1)
grid
axis([-.5,1.5,0,1.2])
hold on, plot([-.5 0],[0,0])
hold on,bar([1:.1:1.5],[1,1,1,1,1,1],1)
xlabel('cells')
ylabel('Estimated distribution')
title('Number of cells:50')