---
aliases: 
info: 
date: 2025-02-26-星期三 14:43
update: 
tags:
  - wiki/year2025
  - wiki/month02
  - 多元统计分析
id: wiki20250226144357
banner: "![[astrowalk.gif]]"
---
---

## Def 1 球对称分布

球对称分布（Spherically Symmetric Distribution）是一种在多元统计分析中常见的概率分布，它具有旋转不变性，即在任何正交变换下，分布保持不变。以下是球对称分布的定义：

设 $\mathbf{x}$ 是一个 $n \times 1$ 的随机向量 [[Wiki - 随机向量的概念]]。如果对于任何 $n$ 阶正交矩阵 [[Wiki - 正交矩阵]] $H$，都有  
$$
H\mathbf{x} \overset{d}{=} \mathbf{x},
$$  
即 $\mathbf{x}$ 的分布在正交变[[Wiki - 正交变换]]换下保持分布不变，则称 $\mathbf{x}$ 服从**球对称分布**。

球对称分布也被称为球等高分布、正交不变分布或旋转不变分布（Spherically Symmetric Distribution, Spherically Contoured Distribution, Orthogonally Invariant Distribution, Rotationally Invariant Distribution）。

## Pro 1

1. **球对称分布的概率密度函数**：如果 $\mathbf{x}$ 有概率密度函数 $f(\mathbf{x})$，且 $f(\mathbf{x})$ 仅依赖于 $\|\mathbf{x}\|$，即存在一元函数 $h$ 使得  
   $$
   f(\mathbf{x}) = h(\|\mathbf{x}\|),
   $$  
   当且仅当 $\mathbf{x}$ 服从球对称分布。

[[Wiki - 径向函数]]

进一步再由[[Wiki - 球对称分布的极分解定理]]，假设 $\mathbf{X}$ 服从球对称分布，具有概率密度函数 $f(\mathbf{x})=h(\|\mathbf{x}\|)$ ,其中 $h$ 是一个一元函数。令 $\mathbf{u}=\mathbf{x}/\|\mathbf{x}\|$ ，则$\boldsymbol{x}\overset{d}{=}\boldsymbol{u}r$  ，且 $\|\mathbf{x}\|$ 的概率密度函数为  

$$
p(r)=|S^{n-1}|h(r)r^{n-1},r>0,
$$ 
## example
**常见的球对称分布**包括：
   - 单位球面均匀分布 $U(S^{n-1})$
   - 单位球内均匀分布 $U(B^{n})$
   - 对于 $\mathbf{x} \in \mathbb{R}^{n}$，$n$ 元 $t$ 分布的概率密度函数为：
$$
f(\mathbf{x}) = \frac{\Gamma\left(\frac{\nu + n}{2}\right)}{\Gamma\left(\frac{\nu}{2}\right)(\nu\pi)^{n/2}} \left(1 + \frac{\|\mathbf{x}\|^2}{\nu}\right)^{-\frac{\nu + n}{2}},
$$
其中 $\nu$ 是自由度，$\Gamma(\cdot)$ 是伽马函数[[Wiki - gamma函数]]，$\|\mathbf{x}\|$ 是 $\mathbf{x}$ 的欧几里得范数[[Wiki - 欧式空间向量的模]]。

- n元Cauchy分布的概率密度函数：
对于 $\mathbf{x} \in \mathbb{R}^{n}$，$n$ 元 Cauchy 分布的概率密度函数为：
$$
f(\mathbf{x}) = \frac{\Gamma\left(\frac{n + 1}{2}\right)}{\pi^{(n + 1)/2}} \left(1 + \|\mathbf{x}\|^2\right)^{-\frac{n + 1}{2}},
$$
其中 $\Gamma(\cdot)$ 是伽马函数，$\|\mathbf{x}\|$ 是 $\mathbf{x}$ 的欧几里得范数。

[[Wiki - 柯西分布]]

