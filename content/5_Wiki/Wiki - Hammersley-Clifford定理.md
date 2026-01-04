---
aliases: 
info: 
date: 2025-03-18-星期二 09:16
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 多元统计分析
  - 概率论
id: wiki20250318091606
banner: "![[astrowalk.gif]]"
---
---

## The 1 正态情形

假设 $\mathbf{x}=(x_{1},\ldots,x_{p})^{\top}$ 服从边际正态回归模型（条件正态）[[Wiki - 线性回归模型]] ：  

$$
x_{i}|\mathbf{x}_{-i}\sim N\left(\mu_{i}-\sum_{j:j\sim i}\beta_{i j}(x_{j}-\mu_{j}),\kappa_{i}^{-1}\right),
$$
[[Wiki - 多元正态分布]]

若 $j\not\sim i$ ，则令 $\beta_{i j}=\beta_{j i}=0$ .[[Wiki - 高斯图模型]] 记 $\Omega=\left(\omega_{i j}\right)$ [[Wiki - 精度矩阵]], 其中 $\omega_{i i}=\kappa_{i},\omega_{i j}=\kappa_{i}\beta_{i j},i\neq j$ 。如果 $\Omega>0$ （正定）, 则 $\mathbf{x}{\sim}N_{p}(\mathbf{\upmu},\boldsymbol{\Omega}^{-1})$ .  

矩阵形式表达：回归系数： 
$$B=\begin{pmatrix} 
1 &{\beta_{12}}&{\cdots}&{\beta_{1p}}\\  
{\beta_{12}}&{1}&{\cdots}&{\beta_{2p}}  \\
{\vdots}&{\vdots}&{\cdots}&{\vdots} \\
{\beta_{p1}}&{\beta_{p2}}&{\cdots}&{1} 
\end{pmatrix}
$$

误差方差 $K=d i a g(1/\kappa_{1},\dots1/\kappa_{p}),$ ，$\Omega=K^{-1}B$  


## The 2 HC 定理

若马氏随机场 [[Wiki - 马氏随机场]]的联合分布[[Wiki - 随机向量的分布函数|联合分布函数]] $p(\mathbf{x})>0$ （未必正态）, 则具有如下 Boltzmann 分布形式  

$$
\begin{array}{r}{p(\mathbf{x})=\frac{1}{Z}\exp(-H(\mathbf{x})),H(\mathbf{x})=\sum_{C}\phi_{\mathrm{C}}(\mathbf{x}_{C})}\end{array}
$$  

其中 $C$ 是最大的全连通节点子集(Clique),   𝑍 : partition归一化常数. 

```ad-info

难点在于验证条件 $p(\mathbf{x})>0$ ,即何时这才是一个真正的分布？
```
