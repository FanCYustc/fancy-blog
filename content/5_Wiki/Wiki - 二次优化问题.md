---
aliases: 
info: 
date: 2025-04-11-星期五 20:51
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
id: wiki20250411205102
banner: "![[astrowalk.gif]]"
---
---

## Def 二次规划 (Quadratic Programming, QP)  

$$
\begin{aligned}
&\text{minimize} & (1/2)x^{\top}Px + q^{\top}x + r \\
&\text{subject to} & Gx \preceq h \\
&& Ax = b
\end{aligned}
$$

**Where**:  
- $P \in \mathbf{S}^n_{+}$ (positive semidefinite matrix)  
- $G \in \mathbf{R}^{m×n}$, $A \in \mathbf{R}^{p×n}$  
- Inequality $\preceq$ is component-wise  

## Thm 典型应用场景及变形  

### 1. 无约束QP（最小二乘回归）  
$$
\|Ax - b\|_2^2 = x^\top(A^\top A)x - 2b^\top A x + b^\top b
$$  
**解析解**: $x = A^\dagger b$ (广义逆)  

### 2. 多面体间距问题  
For $\mathcal{P}_i = \{x | A_ix \preceq b_i\}$:  
$$
\begin{aligned}
&\text{minimize} & \|x_1 - x_2\|_2^2 \\
&\text{subject to} & A_ix_i \preceq b_i \quad (i=1,2)
\end{aligned}
$$  

---

## Lem 金融优化案例  

### Markowitz投资组合  
**变量**:  
- $x_i$: 资产$i$的权重  
- $p \sim (\bar{p}, \Sigma)$: 随机收益率  

**QP形式**:  
$$
\begin{aligned}
&\text{minimize} & x^\top \Sigma x \\
&\text{subject to} & \bar{p}^\top x \geq r_{min} \\
&& \mathbf{1}^\top x = 1, \ x \succeq 0
\end{aligned}
$$  

---

## Thm 鲁棒优化转化  

当约束含椭球不确定性时 ($a_i \in \mathcal{E}_i = \{\bar{a}_i + P_i u | \|u\|_2 \leq 1\}$):  

**原始问题**:  
$$
\begin{aligned}
&\text{min} & c^\top x \\
&\text{s.t.} & a_i^\top x \leq b_i \ \forall a_i \in \mathcal{E}_i
\end{aligned}
$$  

**SOCP转化**:  
$$
\bar{a}_i^\top x + \|P_i^\top x\|_2 \leq b_i
$$  