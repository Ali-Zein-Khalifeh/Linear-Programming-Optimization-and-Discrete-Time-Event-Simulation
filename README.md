# Linear Programming Optimization & Discrete-Time Event Simulation

This project applies **linear programming**, **queueing theory**, and **discrete-time event simulation** to analyze and optimize a multi-stage service system (such as a hospital workflow).  
The goal is to identify bottlenecks, reduce waiting times, and determine the **optimal resource configuration** that minimizes cost while meeting performance requirements.

---

## 🎯 Project Objectives

- Model a real multi-stage service system using queueing theory  
- Use **Linear Programming (LP)** to optimally allocate servers/staff  
- Run **Monte-Carlo discrete-time simulations** to validate LP results  
- Estimate waiting times, queue lengths, utilization, and throughput  
- Identify bottlenecks before and after optimization  
- Compare analytical M/M/s predictions to simulation results  

---

## 🏥 System Description

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

All parameters and assumptions are detailed in the project report.

---

## 📐 Methods Used

### 1️⃣ Linear Programming (Optimization)

- Determines the **minimum-cost** configuration  
- Constraints include:
  - Maximum waiting-time limits  
  - Required throughput  
  - Budget and staffing limits  
- Outputs the **optimal number of servers** per stage  

### 2️⃣ Discrete-Time Event Simulation

- Monte-Carlo simulation validates analytical results  
- Generates random arrivals and service times  
- Tracks system evolution step-by-step  
- Measures queue buildup and delay distributions  

### 3️⃣ Queueing Theory (M/M/s)

- Computes:
  - Utilization \( \rho \)  
  - Expected queue length \( \mathbb{E}[N_q] \)  
  - Expected waiting time \( \mathbb{E}[W] \)  
  - Throughput  
- Used to detect bottlenecks and compare to simulation outcomes  

---

## 📊 Results Summary

- The operating room (OR) capacity is the main bottleneck in the base system.  
- Increasing OR servers significantly reduces delays.  
- After OR optimization, **Recovery** becomes the new bottleneck.  
- The optimized configuration:
  - Meets performance constraints  
  - Minimizes total cost  
  - Balances workload across stages  
- Simulation results match theoretical predictions closely, validating the LP model.  

---

## 📁 Repository Structure

```text
.
├── Emergency_scenario_avg_flow_time_calculation.m
├── emergency_scenario_simulation.slx
├── hospital_scenario_after_optimization_simulation.m
├── hospital_scenario_after_optimization_simulation.slx
├── hospital_scenario_avg_flow_time_calculation.m
├── hospital_scenario_before_optimization_simulation.slx
├── hospital_scenario_optimization_problem.m
├── Optimization and Simulation Report.pdf
└── README.md

---

## 🛠 Tools Used

- MATLAB  
- LP Solver (`linprog`)  
- Monte-Carlo Simulation  
- Queueing Models (M/M/s)  
- Discrete-Time Simulation  

---

## 👤 Author

**Ali Zein Khalifeh**  
Politecnico di Torino  
Optimization & Simulation Project
