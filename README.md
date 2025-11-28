# Linear Programming Optimization & Discrete-Time Event Simulation

This project applies **linear programming**, **queueing theory**, and **discrete-time event simulation** to analyze and optimize a multi-stage service system (such as a hospital workflow).  
The goal is to identify bottlenecks, reduce waiting times, and determine the **optimal resource configuration** that minimizes cost while meeting performance requirements.

------------------------------------------------------------
🎯 PROJECT OBJECTIVES
------------------------------------------------------------
- Model a real multi-stage service system using queueing theory  
- Use **Linear Programming (LP)** to optimally allocate servers/staff  
- Run **Monte-Carlo discrete-time simulations** to validate LP results  
- Estimate: waiting times, queue lengths, utilization, throughput  
- Identify bottlenecks before/after optimization  
- Compare analytical M/M/s predictions to simulation results  

------------------------------------------------------------
🏥 SYSTEM DESCRIPTION
------------------------------------------------------------
The modeled process includes multiple consecutive stages:
1. Emergency / Registration
2. Pre-operative preparation
3. Surgery
4. Recovery
5. Discharge check

Each stage is modeled as an **M/M/s queue**:
- Poisson arrivals  
- Exponential service times  
- *s* parallel servers  

All parameters and assumptions come from the detailed project report.

------------------------------------------------------------
📐 METHODS USED
------------------------------------------------------------

1️⃣ LINEAR PROGRAMMING (Optimization)
- Determines the **minimum-cost** configuration  
- Constraints include:  
  - Max waiting-time limits  
  - Required throughput  
  - Budget and staffing limits  
- Outputs: **optimal number of servers** per stage  

2️⃣ DISCRETE-TIME EVENT SIMULATION
- Monte-Carlo simulation validates analytical results  
- Generates random arrivals and service times  
- Tracks system evolution step-by-step  
- Measures real queue buildup and delay distributions  

3️⃣ QUEUEING THEORY (M/M/s)
- Computes:  
  - Utilization (ρ)  
  - Expected queue length E[Nq]  
  - Expected waiting time E[W]  
  - Throughput  
  - Bottleneck detection  

------------------------------------------------------------
📊 RESULTS SUMMARY
------------------------------------------------------------
- OR capacity is the main bottleneck in the base system  
- Increasing OR servers significantly reduces delays  
- After OR optimization, **Recovery** becomes the new bottleneck  
- The optimized configuration:  
  - Meets performance constraints  
  - Minimizes total cost  
  - Balances workload across stages  
- Simulation results match theoretical predictions very closely  

------------------------------------------------------------
📁 REPOSITORY STRUCTURE
------------------------------------------------------------
Linear_Programming_Optimization_Project/
│
├── Optimization and Simulation Report.pdf              # Final report│
├── emergency_scenario_simulation.slx                   # Emergency model
├── Emergency_scenario_avg_flow_time_calculation.m
│
├── hospital_scenario_before_optimization_simulation.slx
├── hospital_scenario_avg_flow_time_calculation.m
│
├── hospital_scenario_after_optimization_simulation.slx
├── hospital_scenario_after_optimization_simulation.m
│
├── hospital_scenario_optimization_problem.m            # LP optimization code
│
└── README.md                                           # This documentation

------------------------------------------------------------
🛠 TOOLS USED
------------------------------------------------------------
- MATLAB  
- Linear Programming solver (linprog)  
- Monte-Carlo Simulation  
- Queueing Theory (M/M/s models)  
- Discrete-Time Simulation  

------------------------------------------------------------
👤 AUTHOR
------------------------------------------------------------
Ali Zein Khalifeh  
Politecnico di Torino  
Optimization & Simulation Project
