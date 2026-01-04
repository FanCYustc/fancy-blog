---
aliases: 
info: 
date: 2024-09-30-星期一 10:55
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 回归分析/线性回归
id: wiki20240930105512
banner: "![[astrowalk.gif]]"
---
---

## Def 1 基本线性回归模型

响应变量 $y$ 与自变量 $\boldsymbol{x}$ 满足线性回归模型

$$
y=a+ \boldsymbol{b}^{T}\boldsymbol{x} +\epsilon
$$
其中 $\epsilon$ 为误差项，满足 Gauss-Markov 假设：

1. $E[\epsilon]=0$。（截距 a 可识别）
2. $Var(\epsilon)=\sigma^{2}$。（方差齐性）
3. $\epsilon$ 与 $\boldsymbol{x}$ 独立（外生性）

[[Wiki - 数学期望]]

[[Wiki - 方差]]

[[Wiki - 随机变量的独立性]]

## Pro 1 

若随机变量 $(Y,\boldsymbol{X})$ 满足 Guass-markov 条件的线性回归模型假设，则

1. $E[Y|\boldsymbol{x}]= a+b^{T}\boldsymbol{x}$
2. $Var[Y|\boldsymbol{x}]=\sigma^{2}$

[[Wiki - 条件期望]]

[[Wiki - 条件方差]]

## Pro 2 线性回归系数的确定

假设线性回归模型 $(y,\mathbf{x}_{p\times1})$ 
$y=a+\mathbf{b}^{\mathsf{T}}\mathbf{x}+\varepsilon,E(\varepsilon)=0$,  $Var(\varepsilon)=\sigma^2,\varepsilon$ 与 $\mathbf{x}$ 独立
则参数 $a,\mathbf{b},\sigma^2$ 由 $y,\mathbf{x}$ 的均值和方差决定：

$\mathbf{b} = \Sigma _{\mathbf{x} }^{- 1}\Sigma _{\mathbf{x} y}$, [[Wiki - 协方差矩阵]]

$a= \mu _{y}- \mathbf{b} ^{\mathsf{T} }\mathbf{\mu } _{\mathbf{x} }$,

$\sigma ^{2}= \Sigma _{yy\bullet \mathbf{x} }= \Sigma _{yy}( 1- R^{2})$，其中 $R^2=\frac{\mathrm{var}(\mathbf{b}^\mathsf{T}\mathbf{x})}{\mathrm{var}(y)}=\Sigma_{y\mathbf{x}}\Sigma_{\mathbf{x}\mathbf{x}}^{-1}\Sigma_{\mathbf{x}y}/\Sigma_{yy}$ 为决定系数。[[Wiki - 决定系数]]

### Proof

由 gauss-markov 假设，有 $\epsilon = y- a=\boldsymbol{b}^{T}\boldsymbol{x}$ 是 y 关于 $\boldsymbol{x}$ 的去相关化 [[Wiki - 去相关化]]，于是 $b^{T}= \Sigma_{yx}\Sigma_{\boldsymbol{x x}}^{-1}$


## Pro 3 控制变量

有时候对于线性模型 $y= a+ \mathbf{b}^{T}\mathbf{x} +\epsilon$，如果 $\mathbf{x}$ 中有分量是控制变量用的或干扰因素，需要去相关化消除影响

假设模型：

$$
y=a+\mathbf{b}^\mathsf{T}\mathbf{x}+\varepsilon=a+\mathbf{b}_1^\mathsf{T}\mathbf{x}_1+\mathbf{b}_2^\mathsf{T}\mathbf{x}_2+\varepsilon\text{,}\varepsilon\sim(0,\sigma^2)
$$

其中 $\mathbf{x}=\begin{pmatrix}\mathbf{x}_1\\\mathbf{x}_2\end{pmatrix}$ 独立，$\mathbf{b}=\begin{pmatrix}\mathbf{b}_1\\\mathbf{b}_2\end{pmatrix}$。令 $\mathbf{x}_1^\perp=\mathbf{x}_1-\Sigma_{12}\Sigma_{22}^{-1}\mathbf{x}_2,y^\perp=y-\Sigma_{y2}\Sigma_{22}^{-1}\mathbf{x}_2$, [[Wiki - 去相关化]]则

(1) $y^{\perp }= a+ \mathbf{b} _{1}^{\mathsf{T} }\mathbf{x} _{1}^{\perp }+ \varepsilon$, $\varepsilon \sim ( 0, \sigma ^{2})$ ，$\epsilon$ 与 $\mathbf{x}_1^{\perp}$ 独立.

$(2)\mathbf{b}_1=\Sigma_{11\bullet2}^{-1}\Sigma_{1y\bullet2}$, 当 $\mathbf{x}_1$ 是随机变量时，$b_1\propto\rho_{1\gamma\bullet2}$ 与偏相关系数成正比。

(3) 部分/偏决定系数 (控制 $\mathbf{x}_2$ 后，$\mathbf{x}_1$ 所能解释的响应的方差比例)

$$R_{1y\bullet2}^2=\frac{\mathrm{var}(\mathbf{b}_1^\mathsf{T}\mathbf{x}_1^\perp)}{\mathrm{var}(y^\perp)}=\frac{\Sigma_{y1\bullet2}\Sigma_{11\bullet2}^{-1}\Sigma_{1y\bullet2}}{\Sigma_{yy\bullet2}}
$$

其中
$$
\sum = \begin{pmatrix}
\sum_{11} & \sum_{12} &\sum_{1y}  \\
\sum_{21} & \sum_{22} & \sum_{2y} \\
\sum_{y1}  & \sum_{y 2} & \sum_{yy}
\end{pmatrix}
$$
$\sum_{1y\bullet 2} = \sum_{1 y}- \sum_{1 2}\sum_{22}^{-1}\sum_{2y}$ [[Wiki - 偏相关系数]]

