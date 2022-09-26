function [probSimulacao] = prob(p, n, N, k)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
lancamentos = rand(n, N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;
end