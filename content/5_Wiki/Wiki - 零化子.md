---
aliases: annihilator
info: 零化子的定义
date: 2023-08-02-星期三 15:47
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230802154701
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 #线性代数/线性空间 

## Def 1annihilator

For $U\subset V,$ the annihilator of U, denoted $U^{0}$ is defined by

$$
U^{\mathbf{0}}=\{\varphi\in V^{\prime}:\varphi(u)=0{\mathrm{~for~all~}}u\in U\}.
$$

很难不与核的概念联系 [[Wiki - 线性映射基本定理#Def 1 null space]]

## Pro 1

零化子是 V' 的子空间 [[Wiki - 对偶空间]]

[[Wiki - n维数组空间#Def2 子空间]]

## Pro 2 零化子的维数

对 V 的子空间 U，$Dim U+dim U^{0} =dim V$


### Proof

构造特殊映射，利用线性映射基本定理：

Let $i\:\in{\mathcal{L}}(U,V)$ be the inclusion map defined by $i\left(u\right)=u$ for $u\in U$ Thus $\text{i'}$ is a linear map from $V^{\prime}$ to $U^{\prime}$ The Fundamental Theorem of Linear Maps [[Wiki - 线性映射基本定理]] applied to $\text{i}$ shows that

$$
\dim\operatorname{range}i^{\prime}+\dim\operatorname{null}i^{\prime}=\dim V^{\prime}.
$$

However, $\operatorname{null}i^{\prime}=U^{0}$ (as can be seen by thinking about the definitions) and
$\dim V^{\prime}=\dim V$ (by 3.95), so we can rewrite the equation above as

$$
\dim\operatorname{range}i^{\prime}+\dim U^{0}=\dim V.
$$

If $\varphi\in U$ , then $\text{w}$ can be extended to a linear functional $\text{y}$ on $\text{V}$ . The definition of $\text{i'}$ shows that
$i^{\prime}(\psi)\:=\:\varphi$. Thus $\varphi\:\in\:\operatorname{range}i^{\prime},$ which implies that $\operatorname{range}i^{\prime}\:=\:U^{\prime}$ . Hence dim range $i^{\prime}=\dim U^{\prime}=\dim U$ , and the displayed equation above becomes the desired result.

**来源：[[Book - 线性代数应该这样学]]**
