---
aliases: 
info: 
date: 2025-03-09-星期日 21:24
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 概率论/概率分布
id: wiki20250309212452
banner: "![[astrowalk.gif]]"
---
---

## The 1 cramer-wold 定理

Cramer-Wold 定理说明两个随机向量同分布，当且仅当它们在任何单位方向的投影坐标同分布.  

引理 2 (Cramer-Wold 定理) 假设随机向量𝐱， $\mathbf{y}\in R^{n}$ ，则 $\mathbf{x}\triangleq\mathbf{y}\Leftrightarrow\mathbf{t}^{\mathsf{T}}\mathbf{x}\triangleq\mathbf{t}^{\mathsf{T}}\mathbf{y},\forall\mathbf{t}\in S^{n-1}$ [[Wiki - 多元球内均匀分布]]  

证明: $(\Rightarrow)$ 由引理 1 立得。  

$(\Leftarrow)$ 对任何 $\mathsf{I}\forall\mathbf{t}\in R^{n},\mathbf{i}/\|\mathbf{t}\|\in S^{n-1},\mathbf{t}^{\mathsf{T}}\mathbf{x}/\|\mathbf{t}\|\overset{d}{=}\mathbf{t}^{\mathsf{T}}\mathbf{y}/\|\mathbf{t}\|$ $\Rightarrow\mathbf{t}^{\top}\mathbf{x}\overset{d}{=}\mathbf{t}^{\top}\mathbf{y}\Rightarrow$ 矩母函数 $E{\big(}\exp(\mathbf{t}^{\mathsf{T}}\mathbf{x}){\big)}=E{\big(}\exp(\mathbf{t}^{\mathsf{T}}\mathbf{y}){\big)}\Rightarrow\mathbf{x}\triangleq\mathbf{y}$  

注：矩母（或特征）函数 [[Wiki - 随机变量的特征函数]]唯一决定 $\mathbf{x}$ 的分布表达的含义实际上就是“所有一维投影坐标 $\mathbf{t}^{\mathsf{T}}\mathbf{x}$ 的分布决定𝐱整体的分布

## cal

若 $\mathbf{X}$ 服从球对称分布，则 $\mathbf{x}/\|\mathbf{x}\|{\sim}U(S^{n-1})$ , 且与 $\|\mathbf{x}\|$ 独立。  [[Wiki - 球对称分布的极分解定理]]

证明：因为𝐱球对称，所以 $\mathbf{u}\triangleq\mathbf{x}/\|\mathbf{x}\|$ 也是球对称的

