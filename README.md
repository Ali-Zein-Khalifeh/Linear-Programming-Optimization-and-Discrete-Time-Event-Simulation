# Linear Programming Optimization & Discrete-Time Event Simulation

This repository contains a full analytical and simulation-based study of a multi-stage hospital service process.  
Using **Linear Programming**, **Queueing Theory**, and **Discrete-Time Event Simulation**, the project models patient flow, evaluates system performance, and identifies optimal resource allocation to minimize delays and operational cost.

The experiments include both an **Emergency Scenario** and a **Hospital Scenario (before and after optimization)**.

--------------------------------------------------------------------------------

## 🎯 Project Objectives

- Build a mathematical representation of a multi-step hospital service process  
- Use **Linear Programming (LP)** to optimize staffing and resource allocation  
- Simulate patient flow using **Discrete-Time Event Simulation**  
- Compute performance metrics:
  - Average waiting time  
  - Queue length  
  - Utilization  
  - Throughput  
- Detect bottlenecks (e.g., recovery vs operating room)  
- Compare **before vs after optimization** results  

--------------------------------------------------------------------------------

## 🏥 System Description

The model represents a multi-stage patient flow including:

1. **Registration / Triage**  
2. **Pre-operative preparation**  
3. **Surgery / Operating room**  
4. **Recovery ward**  
5. **Final discharge check**

Each stage is modeled as an **M/M/s queue**, where:
- Arrival rates and service rates are exponential  
- Staffing levels (s) are decision variables  
- LP optimization minimizes cost subject to performance constraints  

--------------------------------------------------------------------------------

## 📊 Methods Used

### **1. Linear Programming**
Used to determine the optimal number of:
- Nurses  
- Doctors  
- Operating rooms  
- Recovery beds  

Constraints include:
- Maximum allowed waiting time  
- Minimum throughput  
- Total cost budget  

### **2. Queueing Theory (M/M/s Model)**
The scripts compute:
- Utilization  
- Probability of delay  
- Expected waiting time (Wq)  
- Expected system time (W)  
- Expected queue length (Lq)  

### **3. Discrete-Time Event Simulation**
Monte-Carlo simulation validates analytical results by generating:
- Random patient arrivals  
- Service times  
- Queue evolution over time  

Simulations include:
- **Emergency scenario**
- **Hospital before optimization**
- **Hospital after optimization**

--------------------------------------------------------------------------------

## 📈 Key Findings (Summary)

- Increasing OR (surgery) capacity dramatically reduces total patient waiting time  
- Once OR is improved, **recovery becomes the next bottleneck**  
- Optimized resource configuration balances cost vs throughput  
- Simulation results match the analytical LP predictions closely  

Detailed results are available in **Optimization and Simulation Report.pdf**.

--------------------------------------------------------------------------------

### 📁 Repository Structure

Linear_Programming_Optimization_Project/
|
├── Optimization and Simulation Report.pdf       # Full project report
├── Optimization and Simulation Report.docx      # Editable report
│
├── emergency_scenario_simulation.slx            # Emergency Simulink simulation
├── Emergency_scenario_avg_flow_time_calculation.m
│
├── hospital_scenario_before_optimization_simulation.slx
├── hospital_scenario_avg_flow_time_calculation.m
│
├── hospital_scenario_after_optimization_simulation.slx
├── hospital_scenario_after_optimization_simulation.m
│
├── hospital_scenario_optimization_problem.m     # Linear programming model
│
└── README.md                                    # Documentation

--------------------------------------------------------------------------------

## 🛠 Tools Used

- **MATLAB**
- **Linear Programming (linprog)**
- **Discrete-Time Event Simulation**
- **Queueing Theory**
- **Monte-Carlo methods**

--------------------------------------------------------------------------------

## 👤 Author

**Ali Zein Khalifeh**  
Politecnico di Torino  
Optimization & Simulation Project

--------------------------------------------------------------------------------
