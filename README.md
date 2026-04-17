# Stability Threshold of Control System using Root Analysis (Scilab)

![Scilab](https://img.shields.io/badge/Scilab-6.1%2B-blue)
![Domain](https://img.shields.io/badge/Domain-Control%20Systems-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

## 📌 Objective

To determine the critical gain (**Kcr**) at which a control system transitions from stable to unstable behavior by analyzing the roots of its characteristic equation.

---

## ⚙️ System Description

The characteristic equation of the system is:

```
s³ + 7s² + 10s + K = 0
```

| Parameter | Description |
|-----------|-------------|
| `s` | Complex frequency variable |
| `K` | Variable gain parameter |
| `Kcr` | Critical gain — threshold between stable and unstable |

System stability is determined by the location of roots (poles) in the complex plane:
- **Stable** → All poles in the Left Half Plane (LHP)
- **Marginally stable** → Poles on the imaginary axis (at Kcr)
- **Unstable** → Any pole in the Right Half Plane (RHP)

---

## 🧠 Methodology

1. Gain **K** is varied from **0 to 100**
2. Roots of the characteristic equation are computed at each K value using Scilab
3. Real and imaginary parts of poles are extracted
4. Root locus is plotted in the complex plane
5. Critical gain **Kcr** is identified where poles cross the imaginary axis

---

## 📊 Results

The root locus analysis reveals:

- For **K < Kcr** → All poles have negative real parts → System is **stable**
- At **K = Kcr** → Poles lie on the imaginary axis → System is **marginally stable**
- For **K > Kcr** → At least one pole has a positive real part → System is **unstable**

> The critical gain **Kcr = 70** (derived from Routh-Hurwitz criterion: Kcr = 7 × 10 = 70)

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Scilab** | Numerical computation and root solving |
| **Scilab plotting** | Root locus visualization |

---

## 📁 Project Structure

```
├── stability_IPC.sci        # Main Scilab script
├── Screenshot 2026-04-17... # Output plot / root locus
├── README.md                # Project documentation
└── LICENSE                  # MIT License
```

---

## 🚀 How to Run

1. Install [Scilab](https://www.scilab.org/) (v6.1 or above)
2. Clone this repository:
   ```bash
   git clone https://github.com/uttkarshyadavv/<repo-name>.git
   ```
3. Open Scilab and navigate to the project directory
4. Run the script:
   ```
   exec stability_IPC.sci
   ```
5. Observe the root locus plot and critical gain output in the console

---

## 📚 Theory Background

This project applies the **Routh-Hurwitz Stability Criterion** and **Root Locus Method**:

- **Routh-Hurwitz** → Algebraically determines the range of K for stability without computing roots explicitly
- **Root Locus** → Visually traces how poles move in the complex plane as K varies

For the system `s³ + 7s² + 10s + K = 0`, the Routh array gives:

```
s³ |  1    10
s² |  7     K
s¹ | (70-K)/7
s⁰ |  K
```

For stability: `K > 0` and `(70 - K)/7 > 0` → **0 < K < 70**

Therefore **Kcr = 70**.

---

## 👤 Author

**Utkarsh Yadav**
- 🎓 Chemical Engineering, SVNIT Surat
- 💼 [LinkedIn](https://www.linkedin.com/in/utkarshyadavv)
- 💻 [GitHub](https://github.com/uttkarshyadavv)

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
