**Linear Programming Optimization & Discrete-Time Event Simulation**

This project applies linear programming, queueing theory, and discrete-time event simulation to analyze and optimize a multi-stage service system.
Using MATLAB, the model simulates patient/job flows across several stations, evaluates system performance, and determines optimal resource allocation to minimize delays and cost.


**Project Objectives**

Build a mathematical model of a multi-stage service process

Use linear programming to optimize resource usage

Apply discrete-time event simulation to validate analytical results

Estimate:

Waiting times

Queue lengths

Utilization

Throughput

Identify system bottlenecks

Find the minimum-cost resource configuration meeting performance requirements

**System Description**

The process includes consecutive stages (as described in the report):

Registration

Pre-operative preparation

Surgery

Recovery

Final check

Each stage is modeled as an M/M/s queue with exponential arrival and service rates.
Parameters and diagrams are taken from the simulation report (see PDF).

**Methods Used**

_Linear Programming_
Used to compute the best resource assignment (nurses, doctors, OR number) under constraints:

Maximum waiting time

Minimum throughput

Budget limits


_Discrete-Time Event Simulation_
Simulates thousands of random arrivals and services to validate the theoretical model.
Monte-Carlo simulation confirms the LP results and system behavior.

_Queueing Theory_
Metrics such as service rate, utilization, and expected delay are computed from known M/M/s formulas (pages 3–6 of the report).


_Results Summary_
According to the report analysis:

Increasing OR capacity significantly reduces overall delay

Recovery becomes the next bottleneck once OR is optimized

The optimal configuration balances resource cost vs. throughput

Simulation curves closely match analytical predictions


📁 Repository Structure
/Code               → MATLAB scripts for optimization & simulation
/Report             → Project PDF and figures
/Plots              → Generated performance graphs
README.md

🛠 Tools Used

MATLAB

Linear Programming solver

Monte-Carlo Simulation

Queueing Theory metrics

Discrete-Time simulation

👤 Author

Ali Zein Khalifeh
