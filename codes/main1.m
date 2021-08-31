%% Main 1 estimacion por OLS
clc
clear all
%simulacion de procesos  
rng('default')
n       = 500;
beta    = [6 0.5 2.3]';
X       = rand(n,3);
sigma   = 0.2;
epsilon = sigma*randn(n,1);
y       = X*beta + epsilon;
X       =[ones(n,1), X];


%% Estimacion
[b] = OLS(X,y)

% Con constante 
[b R2] = OLS2(X,y)
[b R2] = OLS2(X,y,1)

% sin constante
[b R2] = OLS2(X,y,0)
[b R2] = OLS2(X,y,3)