---
aliases: 
info: 
date: 2025-04-08-星期二 17:51
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
id: wiki20250408175158
banner: "![[astrowalk.gif]]"
---
---
## Def 1. Geometric Program  

```ad-definition  
title: Standard Form  
A **geometric program (GP)** is an optimization problem of the form:  
$$
\begin{array}{ll}
\min & f_0(x) \\
\text{s.t.} & f_i(x) \leq 1, \quad i = 1, \dots, m \\
& h_j(x) = 1, \quad j = 1, \dots, p,
\end{array}
$$  
where:  
- **$f_i(x)$** are *posynomials*:  
  $$
  f_i(x) = \sum_{k=1}^{K_i} c_{ik} x_1^{a_{1k}} \cdots x_n^{a_{nk}} \quad (c_{ik} > 0).
  $$  
- **$h_j(x)$** are *monomials*:  
  $$
  h_j(x) = d_j x_1^{r_{1j}} \cdots x_n^{r_{nj}} \quad (d_j > 0).
  $$  
The domain is restricted to $x \in \mathbb{R}_{++}^n$.  
```  

---

## Prop 1. Convex Transformation via Log-Change  

```ad-proposition
A GP can be transformed into a convex problem via:  
1. Substitute $x_i = e^{y_i}$ (domain becomes $\mathbb{R}^n$).  
2. For monomial $h_j(x) = d_j \prod x_i^{r_{ij}}$, the equality constraint becomes linear:  
   $$
   \log h_j(e^y) = \sum_{i=1}^n r_{ij} y_i + \log d_j = 0.
   $$  
3. For posynomial $f_i(x)$, the inequality becomes log-sum-exp (convex):  
   $$
   \log \left( \sum_{k=1}^{K_i} e^{a_{ik}^\top y + b_{ik}} \right) \leq 0 \quad (b_{ik} = \log c_{ik}).
   $$  
```  

---  

## Thm 1. Duality in Geometric Programming  

```ad-theorem  
The dual of a GP is also a GP. Under logarithmic transformation, the dual problem preserves convexity and inherits strong duality properties from .  
```  

[[Wiki - Lagrange对偶函数]]

---  

## Example 1. Power Control in Communication  

```ad-example  
**Problem**: Minimize total power $\sum P_i$ subject to SNR constraints:  
$$
\frac{g_i P_i}{\sum_{j \neq i} g_j P_j + \sigma^2} \geq \gamma_i \quad (i = 1, \dots, n).  
$$  
**GP Form**: Rewrite as posynomial constraints:  
$$
\frac{\sum_{j \neq i} g_j P_j + \sigma^2}{g_i P_i / \gamma_i} \leq 1.  
$$  
```  
