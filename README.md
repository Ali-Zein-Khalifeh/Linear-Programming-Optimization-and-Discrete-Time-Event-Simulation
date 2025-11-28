# Linear Programming Optimization & Discrete-Time Event Simulation

This project applies **linear programming**, **queueing theory**, and **discrete-time event simulation** to analyze and optimize a multi-stage service system (hospital workflow).  
The goal is to study system congestion, identify bottlenecks, and compute the **optimal resource allocation** that minimizes waiting time and improves overall efficiency.

---

## 🎯 **Project Objectives**

- Model a real multi-stage service process using queueing theory  
- Use **Linear Programming (LP)** to optimally assign resources  
- Run **Monte-Carlo discrete-time simulations** to validate analytical results  
- Estimate:
  - Waiting times  
  - Queue lengths  
  - Resource utilization  
  - System throughput  
- Identify bottlenecks in the service pipeline  
- Compare **before vs. after optimization** performance  

---

## 🏥 **System Description**

The modeled process consists of multiple consecutive hospital stages:

1. **Emergency / Registration**
2. **Pre-operative preparation**
3. **Surgery**
4. **Recovery**
5. **Final discharge check**

Each stage is treated as an **M/M/s queue**, defined by:

- Poisson arrivals  
- Exponential service times  
- *s* parallel servers (doctors, nurses, ORs)  

All parameters and formulas follow the report included in this repository.

---

## 📐 **Methods Used**

### **1️⃣ Linear Programming (Optimization)**
Used to determine the best number of staff/resources under constraints:

- Max waiting time thresholds  
- Budget/operational limits  
- Required throughput levels  

LP identifies the **cheapest configuration** that still satisfies system performance requirements.

---

### **2️⃣ Discrete-Time Event Simulation**
A Monte-Carlo simulation validates the analytical results by:

- Generating thousands of random arrivals  
- Assigning them to servers  
- Measuring real queueing behavior  
- Comparing simulation curves to theoretical predictions  

---

### **3️⃣ Queueing Theory**
Classical M/M/s formulas compute:

- Utilization  
- Expected number in queue  
- Expected waiting time  
- Service throughput  
- Stage-by-stage bottlenecks  

These results guide the optimization.

---

## 📊 **Results Summary**

From the analysis and simulations:

- Adding **more OR capacity** significantly reduces global waiting time  
- After OR expansion, **Recovery** becomes the new bottleneck  
- The optimized system:
  - Meets all waiting-time constraints  
  - Has balanced utilization across stages  
  - Matches simulation results closely  

Both simulation and theory support the same optimal configuration.

---

## 📁 **Repository Structure**

```text
Linear_Programming_Optimization_Project/
│
├── Optimization and Simulation Report.pdf              # Full report (final)
├── Optimization and Simulation Report.docx             # Editable version
│
├── emergency_scenario_simulation.slx                   # Emergency scenario model
├── Emergency_scenario_avg_flow_time_calculation.m
│
├── hospital_scenario_before_optimization_simulation.slx
├── hospital_scenario_avg_flow_time_calculation.m
│
├── hospital_scenario_after_optimization_simulation.slx
├── hospital_scenario_after_optimization_simulation.m
│
├── hospital_scenario_optimization_problem.m            # Linear Programming model
│
└── README.md                                           # Documentation
