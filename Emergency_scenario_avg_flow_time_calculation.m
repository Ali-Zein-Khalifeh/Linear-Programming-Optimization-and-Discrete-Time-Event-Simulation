%% prb2 computing SA & SB
clear all
close all
clc

out=sim("emeregency_scenario_simulation.slx");
w1=out.average_wait_in_Q.data;
w2=out.average_wait_in_S1.data;
w3=out.average_wait_in_S2.data;
w4=out.average_wait_in_S3.data;
W = mean(w1(1:size(w4))) + mean(w2(1:size(w4))) + mean(w3(1:size(w4))) + mean(w4);
S_bar_A= W + (1 + 2 + 0.5);
S_bar_T= W + (0.5 + 2 + 1.5);

z_bar = ((1 + 2*0.5) + (2 + 2*2) + (0.5 + 1.5*2))/3;
S_bar= W + z_bar;