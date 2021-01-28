%% CHAPTER 2: RANDOM VARIABLE                                                                                       
%% Section 2.4.1: Density Function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%% MATLAB PROGRAM: PDF.m
%% This program generates histogram, probability for cells
%% and density function  for uniform random variable in [0,1]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%% Book: Random Variables and Processes Primer with MATLAB
%%
%% Author: Gordana Jovanovic Dolecek
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Generation of uniform random variable in [0,1]
N=10000; % Number of values
X=rand(1,N);
plot(X)
xlabel('n')
ylabel('Amplitude')
title('UNIFORM RANDOM VARIABLE in [0,1], N=10000')
figure
plot(X(1:1000))
title('UNIFORM RANDOM VARIABLE in [0,1], N=10000')
ylabel('Amplitude')
xlabel('n')

% HISTOGRAM
NN=10; % Number of cells

H=hist(X,NN)
figure
hist(X,10),grid
xlabel('cells')
ylabel('Number of values in cells')
title('HISTOGRAM')

% PROBABILITIES OF VALUES IN CELLS
figure
bar(0.05:.1:.95,H/N,1),grid
xlabel('cells')
ylabel('Frequency ratio')
title('ESTIMATION OF PROBABILITIES FOR CELLS')
figure

%ESTIMATION OF PDF
bar(0.05:.1:.95,H/(10000*.1),1),grid
ylabel('PDF')
xlabel('cells')
title('ESTIMATION OF PDF')
