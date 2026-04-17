# Stability Threshold of Control System using Root Analysis (Scilab)

## 📌 Objective
To determine the critical gain (**Kcr**) at which a control system transitions from stable to unstable behavior by analyzing the roots of its characteristic equation.

---

## ⚙️ System Description

The characteristic equation of the system is:

s³ + 7s² + 10s + K = 0

Where:
- **K** = gain parameter  
- System stability depends on the location of roots (poles) in the complex plane  

---

## 🧠 Methodology

- Gain (**K**) is varied from **0 to 100**  
- Roots of the characteristic equation are computed using **Scilab**  
- Real and imaginary parts of poles are extracted  
- Pole movement is plotted on the complex plane  
- Stability boundary is identified where:

  **Re(s) ≈ 0**

- Points where poles lie on the imaginary axis indicate **marginal stability**

---

## 📈 Visualization

![Pole Plot](results/pole_plot.png)

---

## 🔍 Result

- As gain increases, poles move in the complex plane  
- A pair of complex conjugate poles approaches and crosses the imaginary axis  

👉 **Critical Gain (Kcr) ≈ 70**

---

## 📊 Stability Interpretation

| Gain (K) | Behavior |
|---------|--------|
| K < 70  | Stable (poles in left half plane) |
| K = 70  | Marginally stable (poles on imaginary axis) |
| K > 70  | Unstable (poles in right half plane) |

---

## 💡 Key Insight

This project determines stability **graphically and numerically** by directly tracking pole movement, instead of relying solely on analytical methods like Routh-Hurwitz or trial-and-error simulations.

---

## 🛠️ Tools Used

- **Scilab**
- Control Systems Concepts
- Numerical Root Computation

---

## 🚀 How to Run

1. Open Scilab  
2. Navigate to the project directory  
3. Run the script:
stability_IPC.sci
4. Output:
- Pole movement plot  
- Console output showing critical gain region  

---

## 📌 Conclusion

The system becomes marginally stable at **K ≈ 70**, where poles lie on the imaginary axis.  
Beyond this value, poles move into the right half plane, causing instability.

---

## 📎 Author

**Utkarsh Yadav**
