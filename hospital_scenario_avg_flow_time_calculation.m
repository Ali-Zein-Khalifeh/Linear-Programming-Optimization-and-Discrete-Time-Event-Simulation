clear all
close all
clc

out = sim("hospital_scenario_before_optimization_simulation.slx");

d1 = out.time_of_departure_from_batch.time;
d2 = out.time_of_departure_from_S3.time;

s = d2 - d1;

S_bar = mean(s) %this flow time is calculated before optimization;