- **标准多元正态分布**：$\mathbf{x} \sim N_{n}(0, I_{n})$ 是球对称分布，其概率密度函数为  
   $$
   f(\mathbf{x}) = \frac{1}{(2\pi)^{n/2}} e^{-\|\mathbf{x}\|^{2}/2}.
   $$

- **单位球内均匀分布**：$\mathbf{x} \sim U(B^{n})$ 是球对称分布，其概率密度函数为  
   $$
   f(\mathbf{x}) = \frac{1}{|B^{n}|} = \frac{\Gamma(1 + n/2)}{\pi^{n/2}}, \quad \mathbf{x} \in B^{n}.
   $$

[[Wiki - 多元正态分布]]

## Pro 2

若$\mathbf{x}$是球对称分布，则$\mathbf{x}$每个分量同分布（但不一定独立），且$E\mathbf{x}=0, Var\mathbf{x}= \sigma^{2}I_{n}$

[[Wiki - 协方差矩阵]]

[[Wiki - 数学期望]]

## Por 3 
$\mathbf{x}$ 服从球对称分布 $\Leftrightarrow\mathbf{t}^{\mathsf{T}}\mathbf{x}\overset{d}{=}x_{1},\forall\mathbf{t}\in S^{n-1}.$  
### proof

 $(\Rightarrow)$ 任取正交矩阵 $H_{\cdot}$ ,其第一行为𝐭, 则 $H\mathbf{x}{\stackrel{d}{=}}\mathbf{x}$ ，特别地两边的第一分量等分布，即 ${\mathfrak{r}}^{\mathsf{T}}{\mathbf{x}}\overset{d}{=}x_{1}$ 。  

$(\Leftarrow)$ 对任何正交矩阵 $H$ ，为了证明 $H\mathbf{x}\stackrel{d}{=}\mathbf{x}$ ，由引理2，我们只需对任何𝐭 $\in S^{n-1}$ 证明𝐭 $\mathbf{\mu}_{\mathbf{c}}\mathsf{T}_{H\mathbf{X}}\mathbf{\overset{d}{=}\mathbf{t}^{\mathsf{T}}}\mathbf{x}$ .因为𝐭 $\in S^{n-1}$ ， $H^{\top}\mathbf{t}\in S^{n-1}.$ , 故$\operatorname{\mathbf{z}}^{\mathsf{T}}\mathbf{x}{\overset{d}{=}}x_{1}.$ , 且 $(H^{\top}\mathfrak{t})^{\top}\mathbf{x}\overset{d}{=}x_{1}$ ，从而 $(H^{\top}\mathbf{t})^{\top}\mathbf{x}\overset{d}{=}\mathbf{t}^{\top}\mathbf{x}$  

## cal 

推论1. 若 $\mathbf{x}$ 服从球对称分布，随机向量 $\mathbf{z}\in S^{n-1}$ [[Wiki - 多元球内均匀分布]]， $\mathbf{z}$ ⫫ $\mathbf{x}$ ，则$\mathbf{z}^{\top}\mathbf{x}\overset{d}{=}x_{1}$ , 且 $\mathbf{z}^{\mathsf{T}}\mathbf{x}$ ⫫ $\mathbf{z}$ 。  
  

### proof

1、给定 $\mathbf{z}$ 的条件下， $\mathbf{z}^{\mathsf{T}}\mathbf{x}$ 中 $\mathbf{z}$ 是常数向量，由定理1, $\mathbf{z}^{\top}\mathbf{x}\mid\mathbf{z}\stackrel{d}{=}x_{1};$ ，该条件分布即 $x_{1}$ 的分布不依赖于 $\mathbf{z}$ ，所以 $\mathbf{z}^{\mathsf{T}}\mathbf{x}$ ⫫ $\mathbf{z}$ ，且 $\mathbf{z}^{\top}\mathbf{x}\overset{d}{=}x_{1}$ 。  

