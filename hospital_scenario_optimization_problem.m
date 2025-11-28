clear all
close all
clc

rng('default');
P(1,1:10)=exprnd(1,1,10);
P(1,11:20)=exprnd(0.5,1,10);
P(2,1:10)=exprnd(2,1,10);
P(2,11:20)=exprnd(2,1,10);
P(3,1:10)=exprnd(0.5,1,10);
P(3,11:20)=exprnd(1.5,1,10);

Pnew = [P(:,20),P(:,19),P(:,9),P(:,4),P(:,1),P(:,16),P(:,17),P(:,7),P(:,5),P(:,11),P(:,8),P(:,3),P(:,13),P(:,6),P(:,18),P(:,10),P(:,15),P(:,14),P(:,2),P(:,12)];
P1 = Pnew(1,:);
P2 = Pnew(2,:);
P3 = Pnew(3,:);

[M N]=size(P);

% Variables
C=optimvar('C',M,N,'Type','continuous','LowerBound',0); 
x=optimvar('x',N,N,'Type','integer','LowerBound',0,'UpperBound',1);

obj = sum(C(3,:));

% Assignment constraints
for i = 1:N
    Assignment1(i) = sum(x(i,:)) == 1;
    Assignment2(i) = sum(x(:,i)) == 1;
end

% % Assignment constraints
%     Assignment1 = sum(x,2) == 1;
%     Assignment2 = sum(x,1) == 1;

% Release Time Constraint

RelTime01 = C(1,1) >= (P(1,:))*x(1,:)';
RelTime02 = C(2,1) >= C(1,1) + (P(2,:))*x(2,:)';
RelTime03 = C(3,1) >= C(2,1) + (P(3,:))*x(3,:)';

for j=2:N
    RelTime1(j) = C(1,j) >= C(1,j-1) + (P(1,:))*x(j,:)';
    RelTime2(j) = C(2,j) >= C(1,j) + (P(2,:))*x(j,:)';
    RelTime3(j) = C(3,j) >= C(2,j) + (P(3,:))*x(j,:)';
end

for j=2:N
    Sequence(j,1) = C(1,j) >= C(2,j-1);
    Sequence(j,2) = C(2,j) >= C(3,j-1);
end

% Define Problem Structure 

SingleMachineProblem=optimproblem;
SingleMachineProblem.Objective=obj;
SingleMachineProblem.Constraints.Assignment1=Assignment1;
SingleMachineProblem.Constraints.Assignment2=Assignment2;
SingleMachineProblem.Constraints.RelTime1=RelTime1;
SingleMachineProblem.Constraints.RelTime2=RelTime2;
SingleMachineProblem.Constraints.RelTime3=RelTime3;
SingleMachineProblem.Constraints.RelTime01=RelTime01;
SingleMachineProblem.Constraints.RelTime02=RelTime02;
SingleMachineProblem.Constraints.RelTime03=RelTime03;
SingleMachineProblem.Constraints.Sequence=Sequence;

% Run the LP solver

[Jobs fval]=solve(SingleMachineProblem,'solver','intlinprog');

% Average Flow Time Calculation
out = sim("hospital_scenario_after_optimization_simulation.slx");

d1 = out.time_of_departure_from_batch.time;
d2 = out.time_of_departure_from_S3.time;

s = d2 - d1;

S_bar = mean(s) %this flow time is calculated before optimization;

